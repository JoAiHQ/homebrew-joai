cask "joai" do
  version "0.38.1"

  on_arm do
    sha256 "297c5af991b3943c607de9a360845e39d377a709304fac8ba655124b3859b0ea"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "0016711c2eb4672e61eaec32d5a12b12ea2aa2ad321b4b5c56cff9faa49df325"
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
