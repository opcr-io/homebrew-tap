# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.0.58"
  license "Apache License Version 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.58/policy0.0.58_darwin_x86_64.zip"
      sha256 "ac6802635c7fc8f25b8298803e0981df6247096cba17256b1d1863aa1ec680e5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.58/policy0.0.58_darwin_arm64.zip"
      sha256 "fe8c10ca163ba46726bd2627ef80e2726892d51727c787935a6447414fb69084"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.58/policy0.0.58_linux_x86_64.zip"
      sha256 "ebf790a0d9c3cc73b6ca83c61a5d273564e1d46ec57847096552d9beec675b3e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.58/policy0.0.58_linux_arm64.zip"
      sha256 "0864a46c1c91f1472e19e1309e2b7ad6dd7817b83d7df5a1a22e5970765c2098"
    end
  end

  def install
    bin.install "policy"
  end

  test do
    system "#{bin}/policy version"
  end
end
