cask "mullion" do
  version "1.0.0"
  sha256 "f9ebfceaddeb5a9d14a0ff790a5025b7ca2f4b2886bed492878edcd4f604b147"

  url "https://github.com/jchigg2000-git/mullion/releases/download/v#{version}/Mullion-#{version}.dmg",
      verified: "github.com/jchigg2000-git/mullion/"
  name "Mullion"
  desc "Window manager for ultrawide and superwide displays"
  homepage "https://github.com/jchigg2000-git/mullion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Mullion.app"

  uninstall quit: "com.mullion.Mullion"

  zap trash: [
    "~/Library/Application Support/Mullion",
    "~/Library/Caches/com.mullion.Mullion",
    "~/Library/Preferences/com.mullion.Mullion.plist",
  ]
end
