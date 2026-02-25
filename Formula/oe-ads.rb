class OeAds < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/oe-cli"
  url "https://github.com/sp-hk2ldn/oe-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "74ce7a5ef2c892529710bec66292a144f2ee4a78626e844e5c975dd07c91837a"
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
