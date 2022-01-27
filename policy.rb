# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.3"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.3/policy0.1.3_darwin_x86_64.zip"
      sha256 "9beaa4308a530b878b2ed4d870e48815de3d5e0ce1612352bcba70f4bc37cec1"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.3/policy0.1.3_darwin_arm64.zip"
      sha256 "ddb01e9526063d26725e06745903f5dae9c8035cc6b694651ed3fd4f8c59f388"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.3/policy0.1.3_linux_arm64.zip"
      sha256 "b24393d3e11529a72c80b2544c92277cb8d112949e26ef86332b44237edb59bd"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.3/policy0.1.3_linux_x86_64.zip"
      sha256 "c7f4acc6402d4f25ce44d8e0186afafe9fe47602fb14742719292c74bc81c69f"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
