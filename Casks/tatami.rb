cask "tatami" do
  version "0.5.0"
  sha256 "74418d1cffb4a577c5499f2da321af2f9754333a66ca649fb9bd9d8ec7e858db"

  url "https://github.com/basuev/tatami/releases/download/v#{version}/tatami.zip"
  name "tatami"
  desc "minimal dwm-like tiling window manager for macOS"
  homepage "https://github.com/basuev/tatami"

  postflight do
    app_path = "/Applications/tatami.app"
    staged_app = "#{staged_path}/tatami.app"

    if Dir.exist?(app_path)
      system_command "/bin/cp",
                     args: ["#{staged_app}/Contents/MacOS/tatami",
                            "#{app_path}/Contents/MacOS/tatami"]
      system_command "/bin/cp",
                     args: ["#{staged_app}/Contents/Info.plist",
                            "#{app_path}/Contents/Info.plist"]
    else
      system_command "/bin/cp", args: ["-R", staged_app, app_path]
      system_command "/usr/bin/codesign", args: ["--force", "--sign", "-", app_path]
      system "open", "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"
    end
  end

  uninstall delete: "/Applications/tatami.app"

  zap trash: []
end
