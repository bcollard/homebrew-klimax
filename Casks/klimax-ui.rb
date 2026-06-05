cask "klimax-ui" do
  version "0.1.1"
  sha256 "bda85cfe54e7802f15b4d359b944b5ffde001fdc5d8d3a7fe61baca9e98600d7"

  url "https://github.com/bcollard/klimax-ui/releases/download/v#{version}/KlimaxUI.dmg"
  name "Klimax UI"
  desc "macOS companion app for klimax — view VMs, kind clusters, and registry mirrors"
  homepage "https://github.com/bcollard/klimax-ui"

  depends_on macos: ">= :sonoma"

  app "KlimaxUI.app"

  zap trash: [
    "~/Library/Preferences/dev.bcollard.KlimaxUI.plist",
  ]
end
