# Casks/swiftdialog.rb
cask "swiftdialog" do
  version "2.5.5"
  sha256 "9841079f89b839b0323a3f9a0a99d1627371ab3a3725be94df7796024ad72f95"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v2.5.5/dialog-2.5.5-4802.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Unmodified, official Swift-based macOS dialog tool. Added to Homebrew for convenience."
  homepage "https://github.com/swiftDialog/swiftDialog"

  pkg "dialog-2.5.5-4802.pkg"

  uninstall pkgutil: "au.com.swiftDialog"

  caveats <<~EOS
    This cask installs the official signed release from swiftDialog (MIT license).
    It is distributed unmodified, for Homebrew convenience only.

    Maintained by @TheBoatyMcBoatFace at https://github.com/TheBoatyMcBoatFace/homebrew-swiftdialog

    Source: https://github.com/swiftDialog/swiftDialog
    See discussion: https://github.com/swiftDialog/swiftDialog/issues/327
  EOS
end
