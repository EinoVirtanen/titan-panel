--[[ Titan
TitanVariables.lua
This file contains the routines to initialize, get, and set the basic data structures used by Titan. 
It also sets the global variables and constants used by Titan.

TitanSettings, TitanSkins, ServerTimeOffsets, ServerHourFormat are the structures saved to disk (listed in toc).
TitanSettings: is the table that holds the Tian variables by character and the plugins used by that character.
TitanSkins: is the table that holds the list of Titan and custom skins available to tue user. It is assumed that the skins are in the proper folder on the hard drive.
ServerTimeOffsets and ServerHourFormat: are the tables that hold the user selected hour offset and display format per realm (server).
--]]
local L = LibStub("AceLocale-3.0"):GetLocale("Titan", true)

-- Global variables 
TitanSettings = nil;
TitanPlayerSettings = nil;
TitanPluginSettings = nil;  -- Used by plugins
TitanPanelSettings = nil;

-- Set Titan Version var for backwards compatibility
TITAN_VERSION = GetAddOnMetadata("Titan", "Version") or L["TITAN_NA"]

-- Various constants
TITAN_PANEL_PLACE_TOP = 1;
TITAN_PANEL_PLACE_BOTTOM = 2;
TITAN_PANEL_PLACE_BOTH = 3;
TITAN_PANEL_MOVING = 0;

TITAN_WOW_SCREEN_TOP = 768
TITAN_WOW_SCREEN_BOT = 0

TITAN_AT = "@"
TITAN_TOP = "Top"
TITAN_BOTTOM = "Bottom"
TITAN_RIGHT = "Right"
TITAN_LEFT = "Left"
TITAN_PANEL_BUTTONS_ALIGN_LEFT = 1;
TITAN_PANEL_BUTTONS_ALIGN_CENTER = 2;

TITAN_PANEL_CONTROL = "TitanPanelBarButton"
-- New bar vars
TITAN_PANEL_BAR_HEIGHT = 24
TITAN_PANEL_BAR_TEXTURE_HEIGHT = 30
TITAN_PANEL_AUTOHIDE_PREFIX = "TitanPanelAutoHide_"
TITAN_PANEL_AUTOHIDE_SUFFIX = "Button"
TITAN_PANEL_HIDE_PREFIX = "Titan_Bar__Hider_"
TITAN_PANEL_DISPLAY_PREFIX = "Titan_Bar__Display_"
TITAN_PANEL_DISPLAY_MENU = "Menu_"
TITAN_PANEL_DISPLAY_ID = "Id_"
TITAN_PANEL_BACKGROUND_PREFIX = "TitanPanelBackground_"

AUTOHIDE_PREFIX = "TitanPanelAutoHide_"
AUTOHIDE_SUFFIX = "Button"

TITAN_PANEL_BUTTONS_PLUGIN_CATEGORY = 
	{"Built-ins","General","Combat","Information","Interface","Profession"}

