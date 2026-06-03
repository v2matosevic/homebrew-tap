cask "winhub" do
  version "0.3.0"
  sha256 "b79bb644845c4f1b22de28f0ffc61b4ebde8945e3e49916318b276aa695ea4da"

  url "https://github.com/v2matosevic/WinHub/releases/download/v#{version}/WinHub-#{version}.dmg"
  name "WinHub"
  desc "Menu-bar hub of small macOS tweaks for ex-Windows users"
  homepage "https://github.com/v2matosevic/WinHub"

  depends_on macos: ">= :sonoma"

  app "WinHub.app"

  zap trash: [
    "~/Library/Preferences/hr.version2.winhub.plist",
  ]
end
