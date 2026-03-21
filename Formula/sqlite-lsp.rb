class SqliteLsp < Formula
  desc "Language Server Protocol implementation for SQLite"
  homepage "https://github.com/toba/sqlite-lsp"
  url "https://github.com/toba/sqlite-lsp/releases/download/v0.2.0/sqlite-lsp_darwin_arm64.tar.gz"
  version "0.2.0"
  sha256 "f4af2456e4d608b5190895029667916cf2f3ce96294e9227eba2b8b26e8a313c"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "sqlite-lsp"
  end

  test do
    assert_match "sqlite-lsp", shell_output("#{bin}/sqlite-lsp version")
  end
end