--[[ Titan
-- 3 buttons are used to create a Titan bar: 
-- the 'display' button, 
-- the 'hider', 
-- and the 'auto hide'.
-- The display is where the plugins are displayed.
-- The hider is used if auto hide is requested. 
-- This button will cause the display to show  when the mouse is enters.
-- The auto hide is the plugin that shows the auto hide 'pin'.
--
-- NOTE:
-- TitanBarData indexes must match the 'button' names in TitanPanel.xml!!!
--
--]]
--[[ Titan
TitanBarData table. The index must match the 'button' names in the TitanPanel.xml!!!
The table holds:
 the name of each Titan bar (in the index)
 the short name of the bar 
 whether the bar is on top or bottom
 the order they should be in top to bottom
 show / hide give the values for the cooresponding SetPoint
 
The short name is used to build names of the various saved variables, frames,
 and buttons used by Titan.
--]]
TitanBarOrder = {"Bar", "Bar2", "AuxBar2", "AuxBar"}
TitanBarData = {
	[TITAN_PANEL_DISPLAY_PREFIX.."Bar"] = {
		locale_name = L["TITAN_PANEL_MENU_TOP"],
		name = "Bar", vert = TITAN_TOP, order = 1,
		hider = TITAN_PANEL_HIDE_PREFIX.."Bar",
		auto_hide_plugin = AUTOHIDE_PREFIX.."Bar"..AUTOHIDE_SUFFIX,
		plugin_y_offset = 1,
		show = {
		top = {pt="TOPLEFT", rel_fr="UIParent", rel_pt="TOPLEFT", x=0, y=0},
		bot = {pt="BOTTOMRIGHT", rel_fr="UIParent", rel_pt="TOPRIGHT", x=0, y=-TITAN_PANEL_BAR_HEIGHT} },
		hide = {
		top = {pt="TOPLEFT", rel_fr="UIParent", rel_pt="TOPLEFT", x=0, y=TITAN_PANEL_BAR_HEIGHT*2},
		bot = {pt="BOTTOMRIGHT", rel_fr="UIParent", rel_pt="TOPRIGHT", x=0, y=TITAN_PANEL_BAR_HEIGHT*2} } 
	},
	[TITAN_PANEL_DISPLAY_PREFIX.."Bar2"] = {
		locale_name = L["TITAN_PANEL_MENU_TOP2"],
		name = "Bar2", vert = TITAN_TOP, order = 2,
		hider = TITAN_PANEL_HIDE_PREFIX.."Bar2",
		auto_hide_plugin = AUTOHIDE_PREFIX.."Bar2"..AUTOHIDE_SUFFIX,
		plugin_y_offset = 1,
		show = {
		top = {pt="TOPLEFT", rel_fr="UIParent", rel_pt="TOPLEFT", x=0, y=-TITAN_PANEL_BAR_HEIGHT},
		bot = {pt="BOTTOMRIGHT", rel_fr="UIParent", rel_pt="TOPRIGHT", x=0, y=-TITAN_PANEL_BAR_HEIGHT*2} },
		hide = {
		top = {pt="TOPLEFT", rel_fr="UIParent", rel_pt="TOPLEFT", x=0, y=TITAN_PANEL_BAR_HEIGHT*2},
		bot = {pt="BOTTOMRIGHT", rel_fr="UIParent", rel_pt="TOPRIGHT", x=0, y=TITAN_PANEL_BAR_HEIGHT*2} } 
	},
	-- no idea why -1 is needed for the bottom... seems anchoring to bottom is off a pixel
	[TITAN_PANEL_DISPLAY_PREFIX.."AuxBar2"] = {
		locale_name = L["TITAN_PANEL_MENU_BOTTOM2"],
		name = "AuxBar2",  vert = TITAN_BOTTOM, order = 3,
		hider = TITAN_PANEL_HIDE_PREFIX.."AuxBar2",
		auto_hide_plugin = AUTOHIDE_PREFIX.."AuxBar2"..AUTOHIDE_SUFFIX,
		plugin_y_offset = 1,
		show = {
		top = {pt="TOPRIGHT", rel_fr="UIParent", rel_pt="BOTTOMRIGHT", x=0, y=TITAN_PANEL_BAR_HEIGHT*2-1},
		bot = {pt="BOTTOMLEFT", rel_fr="UIParent", rel_pt="BOTTOMLEFT", x=0, y=TITAN_PANEL_BAR_HEIGHT-1} },
		hide = {
		top = {pt="TOPRIGHT", rel_fr="UIParent", rel_pt="BOTTOMRIGHT", x=0, y=-TITAN_PANEL_BAR_HEIGHT*2},
		bot = {pt="BOTTOMLEFT", rel_fr="UIParent", rel_pt="BOTTOMLEFT", x=0, y=-TITAN_PANEL_BAR_HEIGHT*2} } 
	},
	[TITAN_PANEL_DISPLAY_PREFIX.."AuxBar"] = {
		locale_name = L["TITAN_PANEL_MENU_BOTTOM"],
		name = "AuxBar",  vert = TITAN_BOTTOM, order = 4,
		hider = TITAN_PANEL_HIDE_PREFIX.."AuxBar",
		auto_hide_plugin = AUTOHIDE_PREFIX.."AuxBar"..AUTOHIDE_SUFFIX,
		plugin_y_offset = 1,
		show = {
		top = {pt="TOPRIGHT", rel_fr="UIParent", rel_pt="BOTTOMRIGHT", x=0, y=TITAN_PANEL_BAR_HEIGHT-1},
		bot = {pt="BOTTOMLEFT", rel_fr="UIParent", rel_pt="BOTTOMLEFT", x=0, y=0-1} },
		hide = {
		top = {pt="TOPRIGHT", rel_fr="UIParent", rel_pt="BOTTOMRIGHT", x=0, y=-TITAN_PANEL_BAR_HEIGHT*2},
		bot = {pt="BOTTOMLEFT", rel_fr="UIParent", rel_pt="BOTTOMLEFT", x=0, y=-TITAN_PANEL_BAR_HEIGHT*2} } 
	},
	}

