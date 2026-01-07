class Nanotation < Formula
  desc "Label and annotate your code directly from the terminal"
  homepage "https://github.com/sickfar/nanotation"
  url "https://github.com/sickfar/nanotation/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PENDING" # This will be replaced by the binary distribution block
  license "MIT"

  # Binary distribution for faster installation
  # To update: brew eb nanotation (edit) and update URLs/SHAs after release
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sickfar/nanotation/releases/download/v0.1.0/nanotation-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sickfar/nanotation/releases/download/v0.1.0/nanotation-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    elsif Hardware::CPU.arm?
      url "https://github.com/sickfar/nanotation/releases/download/v0.1.0/nanotation-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    end
  end

  def install
    bin.install "nanot"
  end

  test do
    assert_match "nanot", shell_output("#{bin}/nanot --help")
  end
end
