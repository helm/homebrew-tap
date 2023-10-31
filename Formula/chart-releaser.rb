# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChartReleaser < Formula
  desc "Hosting Helm Charts via GitHub Pages and Releases"
  homepage "https://github.com/helm/chart-releaser/"
  version "1.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.1/chart-releaser_1.6.1_darwin_arm64.tar.gz"
      sha256 "76c43b9c3b24f33b9181e89b6dd42d9189fc17b8f55411d85f3064889145eb0d"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.1/chart-releaser_1.6.1_darwin_amd64.tar.gz"
      sha256 "d80ac97afc8b3d21dbf8fd2c2b042d1285fc05cea1fc0de40e2755d3753c37d4"

      def install
        bin.install "cr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.1/chart-releaser_1.6.1_linux_arm64.tar.gz"
      sha256 "35a7ff25c8917b15a30e1367e1b996a132db7da2c39e8810b90cb96825fdebe8"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.1/chart-releaser_1.6.1_linux_amd64.tar.gz"
      sha256 "d4a2ffa825ff1b60a1cce819ce87eec337cf16059ca3d8a053e20cac39cf9e0a"

      def install
        bin.install "cr"
      end
    end
  end

  test do
    system "#{bin}/cr version"
  end
end
