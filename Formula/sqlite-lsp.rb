class SqliteLsp < Formula
  desc "Language Server Protocol implementation for SQLite"
  homepage "https://github.com/toba/sqlite-lsp"
  url "https://github.com/toba/sqlite-lsp/releases/download/v0.3.0/sqlite-lsp_darwin_arm64.tar.gz"
  version "0.3.0"
  sha256 "7ccac535a044213fd8518f9670b910484243b243f52638c1b24e375431c14565"
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
