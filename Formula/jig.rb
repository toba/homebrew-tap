class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.32.0/jig_darwin_arm64.tar.gz"
  version "2.32.0"
  sha256 "fc37c916c0b9e22fb4a1faae6f8a206dbf25921f3634f4c301f5ea9c01714ad8"
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
