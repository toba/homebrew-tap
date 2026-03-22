class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.20.0/musup_darwin_arm64.tar.gz"
  version "0.20.0"
  sha256 "ff2d8a551e7d605ef61e91a9a9c9a1bb44afaf1a87cb9f5e81c3c1beab5b5725"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "musup"
  end

  test do
    assert_match "musup", shell_output("#{bin}/musup version")
  end
end
