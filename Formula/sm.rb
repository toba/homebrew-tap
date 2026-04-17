class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.22/sm-v0.26.22-arm64.tar.gz"
  version "0.26.22"
  sha256 "55cea4ba6153a9481e5fac71f4e12d6cedf43ccf5072147d18411d2325ef54a0"
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
