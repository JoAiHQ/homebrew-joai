cask "joai" do
  version "0.89.3"

  on_arm do
    sha256 "1d70f2f0661ae91c0e48a88d5d61409ba0b424b266159c0de74ffd8ae3e6bc38"
    url "https://github.com/JoAiHQ/homebrew-joai/releases/download/v#{version}/JoAi_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "6103cd2f3d16f8ef8b12bc54e40f4b7e04e89cede1d3f9ee626127f398e026dd"
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
