class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.37.0/jig_darwin_arm64.tar.gz"
  version "2.37.0"
  sha256 "07610258c00fc9156bfeb25d42dceb8eb682f19dbcb38b141ebd0f239e61a41b"
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
