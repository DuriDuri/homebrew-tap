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
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.2/cludex-darwin-arm64-0.1.2.tar.gz"
      sha256 "55ddb666a34acae79ca22b93e53ef046613207043aa8e64d51e4638beb4e5e13"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.2/cludex-darwin-x64-0.1.2.tar.gz"
      sha256 "7281a4fcfd30bc02fa8b386e95dbabeb37149a9dd238338648c46ac2aba0e6d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.2/cludex-linux-arm64-0.1.2.tar.gz"
      sha256 "018bf7a189e3d36151868cd1080b29b3479fe97f51b41f2c1a9cb96c020864ce"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.2/cludex-linux-x64-0.1.2.tar.gz"
      sha256 "50ecb41e577b797d73f74bc5988982782b80a292f972401bfd39f9f61d68676c"
    end
  end

  def install
    bin.install "cludex"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cludex --version").strip
  end
end
