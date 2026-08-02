class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.41.2/jig_darwin_arm64.tar.gz"
  version "2.41.2"
  sha256 "e288dcd181ca73cf3f3ec4a0832dcb45d0f3c14af06de92812281535a5672b03"
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