-- Timers used within Titan
TitanTimers = {}
--[[ Titan
AutoHideData table. The index must match the hider 'button' names in the TitanPanel.xml!!!
The table holds:
 the name of each hider bar (in the index)
 the short name of the hider bar 
 whether the hider bar is on top or bottom
--]]
AutoHideData = { -- This has to follow the convention for plugins...
	[AUTOHIDE_PREFIX.."Bar"..AUTOHIDE_SUFFIX] = {name = "Bar", vert = TITAN_TOP},
	[AUTOHIDE_PREFIX.."Bar2"..AUTOHIDE_SUFFIX] = {name = "Bar2", vert = TITAN_TOP},
	[AUTOHIDE_PREFIX.."AuxBar2"..AUTOHIDE_SUFFIX] = {name = "AuxBar2",  vert = TITAN_BOTTOM},
	[AUTOHIDE_PREFIX.."AuxBar"..AUTOHIDE_SUFFIX] = {name = "AuxBar",  vert = TITAN_BOTTOM},
	}

--[[ Titan
TitanPluginToBeRegistered table holds each plugin that is requesting to be a plugin.
TitanPluginToBeRegisteredNum is the number of plugins that have requested.
Each plugin in the table will be updated with the status of the registration and will be available in the Titan Attempted option.
--]]
TitanPluginToBeRegistered = {}
TitanPluginToBeRegisteredNum = 0

TitanPluginRegisteredNum = 0

--TitanPluginAttempted = {}
--TitanPluginAttemptedNum = 0

--[[ Titan
TitanPluginExtras table holds the plugin data for plugins that are in saved variables but not loaded on the current character.
TitanPluginExtrasNum is the number of plugins not loaded.
--]]
TitanPluginExtras = {}
TitanPluginExtrasNum = 0

-- Global to hold where the Titan menu orginated from...
TitanPanel_DropMenu = nil

local _G = getfenv(0);
local L = LibStub("AceLocale-3.0"):GetLocale("Titan", true)
local media = LibStub("LibSharedMedia-3.0")
--[[ Titan
TITAN_PANEL_SAVED_VARIABLES table holds the Titan Panel Default SavedVars.
--]]
TITAN_PANEL_SAVED_VARIABLES = {
	Buttons = {"Location", "XP", "Gold", "Clock", "Volume", "AutoHide_Bar", 
		"Bag", "Repair"},
	Location = {"Bar", "Bar", "Bar", "Bar", "Bar", "Bar", "Bar", "Bar"},
	TexturePath = "Interface\\AddOns\\Titan\\Artwork\\",
	Transparency = 0.7,
	AuxTransparency = 0.7,
	Scale = 1,
	ButtonSpacing = 20,
	IconSpacing = 0,
	TooltipTrans = 1,
	TooltipFont = 1,
	DisableTooltipFont = 1,
	FontName = "Friz Quadrata TT",
	FrameStrata = "DIALOG",
	FontSize = 10,
	ScreenAdjust = false,
	LogAdjust = false,
	MinimapAdjust = false,
	BagAdjust = 1,
	TicketAdjust = 1,
	Position = 1,
	ButtonAlign = 1,
	AuxScreenAdjust = false,
	LockButtons = false,
	VersionShown = 1,
	ToolTipsShown = 1,
	HideTipsInCombat = false,
	-- for the independent bars
	Bar_Show = true,
	Bar_Hide = false,
	Bar_Align = TITAN_PANEL_BUTTONS_ALIGN_LEFT,
	Bar_Transparency = 0.7,
	Bar2_Show = false,
	Bar2_Hide = false,
	Bar2_Transparency = 0.7,
	Bar2_Align = TITAN_PANEL_BUTTONS_ALIGN_LEFT,
	AuxBar_Show = false,
	AuxBar_Hide = false,
	AuxBar_Transparency = 0.7,
	AuxBar_Align = TITAN_PANEL_BUTTONS_ALIGN_LEFT,
	AuxBar2_Show = false,
	AuxBar2_Hide = false,
	AuxBar2_Transparency = 0.7,
	AuxBar2_Align = TITAN_PANEL_BUTTONS_ALIGN_LEFT,
	-- for timers in seconds
	TimerPEW = 4,
	TimerDualSpec = 2,
	TimerLDB = 2,
	TimerAdjust = 1,
	TimerVehicle = 1,
};

