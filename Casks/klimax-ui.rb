cask "klimax-ui" do
  version "0.1.9"
  sha256 "a28cbc1dbda7809f0999b9ffcdced3092eb40daa33d7551aab5d2f1b263f75d9"

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
