class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/3.17.1/sm-3.17.1-arm64.tar.gz"
  version "3.17.1"
  sha256 "cc2dcced66ba9bde7d87e639da5fd710f237e648d2477c925fc5df135a2849eb"
  license "MIT"

  depends_on :macos => :tahoe
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
