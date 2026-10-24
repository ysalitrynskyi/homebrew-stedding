# Homebrew tap for Stedding

[Stedding](https://stedding.dev/) is an open-source, Arc-style browser built on Chromium.

```bash
brew install --cask ysalitrynskyi/stedding/stedding
```

Apple silicon, macOS 13 or later. Stedding updates itself; `brew upgrade` is not needed,
though the cask follows each release too. Source and releases:
https://github.com/ysalitrynskyi/stedding-browser

The cask follows the release GitHub marks as latest: `.github/workflows/bump.yml` checks every
six hours, and the browser repository's `tooling/publish-release` starts it as soon as a Mac
image is published.
