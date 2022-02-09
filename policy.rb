# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.4"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.4/policy0.1.4_darwin_arm64.zip"
      sha256 "020573d5ac40461539fad913c84d77726f2bc33781e2045951cf5f72dea5ae97"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.4/policy0.1.4_darwin_x86_64.zip"
      sha256 "d85547c60d7a226ef7f94ed2719fb3a51edc2ea7eee4ae750a6bad18c04a6bf4"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.4/policy0.1.4_linux_arm64.zip"
      sha256 "e8f6d4e1bc50fad088bedc9beba4ca60195bb51e2dff78407afaa84496def401"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.4/policy0.1.4_linux_x86_64.zip"
      sha256 "be6b6e5220a182981f847c72b4f46cda17c1ff97538747b57b974f92cfe49914"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
