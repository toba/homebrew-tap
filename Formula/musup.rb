class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.24.1/musup_darwin_arm64.tar.gz"
  version "0.24.1"
  sha256 "40cc75087c9286b334da5bd7d160c66837f385f40b0badefd6f9a9e69b848f0f"
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
