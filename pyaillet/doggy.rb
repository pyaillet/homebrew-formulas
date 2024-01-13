# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Doggy < Formula
  desc "Minimal tui (terminal user interface) for docker"
  homepage "https://github.com/pyaillet/doggy"
  url "https://github.com/pyaillet/doggy/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "e68a54ed888175ad3b81e98af76ef778624ec3edd194357bf9584adfcf7eb458"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.1/doggy-0.4.1-darwin-amd64.tar.gz"
      sha256 "35214bdc10f10f2e15e915c5d9a4b266941af2f2ca02b479a04cfd691dcf4865"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.1/doggy-0.4.1-darwin-arm64.tar.gz"
      sha256 "3e132744f2ea94de6963c0493d562cf1418ba22e8890d195564ca7bb53b40be8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.1/doggy-0.4.1-linux-amd64.tar.gz"
      sha256 "8347b89b29b289f191839e4e27c4c69160ce251a671301ae553dcfc5a80d9531"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.4.1/doggy-0.4.1-linux-arm64.tar.gz"
      sha256 "5c63e8c9a296b5943f89d626c87ffa0323d2016ff62d7bddf895790e39741b58"
    end
  end

  def install
    bin.install "doggy" => "doggy"
  end

  test do
    assert_match("doggy", shell_output("doggy --version"))
  end
end
