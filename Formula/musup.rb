class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v0.21.0/musup_darwin_arm64.tar.gz"
  version "0.21.0"
  sha256 "e94cf513f0a8140720f6538a58426245e79a4400a4629ccfe67f42ac1b09e62a"
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
