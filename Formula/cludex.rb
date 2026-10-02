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
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.3/cludex-darwin-arm64-0.1.3.tar.gz"
      sha256 "d5b48387166d28e79d6fb5a240591b9bdcf6b5cdf4d2f59fb89106899c59c185"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.3/cludex-darwin-x64-0.1.3.tar.gz"
      sha256 "9cba1c86e8dfe46cfcac5096c10e6e15a785149049c05e14e79f00e6cdbd1830"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.3/cludex-linux-arm64-0.1.3.tar.gz"
      sha256 "31c8116164a9c63734ffde04d6db28336c2d1137235375f660205b4d5f7d5b41"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.3/cludex-linux-x64-0.1.3.tar.gz"
      sha256 "8f1296acdfacaf8f2afec530363652b5f4a25ad4bad00194b98b0e594743c4da"
    end
  end

  def install
    bin.install "cludex"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cludex --version").strip
  end
end
