# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.32"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.32/policy0.1.32_darwin_arm64.zip"
      sha256 "62ad14ca387a24c6496903742785a03ed9236c131814521b4c2cd1a5dcfefc60"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.32/policy0.1.32_darwin_x86_64.zip"
      sha256 "011b1e8b31a5ce6059499c37046d700b1401fe1c24a2f9bd7f43a17b88523ad0"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.32/policy0.1.32_linux_x86_64.zip"
      sha256 "cdc064885bcee5912348a474f9ff437ebf7fdc9eed6bae2026cf7a204d37ffdc"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.32/policy0.1.32_linux_arm64.zip"
      sha256 "bcd209257ba41af3e29f490e5ac657ac9b4cb0bdf1ed463ae9c3a9a2b271e995"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
