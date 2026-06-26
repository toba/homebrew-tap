class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.36.2/jig_darwin_arm64.tar.gz"
  version "2.36.2"
  sha256 "af5c0c749edd0d584a3caa0eed779521d7290e794ea77ab022656f1cea7a554d"
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
