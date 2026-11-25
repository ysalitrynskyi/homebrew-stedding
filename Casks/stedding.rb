cask "stedding" do
  version "0.7.2"
  sha256 "6ad53e1f3ea49a9015b6ba087bf93aa0d691f4c132fb020e7f35be601ab430f5"

  url "https://github.com/ysalitrynskyi/stedding-browser/releases/download/v#{version}/Stedding-#{version}-arm64.dmg"
  name "Stedding"
  desc "Open-source Arc-style browser built on Chromium"
  homepage "https://stedding.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Stedding.app"

  zap trash: [
    "~/Library/Application Support/Stedding",
    "~/Library/Caches/dev.stedding.Stedding",
    "~/Library/Caches/Stedding",
    "~/Library/HTTPStorages/dev.stedding.Stedding",
    "~/Library/Preferences/dev.stedding.Stedding.plist",
    "~/Library/Saved Application State/dev.stedding.Stedding.savedState",
  ]
end
