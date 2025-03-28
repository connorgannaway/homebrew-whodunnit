# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Whodunnit < Formula
  desc "Tool for counting and blaming lines in a repo."
  homepage "https://github.com/connorgannaway/whodunnit"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/connorgannaway/whodunnit/releases/download/v0.1.2/whodunnit_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "94554bb0d93df16635bbefdaeccf56dba13493ca52fb2d7f51c618fa98fbba6b"

      def install
        bin.install "whodunnit"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/connorgannaway/whodunnit/releases/download/v0.1.2/whodunnit_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "c608aa74220214a9810753e771cce6f391f92370dcdf54029bfceb04f0f65963"

      def install
        bin.install "whodunnit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/connorgannaway/whodunnit/releases/download/v0.1.2/whodunnit_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "f22039f142a73cf7b0b2f61c3d1c68dc8dffb3800ef3696547c03ff85209e6ba"

        def install
          bin.install "whodunnit"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/connorgannaway/whodunnit/releases/download/v0.1.2/whodunnit_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "7575a7fc6bef40d27860ed945895e6b51e9a6fa4edb0caae3b2bbc9fa59449fc"

        def install
          bin.install "whodunnit"
        end
      end
    end
  end
end
