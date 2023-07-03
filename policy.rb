# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.2.3"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.3/policy0.2.3_darwin_arm64.zip"
      sha256 "cdff25ca6ca69756895074c2d343854e514ac481002db282252996bbf8d349b8"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.3/policy0.2.3_darwin_x86_64.zip"
      sha256 "9d7dc355cd5cdd3badadc9a3b93782b9c08ec2cd8d4263a6e1b463c11c4b73b5"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.3/policy0.2.3_linux_arm64.zip"
      sha256 "170823fbbf691c2ad62756f6e500bfb5f4ef5f9b0eb4aa22aee7db60f9c8c064"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.3/policy0.2.3_linux_x86_64.zip"
      sha256 "4751b3d63724a03824379c8bec9b56c2ace829e7b89f146f5582a866874f67c7"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
