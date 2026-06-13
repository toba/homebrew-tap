class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.34.2/jig_darwin_arm64.tar.gz"
  version "2.34.2"
  sha256 "d6ab36232359370c72377b6f3c96a8a16e69233d35d81e5a6dc39a4c7ccd1eaa"
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
