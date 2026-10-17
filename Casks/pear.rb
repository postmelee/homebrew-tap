# frozen_string_literal: true

# SPDX-FileCopyrightText: 2026 Pear contributors
# SPDX-License-Identifier: GPL-3.0-or-later
cask "pear" do
  version "0.1.0-preview.4"
  sha256 "1ff1588a24cfe7510d80fe0d78ae19a919d401231bd25b372155df2772342631"

  url "https://github.com/postmelee/pear/releases/download/v#{version}/Pear-#{version}-macos-arm64.dmg"
  name "Pear"
  desc "Run Windows Steam games"
  homepage "https://postmelee.github.io/pear/"

  livecheck do
    skip "Preview releases are updated after Pear qualification"
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Pear.app"

  caveats do
    <<~EOS
      Pear downloads a Wine runtime that requires Rosetta 2.
      Open Pear to review and install its runtime and Windows Steam.
      Close games and quit Steam and Pear before upgrading or uninstalling.
      Uninstalling this cask preserves Steam, games and saves in:
        ~/Library/Application Support/Pear Preview
      Keep this data folder unless you intend to delete all installed games and saves.
    EOS
  end
end
