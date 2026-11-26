-- Fury's Addons Menu: the one key that opens the Fury addons menu. This small folder ships inside
-- every Fury addon. The game loads it once, however many Fury addons are installed, so the key
-- shows once in Controls > Keybindings, under Fury's Addons. The menu itself is built by the
-- addons (their Theme.lua), which put themselves on the list below.

if not rawget(_G, "FurysAddonMenu") then
    _G["FurysAddonMenu"] = { entries = {}, lib = 0 }
end

ZO_CreateStringId("SI_BINDING_NAME_FURYSADDONMENU_TOGGLE", "Open the Fury addons menu")
