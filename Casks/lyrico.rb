cask "lyrico" do
  version "0.3.1"
  sha256 "0f4cb345a661801a1167e6bd62abc3335766f73192823bec75ea47c9d9930232"

  url "https://github.com/toba/lyrico/releases/download/v#{version}/Lyrico-#{version}.dmg"
  name "Lyrico"
  desc "Floating synced-lyrics overlay for Swinsian"
  homepage "https://github.com/toba/lyrico"

  depends_on macos: ">= :tahoe"

  app "Lyrico.app"

  zap trash: [
    "~/Library/Preferences/app.toba.lyrico.plist",
    "~/Library/Caches/app.toba.lyrico",
  ]
end
