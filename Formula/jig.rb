class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.34.0/jig_darwin_arm64.tar.gz"
  version "2.34.0"
  sha256 "c8bdcc9eb5a59bd16bc9f5ed11a98c31412cce284ab00cb48154262d8ecdeecb"
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
