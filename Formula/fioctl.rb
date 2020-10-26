class Fioctl < Formula
  desc "A simple tool to interact with the Foundries.io REST API for managing a Factory."
  homepage "https://foundries.io"
  version "0.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foundriesio/homebrew-fioctl/releases/download/v0.12/fioctl_0.12_Darwin_x86_64.tar.gz"
    sha256 "c15a6e8252cee902e4225461ac77e17d0bf99a98dc597c98d6ae5c8d7e049d9d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/foundriesio/homebrew-fioctl/releases/download/v0.12/fioctl_0.12_Linux_x86_64.tar.gz"
      sha256 "e412a01e865716ee1c9f2b0de5b99bdb5cc3bdab46fee86b8b8a04d39be72445"
    end
  end

  def install
    bin.install "fioctl"
  end

  test do
    system "#{bin}/fioctl -v"
  end
end
