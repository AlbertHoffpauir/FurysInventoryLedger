Fury's Inventory Ledger - Windows Tools 1.5.0
========================================

Optional helper for the ESO addon Fury's Inventory Ledger. It runs outside the game, on Windows,
and only reads the addon's saved data file:
  Documents\Elder Scrolls Online\live\SavedVariables\FurysInventoryLedger.lua
The addon itself (from ESOUI / Minion) works fully in game without it, including /ledger copy.

Put this folder anywhere you like, for example Documents\Elder Scrolls Online. Every file here is plain
text: open it in Notepad to read exactly what it does. Nothing here connects to the internet, needs
admin rights, or changes the game or the addon.

Export to Excel
---------------
1. In game: Settings > Addons > Fury's Inventory Ledger > Prepare the Excel file (or type /ledger export),
   and let it reload the interface. The game only writes its saved data when it reloads or you log out.
   If "Keep the Excel file ready" is switched on in the same settings, logging out or /reloadui is enough.
2. Double-click ExportToExcel.cmd.

ExportToExcel.cmd   Runs ExportToExcel.ps1.
ExportToExcel.ps1   Reads the item lines from the saved data file and writes
                    "ESO Inventory <date time>.csv" to your Desktop, then opens it.

Tip: right-click ExportToExcel.cmd > Send to > Desktop (create shortcut) to run it from your desktop.

AI disclosure: this code was written with the assistance of an AI coding assistant (Claude by Anthropic), working
from my designs and instructions. I test it on my own PC and maintain it.
