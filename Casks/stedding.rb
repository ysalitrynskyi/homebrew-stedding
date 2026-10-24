cask "stedding" do
  version "0.3.0-beta.13"
  sha256 "3980d2f0e3d7cf380f0a09801227ebe0b151dcb83e1f01c17554d7cadf3415f5"

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
