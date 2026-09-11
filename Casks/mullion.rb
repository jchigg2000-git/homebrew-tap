cask "mullion" do
  version "1.0.1"
  sha256 "73e90e8881dfd04d9e9e06ad32b70705fc6ab6d202f0fe942fa6287e3916d6a9"

  url "https://github.com/jchigg2000-git/mullion/releases/download/v#{version}/Mullion-#{version}.dmg"
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