-- The skins released with Titan
TitanSkinsDefaultPath = "Interface\\AddOns\\Titan\\Artwork\\"
TitanSkinsCustomPath = TitanSkinsDefaultPath.."Custom\\"
TitanSkinsPathEnd = "\\"
TitanSkinsDefault = {
	{ name = "Titan Default", titan=true, path = TitanSkinsDefaultPath},
	{ name = "Christmas", titan=true, path = TitanSkinsCustomPath.."Christmas Skin"..TitanSkinsPathEnd},
	{ name = "Charcoal Metal", titan=true, path = TitanSkinsCustomPath.."Charcoal Metal"..TitanSkinsPathEnd},
	{ name = "Crusader", titan=true, path = TitanSkinsCustomPath.."Crusader Skin"..TitanSkinsPathEnd},
	{ name = "Cursed Orange", titan=true, path = TitanSkinsCustomPath.."Cursed Orange Skin"..TitanSkinsPathEnd},
	{ name = "Dark Wood", titan=true, path = TitanSkinsCustomPath.."Dark Wood Skin"..TitanSkinsPathEnd},
	{ name = "Deep Cave", titan=true, path = TitanSkinsCustomPath.."Deep Cave Skin"..TitanSkinsPathEnd},
	{ name = "Elfwood", titan=true, path = TitanSkinsCustomPath.."Elfwood Skin"..TitanSkinsPathEnd},
	{ name = "Engineer", titan=true, path = TitanSkinsCustomPath.."Engineer Skin"..TitanSkinsPathEnd},
	{ name = "Frozen Metal", titan=true, path = TitanSkinsCustomPath.."Frozen Metal Skin"..TitanSkinsPathEnd},
	{ name = "Graphic", titan=true, path = TitanSkinsCustomPath.."Graphic Skin"..TitanSkinsPathEnd},
	{ name = "Graveyard", titan=true, path = TitanSkinsCustomPath.."Graveyard Skin"..TitanSkinsPathEnd},
	{ name = "Hidden Leaf", titan=true, path = TitanSkinsCustomPath.."Hidden Leaf Skin"..TitanSkinsPathEnd},
	{ name = "Holy Warrior", titan=true, path = TitanSkinsCustomPath.."Holy Warrior Skin"..TitanSkinsPathEnd},
	{ name = "Nightlife", titan=true, path = TitanSkinsCustomPath.."Nightlife Skin"..TitanSkinsPathEnd},
	{ name = "Orgrimmar", titan=true, path = TitanSkinsCustomPath.."Orgrimmar Skin"..TitanSkinsPathEnd},
	{ name = "Plate", titan=true, path = TitanSkinsCustomPath.."Plate Skin"..TitanSkinsPathEnd},
	{ name = "Tribal", titan=true, path = TitanSkinsCustomPath.."Tribal Skin"..TitanSkinsPathEnd},
	{ name = "X-Perl", titan=true, path = TitanSkinsCustomPath.."X-Perl"..TitanSkinsPathEnd},
};
TitanSkins = {}

-- trim version if it exists
local fullversion = GetAddOnMetadata("Titan", "Version")
if fullversion then
	local pos = string.find(fullversion, " -", 1, true);
	if pos then
		TITAN_VERSION = string.sub(fullversion,1,pos-1);
	end
end

--[[ local
NAME: TitanVariables_InitPlayerSettings
DESC: Add the saved variable data of an unloaded plugin to the 'extra' list in case the user wants to delete the data via Tian Extras option.
VARS: 
- id - the name of the plugin (string)
OUT : None
--]]
local function TitanRegisterExtra(id) 
	TitanPluginExtrasNum = TitanPluginExtrasNum + 1
	TitanPluginExtras[TitanPluginExtrasNum] = 
		{num=TitanPluginExtrasNum, 
		id     = (id or "?"), 
		}
end

