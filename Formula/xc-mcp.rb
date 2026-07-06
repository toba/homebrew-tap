class XcMcp < Formula
  desc "MCP server for Xcode development - build, test, run, and debug iOS/macOS apps"
  homepage "https://github.com/toba/xc-mcp"
  url "https://github.com/toba/xc-mcp/releases/download/v1.97.0/xc-mcp-v1.97.0-arm64.tar.gz"
  version "1.97.0"
  sha256 "faf96c4ee9f8f080abda256008cd5e33b26fd90310a76c241212f1fcceaf11c7"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on arch: :arm64

  def install
    bin.install "xc-mcp"
    %w[xc-build xc-debug xc-device xc-project xc-simulator xc-strings xc-swift].each do |name|
      bin.install_symlink "xc-mcp" => name
    end
  end

  def caveats
    <<~EOS
      xc-mcp requires Xcode for xcodebuild, simctl, and devicectl.

      Configure with Claude Code:
        claude mcp add xc-mcp -- #{bin}/xc-mcp

      Focused servers available: xc-project, xc-simulator, xc-device, xc-debug, xc-swift, xc-build, xc-strings
    EOS
  end

  test do
    assert_match "MCP server", shell_output("#{bin}/xc-mcp --help")
  end
end
