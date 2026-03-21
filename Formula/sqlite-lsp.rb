class SqliteLsp < Formula
  desc "Language Server Protocol implementation for SQLite"
  homepage "https://github.com/toba/sqlite-lsp"
  url "https://github.com/toba/sqlite-lsp/releases/download/v0.5.0/sqlite-lsp_darwin_arm64.tar.gz"
  version "0.5.0"
  sha256 "427072bb65e3fd002c0044663d6777cb7cb0c2137640b9602373b4d2fc691745"
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
