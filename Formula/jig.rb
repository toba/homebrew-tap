class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.26.0/jig_darwin_arm64.tar.gz"
  version "2.26.0"
  sha256 "e725a3109aae6ab360a2fdcb61f9801a17fb5f6d94a6a3297f794fb562c5614f"
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
