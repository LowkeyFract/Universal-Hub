local baseUrl = "https://raw.githubusercontent.com/LowkeyFractAd/Universal-Hub/master/"

local Window = assert(loadstring(game:HttpGet(baseUrl .. "RayfieldMain.lua")))()
local TrollTab = assert(loadstring(game:HttpGet(baseUrl .. "Tabs/TrollTab.lua")))()
TrollTab(Window)
local PlayerSettingsTab = assert(loadstring(game:HttpGet(baseUrl .. "Tabs/PlayerSettingsTab.lua")))()
PlayerSettingsTab(Window)
