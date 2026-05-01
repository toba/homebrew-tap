class Sm < Formula
  desc "AST-based Swift code analysis CLI — lint, format, and detect anti-patterns"
  homepage "https://github.com/toba/swiftiomatic"
  url "https://github.com/toba/swiftiomatic/releases/download/v3.0.2/sm-v3.0.2-arm64.tar.gz"
  version "3.0.2"
  sha256 "3cda1d73e3557eeb999897632a3a73a311c739316f32082ffc085a261949f2e1"
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
