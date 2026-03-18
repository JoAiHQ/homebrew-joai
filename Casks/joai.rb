cask "joai" do
  version "0.51.0"

  on_arm do
    sha256 "41e4c1cde9b5b5f1f31efa0b34eb85424e2122c736dba7f1472bd2fcaa0fa55f"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "160aab50cd923ad9e7d6fed0011fcceb95e2c92a3857f33c3dfd34b47010d9d7"
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
