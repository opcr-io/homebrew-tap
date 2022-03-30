# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.20"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.20/policy0.1.20_darwin_arm64.zip"
      sha256 "4ecda813632a9e42da62f3c2b0ba0e6c5d659bd22b8990ade554afb85d429429"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.20/policy0.1.20_darwin_x86_64.zip"
      sha256 "6a886332adb2455c503fd70bfa38c22414ef03e0e45596170bced8ea51e6d890"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.20/policy0.1.20_linux_x86_64.zip"
      sha256 "d9c7fa291c579f6a50859c1dc60ad242372d371e63545eb51519b3fa9e6d6398"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.20/policy0.1.20_linux_arm64.zip"
      sha256 "9cd8f51f4a442e1e2585c0a94011cf4daf70ee567c5a9dc6248dfe1717d90329"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
