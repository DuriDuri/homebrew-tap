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
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.4/cludex-darwin-arm64-0.1.4.tar.gz"
      sha256 "1353188602436a7b507af80488a46137a1755808d0e00aad460ac661a5af894c"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.4/cludex-darwin-x64-0.1.4.tar.gz"
      sha256 "fc4d921555572936fd695a37c077f0f1681fa16a050193ceaa854dd364986fb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.4/cludex-linux-arm64-0.1.4.tar.gz"
      sha256 "a377b5c9e1166a3dd5861ab8a52ed59899ec29b932434f3804335e97c37e233c"
    end
    on_intel do
      url "https://github.com/DuriDuri/cludex/releases/download/v0.1.4/cludex-linux-x64-0.1.4.tar.gz"
      sha256 "c599c692be060eca3b74da32eceef972ec4c1610a2f862e576c9b45b940fa96f"
    end
  end

  def install
    bin.install "cludex"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cludex --version").strip
  end
end
