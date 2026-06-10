cask "winhub" do
  version "1.0.0"
  sha256 "c7977414800dbf1c2b393b330591e01d77f19c8ffb52c5fcfa34d71267553eeb"

  url "https://github.com/v2matosevic/WinHub/releases/download/v#{version}/WinHub-#{version}.dmg"
  name "WinHub"
  desc "Menu-bar hub of small macOS tweaks for ex-Windows users"
  homepage "https://github.com/v2matosevic/WinHub"

  depends_on macos: ">= :sonoma"

  app "WinHub.app"

  zap trash: [
    "~/Library/Application Support/WinHub",
    "~/Library/Preferences/hr.version2.winhub.plist",
  ]
end
