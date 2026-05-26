class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.30.1/jig_darwin_arm64.tar.gz"
  version "2.30.1"
  sha256 "1f42824b9b8d4a82cd685e90c43f59a8e5babef488aa2f70804da7021227db30"
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
