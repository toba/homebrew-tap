class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.24.0/jig_darwin_arm64.tar.gz"
  version "2.24.0"
  sha256 "64325eb9afed4f3b204b8eb7a3be76158b2fa78a6f5566872002447c5fc956a1"
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
