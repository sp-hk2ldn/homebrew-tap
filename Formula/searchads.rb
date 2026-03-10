class Searchads < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/searchads-cli"
  url "https://github.com/sp-hk2ldn/searchads-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "66fda849e20902683cb5710cd766f903f3c80931a5792c97ab9639a8eb0bdf82"
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
