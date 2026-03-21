class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.16.1/musup_darwin_arm64.tar.gz"
  version "0.16.1"
  sha256 "988116122f63227ee609b252db32b3624a9ce8fd49adc94191746baad35fa09b"
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
