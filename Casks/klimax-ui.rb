cask "klimax-ui" do
  version "0.1.10"
  sha256 "26d69bf9dd60624b452d28782b314ab021c5ec7753db1cabd58d4bb7ba04bd2e"

  url "https://github.com/bcollard/klimax-ui/releases/download/v#{version}/KlimaxUI.dmg"
  name "Klimax UI"
  desc "macOS companion app for klimax — view VMs, kind clusters, and registry mirrors"
  homepage "https://github.com/bcollard/klimax-ui"

  depends_on macos: :sonoma

  app "KlimaxUI.app"

  zap trash: [
    "~/Library/Preferences/dev.bcollard.KlimaxUI.plist",
  ]
end