-- routines to sync toon data
--[[ local
NAME: TitanVariables_InitPlayerSettings
DESC: Load the current toon data into Titan variables.  These will be saved on exit or reload.
VARS: None
OUT : None
--]]
local function TitanVariables_InitPlayerSettings() 
	-- Titan should not be nil
	if (not TitanSettings) then
		return;
	end
	
	-- Init TitanSettings.Players
	if (not TitanSettings.Players ) then
		TitanSettings.Players = {};
	end
	
	local playerName = UnitName("player");
	local serverName = GetCVar("realmName");
	-- Do nothing if player name is not available
	if (playerName == nil 
	or playerName == UNKNOWNOBJECT 
	or playerName == UKNOWNBEING) then
		return;
	end

	toon = playerName .. TITAN_AT .. serverName
	if (TitanSettings.Players[playerName] 
	and not TitanSettings[toon]) then
		TitanSettings.Players[toon] = TitanSettings.Players[playerName];
		TitanSettings.Players[playerName]=nil;
	end
	
	-- Init TitanPlayerSettings
	if (not TitanSettings.Players[toon]) then
		TitanSettings.Players[toon] = {}
		TitanSettings.Players[toon].Plugins = {}
		TitanSettings.Players[toon].Panel = {}
		TitanPlayerSettings["Plugins"] = {}
		TitanPlayerSettings["Panel"] = {}
		TitanPlayerSettings["Register"] = {}
	end	
	
	-- Set global variables
	TitanPlayerSettings = TitanSettings.Players[toon];
	TitanPluginSettings = TitanPlayerSettings["Plugins"];
	TitanPanelSettings = TitanPlayerSettings["Panel"];
	
	-- for debug if a user needs to send in the Titan saved vars
	TitanPlayerSettings["Register"] = {}
	TitanPanelRegister = TitanPlayerSettings["Register"]
	
	TitanSettings.Player = toon
end

--[[ local
NAME: TitanVariables_SyncRegisterSavedVariables
DESC: Helper routine to sync two sets of toon data - Titan settings and loaded plugins.
VARS: 
- registeredVariables - current loaded data (destination)
- savedVariables - data to compare with (source)
OUT : None
--]]
local function TitanVariables_SyncRegisterSavedVariables(registeredVariables, savedVariables)
	if (registeredVariables and savedVariables) then
		-- Init registeredVariables
		for index, value in pairs(registeredVariables) do
			if (not TitanUtils_TableContainsIndex(savedVariables, index)) then
				savedVariables[index] = value;
			end
		end
					
		-- Remove out-of-date savedVariables
		for index, value in pairs(savedVariables) do
			if (not TitanUtils_TableContainsIndex(registeredVariables, index)) then
				savedVariables[index] = nil;
			end
		end
	end
end

--[[ local
NAME: TitanVariables_SyncSkins
DESC: Routine to sync two sets of skins data - Titan defaults and Titan saved vars.
VARS: None
OUT : None
NOTE:
- It is assumed that the list in Titan defaults or as input from the user are in the Titan skins folder. Blizz does not allow LUA to read the hard drive directly.
--]]
local function TitanVariables_SyncSkins()
	if (TitanSkinsDefault and TitanSkins) then
		local skins = {}
		-- insert all the Titan defaults
		for idx, v in pairs(TitanSkinsDefault) do
			table.insert (skins, TitanSkinsDefault[idx]) 
--			table.sort(skins, function(a, b)
--				return string.lower(skins[a] and skins[a].name or "") 
--					< string.lower(skins[b] and skins[b].name or "")
--			end)
		end

		-- search through the saved vars and compare against the defaults
		for index, value in pairs(TitanSkins) do
			found = nil
			-- See if the skin is a default one
			for idx, v in pairs(TitanSkinsDefault) do
				if TitanSkinsDefault[idx].name == TitanSkins[index].name then
					found = idx
				end
			end
			if found then
				-- already inserted
			else -- could be user placed or old Titan
				if TitanSkins[index].titan then
					-- old Titan skin - let it drop
				else
					-- assume it is a user installed skin
					table.insert (skins, TitanSkins[index])
--					table.sort(skins, function(a, b)
--						return string.lower(skins[a] and skins[a].name or "") 
--							< string.lower(skins[b] and skins[b].name or "")
--					end)
				end
			end
		end
		return skins
	end
end

--[[ local
NAME: TitanVariables_SyncPanelSettings
DESC: Routine to sync Titan settings and Titan skins - defaults to saved vars.
VARS: None
OUT : None
--]]
local function TitanVariables_SyncPanelSettings() 
	-- Synchronize registered and saved variables
	TitanVariables_SyncRegisterSavedVariables(TITAN_PANEL_SAVED_VARIABLES, TitanPanelSettings)
	
	TitanSkins = TitanVariables_SyncSkins()
