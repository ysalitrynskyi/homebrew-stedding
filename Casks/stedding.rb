cask "stedding" do
  version "0.4.0-beta.11"
  sha256 "af90e82ed0784cf88a3e30dcccf8dca86c0fda64b20dbedc7d96b6b031ad4f5d"

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
  depends_on macos: ">= :ventura"

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
