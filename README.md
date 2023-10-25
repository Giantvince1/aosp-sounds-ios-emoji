<h1 align="center">AOSP Sounds + iOS Emoji Set</h1>

<div align="center">
  <!-- Version -->
    <img src="https://img.shields.io/badge/Version-v1.0-blue.svg?longCache=true&style=popout-square"
      alt="Version" />
  <!-- Last Updated -->
    <img src="https://img.shields.io/badge/Updated-October 25, 2023-green.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
  <!-- Min Magisk -->
    <img src="https://img.shields.io/badge/MinMagisk-20.4-red.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" /></div>

### Description
This module is simply here to provide a much closer to AOSP set of sounds for your rooted Android, and also the iOS emoji set.

### Disclaimer
This module is NOT compatible with Font Changer! I included the font only because some OEM-modded skins of Android break how Font Changer works.
These changes can cause fonts to render improperly, especially when it comes to light, heavy, condensed, or italics versions of the default system font.
The easiest way to work around the issue was simply for me to include the emoji set, and have it overlay the stock emoji file embedded in /product and /vendor.
If you decide to replace system fonts with this module, please make sure that you have the fonts PROPERLY named for your device, ESPECIALLY if you're still on its stock ROM!
I am not liable for fonts not working if you have Font Changer installed alongside this mod, are not on an AOSP-like ROM, or have added and/or replaced fonts on your own!

### Usage
Simply download the install.zip file in this repository, and install it like any other Magisk module. Let it handle the rest.
To hear the audio samples it uses, just download the repository and play the OGG files in your favorite audio player.
To see the emoji font it provides, you may have to find something that can render color emoji TTF files via the Internet. Windows' font viewer doesn't play nicely with them.

### Contribution
If you'd like to contribute to this module, please just open a Pull Request along with any changes you feel could help improve the module! One feature I'd love to include is the option to select either only the audio portion, only the font, or both via volume keys. However I'm not well-versed enough in how Magisk works, or scripting in general, to pull that one off.

### Credits
This repository was created from the template repo Zackptg5/MMT-Extended, and the license updated to GPLv3 to still conform to the original license. The reason this was done is because the *.sh scripts laying in this repo were not made, nor edited, by me; the module works as-is, and I get lost in the scripts.
