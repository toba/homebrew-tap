class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.28.0/jig_darwin_arm64.tar.gz"
  version "2.28.0"
  sha256 "72c63f232a66fbbc3c2706cedd46fa9ae456af80246f50426feaa9619c3ac010"
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
