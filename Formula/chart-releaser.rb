# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ChartReleaser < Formula
  desc "Hosting Helm Charts via GitHub Pages and Releases"
  homepage "https://github.com/helm/chart-releaser/"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helm/chart-releaser/releases/download/v1.7.0/chart-releaser_1.7.0_darwin_arm64.tar.gz"
      sha256 "4c825ccfb7eb4f2b7a155e598ea11dd127996b787ad272128041162f63861564"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.7.0/chart-releaser_1.7.0_darwin_amd64.tar.gz"
      sha256 "bdaed0d489f4d17ed0c84c5413be9c50acc1481169d37e0ca5d629498ec52417"

      def install
        bin.install "cr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helm/chart-releaser/releases/download/v1.7.0/chart-releaser_1.7.0_linux_arm64.tar.gz"
      sha256 "45c4087ee4450af5ccc54fd4c20fd2f740cb0a50c097e4c2ed64ba28f0255537"

      def install
        bin.install "cr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.7.0/chart-releaser_1.7.0_linux_amd64.tar.gz"
      sha256 "121a16d4e38b348decb977b8257d4bddab3323681c1819bab4870603138087cf"

      def install
        bin.install "cr"
      end
    end
  end

  test do
    system "#{bin}/cr version"
  end
end
