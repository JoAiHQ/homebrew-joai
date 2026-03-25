cask "joai" do
  version "0.58.2"

  on_arm do
    sha256 "cf4ded8e528b947527d7d8d528acf05ef29e2caab4efaeb7fc4d9dd9b3788495"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "96afb0b76efbea9ff70c92377f10fcb01e13d0fd6db08e340edac5d5ce7e7ce7"
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
