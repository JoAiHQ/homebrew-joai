cask "joai" do
  version "0.37.16"

  on_arm do
    sha256 "9ce70281dc833dfc29a3e9364a97d6b4cf849cc513f423d3d2f56d3b5bcf11aa"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "62f178ec4ad7e34c7349abb42f240a94d2c7a27cc8296d1acd254aa42c504eaa"
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
