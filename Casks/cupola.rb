cask "cupola" do
  version "1.0.251"
  sha256 "ee19d03ad30e7457ff4bad5a31e38fb5c802640b00697c5c02ce573ec410f9bb"

  url "https://github.com/swaymun/cupola/releases/download/mac-v#{version}/Cupola-#{version}.zip"
  name "Cupola"
  desc "Persistent agent conversations on your computer, connected to your iPhone"
  homepage "https://github.com/swaymun/cupola"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64
  conflicts_with cask: "wonder"

  app "Cupola.app"
  binary "#{appdir}/Cupola.app/Contents/MacOS/cupola"

  caveats do
    <<~EOS
      Set up with `cupola init`, then `cupola start` and `cupola pair`.
      Use `brew upgrade --cask cupola` to update a Homebrew installation,
      then `cupola service restart` if you installed the login service.
      Conversations, pairing and provider sign-ins are kept on uninstall.
    EOS
  end
end
