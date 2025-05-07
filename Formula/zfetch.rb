class Zfetch < Formula
  desc "Cross-platform system information fetcher written in Zig"
  homepage "https://github.com/WilliamHCarter/zfetch"
  url "https://github.com/WilliamHCarter/zfetch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3bdb733cf7c59c7555acf14849eb0866e1ab8275fbea4bf08a28f855fd6f0480"
  license "MIT"
  head "https://github.com/WilliamHCarter/zfetch.git", branch: "main"

  depends_on "zig" => "~> 0.13.0"

  def install
    system "zig", "build"
    bin.install "zig-out/bin/zfetch"
  end

  test do
    assert_match "zfetch version", shell_output("#{bin}/zfetch --version")
  end
end
