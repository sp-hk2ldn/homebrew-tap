cask "whisper-dictation" do
  version "0.1.0"
  sha256 "b6ded632b1474f85211f9c9f0575960ca71a1b69a87b40fe7dd1229ffdfa5faf"

  url "https://github.com/sp-hk2ldn/whisper-dictation/releases/download/v#{version}/Whisper-Dictation-#{version}.zip"
  name "Whisper Dictation"
  desc "Private, on-device push-to-talk dictation"
  homepage "https://github.com/sp-hk2ldn/whisper-dictation"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Whisper Dictation.app"

  uninstall quit: "io.github.sp-hk2ldn.WhisperDictation"

  zap trash: [
    "~/Library/Application Support/Whisper Dictation",
    "~/Library/Preferences/io.github.sp-hk2ldn.WhisperDictation.plist",
  ]
end
