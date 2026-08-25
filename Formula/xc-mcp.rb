class XcMcp < Formula
  desc "MCP server for Xcode development - build, test, run, and debug iOS/macOS apps"
  homepage "https://github.com/toba/xc-mcp"
  url "https://github.com/toba/xc-mcp/releases/download/2.0.0/xc-mcp-2.0.0-arm64.tar.gz"
  version "2.0.0"
  sha256 "0c22d9fbe6925d278b45edb0c46f22ec9a2533fe3b83418e6bf372528163622c"
  license "MIT"

  depends_on :macos => :golden_gate
  depends_on arch: :arm64

  SERVERS = %w[xc-build xc-debug xc-device xc-project xc-simulator xc-strings xc-swift].freeze

  def install
    # The release links the toba packages static, so the glob is empty. It stays
    # because a release built without TOBA_STATIC_LINK ships dylibs the executable
    # reaches through an rpath of @loader_path/../lib.
    lib.install Dir["lib/*.dylib"]
    bin.install "bin/xc-mcp"
    SERVERS.each do |name|
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

  # Every name is checked, not xc-mcp alone. The eight share one binary and one
  # link line, so a missing dylib stops all of them.
  test do
    (["xc-mcp"] + SERVERS).each do |name|
      assert_match "MCP server", shell_output("#{bin}/#{name} --help")
    end
  end
end
