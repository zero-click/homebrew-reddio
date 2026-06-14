class ReddioAT046 < Formula
  desc "Command-line interface for Reddit written in POSIX sh"
  homepage "https://gitlab.com/aaronNG/reddio"
  url "https://gitlab.com/aaronNG/reddio/-/archive/v0.46/reddio-v0.46.tar.gz"
  sha256 "f6bad5493e0f54c636630754cd0f72af105e5de5cb921f3692bf3b6545cc4cef"
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
