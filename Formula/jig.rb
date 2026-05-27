class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.31.1/jig_darwin_arm64.tar.gz"
  version "2.31.1"
  sha256 "955bf264a2649b0ae67a0a8f3447207588020cc35eb56322d3987c72b7c8b535"
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
