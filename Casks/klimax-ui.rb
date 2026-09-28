cask "klimax-ui" do
  version "0.2.7"
  sha256 "c41bf81c982db8f4c0adb2a0004fb45fa4c90b05495392efeb4dc18dce6cedbd"

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
