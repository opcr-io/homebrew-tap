# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.39"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.39/policy0.1.39_darwin_x86_64.zip"
      sha256 "f2212b8c0b07e9733226b70125eafb77eeb808495519416df8e0efc4e8f17e6c"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.39/policy0.1.39_darwin_arm64.zip"
      sha256 "fdc603e6c5910768cdc9a7c80736ee35cef7982c13f221046d0fa5e2335546bf"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.39/policy0.1.39_linux_arm64.zip"
      sha256 "2386acdd867a8690725e5b8f95c34f04685e48154f5045ea69b2872b2ad368fd"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.39/policy0.1.39_linux_x86_64.zip"
      sha256 "d101b31d8a8802970dd08774f023ee21b01b9edaa3f44ef8623190cb3dd25b0a"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
