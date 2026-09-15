# DuriDuri Homebrew tap

Homebrew formulae for [cludex](https://getcludex.com): arcade games and daily
trivia for the terminal while your coding agent works.

```sh
brew install duriduri/tap/cludex
```

That taps this repository and installs the latest stable release. Then:

```sh
brew upgrade cludex      # update
brew uninstall cludex    # remove
brew untap duriduri/tap  # forget the tap
```

The formula installs a prebuilt standalone binary for macOS (Apple silicon and
Intel) and Linux (x64 and arm64) from
[DuriDuri/cludex releases](https://github.com/DuriDuri/cludex/releases), checked
against its SHA256.

## How this repository is maintained

`Formula/cludex.rb` is generated. The cludex release workflow renders it from a
template on every stable release and pushes it here, so changes made directly in
this repository are overwritten by the next release. Pre-releases are never
published to this tap.

Problems with cludex itself: https://github.com/DuriDuri/cludex/issues
