class Openclose < Formula
  desc "CLI tool for organizing software specifications and PRDs"
  homepage "https://github.com/bpingris/openclose"
  url "https://github.com/bpingris/openclose.git", tag: "v0.4.1"
  license "MIT"
  head "https://github.com/bpingris/openclose.git", branch: "main"
  depends_on "odin" => :build
  def install
    system "odin", "build", "src", "-out:openclose", "-o:speed", "-define:VERSION=#{version}"
    bin.install "openclose"
  end
  test do
    assert_match "openclose - CLI tool", shell_output("#{bin}/openclose help")
  end
end
