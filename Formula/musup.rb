class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.23.0/musup_darwin_arm64.tar.gz"
  version "0.23.0"
  sha256 "d5ea939077ec140699cf052322e8b252ea2f11b7caaf8cc0dbae4e2c10248087"
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
