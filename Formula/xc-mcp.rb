class XcMcp < Formula
  desc "MCP server for Xcode development - build, test, run, and debug iOS/macOS apps"
  homepage "https://github.com/toba/xc-mcp"
  url "https://github.com/toba/xc-mcp/releases/download/2.5.0/xc-mcp-2.5.0-arm64.tar.gz"
  version "2.5.0"
  sha256 "e7d0d2e1fa044be1c00476ccb08c1bb999133d96cab4dc703b5f5c0888fb454a"
  license "MIT"

  depends_on :macos => :golden_gate
  depends_on arch: :arm64

  SERVERS = %w[xc-build xc-debug xc-device xc-project xc-simulator xc-strings xc-swift].freeze

  def install
    # A release built with TOBA_STATIC_LINK carries no dylib, so the tarball holds
    # bin alone. Homebrew changes into a lone top-level directory before install
    # runs, which leaves the executable at the staged root. A release that ships
    # dylibs holds bin and lib, so no change of directory happens.
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
