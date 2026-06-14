class ReddioAT052 < Formula
  desc "Command-line interface for Reddit written in POSIX sh"
  homepage "https://gitlab.com/aaronNG/reddio"
  url "https://gitlab.com/aaronNG/reddio/-/archive/v0.52/reddio-v0.52.tar.gz"
  sha256 "7da96fe1877725b3ce12520a06e9105547fe7e6e4f5971f4b4318c96a79e8d07"
  license "MIT"

  keg_only :versioned_formula

  depends_on "jq"

  on_linux do
    depends_on "curl"
  end

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddio -V")
  end
end
