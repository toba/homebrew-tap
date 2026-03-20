class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.13.2/musup_darwin_arm64.tar.gz"
  version "0.13.2"
  sha256 "d9399808b41dfbea602faff43840b5d3ff8ef98e69c945edda8ddc9d3cf8a43d"
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
