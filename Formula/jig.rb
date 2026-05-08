class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.30.0/jig_darwin_arm64.tar.gz"
  version "2.30.0"
  sha256 "260b48d8db48b145e0c1d1df2729b31547f62e466fdaffbb5e38c4beb388f042"
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
