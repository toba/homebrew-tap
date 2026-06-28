class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.36.3/jig_darwin_arm64.tar.gz"
  version "2.36.3"
  sha256 "9f823043eb954c370b5e566f570343f56ec3ed410210257e0ccb4a7198d7fd26"
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
