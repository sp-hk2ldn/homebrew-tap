class Searchads < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/searchads-cli"
  url "https://github.com/sp-hk2ldn/searchads-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "7515fbf067eab1ca88ce4ba504ce239f06f926b4531d887074b4d6d84c856a7e"
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
