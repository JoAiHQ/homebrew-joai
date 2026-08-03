cask "joai" do
  version "0.74.5"

  on_arm do
    sha256 "9fbd6b2cbf1d1d1b57347b3bdec3bfdd81df5195703fa8ca19b660666c520809"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "1beda45c89767c36b1b3fc7d705ded4ec77c651b3cbb93869b68fc3d10ed3e2b"
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
