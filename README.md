# Fury's Inventory Ledger

**AI disclosure:** This addon's code was written with the assistance of an AI coding assistant (Claude by Anthropic), working from my designs and instructions. I test every release in game on my own characters before it goes up, and I maintain it.

An Elder Scrolls Online addon: every item you own in one list. Every character's bags and gear, the bank, craft bag, house storage, Furniture Vault, furniture placed in your houses, and your currencies, with a summary page, a Find box that shows where any item is, an in-game copy window and an Excel export.

## Downloads

- **The addon:** get it from ESOUI or Minion. The same files are in [`FurysInventoryLedger/`](FurysInventoryLedger/) here, and as [FurysInventoryLedger-1.6.3.zip](https://github.com/AlbertHoffpauir/FurysInventoryLedger/raw/main/downloads/FurysInventoryLedger-1.6.3.zip).
- **Windows Tools** (optional): Excel export. **[Download FurysInventoryLedger-WindowsTools-1.5.0.zip](https://github.com/AlbertHoffpauir/FurysInventoryLedger/raw/main/downloads/FurysInventoryLedger-WindowsTools-1.5.0.zip)**. Unzip it into any folder, for example Documents\Elder Scrolls Online. Source: [`WindowsTools/`](WindowsTools/), and [README.txt](WindowsTools/README.txt) says what every file does.

The tools are plain-text scripts (batch, PowerShell). They only read the addon's saved data file on your PC, write one CSV to your Desktop, and never connect to the internet.

## Repository layout

| Folder | What |
|---|---|
| `FurysInventoryLedger/` | The addon, exactly as it goes into `Documents\Elder Scrolls Online\live\AddOns`. See its [README](FurysInventoryLedger/README.md) and [CHANGELOG](FurysInventoryLedger/CHANGELOG.md). |
| `WindowsTools/` | Excel export (`ExportToExcel.cmd`). In game, click Prepare the Excel file first. |
| `downloads/` | Ready-made zips of both for each release. |

## More from Fury

- [Fury's Guild Management Toolset](https://www.esoui.com/downloads/info5063.html): an officer's toolkit: bank alerts, member and inactivity reports, trader week totals, raffles, event sign-ups and recruiting.
- [Fury's Character Tracker](https://www.esoui.com/downloads/info5078.html): every character on one board: skill lines, crafting, research, daily writs, wallet and gear.
- [Fury's Account Sync](https://www.esoui.com/downloads/info5106.html): make your other accounts on this PC match your main one: settings, keybinds, addon settings and builds.

All free on ESOUI and in Minion.

## Credits

- Settings page uses **LibAddonMenu-2.0** by Seerah and sirinsidiator.
- Game API details from the ESOUI wiki and ZeniMax's ESO UI source code.

License: MIT (see [LICENSE](LICENSE)).
