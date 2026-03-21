class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.17.0/musup_darwin_arm64.tar.gz"
  version "0.17.0"
  sha256 "ed9e4b2c7aea09995046e79f5210a0cf0ff7e8388ca8462920a93053f925d4eb"
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
