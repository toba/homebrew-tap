class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.22.0/musup_darwin_arm64.tar.gz"
  version "0.22.0"
  sha256 "23c54ba04771ac73a15a5b36f6a9a36c7c199a4aabef18e3bdfa1e7a3c177377"
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
