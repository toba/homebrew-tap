class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.29.0/jig_darwin_arm64.tar.gz"
  version "2.29.0"
  sha256 "014b8d31f107c2726b83bc99d0571491f48a69b1cafb0e44c4698ba195710213"
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
