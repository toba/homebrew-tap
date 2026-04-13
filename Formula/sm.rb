class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.13/sm-v0.26.13-arm64.tar.gz"
  version "0.26.13"
  sha256 "f84b0c9fe92c5dd3a301487ebbd2c6a9607b257dc72a9e3ca7318cf5b1b951ba"
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
