class Jigo < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v3.0.0/jigo_darwin_arm64.tar.gz"
  version "3.0.0"
  sha256 "67057ecda4a68380ab399c51d811b9a7a027f6d2fb42d126102e9ce1500542b4"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jigo"
  end

  test do
    assert_match "jigo", shell_output("#{bin}/jigo version")
  end
end
