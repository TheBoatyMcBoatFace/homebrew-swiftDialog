cask "swiftdialog" do
  version "2.5.6"
  sha256 "69bd7f6412a1b2393906fc059369e65c5ae58af5cc8d289467effd11d8862b2a"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v2.5.6/dialog-2.5.6-4805.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Unmodified, official Swift-based macOS dialog tool. Added to Homebrew for convenience."
  homepage "https://github.com/swiftDialog/swiftDialog"

  pkg "dialog-2.5.6-4805.pkg"

  uninstall pkgutil: "au.com.swiftDialog"

  caveats <<~EOS
    This cask installs the official signed release from swiftDialog (MIT license).
    It is distributed unmodified, for Homebrew convenience only.

    Maintained by @TheBoatyMcBoatFace at https://github.com/TheBoatyMcBoatFace/homebrew-swiftdialog

    Source: https://github.com/swiftDialog/swiftDialog
    See discussion: https://github.com/swiftDialog/swiftDialog/issues/327
  EOS
end
