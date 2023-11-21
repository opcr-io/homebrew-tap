# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.2.5"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.5/policy0.2.5_darwin_x86_64.zip"
      sha256 "cd0420d602cee08e770f623340c21d2af0364f035b35e30e7a80a937e5cabc75"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.5/policy0.2.5_darwin_arm64.zip"
      sha256 "afd789e051df2b4073da4b0af8fa255ef41b5d4b74cfe989aa476548df2ec48a"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.5/policy0.2.5_linux_arm64.zip"
      sha256 "5ebc7a88d11ff9c1d31d07df7d82710db8f992515c3a99d92fccabc29140f3e2"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.5/policy0.2.5_linux_x86_64.zip"
      sha256 "4aa2992fd42e0e874775c60d2fc251d696510013379f421844565f8d4614d18d"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
