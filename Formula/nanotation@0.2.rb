class NanotationAT02 < Formula
  desc "Label and annotate your code directly from the terminal"
  homepage "https://github.com/sickfar/nanotation"
  version "0.2.0"
  license "MIT"

  keg_only :versioned_formula

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sickfar/nanotation/releases/download/v#{version}/nanotation-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "73f4f93db41c4ff4b8ee9bbdfeb8bd06447d0eae2b16e458615b3b2eb61329a8"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sickfar/nanotation/releases/download/v#{version}/nanotation-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7692bda4b12ccdd437efab729d98a7396abb668fb03b722113136e17433b5bef"
    end
  end

  def install
    bin.install "nanot"
  end

  test do
    assert_match "nanot", shell_output("#{bin}/nanot --help")
  end
end
