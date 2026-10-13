class XcMcp < Formula
  desc "MCP server for Xcode development - build, test, run, and debug iOS/macOS apps"
  homepage "https://github.com/toba/releases"
  url "https://github.com/toba/releases/releases/download/xc-mcp-2.10.4/xc-mcp-2.10.4-arm64.tar.gz"
  version "2.10.4"
  sha256 "af98ddbfff6d44675e55226be1cd238094c1ed80a40cb9981865d66cc582c359"
  license "MIT"

  depends_on :macos => :golden_gate
  depends_on arch: :arm64

  SERVERS = %w[xc-build xc-debug xc-device xc-project xc-simulator xc-strings xc-swift].freeze

  def install
    # The tarball holds bin and the license files, plus lib when the release ships
    # dylibs, so Homebrew stays at the staged root. A release from before the
    # license files held bin alone. Homebrew changes into a lone top-level
    # directory before install runs, which left the executable at the staged root.
    # Homebrew copies each LICENSE and NOTICE file into the keg with no install call.
    staged = File.directory?("bin") ? "bin" : "."

    # The executable reaches a dylib through an rpath of @loader_path/../lib.
    dylibs = Dir["lib/*.dylib"]
    lib.install dylibs unless dylibs.empty?

    bin.install "#{staged}/xc-mcp"
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
