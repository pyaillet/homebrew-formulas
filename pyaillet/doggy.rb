# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Doggy < Formula
  desc "Minimal tui (terminal user interface) for docker"
  homepage "https://github.com/pyaillet/doggy"
  url "https://github.com/pyaillet/doggy/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "3ef8b8dd527bbb69c1fa6f3cbae298260e347e59cdeacc18b43d5d0865d757d1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.5.2/doggy-0.5.2-darwin-amd64.tar.gz"
      sha256 "e59216a9ad33150eb2c938e448cb524d305b17604ab6dc091404b1b10ab57563"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.5.2/doggy-0.5.2-darwin-arm64.tar.gz"
      sha256 "368e9f28faf727a43cf0c2ba8b593f66865992ab3bb5bbc614791453c4b3c7cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pyaillet/doggy/releases/download/v0.5.2/doggy-0.5.2-linux-amd64.tar.gz"
      sha256 "948ab9cdde54131a6edcffedcaeb34b9dcb94edfbf7d4988cacf7024253f4524"
    end

    on_arm do
      url "https://github.com/pyaillet/doggy/releases/download/v0.5.2/doggy-0.5.2-linux-arm64.tar.gz"
      sha256 "45b3f5ebb8dfa509a9748d5eb5b99ecbeedbfa85394b675d2526d65be9da9e1b"
    end
  end

  def install
    bin.install "doggy" => "doggy"
  end

  test do
    assert_match("doggy", shell_output("doggy --version"))
  end
end
