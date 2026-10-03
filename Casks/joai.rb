cask "joai" do
  version "0.99.2"

  on_arm do
    sha256 "b12e318485bdd61f83e99a51c1ab40c50fc6878612a3f9a407d3d642f868a16d"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "83f4f98d46f3f6d96338e76e4c14ab0c75e2c5d1d01ce255c9b13fa2328eb05d"
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
