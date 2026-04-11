class Swiftiomatic < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v0.18.2/swiftiomatic-v0.18.2-arm64.tar.gz"
  version "0.18.2"
  sha256 "69438c06a534021d96cd71b7e061d5b1aa3bc4bcc22564a9ddac3e08dd35ae5d"
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
