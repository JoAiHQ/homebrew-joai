cask "joai" do
  version "0.100.4"

  on_arm do
    sha256 "b18cb299e0f5dab6810f98c76f5dbeef5d2c5059421783bce1d81b8f7cb6eb88"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d92e4956a5cfa60a3f8763c94b84a79dae94cf1782ddd5c4479d3d680c0e7481"
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
