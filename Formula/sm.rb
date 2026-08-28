class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/4.3.5/sm-4.3.5-arm64.tar.gz"
  version "4.3.5"
  sha256 "7d2c636f31e461eaddc9d486847fbf8806cab2b68f793d1e69e4c2d15c844fbe"
  license "MIT"

  depends_on :macos => :golden_gate
  depends_on arch: :arm64

  def install
    bin.install "sm"
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
