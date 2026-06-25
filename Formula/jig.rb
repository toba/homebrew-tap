class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.36.0/jig_darwin_arm64.tar.gz"
  version "2.36.0"
  sha256 "b4a926cbd2c2a5c980bc75c1757f343036fd2393eda9aac3530c2af97f4fb7ff"
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
