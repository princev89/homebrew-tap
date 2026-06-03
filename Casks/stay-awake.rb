cask "stay-awake" do
  version "1.0.1"
  sha256 :no_check

  url "https://github.com/princev89/stay-awake/releases/download/v#{version}/Stay.Awake.zip"
  name "Stay Awake"
  desc "Keep your Mac awake while builds, scripts, and long-running tasks execute"
  homepage "https://github.com/princev89/stay-awake"

  app "Stay Awake.app"

  zap trash: [
    "~/Library/Application Support/StayAwake",
    "~/Library/LaunchAgents/com.stayawake.app.plist",
  ]
end
