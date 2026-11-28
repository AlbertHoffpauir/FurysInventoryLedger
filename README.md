# Fury's Inventory Ledger

**AI disclosure:** This addon's code was written with the assistance of an AI coding assistant (Claude by Anthropic), working from my designs and instructions. I test every release in game on my own characters before it goes up, and I maintain it.

> **Update:** [Fury's Addons Menu](https://www.esoui.com/downloads/info5126-FurysAddonsMenu.html) is optional again. This addon works without it; with it you still get the Fury sidebar and `/fury`. It is being replaced by Fury's Command Center soon.

An Elder Scrolls Online addon: every item you own in one list. Every character's bags and gear, the bank, craft bag, house storage, Furniture Vault, furniture placed in your houses, and your currencies, with a summary page, a Find box that shows where any item is, an in-game copy window and an Excel export.

## Downloads

- **The addon:** get it from ESOUI or Minion. The same files are in [`FurysInventoryLedger/`](FurysInventoryLedger/) here, and as [FurysInventoryLedger-1.8.2.zip](https://github.com/AlbertHoffpauir/FurysInventoryLedger/raw/main/downloads/FurysInventoryLedger-1.8.2.zip). It needs LibAddonMenu-2.0, free on ESOUI and in Minion. [Fury's Addons Menu](https://www.esoui.com/downloads/info5126-FurysAddonsMenu.html) (the Fury sidebar and `/fury`) is optional.
- **Windows Tools** (optional): Excel export. **[Download FurysInventoryLedger-WindowsTools-1.5.0.zip](https://github.com/AlbertHoffpauir/FurysInventoryLedger/raw/main/downloads/FurysInventoryLedger-WindowsTools-1.5.0.zip)**. Unzip it into any folder, for example Documents\Elder Scrolls Online. Source: [`WindowsTools/`](WindowsTools/), and [README.txt](WindowsTools/README.txt) says what every file does.

The tools are plain-text scripts (batch, PowerShell). They only read the addon's saved data file on your PC, write one CSV to your Desktop, and never connect to the internet.

## Repository layout

| Folder | What |
|---|---|
| `FurysInventoryLedger/` | The addon, exactly as it goes into `Documents\Elder Scrolls Online\live\AddOns`. See its [README](FurysInventoryLedger/README.md) and [CHANGELOG](FurysInventoryLedger/CHANGELOG.md). |
| `WindowsTools/` | Excel export (`ExportToExcel.cmd`). In game, click Prepare the Excel file first. |
| `downloads/` | Ready-made zips of both for each release. |

## More from Fury

- [Fury's Guild Toolset](https://www.esoui.com/downloads/info5063.html): an officer's toolkit: bank alerts, member and inactivity reports, trader week totals, raffles, event sign-ups and recruiting.
- [Fury's Character Tracker](https://www.esoui.com/downloads/info5078.html): every character on one board: skill lines, crafting, research, daily writs, wallet and gear.
- [Fury's Account Sync](https://www.esoui.com/downloads/info5106.html): make your other accounts on this PC match your main one: settings, keybinds, addon settings and builds.
- [Fury's Quality of Life](https://www.esoui.com/downloads/info5115.html): small comforts for everyday play: Select all when you deconstruct, a fishing bite alert with the right bait, a queue alert and a lock for everything you wear.

All free on ESOUI and in Minion.

## Credits

- Settings page uses **LibAddonMenu-2.0** by Seerah and sirinsidiator.
- Game API details from the ESOUI wiki and ZeniMax's ESO UI source code.

License: free to use and share for noncommercial purposes under the [PolyForm Noncommercial License 1.0.0](LICENSE). Selling it, or any other commercial use, needs a separate license from me: open an issue here on GitHub or send me a private message on ESOUI.
