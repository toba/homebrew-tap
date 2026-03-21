class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.17.1/musup_darwin_arm64.tar.gz"
  version "0.17.1"
  sha256 "03cbaca77f7e9a58f8efae1888a69bb9fa54d31937cbd1e888561a1e9c8aae1c"
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
