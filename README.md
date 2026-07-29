# homebrew-gitlab-compliance

Homebrew tap for
[`gitlab-compliance`](https://pypi.org/project/gitlab-compliance/) — BDD
compliance testing for GitLab CI/CD by
[MaturityBuilder](https://maturitybuilder.github.io/gitlab-compliance/).

This repository only packages published PyPI releases. Application source
lives in
[MaturityBuilder/gitlab-compliance](https://github.com/MaturityBuilder/gitlab-compliance).

## Install

```bash
brew tap MaturityBuilder/gitlab-compliance
brew install gitlab-compliance
gitlab-compliance --help
```

Fully qualified:

```bash
brew install MaturityBuilder/gitlab-compliance/gitlab-compliance
```

### Install a specific PyPI version

```bash
brew install MaturityBuilder/gitlab-compliance/gitlab-compliance@2.2.0
```

Available today: `@2.0.0`, `@2.0.1`, `@2.1.0`, `@2.1.1`, `@2.2.0`, `@2.3.0`.
Unversioned `gitlab-compliance` tracks the latest PyPI release.

Versioned installs are keg-only; link if you need the binary on `PATH`:

```bash
brew link --force gitlab-compliance@2.2.0
```

### Local development (this checkout)

```bash
brew untap MaturityBuilder/gitlab-compliance 2>/dev/null || true
brew tap MaturityBuilder/gitlab-compliance "$(pwd)"
brew reinstall --build-from-source MaturityBuilder/gitlab-compliance/gitlab-compliance
```

## Upgrade / uninstall

```bash
brew update
brew upgrade gitlab-compliance
brew uninstall gitlab-compliance
brew untap MaturityBuilder/gitlab-compliance
```

## How versions are updated

**Source of truth is PyPI.** GitHub tags without a PyPI package are ignored.

When
[gitlab-compliance](https://github.com/MaturityBuilder/gitlab-compliance)
creates a `v*` tag and **successfully publishes to PyPI**, its release
workflow dispatches `gitlab-compliance-released` to this repository. The
[Update formula](.github/workflows/update-formula.yml) workflow then:

1. Waits until the PyPI sdist is fetchable
2. Runs [`scripts/update-formula.sh`](scripts/update-formula.sh)
3. Opens a PR that refreshes `gitlab-compliance.rb` and
   `gitlab-compliance@X.Y.Z.rb`

You can also run the workflow manually (Actions → Update formula) for any
version already on PyPI, or locally:

```bash
./scripts/update-formula.sh 2.3.0
```

## License

Apache-2.0 — same as `gitlab-compliance`.
