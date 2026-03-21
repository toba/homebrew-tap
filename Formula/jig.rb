class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.25.0/jig_darwin_arm64.tar.gz"
  version "2.25.0"
  sha256 "5b7851739cae8039f6e83623b79be1965bf9473b0c8376b609b5d76f1bf53b6b"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "jig"
  end

  test do
    assert_match "jig", shell_output("#{bin}/jig version")
  end
end
