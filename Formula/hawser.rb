# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/hawser"
  version "0.1.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "915abfacf3186e1f95d17fbef132cbd35e63dd38843ba6226184747285053347"
    end
    on_intel do
      url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d9f8963c47ecc262f1e513a6ab60a3c47eeca01e96790adfae7bb894615dcb11"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/hawser/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "048a0011a50f5009fb31c53e91617e8ca4e37320b7e985d93a0d7bde9c38be7a"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
