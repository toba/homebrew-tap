class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.34.1/jig_darwin_arm64.tar.gz"
  version "2.34.1"
  sha256 "58908f95fcc79edf1a2ea2e57dea0f6a037b6c724e8f2d1834fca2ebf4ebf8f7"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig", shell_output("#{bin}/jig version")
  end
end
