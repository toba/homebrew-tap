class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.1.0/musup_darwin_arm64.tar.gz"
  version "1.1.0"
  sha256 "5533ec39dcabebff67c58aed81665bdd541d3dadb18c6eb253cdd90e833dcc17"
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
