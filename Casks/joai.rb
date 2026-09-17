cask "joai" do
  version "0.91.0"

  on_arm do
    sha256 "d4764f3c97ce4c6621f4b0b3e96a2ee89e4f6af5cc1e3aef60de73c2c3f04776"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "0b9e1ad4bf8799411b72f3543ff2b6d360ecd7c0243a5ac471990c682f4feb53"
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
