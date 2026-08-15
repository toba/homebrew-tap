class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.2.2/musup_darwin_arm64.tar.gz"
  version "1.2.2"
  sha256 "a6810b62e84063252cafb705a8db5600c37997c8dcac38d6e5a0764f3e15baa9"
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
