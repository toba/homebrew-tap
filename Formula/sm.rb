class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.26.21/sm-v0.26.21-arm64.tar.gz"
  version "0.26.21"
  sha256 "342d164cc07b3699f25cd44e20e116fdc2f7731d6b1ce1ebf33a4bff473c4b05"
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
