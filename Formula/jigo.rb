class Jigo < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig-go"
  url "https://github.com/toba/jig-go/releases/download/v3.0.2/jigo_darwin_arm64.tar.gz"
  version "3.0.2"
  sha256 "0e221f374aeb00200a20b7cbe7b97c8354d76e851334c0c3462193b96d36162d"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jigo"
  end

  test do
    assert_match "jigo", shell_output("#{bin}/jigo version")
  end
end
