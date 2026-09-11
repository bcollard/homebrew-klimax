cask "klimax-ui" do
  version "0.2.1"
  sha256 "922aa3c741aa377bc051a4e0347a7c8bcec75c1995e8ea66ffb722bda7e1ff54"

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
