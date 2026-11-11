cask "cupola" do
  version "1.0.258"
  sha256 "8e462c78b593e012047ba1707d5bc05dfda755724e6df58295ba6faefa3d0b54"

  url "https://github.com/swaymun/cupola/releases/download/host-v#{version}/Cupola-#{version}.zip"
  name "Cupola"
  desc "Persistent agent conversations on your computer, connected to your iPhone"
  homepage "https://github.com/swaymun/cupola"

  depends_on macos: :sonoma
  depends_on arch: :arm64
  conflicts_with cask: "wonder"

  app "Cupola.app"
  binary "#{appdir}/Cupola.app/Contents/MacOS/cupola"

  caveats do
    <<~EOS
      Set up with `cupola init`, then `cupola service install` (starts Cupola now and at every login) and `cupola pair`.
      Use `brew upgrade --cask cupola` to update a Homebrew installation,
      then `cupola service restart` if you installed the login service.
      Conversations, pairing and provider sign-ins are kept on uninstall.
    EOS
  end
end
