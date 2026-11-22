# Changelog

## 1.2.1
- Summary page: the account and "characters scanned" line sits under the title again instead of over the Currencies table.
- Summary and copy windows now have a solid background, so other windows and addons behind them no longer show through.
- Mythic items now show as "Mythic" under By quality on the summary page and in the Quality column of the copy window and export (they were left blank).

## 1.2.0
- New summary page, opened by /ledger: totals by location, item type and quality, your 25 most-owned items, and a line per character (carried, equipped, gold, last scanned).
- Currency running totals: on characters, in the bank and account-wide, with the change since yesterday and over the last 7 days.
- Currencies now update the moment they change, not only when an item does.
- The copy window moved to /ledger copy (or Copy for Excel on the summary). Both windows have a settings gear.
- The Excel export scripts (ExportToExcel.cmd and .ps1) are now a separate Windows tools download, since ESOUI addon zips may only hold addon files. They work from any folder.

## 1.1.1
- Reads your bags only when an item really changes. Durability and charge updates (constant in combat) no longer wake the addon.
- Now asks for LibAddonMenu-2.0 version 43 or newer, the current release.

## 1.1.0
- First public release.
- Lists every character's backpack, equipped gear, summoned companion's gear and wallet.
- Account-wide: bank (including ESO Plus space), craft bag, banked and account currencies.
- House storage coffers (by name or nickname) and the Furniture Vault, read when opened.
- Furniture placed in houses you own, counted per house.
- 24 columns: quality, type, slot, armor/weapon type, trait, set, style, level, CP, bound, stolen, crafted, vendor value, item ID, scan time and item link.
- In-game copy window with pages, tab or comma separated, ready to paste into Excel.
- ExportToExcel.cmd (Windows) writes the full list to a CSV on your Desktop and opens it.
- Settings page: gear on the copy window, Settings > Addons, or /ledger settings. Requires LibAddonMenu-2.0.
- /ledger chars lists characters still to be scanned; /ledger forget removes a deleted one.
