#!/usr/bin/env bash
# Regenerate Formula/gitlab-compliance.rb from the published PyPI package.
#
# Pins the package sdist plus transitive dependencies (preferring
# py3-none-any wheels; falling back to sdist for native extensions).
#
# Usage:
#   ./scripts/update-formula.sh <VERSION>
#   ./scripts/update-formula.sh            # latest on PyPI
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FORMULA_PATH="${ROOT}/Formula/gitlab-compliance.rb"
PACKAGE_NAME="gitlab-compliance"

resolve_version() {
  if [[ $# -ge 1 && -n "${1:-}" ]]; then
    echo "${1#v}"
    return
  fi
  if [[ -n "${FORMULA_VERSION:-}" ]]; then
    echo "${FORMULA_VERSION#v}"
    return
  fi
  python3 - <<'PY'
import json
import urllib.request

with urllib.request.urlopen("https://pypi.org/pypi/gitlab-compliance/json") as resp:
    print(json.load(resp)["info"]["version"])
PY
}

VERSION="$(resolve_version "${1:-}")"
if [[ ! "${VERSION}" =~ ^[0-9]+\.[0-9]+\.[0-9]+([.-].*)?$ ]]; then
  echo "error: invalid version '${VERSION}'" >&2
  exit 1
fi

echo "Updating Homebrew formula for ${PACKAGE_NAME}==${VERSION}"

WORKDIR="$(mktemp -d)"
cleanup() {
  rm -rf "${WORKDIR}"
}
trap cleanup EXIT

python3.12 -m venv "${WORKDIR}/venv"
"${WORKDIR}/venv/bin/pip" install -q --upgrade pip
"${WORKDIR}/venv/bin/pip" install -q "${PACKAGE_NAME}==${VERSION}"

# Exact installed set from the venv (avoids host-site importlib pollution).
"${WORKDIR}/venv/bin/pip" freeze \
  | grep -viE "^(pip|setuptools|wheel|${PACKAGE_NAME})==" \
  >"${WORKDIR}/requirements.txt"

python3 - "${FORMULA_PATH}" "${PACKAGE_NAME}" "${VERSION}" "${WORKDIR}/requirements.txt" <<'PY'
"""Build Formula/gitlab-compliance.rb from pip freeze + PyPI metadata."""
from __future__ import annotations

import json
import re
import sys
import urllib.request
from pathlib import Path

formula_path = Path(sys.argv[1])
package_name = sys.argv[2]
version = sys.argv[3]
requirements_path = Path(sys.argv[4])


def pypi_files(name: str, ver: str) -> list[dict]:
    url = f"https://pypi.org/pypi/{name}/{ver}/json"
    with urllib.request.urlopen(url) as resp:
        return json.load(resp)["urls"]


def choose_artifact(name: str, ver: str) -> tuple[str, str]:
    """Return (url, sha256), preferring py3-none-any wheels then sdist."""
    files = pypi_files(name, ver)
    pure = [
        f
        for f in files
        if f.get("packagetype") == "bdist_wheel"
        and f["filename"].endswith("py3-none-any.whl")
    ]
    sdists = [f for f in files if f.get("packagetype") == "sdist"]
    if not pure and not sdists:
        raise SystemExit(f"No sdist or pure wheel on PyPI for {name}=={ver}")
    chosen = (pure or sdists)[0]
    return chosen["url"], chosen["digests"]["sha256"]


main_url = None
main_sha = None
for f in pypi_files(package_name, version):
    if f.get("packagetype") == "sdist":
        main_url, main_sha = f["url"], f["digests"]["sha256"]
        break
if not main_url:
    raise SystemExit(f"No sdist on PyPI for {package_name}=={version}")

resources: list[tuple[str, str, str, str]] = []
for line in requirements_path.read_text(encoding="utf-8").splitlines():
    line = line.strip()
    if not line or line.startswith("#") or "==" not in line:
        continue
    name, ver = line.split("==", 1)
    # Editable/VCS pins are unsupported.
    if name.startswith("-e ") or " @ " in line:
        continue
    url, sha = choose_artifact(name, ver)
    # Homebrew expects PyPI-style names (hyphens), not import/distribution underscores.
    resource_name = name.replace("_", "-")
    resources.append((resource_name, ver, url, sha))

resources.sort(key=lambda item: item[0].lower())

resource_blocks = [
    (
        f'  resource "{name}" do\n'
        f'    url "{url}"\n'
        f'    sha256 "{sha}"\n'
        f"  end"
    )
    for name, _ver, url, sha in resources
]

needs_rust = any(
    re.sub(r"[-_.]+", "-", name).lower() == "rpds-py" and not url.endswith(".whl")
    for name, _ver, url, _sha in resources
)

depends = ['  depends_on "jq"', '  depends_on "python@3.12"']
if needs_rust:
    depends.insert(0, '  depends_on "rust" => :build')

nl = "\n"
def render(class_name: str, *, versioned: bool) -> str:
    # Version is inferred from the PyPI sdist URL (Homebrew audit rejects a
    # redundant explicit version line when it matches the URL).
    keg = '  keg_only :versioned_formula\n' if versioned else ''
    return f"""class {class_name} < Formula
  include Language::Python::Virtualenv

  desc "BDD compliance testing for GitLab CI/CD pipelines and project settings"
  homepage "https://maturitybuilder.github.io/gitlab-compliance/"
  url "{main_url}"
  sha256 "{main_sha}"
  license "Apache-2.0"
{keg}
{nl.join(depends)}

{(nl * 2).join(resource_blocks)}

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"gitlab-compliance", "--help"
  end
end
"""


formula_path.parent.mkdir(parents=True, exist_ok=True)
formula_path.write_text(render("GitlabCompliance", versioned=False), encoding="utf-8")
print(f"Wrote {formula_path} ({len(resources)} resources)")

# Also keep an installable versioned formula: gitlab-compliance@X.Y.Z
at_digits = version.replace(".", "")
versioned_path = formula_path.parent / f"gitlab-compliance@{version}.rb"
versioned_path.write_text(
    render(f"GitlabComplianceAT{at_digits}", versioned=True),
    encoding="utf-8",
)
print(f"Wrote {versioned_path}")
PY

echo "Formula updated: ${FORMULA_PATH}"
echo "Versioned formula updated: Formula/gitlab-compliance@${VERSION}.rb"
