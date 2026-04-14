class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.18/sm-v0.26.18-arm64.tar.gz"
  version "0.26.18"
  sha256 "eb2b1f67807bebffcaff02efaa7acbbe428317908b490fc566726750ca0c3da4"
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