end

--[[ Titan
NAME: TitanVariables_SyncPluginSettings
DESC: Routine to sync plugin datas - current loaded (lua file) to any plugin saved vars (last save to disk).
VARS: None
OUT : None
--]]
function TitanVariables_SyncPluginSettings() -- one plugin uses this
	-- Init each and every plugin
	for id, plugin in pairs(TitanPlugins) do
		if (plugin and plugin.savedVariables) then
			-- Init savedVariables table
			if (not TitanPluginSettings[id]) then
				TitanPluginSettings[id] = {};
			end					
			
			-- Synchronize registered and saved variables
			TitanVariables_SyncRegisterSavedVariables(
				plugin.savedVariables, TitanPluginSettings[id]);			
		else
			-- Remove plugin savedVariables table if there's one
			if (TitanPluginSettings[id]) then
				TitanPluginSettings[id] = nil;
			end								
		end
	end
end

--[[ Titan
NAME: TitanVariables_ExtraPluginSettings
DESC: Routine to mark plugin data that is not loaded (no lua file) but has plugin saved vars (last save to disk).
VARS: None
OUT : None
NOTE: This data is made available in case the user wants to delete the data via Tian Extras option.
--]]
function TitanVariables_ExtraPluginSettings()
	TitanPluginExtrasNum = 0
	TitanPluginExtras = {}
	-- Get the saved plugins that are not loaded
	for id, plugin in pairs(TitanPluginSettings) do
		if (id and TitanUtils_IsPluginRegistered(id)) then
		else
			TitanRegisterExtra(id)								
		end
	end
end

--[[ Titan
NAME: TitanVariables_InitTitanSettings
DESC: Ensure TitanSettings (one of the saved vars in the toc) exists and set the Titan version.
VARS: None
OUT : None
NOTE:
- Called when Titan is loaded (ADDON_LOADED event)
--]]
function TitanVariables_InitTitanSettings()
	if (not TitanSettings) then
		TitanSettings = {};
	end
	
	TitanSettings.Version = TITAN_VERSION;
end

--[[ Titan
NAME: TitanVariables_InitDetailedSettings
DESC: Init the Titan settings, the plugin settings, the 'extras' data, and the Titan timer table.
VARS: None
OUT : None
NOTE:
- Called at PLAYER_ENTERING_WORLD event after we know Titan has registered plugins.
--]]
function TitanVariables_InitDetailedSettings()
	-- Titan is loaded so set the timers we want to use
	TitanTimers = {
		["EnterWorld"] = {obj = "PEW", callback = TitanAdjustBottomFrames, delay = 4,},
		["DualSpec"] = {obj = "SpecSwitch", callback = Titan_ManageFramesNew, delay = 2,},
		["LDBRefresh"] = {obj = "LDB", callback = TitanLDBRefreshButton, delay = 2,},
		["Adjust"] = {obj = "MoveAdj", callback = Titan_ManageFramesNew, delay = 1,},
		["Vehicle"] = {obj = "Vehicle", callback = Titan_ManageFramesNew, delay = 1,},
	}
	-- Syncronize Plugins/Panel settings
	if (not TitanPlayerSettings) then
		TitanVariables_InitPlayerSettings();
		if (TitanPlayerSettings) then
			-- Syncronize Panel settings
			TitanVariables_SyncPanelSettings();
		end
	end
	if (TitanPlayerSettings) then
		-- Syncronize Plugins settings
		TitanVariables_SyncPluginSettings();
		TitanVariables_ExtraPluginSettings()
	end
	
	TitanTimers["EnterWorld"].delay = TitanPanelGetVar("TimerPEW")
	TitanTimers["DualSpec"].delay = TitanPanelGetVar("TimerDualSpec")
	TitanTimers["LDBRefresh"].delay = TitanPanelGetVar("TimerLDB")
	TitanTimers["Adjust"].delay = TitanPanelGetVar("TimerAdjust")
	TitanTimers["Vehicle"].delay = TitanPanelGetVar("TimerVehicle")
end

