cask "klimax-ui" do
  version "0.1.3"
  sha256 "b84a31124cf39e605c6363b02eefd6b62bac347d949036fbfdb5f3688db5bf8d"

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
