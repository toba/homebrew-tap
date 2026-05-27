class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.33.0/jig_darwin_arm64.tar.gz"
  version "2.33.0"
  sha256 "fdd3a262ba4f79faff538039e6b1cc0c8a38c4eab2661482b139033990813793"
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
