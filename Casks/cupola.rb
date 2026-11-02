cask "cupola" do
  version "1.0.250"
  sha256 "7b6abface2edd1e3022fdede9e7c153a364e014fa7dc00799b29537125169342"

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
