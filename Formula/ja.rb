class Ja < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/skill"
  url "https://github.com/toba/skill/releases/download/v1.3.0/ja_darwin_arm64.tar.gz"
  version "1.3.0"
  sha256 "d1d477d7edc78abcc456a1ee7c1a5b69f7b1e179db3e92af8d19d9c4be6fcf11"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "ja"
  end

  test do
    assert_match "ja", shell_output("#{bin}/ja version")
  end
end
