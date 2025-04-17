#!/usr/bin/env ruby
# scripts/build_cask.rb
require "open-uri"
require "json"
require "digest"

REPO = "swiftDialog/swiftDialog"
CASK_PATH = "Casks/swiftdialog.rb"

puts "[+] Fetching latest release from GitHub..."
release = URI.open("https://api.github.com/repos/#{REPO}/releases/latest").read
data = JSON.parse(release)

version = data["tag_name"].sub(/^v/, "")
asset = data["assets"].find { |a| a["name"] =~ /^dialog-.*\.pkg$/ }

abort("❌ Could not find dialog-*.pkg in latest release assets.") unless asset

pkg_name = asset["name"]
pkg_url = asset["browser_download_url"]

puts "[+] Found package: #{pkg_name}"
puts "[+] Downloading .pkg from #{pkg_url}..."

pkg_data = URI.open(pkg_url).read
sha256 = Digest::SHA256.hexdigest(pkg_data)

puts "[+] SHA256: #{sha256}"
puts "[+] Writing Cask file to #{CASK_PATH}..."

cask = <<~RUBY
  cask "swiftdialog" do
    version "#{version}"
    sha256 "#{sha256}"

    url "#{pkg_url}",
        verified: "github.com/swiftDialog/swiftDialog/"
    name "swiftDialog"
    desc "Unmodified, official Swift-based macOS dialog tool. Added to Homebrew for convenience."
    homepage "https://github.com/swiftDialog/swiftDialog"

    pkg "#{pkg_name}"

    uninstall pkgutil: "au.com.swiftDialog"

    caveats <<~EOS
      This cask installs the official signed release from swiftDialog (MIT license).
      It is distributed unmodified, for Homebrew convenience only.

      Maintained by @TheBoatyMcBoatFace at https://github.com/TheBoatyMcBoatFace/homebrew-swiftdialog

      Source: https://github.com/swiftDialog/swiftDialog
      See discussion: https://github.com/swiftDialog/swiftDialog/issues/327
    EOS
  end
RUBY

Dir.mkdir("Casks") unless Dir.exist?("Casks")
File.write(CASK_PATH, cask)
puts "✅ Done. You can now run:\n\n  brew tap TheBoatyMcBoatFace/swiftdialog\n  brew install --cask swiftdialog"