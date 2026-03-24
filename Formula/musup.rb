class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.24.0/musup_darwin_arm64.tar.gz"
  version "0.24.0"
  sha256 "13245db55be6c2f37ae0dc899a0c5218b167b9c7f34b8d8736357905851499ee"
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
