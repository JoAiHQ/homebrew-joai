cask "joai" do
  version "0.81.1"

  on_arm do
    sha256 "bc5030e458fe67b76b828b8bebf37e4cabb216bfd1d01ef0514d59a850e82687"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "217846f5ce433bc02c23c4c18cc66a2a83b3cc27eb0ffb355d510e77bf8862fe"
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
