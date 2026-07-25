cask "joai" do
  version "0.70.9"

  on_arm do
    sha256 "4f318dcecc9cc806d07851d177331f49fcae97eb6b0f995a7cda24f3ddf6180f"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "b8e2fa09a5e0a3d1bfebe87a445a8de4a355fbef812cf2b6f8a5adcddb386ea3"
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
