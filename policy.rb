# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.0.40"
  license "Apache License Version 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.40/policy0.0.40_darwin_x86_64.zip"
      sha256 "e965aa103122cadc64e40d35553e3e7038f0ee3cb01a69a7ae5017e3d86e108b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.40/policy0.0.40_darwin_arm64.zip"
      sha256 "94976b76c9a7e5794547e7a94bae583f30d8f3fb575e95054af6212fd3851984"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.40/policy0.0.40_linux_x86_64.zip"
      sha256 "433d03b4b0bb33c2614ed94e08799c983ac9d348823f08370e87027636a65c2e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.40/policy0.0.40_linux_arm64.zip"
      sha256 "ed9fdb9431d6ce6329715aacf808abbb1235dcddb6e842141c896da0493d0829"
    end
  end

  def install
    bin.install "policy"
  end

  test do
    system "#{bin}/policy version"
  end
end
