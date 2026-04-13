class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.14/sm-v0.26.14-arm64.tar.gz"
  version "0.26.14"
  sha256 "cef8e8fc2c95aa514ecdbca943b48a93b7718fdaf3a052d6c6c140c2fb514bba"
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
