class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/releases"
  url "https://github.com/toba/releases/releases/download/sm-4.21.5/sm-4.21.5-arm64.tar.gz"
  version "4.21.5"
  sha256 "fcf532291f5a876b951364f2a0f511baf62b076a2bd8b0d5714db3b6fc22300a"
  license "Apache-2.0"

  depends_on :macos => :golden_gate
  depends_on arch: :arm64

  def install
    bin.install "sm"
    prefix.install Dir["LICENSE*", "NOTICE*"]
  end

  def caveats
    <<~EOS
      To use sm as Xcode's swift-format, run:
        sudo ln -sf #{bin}/sm /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-format

      Re-run after Xcode updates (the symlink gets overwritten).
    EOS
  end

  test do
    assert_match "AST-based", shell_output("#{bin}/sm --help")
  end
end
