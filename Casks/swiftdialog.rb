cask "swiftdialog" do
  version "3.0.0"
  sha256 "a0ea899a8b8ab10b63df47d70ca6daf9983a4a976819bdce60cb44301105c900"

  url "https://github.com/swiftDialog/swiftDialog/releases/download/v3.0.0/dialog-3.0.0-4952.pkg",
      verified: "github.com/swiftDialog/swiftDialog/"
  name "swiftDialog"
  desc "Unmodified, official Swift-based macOS dialog tool. Added to Homebrew for convenience."
  homepage "https://github.com/swiftDialog/swiftDialog"

  pkg "dialog-3.0.0-4952.pkg"

  uninstall pkgutil: "au.com.swiftDialog"

  caveats <<~EOS
    This cask installs the official signed release from swiftDialog (MIT license).
    It is distributed unmodified, for Homebrew convenience only.

    Maintained by @TheBoatyMcBoatFace at https://github.com/TheBoatyMcBoatFace/homebrew-swiftdialog

    Source: https://github.com/swiftDialog/swiftDialog
    See discussion: https://github.com/swiftDialog/swiftDialog/issues/327
  EOS
end
