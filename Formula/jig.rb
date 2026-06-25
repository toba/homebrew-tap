class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.36.1/jig_darwin_arm64.tar.gz"
  version "2.36.1"
  sha256 "2556c00f00123f83b1df78ec68612cfec70af5cd80d1a56e330685031c7f6d47"
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
