class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.27.0/jig_darwin_arm64.tar.gz"
  version "2.27.0"
  sha256 "d60535c0750953874794c9edc60d26e6e8411e9290729afe1d175bba851bf692"
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
