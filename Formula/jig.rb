class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.28.3/jig_darwin_arm64.tar.gz"
  version "2.28.3"
  sha256 "0d3bd7d6b9e128c83b8dc601b909185e7fc48934af6bb97bee4f2510883d9a98"
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
