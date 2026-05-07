class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.29.1/jig_darwin_arm64.tar.gz"
  version "2.29.1"
  sha256 "ea85d5ef09901817f3c7c20341e1736f24eb49538b17b1a0dfad1e10e337d5de"
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
