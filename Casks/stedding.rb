cask "stedding" do
  version "0.4.0-beta.19"
  sha256 "35fd75ff40c8f21dbde23ad3197a7d898889a0c18483694c3f37f17bb6f79dce"

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
