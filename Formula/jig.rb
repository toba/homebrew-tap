class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.28.1/jig_darwin_arm64.tar.gz"
  version "2.28.1"
  sha256 "3a0e1f84ed3761dc30c3072542711c3061677c7ff20dae9977acaa4944059a7c"
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
