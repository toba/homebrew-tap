class Musup < Formula
  desc "Check for new album releases from artists in your music library"
  homepage "https://github.com/toba/musup"
  url "https://github.com/toba/musup/releases/download/v1.1.2/musup_darwin_arm64.tar.gz"
  version "1.1.2"
  sha256 "10ff3fc8146a08f844b7ed6678cba2557760fc78e5814451f94a43e292379058"
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
