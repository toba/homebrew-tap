class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.20/sm-v0.26.20-arm64.tar.gz"
  version "0.26.20"
  sha256 "15e436e9fd22d6dd14fd7a475ac51b04687e6c9911d36cfb9a6e555e218c401e"
  license "MIT"

  depends_on :macos => :tahoe
  depends_on arch: :arm64

  def install
    bin.install "sm"
  end

  test do
    assert_match "AST-based", shell_output("#{bin}/sm --help")
  end
end
