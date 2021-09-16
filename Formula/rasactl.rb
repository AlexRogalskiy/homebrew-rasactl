# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasactl < Formula
  desc "rasactl deploys Rasa X / Enterprise on your local or remote Kubernetes cluster and manages Rasa X / Enterprise deployments."
  homepage "https://github.com/RasaHQ/rasactl"
  version "0.0.22"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.22/rasactl_0.0.22_darwin_amd64.tar.gz"
      sha256 "3c853337b1d2e72bb7be1f01ebf5d32e9c70eb836d231e4f89272c640e5d2439"
    end
    if Hardware::CPU.arm?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.22/rasactl_0.0.22_darwin_arm64.tar.gz"
      sha256 "92f79e946bf7c32d79ead252f40fb9173833ba568626d4d288cc5ab0485fa13c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.22/rasactl_0.0.22_linux_amd64.tar.gz"
      sha256 "56a96f3dfe0ab8634c451d4c006885542a274736e90ea7f650f7bd4e39dab899"
    end
  end

  def install
    bin.install "rasactl"
    bash_completion.install "completions/rasactl.bash" => "rasactl"
    zsh_completion.install "completions/rasactl.zsh" => "_rasactl"
    fish_completion.install "completions/rasactl.fish"
  end

  test do
    system "#{bin}/rasactl --version"
  end
end
