class Jigo < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig-go"
  url "https://github.com/toba/jig-go/releases/download/v4.0.0/jigo_darwin_arm64.tar.gz"
  version "4.0.0"
  sha256 "b0f2c0b7b5bc5f43b20365b88c0f498f6d54afc5911b8ffe1d68fd3754e17f05"
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
