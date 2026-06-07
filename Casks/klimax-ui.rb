cask "klimax-ui" do
  version "0.1.2"
  sha256 "6b3476f82fc09916708ef63a14dae0b1dcc7da22fcf267ddd16cc660694210c9"

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
