cask "joai" do
  version "0.92.2"

  on_arm do
    sha256 "09ededcd75afaf92274208003935e43e1b8a8aea6cb4685b02ac1b54e45c2a0e"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "40b86ecb18fcdb4fa3628bec9c11e1e785c2fc56c9bcee34b1baff41c9b13ce8"
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
