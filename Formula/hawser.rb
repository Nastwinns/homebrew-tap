# Homebrew formula for the haw binary (tap: Nastwinns/homebrew-tap).
# Generated from this template by packaging/render.py during the release
# workflow, which fills in the version and per-platform SHA256 values.
class Hawser < Formula
  desc "Reproducible multi-repo stack composition + cross-repo MR orchestration"
  homepage "https://github.com/Nastwinns/keelson"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/Nastwinns/keelson/releases/download/v#{version}/haw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "85620bf0ec2e88066133f87b51b1cb9035bad52c4592d29b80698979bdee3151"
    end
    on_intel do
      url "https://github.com/Nastwinns/keelson/releases/download/v#{version}/haw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "40ac53098fab2626506a2606e238308e63eb91b4d8d30254ace888fd962e55ce"
    end
  end

  on_linux do
    url "https://github.com/Nastwinns/keelson/releases/download/v#{version}/haw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fcabbdf633710ebac1057840af18a788cf936b66efd086b87deb85781cfe3fa2"
  end

  def install
    bin.install "haw"
  end

  test do
    assert_match "haw", shell_output("#{bin}/haw --version")
  end
end
