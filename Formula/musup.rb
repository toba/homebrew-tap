class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.22.1/musup_darwin_arm64.tar.gz"
  version "0.22.1"
  sha256 "5709fb316847c9c70d7e2bde8aeb92fe8936334e33676fcbdeab8c8f0355151c"
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
