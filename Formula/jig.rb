class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.31.0/jig_darwin_arm64.tar.gz"
  version "2.31.0"
  sha256 "56e82d0daf395e270df12f9becedf53ccdef9ea16d2bfeb2af80de85598061db"
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
