class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.25.1/jig_darwin_arm64.tar.gz"
  version "2.25.1"
  sha256 "f807d84e8d1698fa19b747a5592750cf519597ec4eae99cb121a7ad6f33608e0"
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
