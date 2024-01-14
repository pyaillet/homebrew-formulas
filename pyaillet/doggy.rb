# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Doggy < Formula
  desc "Minimal tui (terminal user interface) for docker"
  homepage "https://github.com/pyaillet/doggy"
  url "https://github.com/pyaillet/doggy/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "1cd057bd3c9a3dc001cc0c668b66c1542e25dfc11ed95beb8afe76e417d75cdc"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.2/doggy-0.4.2-darwin-amd64.tar.gz"
      sha256 "5fc7b3bb5f18984ba6962f707dad7e1e12eee00581eb91656eb92d9ae4ebab51"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.2/doggy-0.4.2-darwin-arm64.tar.gz"
      sha256 "2ce483bc4eb986d8e7cd19da96b782cc3444583fa3a3f10933452f2085329380"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.2/doggy-0.4.2-linux-amd64.tar.gz"
      sha256 "c2f22f9d5b3aebfcbf6c9fe19a220cce17033ea12bd785ef73d81c1a7ec96d31"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.2/doggy-0.4.2-linux-arm64.tar.gz"
      sha256 "47eccf13a559742009f1479e9c9d439677764b26c38d6a42a95a0ef8502d865c"
    end
  end

  def install
    bin.install "doggy" => "doggy"
  end

  test do
    assert_match("doggy", shell_output("doggy --version"))
  end
end
