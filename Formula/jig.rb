class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.41.0/jig_darwin_arm64.tar.gz"
  version "2.41.0"
  sha256 "8dd4efd1c065f3b7ad560b4ab6c69a59e12da1ab720a2b3d9ee78bc8b5e82e89"
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
