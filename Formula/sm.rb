class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.19/sm-v0.26.19-arm64.tar.gz"
  version "0.26.19"
  sha256 "e95113880c8bf0eea2f6316a97409af995b8e9c401f36d17a2af5e7b75c3f3fc"
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
