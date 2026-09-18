# Rendered by release/render-formula.sh from packaging/homebrew/cludex.rb.tmpl
# in the cludex source repo. Edits made in the tap are overwritten on release.
# The version comes from the URL, so the archive name ends with it: every
# Homebrew version scans "cludex-linux-x64-0.1.0.tar.gz" correctly, while
# "cludex-0.1.0-linux-x64.tar.gz" scans as "64" outside GitHub URLs.
class Cludex < Formula
  desc "Arcade games and daily trivia for the terminal while your coding agent works"
  homepage "https://getcludex.com"

  on_macos do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.1/cludex-darwin-arm64-0.1.1.tar.gz"
      sha256 "e14097a78e860250618fa7bbc7ce8e71d92d9c72a2b6420f1b42a2fa753cf540"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.1/cludex-darwin-x64-0.1.1.tar.gz"
      sha256 "08051881f9f879e1178accb384a2d452fb7567b7fc04c3e3f1a43c7c2cfb470b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.1/cludex-linux-arm64-0.1.1.tar.gz"
      sha256 "6ff665126f6594170b250400d21adacaaf9c0362823d8c73a988ba82500de96a"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.1/cludex-linux-x64-0.1.1.tar.gz"
      sha256 "dab385f1321f031ad43692eaf294850699578991234357db25006e524f39435c"
    end
  end

  def install
    bin.install "cludex"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cludex --version").strip
  end
end
