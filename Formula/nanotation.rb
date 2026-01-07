class Nanotation < Formula
  desc "Label and annotate your code directly from the terminal"
  homepage "https://github.com/sickfar/nanotation"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sickfar/nanotation/releases/download/v#{version}/nanotation-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d3bf6d6b8b9bc91facb2dee1842d3be4c872f4e29b962a98e06770c5cbb50a40"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sickfar/nanotation/releases/download/v#{version}/nanotation-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b4a8988b63c645c48a0e05f080989fb570199d6db81b3d096ff07b69cac8cc7"
    elsif Hardware::CPU.arm?
      url "https://github.com/sickfar/nanotation/releases/download/v#{version}/nanotation-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca0f5a9dce1bfb801d5cfc07a9b4d202a680ed972b173a37d25f8fd3023791d1"
    end
  end

  def install
    bin.install "nanot"
  end

  test do
    assert_match "nanot", shell_output("#{bin}/nanot --help")
  end
end
