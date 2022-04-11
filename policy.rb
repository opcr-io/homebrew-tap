# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.25"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.25/policy0.1.25_darwin_arm64.zip"
      sha256 "a2e069f5f8a7526a25c8fdb9c9b70db2ab16e815b81545ebe85892dbb6abbe83"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.25/policy0.1.25_darwin_x86_64.zip"
      sha256 "5859eb5143d232fa0565391ebb76c270a4bc2b378070813e9dd6c867e074234c"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.25/policy0.1.25_linux_arm64.zip"
      sha256 "182e2b868aa5eb18baf81feb775b002b1c61eb8414299bb4de47be6a37749183"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.25/policy0.1.25_linux_x86_64.zip"
      sha256 "f8a29fd2a44183d6842ecc231bb61cd286a553eafc9eb12673d05f1a67943841"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
