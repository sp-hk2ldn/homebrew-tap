class OeAds < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/oe-cli"
  url "https://github.com/sp-hk2ldn/oe-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "eb2146ad89bcf7cb9cf92aee6fc47fbea97c0a89814b07fdc129de79c4234d94"
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
