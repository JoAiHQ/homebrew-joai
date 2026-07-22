cask "joai" do
  version "0.70.8"

  on_arm do
    sha256 "53e0fa41bbdbf44794653477b7ce13af1bdc96181da12a7b3df4774d5eb72e34"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "5b8ca1e0a31bbb37ca664b3b1a6c76a191676809479ee2c0b8b92eece8a6bb1c"
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
