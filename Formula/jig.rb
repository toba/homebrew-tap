class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.23.0/jig_darwin_arm64.tar.gz"
  version "2.23.0"
  sha256 "5d6cf29f5b27fec900fc5a0ef506a224f4379813389b4a34878537db578a63ee"
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
