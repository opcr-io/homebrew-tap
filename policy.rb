# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.0.42"
  license "Apache License Version 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.42/policy0.0.42_darwin_x86_64.zip"
      sha256 "9bf3829f087da66067273f916c8a41dbca10062ede3c32897f7c19d9260a2d44"
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.42/policy0.0.42_darwin_arm64.zip"
      sha256 "d8e2d69548d4fb6c76d35a7e70ab812e5a5f05a1f5ca55b3bed3a8e0946c0acd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.42/policy0.0.42_linux_x86_64.zip"
      sha256 "c8c7ea27c20c48bc42e0ab5992be3b34c9cc1c4bef51bf58bfe2731dc62517f7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.42/policy0.0.42_linux_arm64.zip"
      sha256 "f3c6a5cc83495e56504154b26901ded5a32e3c92ce2628707a781e66aa4df7fb"
    end
  end

  def install
    bin.install "policy"
  end

  test do
    system "#{bin}/policy version"
  end
end
