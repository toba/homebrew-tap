class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.19.0/musup_darwin_arm64.tar.gz"
  version "0.19.0"
  sha256 "62e6220cfcfd385b9d98739ac53c3fddfece43782d9b39a54415a1c4ef699e2f"
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
