class SqliteLsp < Formula
  desc "Language Server Protocol implementation for SQLite"
  homepage "https://github.com/toba/sqlite-lsp"
  url "https://github.com/toba/sqlite-lsp/releases/download/v0.4.0/sqlite-lsp_darwin_arm64.tar.gz"
  version "0.4.0"
  sha256 "8a7ad9fc498d674122a9c523ffc0667cee54b90d61a94180c7b98b0f0a40135e"
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
