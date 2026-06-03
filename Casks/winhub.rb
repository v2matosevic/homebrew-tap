cask "winhub" do
  version "0.4.0"
  sha256 "7cb3a4c604771ec1b5dc1ef96c14e9345a67513fb5410287cff8a6ce3c1cd58e"

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
