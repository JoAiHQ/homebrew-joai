cask "joai" do
  version "0.88.2"

  on_arm do
    sha256 "c505cba7302f22d5c7c44aecfcdd76e0d8f6c0cfabcaf4a459df9e91dbd04a26"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "66a8800c4c2fdef976d649aea67aecb11addea06dfb790dc86b484a2f6ec75b2"
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
