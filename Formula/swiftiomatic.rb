class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.18.3/swiftiomatic-v0.18.3-arm64.tar.gz"
  version "0.18.3"
  sha256 "b930be5e653cb26ecc7476579a51bdaf81d430c7750f087e3ffb3a0d40e1e3d2"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on arch: :arm64

  def install
    bin.install "swiftiomatic"
  end

  test do
    assert_match "swiftiomatic", shell_output("#{bin}/swiftiomatic --help")
  end
end
