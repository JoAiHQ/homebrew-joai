cask "joai" do
  version "0.80.6"

  on_arm do
    sha256 "9876932c00f253ce708d3d0bc711919e15fdc15f61ccb3138caf1073967fd9ea"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ccf3f144f6ddf2b244f0d869b94c2dfbc8bc4e125b514c8d01ccb91c4a8160b2"
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