--[[ API
NAME: TitanGetVar
DESC: Get the value of the requested plugin variable.
VARS: 
- id - the plugin name (string)
- var - the name (string) of the variable
OUT : None
NOTE:
- 'var' is from the plugin <button>.registry.savedVariables table as created in the plugin lua.
--]]
function TitanGetVar(id, var)
	if (id and var and TitanPluginSettings and TitanPluginSettings[id]) then		
		-- compatibility check
		if TitanPluginSettings[id][var] == "Titan Nil" then 
			TitanPluginSettings[id][var] = false 
		end
		return TitanUtils_Ternary(TitanPluginSettings[id][var] == false, nil, TitanPluginSettings[id][var]);
	end
end

--[[ API
NAME: TitanVarExists
DESC: Determine if requested plugin variable exists.
VARS: 
- id - the plugin name (string)
- var - the name (string) of the variable
OUT : None
NOTE:
- 'var' is from the plugin <button>.registry.savedVariables table as created in the plugin lua.
- This checks existence NOT false!
--]]
function TitanVarExists(id, var)
	-- We need to check for existance not true!
	-- If the value is nil then it will not exist...
	if (id and var and TitanPluginSettings and TitanPluginSettings[id] 
	and (TitanPluginSettings[id][var] 
		or TitanPluginSettings[id][var] == false) ) 
	then
		return true
	else
		return false
	end
end

--[[ API
NAME: TitanSetVar
DESC: Get the value of the requested plugin variable to the given value.
VARS: 
- id - the plugin name (string)
- var - the name (string) of the variable
- value - new value of var
OUT : None
NOTE:
- 'var' is from the plugin <button>.registry.savedVariables table as created in the plugin lua.
--]]
function TitanSetVar(id, var, value)
	if (id and var and TitanPluginSettings and TitanPluginSettings[id]) then		
		TitanPluginSettings[id][var] = TitanUtils_Ternary(value, value, false);		
	end
end

--[[ API
NAME: TitanToggleVar
DESC: Toggle the value of the requested plugin variable. This assumes var value represents a boolean
VARS: 
- id - the plugin name (string)
- var - the name (string) of the variable
- value - new value of var
OUT : None
NOTE:
- Boolean in this case could be true / false or non zero / zero or nil.
--]]
function TitanToggleVar(id, var)
	if (id and var and TitanPluginSettings and TitanPluginSettings[id]) then
		TitanSetVar(id, var, TitanUtils_Toggle(TitanGetVar(id, var)));
	end
end

--[[ API
NAME: TitanPanelGetVar
DESC: Get the value of the requested Titan variable.
VARS: 
- var - the name (string) of the variable
OUT : None
NOTE:
- 'var' is from the TitanPanelSettings[var].
--]]
function TitanPanelGetVar(var)
	if (var and TitanPanelSettings) then		
		if TitanPanelSettings[var] == "Titan Nil" then 
			TitanPanelSettings[var] = false 
		end		
		return TitanUtils_Ternary(TitanPanelSettings[var] == false, 
				nil, 
				TitanPanelSettings[var]);
	end
end

--[[ API
NAME: TitanPanelSetVar
DESC: Set the value of the requested Titan variable.
VARS: 
- var - the name (string) of the variable
- value - new value of var
OUT : None
NOTE:
- 'var' is from the TitanPanelSettings[var].
--]]
function TitanPanelSetVar(var, value)
	if (var and TitanPanelSettings) then		
		TitanPanelSettings[var] = TitanUtils_Ternary(value, value, false);
	end
end

--[[ API
NAME: TitanPanelToggleVar
DESC: Toggle the value of the requested Titan variable. This assumes var value represents a boolean
VARS: 
- var - the name (string) of the variable
OUT : None
NOTE:
- Boolean in this case could be true / false or non zero / zero or nil.
--]]
function TitanPanelToggleVar(var)
	if (var and TitanPanelSettings) then
		TitanPanelSetVar(var, TitanUtils_Toggle(TitanPanelGetVar(var)));
	end
end

--[[ API
NAME: TitanVariables_GetPanelStrata
DESC: Return the strata and the next highest strata of the given value
VARS: 
- value - the name (string) of the strata to look up
OUT : 
- Next highest strata
- passed in strata
--]]
function TitanVariables_GetPanelStrata(value)
	-- obligatory check
	if not value then value = "DIALOG" end

	local index, id;
	local indexpos = 5 -- DIALOG
	local StrataTypes = {"BACKGROUND", "LOW", "MEDIUM", "HIGH", 
		"DIALOG", "FULLSCREEN", "FULLSCREEN_DIALOG"}

	for index in ipairs(StrataTypes) do
		if value == StrataTypes[index] then
			indexpos = index
			break
		end
	end
	
	-- return the string value
	-- 1 is strata (1 higher)
	-- 2 is the requested strata
	return StrataTypes[indexpos + 1], StrataTypes[indexpos]
