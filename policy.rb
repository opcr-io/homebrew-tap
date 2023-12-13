# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.2.8"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.8/policy0.2.8_darwin_arm64.zip"
      sha256 "7183cb210fc4dfaf99872a629fec098fa9351422018aaa031a8472c79dc5304c"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.8/policy0.2.8_darwin_x86_64.zip"
      sha256 "d48f518e0b17f7b059ddaa7d99eaac47674c9a597786c1435e7acf4ff1535829"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.8/policy0.2.8_linux_x86_64.zip"
      sha256 "34e1d9b97d3a18833ad7254c628fb9e165a6d54c17d678c4a147cdea6fcd97af"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.8/policy0.2.8_linux_arm64.zip"
      sha256 "ea3635683b1e8f959e02858375de3aac0347f6d9ddcc8aa444bf605233bcb225"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
