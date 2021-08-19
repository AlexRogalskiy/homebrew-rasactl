# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rasactl < Formula
  desc "rasactl deploys Rasa X / Enterprise on your local or remote Kubernetes cluster and manages Rasa X / Enterprise deployments."
  homepage "https://github.com/RasaHQ/rasactl"
  version "0.0.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.7/rasactl_0.0.7_darwin_amd64.tar.gz"
      sha256 "e7ae7aec261cad6fd45d94925754a9104c32f128b0f9300a807e708dcad9ace0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.7/rasactl_0.0.7_darwin_arm64.tar.gz"
      sha256 "70da3c4406fe4dcfdef38423d6f1ab5b31d52e8a034ebc7f2d7a971043b6f4ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/RasaHQ/rasactl/releases/download/0.0.7/rasactl_0.0.7_linux_amd64.tar.gz"
      sha256 "490012ea6aa577f1954348c24fc1e1d1cb3ddccaf15f86acfa24c0e31b441e51"
    end
  end

  def install
    bin.install "rasactl"
    bash_completion.install "completions/goreleaser.bash" => "rasactl"
    zsh_completion.install "completions/goreleaser.zsh" => "_rasactl"
    fish_completion.install "completions/goreleaser.fish"
  end

  test do
    system "#{bin}/rasactl --version"
  end
end
