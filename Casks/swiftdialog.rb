cask "swiftdialog" do
  version "3.0.1"
  sha256 "8977a08d706a4615b6c48b6b47badf0fd61cd6c9904c7a4712aa4431c612f385"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v3.0.1/dialog-3.0.1-4955.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Unmodified, official Swift-based macOS dialog tool. Added to Homebrew for convenience."
  homepage "https://github.com/swiftDialog/swiftDialog"

  pkg "dialog-3.0.1-4955.pkg"

  uninstall pkgutil: "au.com.swiftDialog"

  caveats <<~EOS
    This cask installs the official signed release from swiftDialog (MIT license).
    It is distributed unmodified, for Homebrew convenience only.

    Maintained by @TheBoatyMcBoatFace at https://github.com/TheBoatyMcBoatFace/homebrew-swiftdialog

    Source: https://github.com/swiftDialog/swiftDialog
    See discussion: https://github.com/swiftDialog/swiftDialog/issues/327
  EOS
end
