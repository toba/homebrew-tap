class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.0.0/musup_darwin_arm64.tar.gz"
  version "1.0.0"
  sha256 "e8c85d409bd0f583f8629e052cc62648133210f3b3da4b5d35b70afdf27e8095"
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
