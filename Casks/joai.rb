cask "joai" do
  version "0.99.3"

  on_arm do
    sha256 "88eba7fea39b1e8833abe62e940133f91ed6c4dbf1b189a9316de00ed48ccee9"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "4f48c9acacc90f73b3fb6b3a75db2fdd9e849a01b2f6b0700e2ff9f08d15a13f"
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
