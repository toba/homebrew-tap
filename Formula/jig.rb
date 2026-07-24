class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.39.0/jig_darwin_arm64.tar.gz"
  version "2.39.0"
  sha256 "9b29b274a79bb3dde00fbd4e2fff4d29345bb93da1e4a87444e08ae8320a5528"
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
