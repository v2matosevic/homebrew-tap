cask "winhub" do
  version "0.7.0"
  sha256 "c428055526eb7dc738e204f53c4649da68a83c8b41e3164877afe2a554e2bf20"

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
