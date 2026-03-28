class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.2.0/musup_darwin_arm64.tar.gz"
  version "1.2.0"
  sha256 "65b0117a7e14629a4539443839529dbc2ff69f0e457cef9175fc2091afb5c9d2"
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
