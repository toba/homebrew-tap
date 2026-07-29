class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.41.1/jig_darwin_arm64.tar.gz"
  version "2.41.1"
  sha256 "e5173f82a817b04243f434da6a10f49d9371b3f67aeb9b4a686183884fffda2d"
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
