local baseUrl = "https://raw.githubusercontent.com/LowkeyFractAd/Universal-Hub/master/"

local RayfieldMainCode = game:HttpGet(baseUrl .. "RayfieldMain.lua")
local f1, err1 = loadstring(RayfieldMainCode)
assert(f1, "Error loading RayfieldMain.lua: " .. err1)
local Window = f1()

local TrollTabCode = game:HttpGet(baseUrl .. "Tabs/TrollTab.lua")
local f2, err2 = loadstring(TrollTabCode)
assert(f2, "Error loading TrollTab.lua: " .. err2)
local TrollTabFunc = f2
TrollTabFunc(Window)

local PlayerSettingsTabCode = game:HttpGet(baseUrl .. "Tabs/PlayerSettingsTab.lua")
local f3, err3 = loadstring(PlayerSettingsTabCode)
assert(f3, "Error loading PlayerSettingsTab.lua: " .. err3)
local PlayerSettingsTabFunc = f3
PlayerSettingsTabFunc(Window)
