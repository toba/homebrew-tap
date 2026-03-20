class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.22.1/jig_darwin_arm64.tar.gz"
  version "2.22.1"
  sha256 "c028251e169bfc3f73b06c8c033a2f718f343cc2c0bece6a98b27a82a21188a4"
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
