class OeAds < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/oe-cli"
  url "https://github.com/sp-hk2ldn/oe-cli/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "69feb599feb32aa47f6b27a4a91ba7a5890568f73e8849d035e97cdd44da8f3d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/oe-ads"
  end

  test do
    output = shell_output("#{bin}/oe-ads --help")
    assert_match "Commands:", output
  end
end
