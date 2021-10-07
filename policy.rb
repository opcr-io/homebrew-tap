# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Policy < Formula
  desc "policy CLI for building and managing authorization policies"
  homepage "https://aserto.com/"
  version "0.0.34"
  license "Apache License Version 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.34/policy0.0.34_darwin_x86_64.zip"
      sha256 "76911541a3c05f74606a8342fb40baa357e6aa33147a2947d2598afe4b604d26"
    end
    if Hardware::CPU.arm?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.34/policy0.0.34_darwin_arm64.zip"
      sha256 "6a6f928cc8a366dd84505be787f63946fd50d588deb12ce69a3f17e3a6b09b03"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.34/policy0.0.34_linux_x86_64.zip"
      sha256 "fd802a700257835a296729c9437f29abc036b782d7c88ffeb360b0a1f00a1c73"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/opcr-io/policy/releases/download/v0.0.34/policy0.0.34_linux_arm64.zip"
      sha256 "6dcd8298798b8b30c66e75d85965714d2a5d747207df7e767be92e5e201b2fb2"
    end
  end

  def install
    bin.install "policy"
  end

  test do
    system "#{bin}/policy version"
  end
end
