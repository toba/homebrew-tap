class SqliteLsp < Formula
  desc "Language Server Protocol implementation for SQLite"
  homepage "https://github.com/toba/sqlite-lsp"
  url "https://github.com/toba/sqlite-lsp/releases/download/v0.1.0/sqlite-lsp_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "9262ad43c82d481f448b5220579541bb1beb5ede48ddeb511ae801d6eb93afb3"
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
