class GitlabComplianceAT220 < Formula
  include Language::Python::Virtualenv

  desc "BDD compliance testing for GitLab CI/CD pipelines and project settings"
  homepage "https://maturitybuilder.github.io/gitlab-compliance/"
  url "https://files.pythonhosted.org/packages/b6/87/e5f5b5d8e8b03a827fe9ae33509408b47b577f29c43a8e2dba6e7d9abe8c/gitlab_compliance-2.2.0.tar.gz"
  sha256 "66df9462ed5b2a4d13668f1e48e3d1032ec6cf9f436e8a91e651d5510b385492"
  license "Apache-2.0"
  version "2.2.0"
  keg_only :versioned_formula

  depends_on "python@3.12"
  depends_on "jq"
  depends_on "rust" => :build

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/3e/30/e900b21425a860e195f32e37657aa1f7c7f2b1bfb26f03ca209b90933c06/annotated_doc-0.0.5-py3-none-any.whl"
    sha256 "117bac03a25ede5df5440e855b32d556049ca169ead221505badf432fed4b101"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/88/c6/92fcd42f1ba33e1184263f25bfabf3d27c383410470f169e4b8163bf9c17/beautifulsoup4-4.15.0-py3-none-any.whl"
    sha256 "d6f88de62e1d4e38ecb1077eb9724cd0eff29d2a08ca16a401e9b9e93f117cf9"
  end

  resource "behave" do
    url "https://files.pythonhosted.org/packages/63/71/06f74ffed6d74525c5cd6677c97bd2df0b7649e47a249cf6a0c2038083b2/behave-1.3.3-py2.py3-none-any.whl"
    sha256 "89bdb62af8fb9f147ce245736a5de69f025e5edfb66f1fbe16c5007493f842c0"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/0b/a7/71ac2cff56fec219ed242bb11b8efb69fcc4bec75db06fb7bfe35de520e6/certifi-2026.7.22-py3-none-any.whl"
    sha256 "62f22742b58a1a33014a2b6b706588a8d7e2a88ae7bd1a6ebe8c992928483775"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/66/42/5de54f632c2de53cd3415b3703383d5fff43a94cbc0567ef362515261a21/chardet-6.0.0.post1-py3-none-any.whl"
    sha256 "c894a36800549adf7bb5f2af47033281b75fdfcd2aa0f0243be0ad22a52e2dcb"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/98/2b/f97f1c193fb855c345d678f5077d6926034db0722df74c8f057020e05a25/charset_normalizer-3.4.9-py3-none-any.whl"
    sha256 "68e5f26a1ad57ded6d1cfb85331d1c1a195314756471d97758c48498bb4dcdf5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/fb/e2/79c688af8b210d232694e31e59da9f6ec747bae31c3f5946e4e9b98860d5/click-8.4.2-py3-none-any.whl"
    sha256 "e6f9f66136c816745b9d65817da91d61d957fb16e02e4dcd0552553c5a197b76"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d1/d6/3965ed04c63042e047cb6a3e6ed1a63a35087b6a609aa3a15ed8ac56c221/colorama-0.4.6-py2.py3-none-any.whl"
    sha256 "4f1d9991f5acc0ca119f9d443620b77f9d6b33703e51011c16baf57afb285fc6"
  end

  resource "cucumber-expressions" do
    url "https://files.pythonhosted.org/packages/75/24/e403585f201d30ab561d8a971a1adc4de28123fb9bf2f9813650fda8ddb0/cucumber_expressions-20.0.0-py3-none-any.whl"
    sha256 "8a0434529efd7ca6e2052934ec8d677c7e24edc0fad3b1d1b1bc4bbca5e521f3"
  end

  resource "cucumber-tag-expressions" do
    url "https://files.pythonhosted.org/packages/ed/34/fbd46adb089ec277e9b7da3db479976c228c28407dce15e34554478c8ba9/cucumber_tag_expressions-11.0.0-py3-none-any.whl"
    sha256 "86ce0647bed1e52d6a634649c31758faa22821531541848f221b1f6c4f75c9f7"
  end

  resource "DataProperty" do
    url "https://files.pythonhosted.org/packages/03/41/eab7fe313820578b341a2a1d6aeeedd2c38ec1e3f3d51e57e2735b5beac0/dataproperty-1.1.1-py3-none-any.whl"
    sha256 "cf026aa002dbd6c57c619ec6741ffd61ae7bf2f20481951d8af2dff44480340e"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end

  resource "jq" do
    url "https://files.pythonhosted.org/packages/95/ec/3da01457bbd3c6a2fc8fea6736c0b657ffc628e3decbfb1fafcf33dc7dbe/jq-1.12.0.tar.gz"
    sha256 "729b2d3418c8ca7dccfaa66b9fb7a98bec28474212650d27c5c04358ce26f55c"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/03/0a/4f6fed21aa246c6b49b561ca55facacc2a44b87d65b8b92362a8e99ba202/loguru-0.7.2-py3-none-any.whl"
    sha256 "003d71e3d3ed35f0f8984898359d65b79e5b21943f78af86aa5491210429b8eb"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "markdown_analysis" do
    url "https://files.pythonhosted.org/packages/d3/94/50890298581013aa7db6c494308f459d47dfbb9555fe087e44e4b5e729ba/markdown_analysis-0.1.5-py3-none-any.whl"
    sha256 "0b1058bf44d65f1d508bc53e46113631a98219fa040e6a3221d46d776b7728db"
  end

  resource "markdownify" do
    url "https://files.pythonhosted.org/packages/04/10/fa543d484e8b1199243fe20eedd02cc5af050edebce98a7293a5773df592/markdownify-1.2.3-py3-none-any.whl"
    sha256 "a189a0bedfd14009030fde5f85bb6f77c56897cb839b5c25315dd7d4e3e290ba"
  end

  resource "mbstrdecoder" do
    url "https://files.pythonhosted.org/packages/4c/eb/711270faab7b7df702339a2c68b31fd3ed4fffc68b0e99e5bdf49b1e87e4/mbstrdecoder-1.1.5-py3-none-any.whl"
    sha256 "4a50fe113d4abecfd86e8f716b2e413cce03d63af83ec3c7cdbe81dec0e519ed"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "oras" do
    url "https://files.pythonhosted.org/packages/03/3c/04dce40fe03276a5aaed0e2b49e59e385147f4e750e6960c477284cf5880/oras-0.2.42-py3-none-any.whl"
    sha256 "d1e2184d42ce99258bd0ad56d932b0f4fce289bccf1b5094436a29579f385728"
  end

  resource "oyaml" do
    url "https://files.pythonhosted.org/packages/37/aa/111610d8bf5b1bb7a295a048fc648cec346347a8b0be5881defd2d1b4a52/oyaml-1.0-py2.py3-none-any.whl"
    sha256 "3a378747b7fb2425533d1ce41962d6921cda075d46bb480a158d45242d156323"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end

  resource "parse" do
    url "https://files.pythonhosted.org/packages/6f/c5/7c16e99869e1f422629092cfd23e3b58e461988c3f9c36fd3624bb4142e6/parse-1.22.1-py2.py3-none-any.whl"
    sha256 "20f0925a46f06602485ac90d751764d0697fd8455aaa97489ba8953a4b66de32"
  end

  resource "parse_type" do
    url "https://files.pythonhosted.org/packages/85/8d/eef3d8cdccc32abdd91b1286884c99b8c3a6d3b135affcc2a7a0f383bb32/parse_type-0.6.6-py2.py3-none-any.whl"
    sha256 "3ca79bbe71e170dfccc8ec6c341edfd1c2a0fc1e5cfd18330f93af938de2348c"
  end

  resource "pathvalidate" do
    url "https://files.pythonhosted.org/packages/9a/70/875f4a23bfc4731703a5835487d0d2fb999031bd415e7d17c0ae615c18b7/pathvalidate-3.3.1-py3-none-any.whl"
    sha256 "5263baab691f8e1af96092fa5137ee17df5bdfbd6cff1fcac4d6ef4bc2e1735f"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/fe/be/2e6798ace5cc036f5d05d36b7b2fd85346f1a708c87060890b070d0ec607/prettytable-3.18.0-py3-none-any.whl"
    sha256 "b3346e0e6f79180833aebaac088ae926340586cf6d7d991b9eb125b65f72313a"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "pytablewriter" do
    url "https://files.pythonhosted.org/packages/21/4c/c199512f01c845dfe5a7840ab3aae6c60463b5dc2a775be72502dfd9170a/pytablewriter-1.2.1-py3-none-any.whl"
    sha256 "e906ff7ff5151d70a5f66e0f7b75642a7f2dce8d893c265b79cc9cf6bc04ddb4"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "python-gitlab" do
    url "https://files.pythonhosted.org/packages/b1/af/1c3540dbdccb85fca0b0bbc58cdaf514d0a830d7e0302b2059a6c627b172/python_gitlab-8.4.0-py3-none-any.whl"
    sha256 "102c747d9c107820e215cc5913627388001592a9a3ba1b43fc341a40f6943e72"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/0f/7b/39c34ca613b0b198cb866466651b26b045e2009864c5183c979a3b83f383/pytz-2026.3.post1-py2.py3-none-any.whl"
    sha256 "dd95840dd199baea12d9cc096a1d452caa6596a1c1e4b5f3dbd1541855d5e815"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/3f/51/d4db610ef29373b879047326cbf6fa98b6c1969d6f6dc423279de2b1be2c/requests_toolbelt-1.0.0-py2.py3-none-any.whl"
    sha256 "cccfdd665f0a24fcf4726e690f65639d272bb0637b9b92dfd91a5568ccf6bd06"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/a6/24/4d91e05817e92e3a61c8a21e08fd0f390f5301f1c448b137c57c4bc6e543/semver-3.0.4-py3-none-any.whl"
    sha256 "9c824d87ba7f7ab4a1890799cec8596f15c1241cb473404ea1cb0c55e4b04746"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl"
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/0f/2c/437fe806897c2d6cfdc3ee43a18da8bf8e568530a4ae9bac781541ca9896/soupsieve-2.9.1-py3-none-any.whl"
    sha256 "4f4477399246b7a0c720a88ca2454b11cd6bb9ae4c9d170140786e916776c14c"
  end

  resource "tabledata" do
    url "https://files.pythonhosted.org/packages/c7/86/37fa0e1437089f08b8b1b8c8ad93f6b57e9427753f002914299323300a9e/tabledata-1.3.5-py3-none-any.whl"
    sha256 "a1e57afc4767b51bef551114c0df31f205d712dbb75e3caf9be7834a79f23136"
  end

  resource "tcolorpy" do
    url "https://files.pythonhosted.org/packages/05/a2/ed023f2edd1e011b4d99b6727bce8253842d66c3fbf9ed0a26fc09a92571/tcolorpy-0.1.7-py3-none-any.whl"
    sha256 "26a59d52027e175a37e0aba72efc99dda43f074db71f55b316d3de37d3251378"
  end

  resource "typepy" do
    url "https://files.pythonhosted.org/packages/64/71/75cf08c49b64a9419f1f2cef9be072ac34f6b784da2851489470b7c7ba15/typepy-1.3.5-py3-none-any.whl"
    sha256 "de361b59609c7503efc2edbe9d7a4e053ae71307bf90ae1678ec4d6bcd807922"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/40/03/26a383c9e58c213199d1aad1c3d353cfc22d4444ec6d2c0bf8ad02523843/typer-0.27.0-py3-none-any.whl"
    sha256 "6f4b27631e47f077871b7dc30e933ec0131c1390fbe0e387ea5574b5bac9ccf1"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/96/42/3e5985a0a7e57de470b320c6d6a1a67c844f6737a587f3d44dd13d1819e7/wcwidth-0.8.2-py3-none-any.whl"
    sha256 "d63947694a0539a1d51e01eda7caf800c291020e6cdd7e28ad7b14dd33ad4f85"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"gitlab-compliance", "--help"
  end
end
