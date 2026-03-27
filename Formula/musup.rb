class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.1.3/musup_darwin_arm64.tar.gz"
  version "1.1.3"
  sha256 "ab6ae858af158df8706162beb248c14217ca2a30049dab79b7e1eb2882b87fca"
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
