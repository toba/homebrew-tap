class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.18.0/musup_darwin_arm64.tar.gz"
  version "0.18.0"
  sha256 "0d70f309f21455d472009d7ec009832e662a9a928df7d9c4671be5d58b0c544d"
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
