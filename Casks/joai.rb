cask "joai" do
  version "0.83.5"

  on_arm do
    sha256 "8dc2f86e862ddc90e37147286a0c12d1c42261202dd239fbf8fd60fb094e4029"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "62b8d6ab9b35fa0780cedd412cf258c6cddbc98dcaf86ce5c4cb0c2704bf6ddb"
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
