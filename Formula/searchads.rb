class Searchads < Formula
  desc "Apple Search Ads CLI"
  homepage "https://github.com/sp-hk2ldn/searchads-cli"
  url "https://github.com/sp-hk2ldn/searchads-cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "d77c93ab6781ca0d00ba8552019170d7639263d5bfa273f2b8b0a1e4914a89c3"
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
