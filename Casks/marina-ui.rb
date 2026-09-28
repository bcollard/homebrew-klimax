cask "marina-ui" do
  version "0.3.0"
  sha256 "4d68f62af665ca770f338d809259b1f078b1866c5c3704ccaaec4528c0e24855"

  url "https://github.com/bcollard/marina-ui/releases/download/v#{version}/MarinaUI.dmg"
  name "Marina"
  desc "macOS companion app for the marina CLI and the kind clusters it manages"
  homepage "https://github.com/bcollard/marina-ui"

  depends_on macos: ">= :sonoma"

  app "MarinaUI.app"

  zap trash: [
    "~/Library/Preferences/dev.bcollard.MarinaUI.plist",
  ]
end
