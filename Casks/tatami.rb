cask "tatami" do
  version "0.3.1"
  sha256 "cae68c208b0981165f7500111fe0b710282f496cec670ec82bf0d5553dee617c"

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
