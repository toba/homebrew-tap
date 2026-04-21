class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.2.1/musup_darwin_arm64.tar.gz"
  version "1.2.1"
  sha256 "88c7e1195577a3618bbade692bd1eaab1255913d5e548fcd57748f6b76c3f9c5"
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
