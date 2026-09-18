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
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.0/cludex-darwin-arm64-0.1.0.tar.gz"
      sha256 "4da67df6fe760261d7071279012076b5e00feffd7649c51715f1adf609ec63bf"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.0/cludex-darwin-x64-0.1.0.tar.gz"
      sha256 "b0f33ec9547aa00e7130169d44559b8174e09a813e12c8ce005320b972f293d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.0/cludex-linux-arm64-0.1.0.tar.gz"
      sha256 "501c55f167754fd6e2978e465f5740748e7c4438f8555779c00d3a7f32a5e482"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.0/cludex-linux-x64-0.1.0.tar.gz"
      sha256 "8b737ab61e6803c4845217b687df5f722ac11bdf412643c6f2a5231d405c6add"
    end
  end

  def install
    bin.install "cludex"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cludex --version").strip
  end
end
