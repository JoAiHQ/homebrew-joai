cask "joai" do
  version "0.27.4"

  on_arm do
    sha256 "3c9f5ed0fe03f231e9742fcc99e3bdf1e8aaacdd371bb08cbc1c1ec486df8384"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "bd10a85f00e0cb8a68691c9881343040738afdf0fc0444a82b41f9b7d2e3e935"
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
