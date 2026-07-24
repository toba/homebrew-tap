class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.38.0/jig_darwin_arm64.tar.gz"
  version "2.38.0"
  sha256 "16a5d32e164f8e9d5f5d058609c2e7a5b990815a247f5ba124ee7c334f143867"
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
