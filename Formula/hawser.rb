# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/hawser"
  version "0.1.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2edc2238e47d87b0e0f0ee4953695907df345ed97d34a0035ab8f15f4947a74b"
    end
    on_intel do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3855ac6113916161494b78e3129ec73ccf635dd34b71c7bef76c375b808f6b83"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f82d576018c17fce1589a3349855f495c7aba6d220566a9922dd7c26346c399b"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
