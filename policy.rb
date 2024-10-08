# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://opcr.io/"
  version "0.2.19"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.19/policy0.2.19_darwin_x86_64.zip"
      sha256 "38168c062de8516491e76f1f5b3e1a1b03aa5c77ada66bea7401c861fabbac39"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.19/policy0.2.19_darwin_arm64.zip"
      sha256 "5760b3134f3e3f3a727676c37f1123ac827076ac79d16b064a225072cf14e3f1"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.19/policy0.2.19_linux_arm64.zip"
      sha256 "8b2660ae36e763ff09b7638b57d2b763799c121a89155076f31871fca9a9b730"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.2.19/policy0.2.19_linux_x86_64.zip"
      sha256 "0cf18be670836cc5af5b2759398276837163df4ea5a6b09153f7a4c30eaff2d3"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
