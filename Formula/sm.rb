class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.29.2/sm-v0.29.2-arm64.tar.gz"
  version "0.29.2"
  sha256 "67a0aae049018b5688762d1c99b0097f03d7ce814d18656b8cc9eb29f67d9990"
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
