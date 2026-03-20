class GoBigq < Formula
  desc "BigQuery SQL linter powered by ZetaSQL/googlesql"
  homepage "https://github.com/toba/go-bigq"
  url "https://github.com/toba/go-bigq/releases/download/v0.2.0/go-bigq-v0.2.0-arm64.tar.gz"
  version "0.2.0"
  sha256 "b9f4fc4e157eba93aaef8ffd194a52e56ad5eb8029db68981dabb541029a1e1a"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "go-bigq"
  end

  test do
    assert_match "go-bigq version", shell_output("#{bin}/go-bigq version")
  end
end
