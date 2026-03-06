cask "joai" do
  version "0.32.1"

  on_arm do
    sha256 "518e81e728561219cb9f836f08329472e5e62c5b0d2af685cb5b466c5a58d1f0"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ca6904c1f93adcf0bdcdde834c98e0015f81ab77ce0e3ad71496480017963507"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_x64.app.tar.gz"
  end

  name "JoAi"
  desc "Desktop app for workspace management, file operations, and agent interactions"
  homepage "https://joai.ai"

  app "JoAi.app"

  zap trash: [
    "~/Library/Application Support/ai.joai.app",
    "~/Library/Caches/ai.joai.app",
    "~/Library/Preferences/ai.joai.app.plist",
    "~/.joai-cli",
  ]
end
