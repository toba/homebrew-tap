class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.16.0/musup_darwin_arm64.tar.gz"
  version "0.16.0"
  sha256 "eda71e4a133bbc801671c5d81401b93baa14c50e6da9e91c5269a52ec9fbe92b"
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
