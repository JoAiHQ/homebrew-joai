cask "joai" do
  version "0.38.3"

  on_arm do
    sha256 "17fbb5acfb06264fe1a114c2eca7bc0bcdf73a612abe5d574bb2e7c3f3b14fcc"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "0a98b218ee4d7747385b7044d05f8848fcc5ddfe2b30efd681ce9d1dfb7a31de"
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
