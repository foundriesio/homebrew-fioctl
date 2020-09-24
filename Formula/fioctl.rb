class Fioctl < Formula
  desc "A simple tool to interact with the Foundries.io REST API for managing a Factory."
  homepage "https://foundries.io"
  version "0.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foundriesio/homebrew-fioctl/releases/download/v0.11/fioctl_0.11_Darwin_x86_64.tar.gz"
    sha256 "ec78dc26c5132c52ca6956b6f206d1a0dc10746036e9b7b46b6fdbeef5916593"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/foundriesio/homebrew-fioctl/releases/download/v0.11/fioctl_0.11_Linux_x86_64.tar.gz"
      sha256 "b7902c555afbe6829ed3446f9244624f67f68ffb51241d46db1c376c08b6b3de"
    end
  end

  def install
    bin.install "fioctl"
  end

  test do
    system "#{bin}/fioctl -v"
  end
end
