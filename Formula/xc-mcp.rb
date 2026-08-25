class XcMcp < Formula
  desc "MCP server for Xcode development - build, test, run, and debug iOS/macOS apps"
  homepage "https://github.com/toba/xc-mcp"
  url "https://github.com/toba/xc-mcp/releases/download/1.110.0/xc-mcp-1.110.0-arm64.tar.gz"
  version "1.110.0"
  sha256 "27e1e3acb7cd71955f8e04fd40636432022b9ad4e114396eeb676c75e9a87ece"
  license "MIT"

  depends_on :macos => :sequoia
  depends_on arch: :arm64

  SERVERS = %w[xc-build xc-debug xc-device xc-project xc-simulator xc-strings xc-swift].freeze

  def install
    # The executable carries an rpath of @loader_path/../lib, so the dylibs
    # resolve from lib/ in this keg. Dir is empty when the build links statically.
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
