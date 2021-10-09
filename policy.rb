# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.0.49"
  license "Apache License Version 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.49/policy0.0.49_darwin_x86_64.zip"
      sha256 "5b3a418c5975ebbaadd2f6fb0f7cbb0150c2a5fc9979ddcf0cd9950729cc1b43"
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.49/policy0.0.49_darwin_arm64.zip"
      sha256 "f59aecdf51298ab47189da9bc2402ac4118dd600856a7a6691dbea4a624ddb39"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.49/policy0.0.49_linux_x86_64.zip"
      sha256 "45e707fa51780661ca06543d811dee5167913ce68038b5c9f72688a76ec20fae"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.49/policy0.0.49_linux_arm64.zip"
      sha256 "98bb9ac19edf54ec02c8418430b67a51168ce16a727f904b3e5bf520173e797c"
    end
  end

  def install
    bin.install "policy"
  end

  test do
    system "#{bin}/policy version"
  end
end
