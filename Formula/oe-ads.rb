class OeAds < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/oe-cli"
  url "https://github.com/sp-hk2ldn/oe-cli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "23b5010f6c4e7551f7a1553ea41e4afde513736b779829b3b8fc185baeca0b16"
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
