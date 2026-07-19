cask "joai" do
  version "0.70.4"

  on_arm do
    sha256 "cdf49c105e7ce57051cb894652c60477f91b51122ee691dbf37bb5a0a3ce09b6"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "f55f8fa5533a4b40dc998aaa2cc21a7bf60e3b4a4f69b0adfe5f7f7bf56940f8"
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
