cask "joai" do
  version "0.88.4"

  on_arm do
    sha256 "71207e3d48d0e123bf3f2a2af0d7ffeb6dd36de3c747c23cf77fad656445cf30"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d5c7db09c5c1b49c90c67d5a564aa8dfc19ff070c31f84d0b25493d0d376e1e5"
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
