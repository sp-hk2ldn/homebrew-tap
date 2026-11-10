class Searchads < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/searchads-cli"
  url "https://github.com/sp-hk2ldn/searchads-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e19228ae459e14a0261e9df58856a6a5589a5a196a901cebbc4740976ac28d99"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/searchads"
  end

  test do
    output = shell_output("#{bin}/searchads --help")
    assert_match "Commands:", output
  end
end
