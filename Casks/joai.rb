cask "joai" do
  version "0.70.6"

  on_arm do
    sha256 "4fb5f0a31ec5de2e8697f274ed0a825bda6308526b84c6c8da09c1d36f784d97"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6d06e821878cbdc8c625801cd398b5268e15fdb3ce45fc69b301f2757d5f1e46"
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
