class Jig < Formula
  desc "Multi-tool CLI for upstream repo monitoring and Claude Code security guard"
  homepage "https://github.com/toba/jig"
  url "https://github.com/toba/jig/releases/download/v2.40.0/jig_darwin_arm64.tar.gz"
  version "2.40.0"
  sha256 "394f9aa7947cfd6bf9121bc40a7fd054e87883f0ca237bc94aa17105ba8286dc"
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
