cask "tatami" do
  version "0.2.0"
  sha256 "dc556ca04292cd8eb4ee2aef21bd93bd9addabc6e19ea922d06f63c89bb748aa"

  url "https://github.com/basuev/tatami/releases/download/v#{version}/tatami.zip"
  name "tatami"
  desc "minimal dwm-like tiling window manager for macOS"
  homepage "https://github.com/basuev/tatami"

  app "tatami.app"

  postflight do
    system "open", "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"
  end

  zap trash: []
end
