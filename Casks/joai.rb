cask "joai" do
  version "0.85.4"

  on_arm do
    sha256 "2fa0087bae905cbf75bed4343ce27c75a6c65873895cd7b00fbbe50ca357336d"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "752c7e1189c509a98b6031771d2eac9ce9e45927a32257b06164a38d4f1ef52c"
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
