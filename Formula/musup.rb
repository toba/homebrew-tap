class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.1.1/musup_darwin_arm64.tar.gz"
  version "1.1.1"
  sha256 "5029a1e67abcc9db10a84e3cfd48602d58bff26d6a551cc17f172b001b64b43e"
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
