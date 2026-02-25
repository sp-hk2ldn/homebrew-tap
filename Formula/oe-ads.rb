class OeAds < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/oe-cli"
  url "https://github.com/sp-hk2ldn/oe-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "34edf3a3f58a594333667e75b2edae25f8244bf7d9eface19220c8b23d4ae838"
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
