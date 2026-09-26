# nixos-build
My nixos configuration files.

This is a system with the NixOs distribution of Linux

## Gaming session

Apply the configuration with `sudo nixos-rebuild switch --flake .#Zzy`.
Log out, press **F3** in tuigreet, and choose **Steam** to start Steam's
controller interface in a dedicated Gamescope session. Choose **Niri** to
return to the desktop; tuigreet remembers the last selected session.
This provides a Steam Deck-style interface on the laptop, not SteamOS emulation.

For GameMode, set a game's Steam launch options to `gamemoderun %command%`.
After logging in again, `gamemoded -t` checks GameMode integration.
For Windows games, select Proton in the game's Properties → Compatibility.
The existing AMD graphics configuration includes 32-bit support, and TLP uses
the performance profile on AC power. Resolution and FPS limits can be tuned
per game instead of imposing a global limit.
