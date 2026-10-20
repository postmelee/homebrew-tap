# frozen_string_literal: true

# SPDX-FileCopyrightText: 2026 Pear contributors
# SPDX-License-Identifier: GPL-3.0-or-later
cask "pear" do
  version "0.1.0"
  sha256 "38239f3ce37de8021c918c548018fdd45c08b9efa72d817cf39bfb0fd83504fb"

  url "https://github.com/postmelee/pear/releases/download/v#{version}/Pear-#{version}-macos-arm64.dmg"
  name "Pear"
  desc "Run Windows Steam games"
  homepage "https://postmelee.github.io/pear/"

  livecheck do
    skip "Updated after Pear release qualification"
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Pear.app"

  caveats do
    <<~EOS
      Runtime requirements: https://postmelee.github.io/pear/download.html
      Open Pear to review and install its runtime and Windows Steam.
      Use brew upgrade --cask postmelee/tap/pear for updates.
      Pear defers in-app replacement for Homebrew-managed installations.
      Close games and quit Steam and Pear before upgrading or uninstalling.
      Uninstalling this cask preserves Steam, games and saves in:
        ~/Library/Application Support/Pear Preview
      Keep this data folder unless you intend to delete all installed games and saves.
    EOS
  end
end
