cask "joai" do
  version "0.23.1"

  on_arm do
    sha256 "2cbbf6d51d39819c20d2443f52403cba436c100ec8f0a1c6bbfd0578bfab556c"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "7d1854b62bbd1742f6e3d7ebe1e1d39d009f009ed7bc1ed24a4f45ab9ddcbde1"
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
