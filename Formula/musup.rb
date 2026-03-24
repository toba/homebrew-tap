class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.22.2/musup_darwin_arm64.tar.gz"
  version "0.22.2"
  sha256 "b2f10d8a9e13ad58e8a6039e3193d125881057daa257acefacb59883e0e36de8"
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
