# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.1.40"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.40/policy0.1.40_darwin_arm64.zip"
      sha256 "9f50deffed77f6f7d0d62d4a37f07293c4fda3fd35892161b8814373323d764f"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.40/policy0.1.40_darwin_x86_64.zip"
      sha256 "ae526fb3c55881a566f656ae0633b7f29a40b46300fb172d931ca6c2079aa17c"

      def install
        bin.install "policy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.40/policy0.1.40_linux_x86_64.zip"
      sha256 "efbf09c9b5faf307484ee55c816900415cabee7bb825fe449bc508d392875fcc"

      def install
        bin.install "policy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.1.40/policy0.1.40_linux_arm64.zip"
      sha256 "9bec768ef5484f76ac64fa51222f4f522adda1f1f57bd2a80adc4349ac87f572"

      def install
        bin.install "policy"
      end
    end
  end

  test do
    system "#{bin}/policy version"
  end
end
