cask "stay-awake" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/princev89/stay-awake/releases/download/v#{version}/Stay.Awake.zip"
  name "Stay Awake"
  desc "Keep your Mac awake while builds, scripts, and long-running tasks execute"
  homepage "https://github.com/princev89/stay-awake"

  app "Stay Awake.app"

  # Automatically clear quarantine to bypass Gatekeeper's "damaged app" prompt
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Stay Awake.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/StayAwake",
    "~/Library/LaunchAgents/com.stayawake.app.plist",
  ]
end
