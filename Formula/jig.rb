class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.35.0/jig_darwin_arm64.tar.gz"
  version "2.35.0"
  sha256 "661a4c9e19bbd6fba7693dbfcf9790abf73038894d50924ae8ed4ac91f813308"
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
