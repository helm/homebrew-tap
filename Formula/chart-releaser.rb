# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChartReleaser < Formula
  desc "Hosting Helm Charts via GitHub Pages and Releases"
  homepage "https://github.com/helm/chart-releaser/"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.0/chart-releaser_1.6.0_darwin_amd64.tar.gz"
      sha256 "6c3713aa51f0157d3dd7723042551c0a3dfd9c4225a5b91fb1bf0da1663ad2bf"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.0/chart-releaser_1.6.0_darwin_arm64.tar.gz"
      sha256 "9e6b48c7bfeb2ede9a01354d9234ba9ea9c227ae32fa335a801d42e6a3962619"

      def install
        bin.install "cr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.0/chart-releaser_1.6.0_linux_amd64.tar.gz"
      sha256 "c8bb71abd84cf0e569f62efe6b9a4b3974d337129f5f4c72c7dd2d17efb4ab20"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helm/chart-releaser/releases/download/v1.6.0/chart-releaser_1.6.0_linux_arm64.tar.gz"
      sha256 "e9f00caf2555046b0dd0c3ffe571f23382b365150fb4d1dc19fe4cc10618823a"

      def install
        bin.install "cr"
      end
    end
  end

  test do
    system "#{bin}/cr version"
  end
end
