# Changelog

## 1.6.4
- **One shared library file.** Chat lines, the welcome line and confirm pop-ups now come from the same file every Fury addon carries, next to the look, Start here and More from Fury, so all of them stay identical. Nothing changes in how the addon works, and it still needs no other addon.

## 1.6.3
- **More from Fury.** The Start here page and the settings page now end with a short list of my other addons, with a button in the settings that opens each one's ESOUI page (the game asks first). No chat lines, no pop-ups.

## 1.6.2
- **One look across all of Fury's addons.** Every window now has the same header as the Guild Toolset: the name with its version, a **Start here** button right after it, the settings gear and the close button at the right, and a hover tip on each.
- **New: Start here page** (the button on the summary, or `/ledger start`): what it lists, when it reads, the summary and Excel in one page.
- A one-line welcome in chat on a new install.
- Chat lines start with [Inventory Ledger] and are proper chat lines; `/ledger help` lists the commands one per line.
- The summary's title is just the addon's name and version; the copy window is called "Copy for Excel". Close buttons have a hover tip.
- The export pop-up's second button is Cancel, like every other pop-up. The settings page links to the addon's ESOUI page.

## 1.6.1
- Find results now show the total item count beside the number of matches, on the summary and in chat.
- Summary page: a cell that is cut short shows its full text when you hover it.

## 1.6.0
- Find an item: a Find box on the summary page, and /ledger find <words> in chat. Type part of an item or set name to see how many you own and where, on every character and account the addon has read.
- Copy window: two new pickers. List chooses everything, this account, one character, the bank, craft bag, house storage, Furniture Vault or placed furniture. Type narrows it to one item type. A short list is a page or two instead of dozens.
- Space left: the Characters table shows each bag's free slots, and a new Space left section does the same for the bank, each coffer and the Furniture Vault. Nearly full shows in amber, full in rose. It fills in the next time each place is read.
- Split stacks: a new section lists stackable items kept in more than one place, with the count in each, so you can tidy up.
- Gear by set: a new section lists your sets by number of pieces and who holds them. Type a set name in Find to see each piece.
- Gold over time: a small bar chart of your gold for every saved day, up to 120.
- New setting "Show what I own on item tooltips". It adds one line to item tooltips, for example "You own 412: Bank 200, Craft Bag 212". It starts turned off.

## 1.5.2
- The version number now shows beside the title of the summary and copy windows.

## 1.5.1
- Smaller saved file: each item is now saved as one line of text instead of a small table, which cuts the item part of the file by more than half. Your existing data is converted the first time you log in, and every line is checked as it is converted. Nothing you see in game or in Excel changes.
- If you go back to an older version after this one, characters and storage you have not visited since show as empty until you log in on them or open them again.

## 1.5.0
A polish pass for new players, plus less work and a smaller saved file.
- Summary page: new "Still to read" section lists what the addon has not seen yet and how to add it: characters to log in on, storage coffers and the Furniture Vault to open, houses to visit. It disappears when nothing is left.
- Summary page: a character that is no longer on your account is marked "Deleted?" with the command that removes it, and no longer counts toward "characters read".
- Every button now has a hover tip, in both windows and on the settings page.
- New "Prepare the Excel file" button in the settings (also /ledger export): builds the full list for the Windows tools, then asks before it reloads the interface.
- New setting "Keep the Excel file ready". On: the full list is saved every time you log out, reload or change zone, as before. Off: it is only saved when you click Prepare the Excel file, which cuts the addon's saved file about in half. It starts turned off on new installs; if you already used the addon it stays on, so nothing changes for you unless you switch it off.
- Faster zone changes: the bank and craft bag are read once at login instead of on every loading screen, and the saved list and daily totals are only rebuilt when something you own changed.
- The copy window says how many pages there are and what to do with them.
- Windows tools 1.5.0: the Excel export tells you what to click in game when there is no list yet, shows when the list was prepared, and reads the saved file whichever way the game laid it out.

## 1.4.0
- New button in Settings > Addons > Fury's Inventory Ledger: "Get the Windows tools" opens the download page for the Excel export in your browser (the game asks first). /ledger tools does the same.

## 1.3.0
- New look, "Fury Night", shared by all of Fury's addons: deep blue-black windows with an indigo frame, a soft glow behind the title, a violet line under it and a bag icon beside it. Titles use the game's book font (Prose Antique).
- Summary page: blue column headers with a divider, striped rows, violet lines under each section, and gold amounts in gold with the game's coin icon.
- Changes since yesterday and over 7 days are green when they went up and rose when they went down.
- Chat messages and the settings title use the new violet color.
- Nothing about what the addon does or your settings has changed.

## 1.2.3
- New keybinds: Controls > Addon Keybinds > Fury's Inventory Ledger now has "Open/close the summary" and "Open/close the copy window". Both start unbound; pick your own keys.

## 1.2.2
- Esc now closes the summary and copy windows. They also bring up the mouse cursor when they open, and close when you open another game menu.

## 1.2.1
- Summary page: the account and "characters scanned" line sits under the title again instead of over the Currencies table.
- Summary and copy windows now have a solid background, so other windows and addons behind them no longer show through.
- Currencies table: account-wide currencies are listed under Bank, so the separate Account column is gone.
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
