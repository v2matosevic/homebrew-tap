cask "winhub" do
  version "0.5.0"
  sha256 "515059f29b7f6ba1d21a107dbe55e6dec0699e111fb5adc7dd8f2d448a229b5d"

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
