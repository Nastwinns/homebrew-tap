# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/hawser"
  version "0.1.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2e263aae79e31e0887815ab070bca7746eb4fbfcd672dfe7ab185661f30f4085"
    end
    on_intel do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "54b087f227fa22e63a82e100a4d74f013c1188004236f75ad989d6385ebc04a5"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0b4a2227e9bfe8ff7296e7d2f0ecdf1056c36f5e625232d8d8535449f46b516c"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
