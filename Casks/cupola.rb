cask "cupola" do
  version "1.0.257"
  sha256 "0aa6acb4e97e5bed576d0ac96d1777a4d5c8caf58d0b072d5be73386d66d10f6"

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
      Set up with `cupola init`, then `cupola start` and `cupola pair`.
      Use `brew upgrade --cask cupola` to update a Homebrew installation,
      then `cupola service restart` if you installed the login service.
      Conversations, pairing and provider sign-ins are kept on uninstall.
    EOS
  end
end
