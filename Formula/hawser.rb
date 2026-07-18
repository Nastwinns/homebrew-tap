# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/hawser"
  version "0.1.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4f8a0f838a9bf09bd40f6ad6119025abe5bbc46db363c769e9d37ad1749cdcd4"
    end
    on_intel do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6eebdaa86e312ad5df7b65c2989e8fb328d70e2424c6642b3290343e9e18b4bc"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58c5b121318d5517d02cfa4a7e7b563ce1bf44657631eef8bb3b621cb6cf97c4"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
