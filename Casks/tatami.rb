cask "tatami" do
  version "0.1.0"
  sha256 "72b65aaf86955ca34c93029e218aff5bc486a64cd1c20ac79c7a4e3f913af6ad"

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
