# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/hawser"
  version "0.1.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5aef19914289f0fc9c8004a60a80f45f23be12a11ee35b2d8e707200afd84b19"
    end
    on_intel do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6a9db2aa491c9e1e1f3ee2ad824d4171d673cb6778c5d63ae58cb7f702314aa1"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f1436cd8436785e45d3e99829ff1f5e567d7f744e715577503f72f0c4b2f8a55"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