end

--[[ API
NAME: TitanVariables_SetPanelStrata
DESC: Set the Titan bars to the given strata and the plugins to the next highest strata.
VARS: 
- value - strata name (string)
OUT : None
--]]
function TitanVariables_SetPanelStrata(value)
	local plugins, bars = TitanVariables_GetPanelStrata(value)
	
	-- Set all the Titan bars
	for idx,v in pairs (TitanBarData) do
		local bar_name = TITAN_PANEL_DISPLAY_PREFIX..TitanBarData[idx].name
		_G[bar_name]:SetFrameStrata(bars)
	end
	-- Set all the registered plugins
	for index, id in pairs(TitanPluginsIndex) do
		local button = TitanUtils_GetButton(id);
		button:SetFrameStrata(plugins)
	end
end

--[[ API
NAME: TitanVariables_UseSettings
DESC: Set the Titan variables and plugin variables to the passed in profile.
VARS: 
- value - profile to use for this toon
OUT : None
NOTE:
- Called from the Titan right click menu
--]]
function TitanVariables_UseSettings(value)
	if not value then return end

	local i,k,pos;
	local TitanCopyPlayerSettings = nil;
	local TitanCopyPluginSettings = nil;
	local TitanCopyPanelSettings = nil;

	TitanCopyPlayerSettings = TitanSettings.Players[value];
	TitanCopyPluginSettings = TitanCopyPlayerSettings["Plugins"];
	TitanCopyPanelSettings = TitanCopyPlayerSettings["Panel"];

	for index, id in pairs(TitanPanelSettings["Buttons"]) do
		local currentButton = 
			TitanUtils_GetButton(TitanPanelSettings["Buttons"][index]);
		-- safeguard
		if currentButton then
		currentButton:Hide();
		end	
	end

	for index, id in pairs(TitanCopyPanelSettings) do
		TitanPanelSetVar(index, TitanCopyPanelSettings[index]);		
	end

	for index, id in pairs(TitanCopyPluginSettings) do
		for var, id in pairs(TitanCopyPluginSettings[index]) do		
			TitanSetVar(index, var, TitanCopyPluginSettings[index][var])
		end
	end

	TitanPanel_InitPanelBarButton();
	TitanPanel_InitPanelButtons();
	
	-- Set panel font
	local isfontvalid, newfont, index, id;
	isfontvalid = media:IsValid("font", TitanPanelGetVar("FontName"))
	if isfontvalid then
		newfont = media:Fetch("font", TitanPanelGetVar("FontName"))
		for index, id in pairs(TitanPluginsIndex) do
			local button = TitanUtils_GetButton(id);
			local buttonText = _G[button:GetName().."Text"];
			if buttonText then
				buttonText:SetFont(newfont, TitanPanelGetVar("FontSize"));
			end
			-- account for plugins with child buttons
			local childbuttons = {button:GetChildren()};
			for _, child in ipairs(childbuttons) do
				if child then
					local childbuttonText = _G[child:GetName().."Text"];
					if childbuttonText then
						childbuttonText:SetFont(newfont, TitanPanelGetVar("FontSize"));
					end
				end
			end
		end
		TitanPanel_RefreshPanelButtons();				
	end

	TitanVariables_SetPanelStrata(TitanPanelGetVar("FrameStrata"))

	TitanPanelRightClickMenu_Close();
end

-- decrecated routines
--[[

function TitanGetVarTable(id, var, position)
	if (id and var and TitanPluginSettings and TitanPluginSettings[id]) then		
		-- compatibility check
		if TitanPluginSettings[id][var][position] == "Titan Nil" then TitanPluginSettings[id][var][position] = false end
		return TitanUtils_Ternary(TitanPluginSettings[id][var][position] == false, nil, TitanPluginSettings[id][var][position]);
	end
end

function TitanSetVarTable(id, var, position, value)
	if (id and var and TitanPluginSettings and TitanPluginSettings[id]) then		
		TitanPluginSettings[id][var][position] = TitanUtils_Ternary(value, value, false);
	end
end

--]]