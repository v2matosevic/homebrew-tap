cask "winhub" do
  version "0.6.0"
  sha256 "ab060074f8319c923551fb5b5cbe2569c68d12045fd26188fa6b5f1f0ffbc715"

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
