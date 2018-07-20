﻿--------------------------------------------------
-- BonusScanner Continued v4.2
-- Originally developed by Crowley <crowley@headshot.de>
-- performance improvements by Archarodim
-- Updated for WoW 2.0 by jmlsteele
-- Updated for WoW 3.0 by Tristanian <bandit@planetcnc.com>
-- get the latest version here:
-- http://wowui.incgamers.com/ui.php?id=4613 (WoWUI)
-- http://www.wowinterface.com/downloads/info7919 (WoWI)
-------------------------------------------------- 

-- Library references
local TipHooker = AceLibrary("TipHooker-1.0")
local AceTimer = LibStub("AceTimer-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("BonusScanner", true)

-- Initialize globals/tables

local BONUSSCANNER_VERSION = "4.2";

local BONUSSCANNER_PATTERN_SETNAME = "^(.*) %(%d/%d%)$";
local BONUSSCANNER_PATTERN_GENERIC_PREFIX = "^%+?(%d+)%%?(.*)$";
local BONUSSCANNER_PATTERN_GENERIC_SUFFIX = "^(.*)%+ ?(%d+)%%?$";
local BONUSSCANNER_PATTERN_GENERIC_SUFFIX2 = "^(.*)%s(%d+)%%";
  
local ItemCache = {}; -- Cache table for items
  
BonusScanner = {
	bonuses = {};
	bonuses_details = {};
		    
    ShowDebug = false; -- tells when the equipment is scanned
    Verbose	= false; -- Shows a LOT of debug information
    
		-- variable counters for number of gems of the appropriate color
		
		GemsRed = 0; 
		GemsYellow = 0;
		GemsBlue = 0;
		
	active = nil;
	temp = { 
		sets = {},
		set = "",
		slot = "",
		bonuses = {},
		details = {},
		GemsRed = 0,
		GemsYellow = 0,
		GemsBlue = 0
	};

	slots = {
		"Head",
		"Neck",
		"Shoulder",
		"Shirt",
		"Chest",
		"Waist",
		"Legs",
		"Feet",
		"Wrist",
		"Hands",
		"Finger0",
		"Finger1",
		"Trinket0",
		"Trinket1",
		"Back",
		"MainHand",
		"SecondaryHand",
		"Ranged",
		"Tabard",
	};
}

-- bonus effects, basically a refined version of bonus names indexed by category
 local BONUSSCANNER_EFFECTS = {
	{ effect = "STR", cat = "ATT" },
	{ effect = "AGI", cat = "ATT" },
	{ effect = "STA",	cat = "ATT" },
	{ effect = "INT",	cat = "ATT" },
	{ effect = "SPI",	cat = "ATT" },
	{ effect = "ARMOR", cat = "ATT" },

	{ effect = "ARCANERES", cat = "RES" },
	{ effect = "FIRERES", cat = "RES" },
	{ effect = "NATURERES", cat = "RES" },
	{ effect = "FROSTRES", cat = "RES" },
	{ effect = "SHADOWRES", cat = "RES" },

	{ effect = "DEFENSE", pformat="%d pt", cat = "SKILL" },
	{ effect = "EXPERTISE", pformat="%d pt", cat = "SKILL" },
	{ effect = "FISHING",	cat = "SKILL" },
	{ effect = "HERBALISM", cat = "SKILL" },
	{ effect = "MINING", cat = "SKILL" },
	{ effect = "SKINNING", cat = "SKILL" },
  
	{ effect = "ATTACKPOWER", cat = "BON" },
	{ effect = "ATTACKPOWERUNDEAD", cat = "BON" },
	{ effect = "ATTACKPOWERFERAL", cat = "BON" },
	{ effect = "ARMORPEN", pformat="%.2f%%", cat = "BON" },
	{ effect = "BLOCK", pformat="%.2f%%",	cat = "BON" },
  { effect = "BLOCKVALUE", cat = "BON" },
  { effect = "CRIT", pformat="%.2f%%", cat = "BON" },
  { effect = "DODGE", pformat="%.2f%%", cat = "BON" },
	{ effect = "HASTE",	pformat="%.2f%%",	cat = "BON" },
	{ effect = "TOHIT", pformat="%.2f%%",	cat = "BON" },
	{ effect = "RANGEDHIT", pformat="%.2f%%",	cat = "BON" },
	{ effect = "PARRY", pformat="%.2f%%", cat = "BON" },
	{ effect = "RANGEDATTACKPOWER", cat = "BON" },
  { effect = "RANGEDCRIT", pformat="%.2f%%", cat = "BON" },
  { effect = "RANGEDDMG", cat = "BON" },
	{ effect = "RESILIENCE", pformat="%.2f%%", cat = "BON" },
	{ effect = "DMGWPN", cat = "BON" },
	
	{ effect = "DMGUNDEAD",	cat = "SBON" },	
	{ effect = "SPELLPOW", cat = "SBON" },
  --{ effect = "HOLYCRIT", pformat="%.2f%%", cat = "SBON" },
	{ effect = "SPELLPEN", cat = "SBON" },
	{ effect = "ARCANEDMG", cat = "SBON" },
	{ effect = "FIREDMG", cat = "SBON" },
	{ effect = "FROSTDMG", cat = "SBON" },
	{ effect = "HOLYDMG", cat = "SBON" },
	{ effect = "NATUREDMG", cat = "SBON" },
	{ effect = "SHADOWDMG", cat = "SBON" },

	{ effect = "HEALTH", cat = "OBON" },
	{ effect = "HEALTHREG",	cat = "OBON" },
	{ effect = "MANA", cat = "OBON" },
	{ effect = "MANAREG",	cat = "OBON" },
	
	{ effect = "THREATREDUCTION",	cat = "EBON" },
	{ effect = "THREATINCREASE",	cat = "EBON" },
	{ effect = "INCRCRITDMG",	cat = "EBON" },
	{ effect = "SPELLREFLECT",	cat = "EBON" },
	{ effect = "SNARERESIST",	cat = "EBON" },
	{ effect = "STUNRESIST",	cat = "EBON" },
	{ effect = "PERCINT",	cat = "EBON" },
	{ effect = "PERCBLOCKVALUE",	cat = "EBON" },
	
	{ effect = "PERCARMOR",	cat = "EBON" },
	{ effect = "PERCMANA",	cat = "EBON" },
	{ effect = "PERCREDSPELLDMG",	cat = "EBON" },
	{ effect = "PERCSNARE",	cat = "EBON" },
	{ effect = "PERCSILENCE",	cat = "EBON" },
	{ effect = "PERCFEAR",	cat = "EBON" },
	{ effect = "PERCSTUN",	cat = "EBON" },
	{ effect = "PERCCRITHEALING",	cat = "EBON" },
};

local BaseRatings = {
{ effect = "EXPERTISE", baseval = 2.5},
{ effect = "DEFENSE", baseval = 1.5},
{ effect = "DODGE", baseval = 12},
{ effect = "PARRY", baseval = 15},
{ effect = "BLOCK", baseval = 5},
{ effect = "TOHIT", baseval = 10},
{ effect = "CRIT", baseval = 14},
{ effect = "RANGEDHIT", baseval = 10},		
{ effect = "RANGEDCRIT", baseval = 14},	 
{ effect = "HASTE", baseval = 10},
{ effect = "SPELLTOHIT", baseval = 8},
{ effect = "SPELLCRIT", baseval = 14},
{ effect = "HOLYCRIT", baseval = 14}, 
{ effect = "SPELLH", baseval = 10},
{ effect = "RESILIENCE", baseval = 25},
{ effect = "ARMORPEN", baseval = 4.69512176513672}																 
}

function BonusScanner:clearCache()
 local k;
	for k in pairs(ItemCache) do
		ItemCache[k] = nil;
	end
end

function BonusScanner:GetRatingMultiplier(level)
		if level < 10 then
			return 52 / (10 - 8)
		elseif level <= 60 then
			return 52 / (level - 8)
		elseif level <= 70 then
			return (-3/82)*level+(131/41)
		else
		  return 1/((82/52)*(131/63)^((level - 70)/10))
		end
end
	
function BonusScanner:GetRatingBonus(type, value,level)
	 local ref, F;
	 for _,ref in pairs (BaseRatings) do
	  if ref.effect==type then
	    F = ref.baseval;
	  end
	 end
		if not F then
			return nil
		end
		return value / F * BonusScanner:GetRatingMultiplier(level)
end

-- Update function to hook into. 
-- Gets called, when Equipment changes (after UNIT_INVENTORY_CHANGED)
function BonusScanner_Update()
end

function BonusScanner:GetBonus(bonus)
	if(BonusScanner.bonuses[bonus]) then
		return BonusScanner.bonuses[bonus];
	end;
	return 0;
end

function BonusScanner:GetSlotBonuses(slotname)
	local i, bonus, details;
	local bonuses = {};
	for bonus, details in pairs(BonusScanner.bonuses_details) do
		if(details[slotname]) then
			bonuses[bonus] = details[slotname];
		end
	end
	return bonuses;
end

function BonusScanner:GetBonusDetails(bonus)
	if(BonusScanner.bonuses_details[bonus]) then
		return BonusScanner.bonuses_details[bonus];
	end;
	return {};
end

function BonusScanner:GetSlotBonus(bonus, slotname)
	if(BonusScanner.bonuses_details[bonus]) then
		if(BonusScanner.bonuses_details[bonus][slotname]) then
			return BonusScanner.bonuses_details[bonus][slotname];
		end;
	end;
	return 0;
end

function BonusScanner:ProcessSpecialBonus (bonus, value, level)
	local specialval = "";
	local points = BonusScanner:GetRatingBonus(bonus, value,level);
		if bonus == "RESILIENCE" then
				specialval = " (-"..format("%.2f%%", points)..L["BONUSSCANNER_SPECIAL1_LABEL"]..")";
		elseif bonus == "EXPERTISE" then			
		  local tempval = points * 0.25;
				specialval = " ("..format("%d pt", points)..", -"..format("%.2f%%", tempval)..L["BONUSSCANNER_SPECIAL2_LABEL"]..")";
		elseif bonus == "DEFENSE" then			
			local tempval = points / 25;			
			  specialval = " ("..format("%d pt", points)..", -"..format("%.2f%%", tempval)..L["BONUSSCANNER_SPECIAL1_LABEL"]..")";
		elseif bonus == "TOHIT" then
			local tempval = BonusScanner:GetRatingBonus("SPELLTOHIT", value,level);
			 specialval = " ("..format("%.2f%%", points)..L["BONUSSCANNER_SPECIAL3_LABEL"]..", "..format("%.2f%%", tempval)..L["BONUSSCANNER_SPECIAL4_LABEL"]..")";
		end		
		return specialval, points;
end

function BonusScanner:GetGemSum(link)
local i;
local tempGemRed = 0;
local tempGemYellow = 0;
local tempGemBlue = 0;
local gem1itemID;
local gem2itemID;
local gem3itemID;
local gem1name, gem1Link = GetItemGem(link, 1);
local gem2name, gem2Link = GetItemGem(link, 2);
local gem3name, gem3Link = GetItemGem(link, 3);
  if gem1name then
      gem1itemID = gem1Link:match("item:(%-?%d+)") or nil;
  end
  if gem2name then
      gem2itemID = gem2Link:match("item:(%-?%d+)") or nil;      
  end
  if gem3name then
      gem3itemID = gem3Link:match("item:(%-?%d+)") or nil;      
  end

	for _,i in pairs (BonusScanner_Gems) do
		if gem1itemID then
				if i.itemID == gem1itemID then
					tempGemRed = tempGemRed + i.red;
					tempGemYellow = tempGemYellow + i.yellow;
					tempGemBlue = tempGemBlue + i.blue;
				end
		end
		if gem2itemID then
				if i.itemID == gem2itemID then
					tempGemRed = tempGemRed + i.red;
					tempGemYellow = tempGemYellow + i.yellow;
					tempGemBlue = tempGemBlue + i.blue;
				end
		end
		if gem3itemID then
				if i.itemID == gem3itemID then
					tempGemRed = tempGemRed + i.red;
					tempGemYellow = tempGemYellow + i.yellow;
					tempGemBlue = tempGemBlue + i.blue;
				end
		end
		
	end
	return tempGemRed, tempGemYellow, tempGemBlue;
end 

function BonusScanner.ProcessTooltip(tooltip, name, link)
BonusScannerTooltip:SetOwner(getglobal("BonusScannerFrame"),"ANCHOR_NONE");

if BonusScannerConfig.tooltip == 1 then

--itemparams
local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture = GetItemInfo(link);
--check to avoid errors if item is not in the player's cache		
		if (not itemLink) or itemLink == nil then 
		return; 
		end
--get properties of item		
local baseID, enchantID, gem1ID, gem2ID, gem3ID, socketBonusID, suffixID, instanceID = itemLink:match(
	  "item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)"
	);
--if the item has an older format, use this to get the properties
	if (not baseID) then
		baseID, enchantID, suffixID, instanceID = itemLink:match("item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)");
		gem1ID = "0";
		gem2ID = "0";
		gem3ID = "0";
	end		
	
	if BonusScannerConfig.basiciteminfo == 1 then
	tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_ITEMID_LABEL"]..baseID..LIGHTYELLOW_FONT_COLOR_CODE..", "..L["BONUSSCANNER_ILVL_LABEL"]..itemLevel);
	tooltip:Show();
	end
	
	if BonusScannerConfig.extendediteminfo == 1 then
	tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_ENCHANTID_LABEL"]..enchantID..LIGHTYELLOW_FONT_COLOR_CODE..", "..L["BONUSSCANNER_GEM1ID_LABEL"]..gem1ID..LIGHTYELLOW_FONT_COLOR_CODE..", "..L["BONUSSCANNER_GEM2ID_LABEL"]..gem2ID..LIGHTYELLOW_FONT_COLOR_CODE..", "..L["BONUSSCANNER_GEM3ID_LABEL"]..gem3ID);
	tooltip:Show();
	end
	
	
	local e, f, level, ratingval, bonuses, cbonuses;
	local GemnoRed = 0;
	local GemnoYellow = 0;
	local GemnoBlue = 0;
	local cat = ""; 
	local nobonus = true;
	local ifound = false;
	
	-- search the addon cache to locate the itemlink
	-- search for baseID, enchantID, socketed gems and suffixID (for green items). This should cover everything
	for _,f in pairs (ItemCache) do
	if f.baseID==baseID and f.enchantID==enchantID and f.gem1ID==gem1ID and f.gem2ID==gem2ID and f.gem3ID==gem3ID and f.suffixID==suffixID then
	bonuses = f.cbonuses;
	GemnoRed = f.gemsred;
	GemnoYellow = f.gemsyellow;
	GemnoBlue = f.gemsblue;
	ifound = true;
	end
	end
	--ONLY if the item is not in the addon cache do we scan it
	if (ifound) then
	else
	bonuses = BonusScanner:ScanItem(link);
	if gem1ID~="0" or gem2ID~="0" or gem3ID~="0" then
	GemnoRed, GemnoYellow, GemnoBlue = BonusScanner:GetGemSum(link);
	end
	 tinsert(ItemCache, {baseID=baseID, enchantID=enchantID, gem1ID=gem1ID, gem2ID=gem2ID, gem3ID=gem3ID, suffixID=suffixID, setname=BonusScanner.temp.set, gemsred=GemnoRed, gemsyellow=GemnoYellow, gemsblue=GemnoBlue, cbonuses=bonuses});
	end
					
	if (bonuses) then
	level = UnitLevel("player");
	
	if next (bonuses) == nil then
	else
	nobonus = false;
	end
	
if not (nobonus) then
tooltip:AddLine(" ");
tooltip:AddLine(L["BONUSSCANNER_BONUSSUM_LABEL"]);

	for _,e in pairs (BONUSSCANNER_EFFECTS) do
	if (bonuses[e.effect]) then
				if(e.cat ~= cat) then
				cat = e.cat;				
				tooltip:AddLine(GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_CAT_"..cat]..":");
				 end
				 --handle rating conversion here
				 if (e.pformat) then
				 	  ratingval, points = BonusScanner:ProcessSpecialBonus (e.effect, bonuses[e.effect], level);
				 	  if ratingval == "" then
				 		ratingval = " ("..format(e.pformat,points)..") ";
				 	  end
				 tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_NAMES"][e.effect] .. ": " .. HIGHLIGHT_FONT_COLOR_CODE .. bonuses[e.effect]..ratingval);
				 else
				tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_NAMES"][e.effect] .. ": ".. HIGHLIGHT_FONT_COLOR_CODE .. bonuses[e.effect]);
			   end
	end			  
	end
	
	  if IsControlKeyDown() or BonusScannerConfig.showgemcount == 1 then
 	if GemnoRed~=0 or GemnoYellow~=0 or GemnoBlue~=0 then
 	tooltip:AddLine(GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_CAT_GEMS"]..":");
 	end
 	if GemnoRed~=0 then
 	tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_GEMRED_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoRed);
 	end
 	if GemnoYellow~=0 then
 	tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"].."|cffffd200"..L["BONUSSCANNER_GEMYELLOW_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoYellow);
 	end
 	if GemnoBlue~=0 then
 	tooltip:AddLine(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"].."|cff2459ff"..L["BONUSSCANNER_GEMBLUE_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoBlue);
  	end
  	  end --end IsControlKeyDown()
	
tooltip:Show();
		end --end (nobonus)
		end --end if (bonuses)
end --end BonusScannerConfig.tooltip
end --end function ProcessTooltip

function BonusScanner:OnLoad(self)
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("PLAYER_LEAVING_WORLD");
	self:RegisterEvent("VARIABLES_LOADED");	
end

function BonusScanner:OnEvent(self, event, a1, ...)
	 
    BonusScanner:Debug(event);

    if ((event == "UNIT_INVENTORY_CHANGED") and BonusScanner.active and (a1 == "player")) then    		
		  AceTimer.CancelAllTimers("BonusScanner")
			AceTimer.ScheduleTimer("BonusScanner", BonusScanner_OnUpdate, 2)		
		return;
    end
    
	if (event == "PLAYER_ENTERING_WORLD") then			
			BonusScanner.active = 1;		
			AceTimer.ScheduleTimer("BonusScanner", BonusScanner_OnUpdate, 1)
			self:RegisterEvent("UNIT_INVENTORY_CHANGED");
	return;
	end
	
	if (event == "PLAYER_LEAVING_WORLD") then
		self:UnregisterEvent("UNIT_INVENTORY_CHANGED");
		return;
    end	
    
  if event == "VARIABLES_LOADED" then
        if not BonusScannerConfig then 
        -- initialize default configuration
        BonusScannerConfig = { 
				tooltip = 0; -- 1 for 'Enabled', 0 for 'Disabled'
				basiciteminfo = 0;
				extendediteminfo = 0;
				showgemcount = 0;
        }
        end
        if BonusScannerConfig.tooltip == 1 then
        	TipHooker:Hook(BonusScanner.ProcessTooltip, "item");
        end
    end
    
end


-- A little debug function
function BonusScanner:Debug( Message )
    if (BonusScanner.ShowDebug) then
			DEFAULT_CHAT_FRAME:AddMessage("BonusScanner Debug: " .. Message, 0.5, 0.8, 1);
		end	
end


function BonusScanner_OnUpdate()
	BonusScanner.bonuses, BonusScanner.bonuses_details, BonusScanner.GemsRed, BonusScanner.GemsYellow, BonusScanner.GemsBlue = BonusScanner:ScanEquipment("player"); -- scan the equiped items
	BonusScanner_Update();	  -- call the update function (for the mods using this library)
	AceTimer.CancelAllTimers("BonusScanner");	
end

function BonusScanner:ScanEquipment(target)
	local slotid, slotname, hasItem, i, f, k, itemName, itemLink, ifound;
	local tbonuses = {};
	SetCache = {};
	BonusScanner.temp.GemsRed = 0;
	BonusScanner.temp.GemsYellow = 0;
	BonusScanner.temp.GemsBlue = 0;
	
	  BonusScannerTooltip:SetOwner(getglobal("BonusScannerFrame"),"ANCHOR_NONE");

    BonusScanner:Debug("Scanning Equipment has requested");
    
    
-- Phase 1 : Check if the equipped items are cached, if not scan and cache them, if yes get the bonuses from the ItemCache
	for i, slotname in pairs(BonusScanner.slots) do
		slotid, _ = GetInventorySlotInfo(slotname.. "Slot");
		BonusScannerTooltip:ClearLines();
		hasItem = BonusScannerTooltip:SetInventoryItem(target, slotid);
		
	local GemnoRed = 0;
	local GemnoYellow = 0;
	local GemnoBlue = 0;

if hasItem then

		ifound=false;
		itemName, itemLink = BonusScannerTooltip:GetItem();
		
if itemLink then
		
--get properties of item		
local baseID, enchantID, gem1ID, gem2ID, gem3ID, socketBonusID, suffixID, instanceID = itemLink:match(
	  "item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)"
	);
--if the item has an older format, use this to get the properties
	if (not baseID) then
		baseID, enchantID, suffixID, instanceID = itemLink:match("item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)");
		gem1ID = "0";
		gem2ID = "0";
		gem3ID = "0";
	end	

--search the addon cache to locate the itemlink
	--search for baseID, enchantID, socketed gems and suffixID (for green items). This should cover everything
	for _,f in pairs (ItemCache) do
	if f.baseID==baseID and f.enchantID==enchantID and f.gem1ID==gem1ID and f.gem2ID==gem2ID and f.gem3ID==gem3ID and f.suffixID==suffixID then
	tbonuses = f.cbonuses;
	GemnoRed = f.gemsred;
	GemnoYellow = f.gemsyellow;
	GemnoBlue = f.gemsblue;
	ifound = true;
	end
	end
	--ONLY if the item is not in the addon cache do we scan it
	if (ifound) then
	else
	tbonuses = BonusScanner:ScanItem(itemLink); 
	if gem1ID~="0" or gem2ID~="0" or gem3ID~="0" then
	GemnoRed, GemnoYellow, GemnoBlue = BonusScanner:GetGemSum(itemLink);
	end
	tinsert(ItemCache, {baseID=baseID, enchantID=enchantID, gem1ID=gem1ID, gem2ID=gem2ID, gem3ID=gem3ID, suffixID=suffixID, setname=BonusScanner.temp.set, gemsred=GemnoRed, gemsyellow=GemnoYellow, gemsblue=GemnoBlue, cbonuses=tbonuses});
	end
	
	BonusScanner.temp.GemsRed = BonusScanner.temp.GemsRed + GemnoRed;
	BonusScanner.temp.GemsYellow = BonusScanner.temp.GemsYellow + GemnoYellow;
	BonusScanner.temp.GemsBlue = BonusScanner.temp.GemsBlue + GemnoBlue;

end --end if itemLink		
end --end if (hasItem) 
end --end for

-- Phase 2: Check if an item is part of a set, if it is, scan the tooltip to ensure set bonuses are picked up
-- if the item is not part of a set, use the cached bonuses if any

 		BonusScanner.temp.bonuses = {};
	  BonusScanner.temp.details = {};
	  BonusScanner.temp.sets = {};
		BonusScanner.temp.set = "";
		
		BonusScannerTooltip:SetOwner(getglobal("BonusScannerFrame"),"ANCHOR_NONE");
		
for i, slotname in pairs(BonusScanner.slots) do
		slotid, _ = GetInventorySlotInfo(slotname.. "Slot");
		BonusScannerTooltip:ClearLines();
		hasItem = BonusScannerTooltip:SetInventoryItem(target, slotid);

if hasItem then

		itemName, itemLink = BonusScannerTooltip:GetItem();

if itemLink then
		
--get properties of item		
local baseID, enchantID, gem1ID, gem2ID, gem3ID, socketBonusID, suffixID, instanceID = itemLink:match(
	  "item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)"
	);
--if the item has an older format, use this to get the properties
	if (not baseID) then
		baseID, enchantID, suffixID, instanceID = itemLink:match("item:(%-?%d+):(%-?%d+):(%-?%d+):(%-?%d+)");
		gem1ID = "0";
		gem2ID = "0";
		gem3ID = "0";
	end

local setnotcached = true;

-- search the addon cache to locate the itemlink
	-- if the item is a set item, we scan it to get the setbonus (if available)
	for _,f in pairs (ItemCache) do
	if f.baseID==baseID and f.enchantID==enchantID and f.gem1ID==gem1ID and f.gem2ID==gem2ID and f.gem3ID==gem3ID and f.suffixID==suffixID and (f.setname~="" or slotname=="Head") then
		  for _,k in pairs (SetCache) do
	   		if k.setname==f.setname then
	   				setnotcached=false;
	   		end
	   end
	if (setnotcached) then
		--DEFAULT_CHAT_FRAME:AddMessage("Checking Set Item:"..itemLink);
	BonusScanner.temp.slot = slotname;
	nosetcheck = false;
  BonusScanner:ScanTooltip();
  	if(BonusScanner.temp.set ~= "") then
			BonusScanner.temp.sets[BonusScanner.temp.set] = 1;
		end
		if f.setname~="" then
	tinsert(SetCache, { setname=f.setname });
		end
	tbonuses = {};
	end --end if (setnotcached)
	
	 end --end if f.baseID==baseID...
	
	if f.baseID==baseID and f.enchantID==enchantID and f.gem1ID==gem1ID and f.gem2ID==gem2ID and f.gem3ID==gem3ID and f.suffixID==suffixID and (f.setname=="" or setnotcached==false) and slotname~="Head" then
	--DEFAULT_CHAT_FRAME:AddMessage("Using Cached data for :"..itemLink);
	tbonuses = f.cbonuses; 
	end
	end --end for

BonusScanner.temp.slot = slotname;
for _,k in pairs (BONUSSCANNER_EFFECTS) do
	if (tbonuses) then
	if tbonuses[k.effect] then
	  	BonusScanner:AddValue(k.effect, tbonuses[k.effect])
	end
	end
end
end --end if itemLink
end --end if (hasItem) 
end --end for

	return BonusScanner.temp.bonuses, BonusScanner.temp.details, BonusScanner.temp.GemsRed, BonusScanner.temp.GemsYellow, BonusScanner.temp.GemsBlue;
end

function BonusScanner:ScanItem(itemlink)
		local k;
		local name = GetItemInfo(itemlink);
		if(name) and name ~="" then		
		BonusScanner.temp.bonuses = {};
		BonusScanner.temp.sets = {};
		BonusScanner.temp.set = "";
		BonusScanner.temp.slot = "";
		nosetcheck = true;
	  BonusScannerTooltip:ClearLines();
	  BonusScannerTooltip:SetHyperlink(itemlink);
		BonusScanner:ScanTooltip();
		return BonusScanner.temp.bonuses;
		end
	return false;
end

function BonusScanner:ScanTooltip()
	local tmpTxt, line, tmpTxt2, line2, rline, r, g, b;
	local lines = BonusScannerTooltip:NumLines();
		
	for i=2, lines, 1 do
		tmpText = getglobal("BonusScannerTooltipTextLeft"..i);
		tmpText2 = getglobal("BonusScannerTooltipTextRight"..i);
		val = nil;
		if (tmpText2:GetText()) then
		line2 = tmpText2:GetText();
		rline = string.find(line2, L["BONUSSCANNER_WEAPON_SPEED"], 1,true);
		end
		if (tmpText:GetText()) then
			line = tmpText:GetText();
			 --color = {tmpText:GetTextColor()};
			 r,g,b = tmpText:GetTextColor();
			r, g, b = ceil(r*255), ceil(g*255), ceil(b*255);
			if rline then
			 line="";
			 rline=nil;
			end
	BonusScanner:ScanLine(line, r, g, b);
		end
	end
end
	
		
function BonusScanner:AddValue(effect, value)
	local i,e;
	if(type(effect) == "string") then
		value = tonumber(value);				
	  if (BonusScanner.Verbose) then
			BonusScanner:Debug("Adding Effect: " .. effect .. " Value: " .. value);
		end
		if(BonusScanner.temp.bonuses[effect]) then
			BonusScanner.temp.bonuses[effect] = BonusScanner.temp.bonuses[effect] + value;
		else
			BonusScanner.temp.bonuses[effect] = value;
		end
		
		if(BonusScanner.temp.slot) then
			if(BonusScanner.temp.details[effect]) then
				if(BonusScanner.temp.details[effect][BonusScanner.temp.slot]) then
					BonusScanner.temp.details[effect][BonusScanner.temp.slot] = BonusScanner.temp.details[effect][BonusScanner.temp.slot] + value;
				else
					BonusScanner.temp.details[effect][BonusScanner.temp.slot] = value;
				end
			else
				BonusScanner.temp.details[effect] = {};
				BonusScanner.temp.details[effect][BonusScanner.temp.slot] = value;
			end
		end;
	else 
	-- list of effects
		if(type(value) == "table") then
			for i,e in pairs(effect) do
				BonusScanner:AddValue(e, value[i]);
			end
		else
			for i,e in pairs(effect) do
				BonusScanner:AddValue(e, value);
			end
		end
	end
end;

function BonusScanner:ScanLine(line,r,g,b)
	local tmpStr, found, newline,f ;
	BonusScanner:Debug(line .. " (".. string.len(line) .. ")")
	
	-- Experimental : Get rid of gray lines
	if (r==128 and g==128 and b==128) or (string.sub(line,0,10) == "|cff808080") then
	line="";
	return;
	end
		
	-- Check for "Equip: "
		if(string.sub(line,0,string.len(ITEM_SPELL_TRIGGER_ONEQUIP)) == ITEM_SPELL_TRIGGER_ONEQUIP) then
		tmpStr = string.sub(line,string.len(ITEM_SPELL_TRIGGER_ONEQUIP)+2);
		BonusScanner:CheckPassive(tmpStr);

	-- Check for "Set: "
	elseif(string.sub(line,0,string.len(L["BONUSSCANNER_PREFIX_SET"])) == L["BONUSSCANNER_PREFIX_SET"]
			and BonusScanner.temp.set ~= "" 
			and not BonusScanner.temp.sets[BonusScanner.temp.set]) and not (nosetcheck) then
		
		tmpStr = string.sub(line,string.len(L["BONUSSCANNER_PREFIX_SET"])+1);
		BonusScanner.temp.slot = "Set";
		BonusScanner:CheckPassive(tmpStr);
		
	--Socket Bonus:
	elseif(string.sub(line,0,string.len(L["BONUSSCANNER_PREFIX_SOCKET"])) == L["BONUSSCANNER_PREFIX_SOCKET"]) then
		--See if the line is green
		--if (color[1] < 0.1 and color[2] > 0.99 and color[3] < 0.1 and color[4] > 0.99) then
		 if (r==0 and g==255 and b==0) then
			tmpStr = string.sub(line,string.len(L["BONUSSCANNER_PREFIX_SOCKET"])+1);
			found = BonusScanner:CheckOther(tmpStr);
		 if(not found) then
		   BonusScanner:CheckGeneric(tmpStr);
		 end
		end

	-- any other line (standard stats, enchantment, set name, etc.)
	else
		
	--enchantment/stat fix for green items
		if (string.sub(line,0,10) == "|cffffffff") then
		newline = string.sub(line,11,-3);
		line = newline
		line = string.gsub( line, "%|$", "" );
		end	
		
		-- Check for set name
		_, _, tmpStr = string.find(line, BONUSSCANNER_PATTERN_SETNAME);
		if(tmpStr) then
			BonusScanner.temp.set = tmpStr;
		  else
		 found = BonusScanner:CheckOther(line);
		if(not found) then
		found = BonusScanner:CheckGeneric(line);
		end
		end
	end	
end;

-- Scans passive bonuses like "Set: " and "Equip: "
function BonusScanner:CheckPassive(line)
	local i, p, results, resultCount, found, start, value;

	found = nil;
	for i,p in pairs(L["BONUSSCANNER_PATTERNS_PASSIVE"]) do
		results = {string.find(line, "^" .. p.pattern)};
		resultCount = table.getn(results);
		if(resultCount == 3) then
			BonusScanner:AddValue(p.effect, results[3])
			found = 1;
			break; -- prevent duplicated patterns to cause bonuses to be counted several times
		elseif (resultCount > 3) then
			local values = {};
			for i=3,resultCount do
				table.insert(values,results[i]);
			end
			BonusScanner:AddValue(p.effect,values);
			found = 1;
			break; -- prevent duplicated patterns to cause bonuses to be counted several times
		end
		start, _, value = string.find(line, "^" .. p.pattern);
		if(start) and (p.value) then
				BonusScanner:AddValue(p.effect, p.value);
				found = 1;
				break;
			end
	end
	  if(not found) and (BonusScanner.temp.slot == "Set") then
		  BonusScanner:CheckGeneric(line);
	  end
end

-- Scans generic bonuses like "+3 Intellect" or "Arcane Resistance +4"
-- Changes for TBC (multi value gems)
function BonusScanner:CheckGeneric(line)
	local value, token, pos, pos2, pos3, tmpStr, sep, sepend, found;

-- consolidate multilines	
	line = string.gsub( line, "\n", L["BONUSSCANNER_GLOBAL_SEP"]);
		
	while(string.len(line) > 0) do
	found = false;
	
	-- Nasty hack, the following code has been implemented as the 'final' solution to Blizzard's retarded choice of different 'separators'
	-- meaning symbols to distinguish between multibonus patterns. Essentially what we do is forcibly replace all those different separators
	-- with our own, global one.
	
	for _, sep in ipairs(L["BONUSSCANNER_SEPARATORS"]) do
	line = string.gsub(line, sep,L["BONUSSCANNER_GLOBAL_SEP"]);
	end
	
	-- ensures that set bonuses will not be counted if they arent active
	pos = string.find(line, L["BONUSSCANNER_PREFIX_SET"], 1, true);
	if (pos) then
	line = "";
	end
	
	pos = string.find(line, L["BONUSSCANNER_GLOBAL_SEP"], 1, true);
	if (pos) then
	tmpStr = string.sub(line,1,pos-1);
	line = string.sub(line,pos+string.len(L["BONUSSCANNER_GLOBAL_SEP"]));
	else
	tmpStr = line;
	line = "";
	end
						
		-- trim line
	  tmpStr = string.gsub( tmpStr, "^%s+", "" );
  	tmpStr = string.gsub( tmpStr, "%s+$", "" ); 
    tmpStr = string.gsub( tmpStr, "%.$", "" );
    tmpStr = string.gsub( tmpStr, "\n", "" );    
    
  -- code for debugging purposes
	--DEFAULT_CHAT_FRAME:AddMessage("TmpStr:"..tmpStr);
	--DEFAULT_CHAT_FRAME:AddMessage("Line:"..line);
	--/code for debugging purposes
  
		--Check Prefix (+20 Strength)
		  _, _, value, token = string.find(tmpStr, BONUSSCANNER_PATTERN_GENERIC_PREFIX);
	          	
		--Check Suffix (Strength +20)
		if(not value) then
			_, _, token, value = string.find(tmpStr, BONUSSCANNER_PATTERN_GENERIC_SUFFIX);
		end
		
		--Check Suffix (Strength 20%)
		if(not value) then
			_, _, token, value = string.find(tmpStr, BONUSSCANNER_PATTERN_GENERIC_SUFFIX2);
		end
											
		if(token and value) then		
			-- trim token
		  token = string.gsub( token, "^%s+", "" );
    	token = string.gsub( token, "%s+$", "" );
	    token = string.gsub( token, "%.$", "" );
	    token = string.gsub( token, "|r", "" );
	    	      	      
			if(BonusScanner:CheckToken(token,value)) then
				found = true;
			end
			else
			BonusScanner:CheckOther(tmpStr);
		end
	end
	return found;
end

-- Identifies simple tokens like "Intellect" and composite tokens like "Fire damage" and 
-- add the value to the respective bonus. 
-- returns true if some bonus is found
function BonusScanner:CheckToken(token, value)
	local i, p, s1, s2;
	
	if(L["BONUSSCANNER_PATTERNS_GENERIC_LOOKUP"][token]) then
		BonusScanner:AddValue(L["BONUSSCANNER_PATTERNS_GENERIC_LOOKUP"][token], value);		
		return true;
	else
		s1 = nil;
		s2 = nil;
		for i,p in pairs(L["BONUSSCANNER_PATTERNS_GENERIC_STAGE1"]) do
			if(string.find(token,p.pattern,1,1)) then
				s1 = p.effect;
			end
		end	
		for i,p in pairs(L["BONUSSCANNER_PATTERNS_GENERIC_STAGE2"]) do
			if(string.find(token,p.pattern,1,1)) then
				s2 = p.effect;
			end
		end	
		if(s1 and s2) then
			BonusScanner:AddValue(s1..s2, value);
			return true;
		end 
	end
	return false;
end

-- Last fallback for non generic/special enchants/effects, like "Mana Regen x per 5 sec."
function BonusScanner:CheckOther(line)
	local i, p, value, start, found;

	for i,p in pairs(L["BONUSSCANNER_PATTERNS_OTHER"]) do
		start, _, value = string.find(line, "^" .. p.pattern);
		if(start) then
			BonusScanner:Debug("Special match found: \"" .. p.pattern .. "\"");
			if(p.value) then
				BonusScanner:AddValue(p.effect, p.value)
			elseif(value) then
				BonusScanner:AddValue(p.effect, value)
			end
			return true;
		end
	end
	return false;
end


-- Slash Command functions

function BonusScanner_Cmd(cmd)
local pos, temp, e;
WhisperParam=nil;
IsItem=nil;
--chat = ChatFrameEditBox:GetAttribute("chatType");


		-- Split string for optional params
		-- Itemlink whisper
		pos = string.find(cmd, "]|h|r%s", 1);
		if(pos) then
			WhisperParam = string.sub(cmd,pos+6);
		end
		-- If no space after itemlink treat as regular link regardless of text entered after
		pos = string.find(cmd, "]|h|r", 1);
		if(pos) then
			temp = string.sub(cmd,pos+5);
			cmd = string.sub(cmd,0,(string.len(cmd)-string.len(temp)));
		end
		-- Scan Target whisper
		pos = string.find(cmd, "target%s",1);
		if (pos) then
		 WhisperParam = string.sub(cmd,pos+7);
		 cmd = string.sub(cmd,0,(string.len(cmd)-string.len(WhisperParam))-1);
		end
				
	local _, _, itemlink, itemid = string.find(cmd, "|c%x+|H(item:(%-?%d+):%-?%d+:%-?%d+:%-?%d+:%-?%d+:%-?%d+:%-?%d+:%-?%d+:%-?%d+)|h%[.-%]|h|r");
	 
	if(itemid) then
  		local name = GetItemInfo(itemid);
		if(name) and name ~="" then
		
		BonusScannerTooltip:SetOwner(getglobal("BonusScannerFrame"),"ANCHOR_NONE");
			local bonuses = BonusScanner:ScanItem(itemlink);
			local GemnoRed, GemnoYellow, GemnoBlue = BonusScanner:GetGemSum(itemlink);
			local nobonus= true;
						
			if next (bonuses) == nil then
			else
			nobonus = false;
			end
			
			if not (nobonus) then 
			
			if (WhisperParam)then
			SendChatMessage(L["BONUSSCANNER_IBONUS_LABEL"]..cmd,"WHISPER",nil,WhisperParam)
			else
			DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_IBONUS_LABEL"]..cmd);
		  end
		  IsItem=1;
	  	BonusScanner:PrintInfo(bonuses, GemnoRed, GemnoYellow, GemnoBlue);
		  else
		  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_NOBONUS_LABEL"]);
		  end --end if not (nobonus) 
		  else
		  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_FAILEDPARSE_LABEL"]);
  		end --end if (name)
  		return;
  	end
  	if(string.lower(cmd) == "show") then
	  	DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_CUREQ_LABEL"]);
			BonusScanner:PrintInfo(BonusScanner.bonuses, BonusScanner.GemsRed, BonusScanner.GemsYellow, BonusScanner.GemsBlue);
  		return;
  	end
  	  	
  	if(string.lower(cmd) == "tooltip") then
  	
	  	if BonusScannerConfig.tooltip == 1 then
	  	 TipHooker:Unhook(BonusScanner.ProcessTooltip, "item");
	  	 BonusScannerConfig.tooltip = 0;
	  	 DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_STRING"].."["..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
	  	 else
	  	 TipHooker:Hook(BonusScanner.ProcessTooltip, "item");
	  	 BonusScannerConfig.tooltip = 1;	  	 
	  	 DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_STRING"].."["..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
	  	 end	  	 
  		return;
  	end
  	
  	if(string.lower(cmd) == "itembasic") then
  			if BonusScannerConfig.basiciteminfo == 1 then
  			  BonusScannerConfig.basiciteminfo = 0;
  			  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_BASICLINKID_STRING"].."["..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
  			  else
  			  BonusScannerConfig.basiciteminfo = 1;
  			  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_BASICLINKID_STRING"].."["..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
  			  end
  		return;
  	end
  	
  	if(string.lower(cmd) == "itemextend") then
  			if BonusScannerConfig.extendediteminfo == 1 then
  			  BonusScannerConfig.extendediteminfo = 0;
  			  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_EXTENDEDLINKID_STRING"].."["..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
  			  else
  			  BonusScannerConfig.extendediteminfo = 1;
  			  DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_EXTENDEDLINKID_STRING"].."["..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
  			  end
  		return;
  	end
  	
  	if(string.lower(cmd) == "tooltip gems") then
  	if BonusScannerConfig.showgemcount == 1 then
	  	 BonusScannerConfig.showgemcount = 0;
	  	 DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIPGEMS_STRING"].."["..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
	  	 else
	  	 BonusScannerConfig.showgemcount = 1;
	  	 DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIPGEMS_STRING"].."["..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..LIGHTYELLOW_FONT_COLOR_CODE.."]");
	  	 end	  	 
  		return;
  	end
  	
  	if(string.lower(cmd) == "clearcache") then
			BonusScanner:clearCache();
			collectgarbage('collect');
			DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_CACHECLEAR_LABEL"]);
  	 return;
  	end
  	
  	if(string.lower(cmd) == "details") then
	  	DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_CUREQDET_LABEL"]);
		BonusScanner:PrintInfoDetailed();
  		return;
  	end
  	if (string.lower(cmd) == "target") then
		local name  = GetUnitName("target");
		if (name) then
		  NotifyInspect("target");
			local bonuses, details, GemnoRed, GemnoYellow, GemnoBlue = BonusScanner:ScanEquipment("target"); -- scan the equiped items
			
			-- if bonuses exists (Todo:  Figure out whether bonuses is empty) then continue
			-- also check if the target is within inspection range
		if (CheckInteractDistance("target", 1)) then
			if UnitIsPlayer("target") and CanInspect("target") then
					
				if (WhisperParam) then
				SendChatMessage(L["BONUSSCANNER_IBONUS_LABEL"]..GetUnitName("target"),"WHISPER",nil,WhisperParam)
				else
				DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_IBONUS_LABEL"].."|cffffd200".. GetUnitName("target"));
				end
				BonusScanner:PrintInfo(bonuses, GemnoRed, GemnoYellow, GemnoBlue);
			
			else
			DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_INVALIDTAR_LABEL"]);
			end
		else
		DEFAULT_CHAT_FRAME:AddMessage("|cffffd200" .. GetUnitName("target") .. LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_OOR_LABEL"]);
		end --end CheckInteractDistance
				
		else
			DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_SELTAR_LABEL"]);
		end --end if (name)
		return;
	end
	for i, slotname in pairs(BonusScanner.slots) do
		if(string.lower(cmd) == string.lower(slotname)) then
		  	DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_IBONUS_LABEL"].."'".."|cffffd200" ..slotname .. LIGHTYELLOW_FONT_COLOR_CODE .. "' "..L["BONUSSCANNER_SLOT_LABEL"]);
		  	local bonuses = BonusScanner:GetSlotBonuses(slotname);
		  	IsItem=1;
		  	
		  	local slotid, _ = GetInventorySlotInfo(slotname.. "Slot");
		  	BonusScannerTooltip:ClearLines();
				local hasItem = BonusScannerTooltip:SetInventoryItem("player", slotid);
				if hasItem then
				_, itemLink = BonusScannerTooltip:GetItem();
				GemnoRed, GemnoYellow, GemnoBlue = BonusScanner:GetGemSum(itemLink);		  	
		    BonusScanner:PrintInfo(bonuses, GemnoRed, GemnoYellow, GemnoBlue);
		    end
		  	return
		end;
	end
	--display help text on slash commands
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING1"]..LIGHTYELLOW_FONT_COLOR_CODE..BONUSSCANNER_VERSION..L["BONUSSCANNER_SLASH_STRING1a"]);
  	local k,numitems;
  			numitems = 0;
				for k in pairs(ItemCache) do
				if ItemCache[k] then
				 numitems = numitems + 1;
				end
				end
		DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_CACHESUMMARY_LABEL"].."|cffffd200"..numitems);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING2"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING3"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING4"]);
  	if BonusScannerConfig.tooltip == 1 then
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING5"]..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..L["BONUSSCANNER_SLASH_STRING5a"]);
  	else
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING5"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..L["BONUSSCANNER_SLASH_STRING5a"]);
  	end
  	if BonusScannerConfig.showgemcount == 1 then
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING14"]..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..L["BONUSSCANNER_SLASH_STRING14a"]);
  	else
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING14"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..L["BONUSSCANNER_SLASH_STRING14a"]);
  	end
  	if BonusScannerConfig.basiciteminfo == 1 then
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING12"]..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..L["BONUSSCANNER_SLASH_STRING12a"]);
  	else
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING12"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..L["BONUSSCANNER_SLASH_STRING12a"]);
  	end
  	if BonusScannerConfig.extendediteminfo == 1 then
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING13"]..GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_ENABLED"]..L["BONUSSCANNER_SLASH_STRING13a"]);
  	else
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING13"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_TOOLTIP_DISABLED"]..L["BONUSSCANNER_SLASH_STRING13a"]);
  	end
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING11"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING6"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING7"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING8"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING9"]);
  	DEFAULT_CHAT_FRAME:AddMessage(L["BONUSSCANNER_SLASH_STRING10"]);
end

SLASH_BONUSSCANNER1 = "/bonusscanner";
SLASH_BONUSSCANNER2 = "/bscan";
SlashCmdList["BONUSSCANNER"] = BonusScanner_Cmd;

function BonusScanner:PrintInfoDetailed()
	local bonus, name, i, j, slot, first, s, e, ratingval;
	
for _, bonus in pairs(BONUSSCANNER_EFFECTS) do
		if(BonusScanner.bonuses[bonus.effect]) then
			first = true;
			s = "(";
			for j, slot in pairs(BonusScanner.slots) do 
				if(BonusScanner.bonuses_details[bonus.effect][slot]) then
					if(not first) then
						s = s .. ", ";
					else
						first = false;
					end
				  s = s .. 	LIGHTYELLOW_FONT_COLOR_CODE .. slot .. 
								HIGHLIGHT_FONT_COLOR_CODE .. ": " .. BonusScanner.bonuses_details[bonus.effect][slot];
				end
			end;
			if(BonusScanner.bonuses_details[bonus.effect]["Set"]) then
				if(not first) then
					s = s .. ", ";
				end
				s = s .. 	LIGHTYELLOW_FONT_COLOR_CODE .. "Set" .. 
							HIGHLIGHT_FONT_COLOR_CODE .. ": " .. BonusScanner.bonuses_details[bonus.effect]["Set"];
				end
			s = s .. ")";
			--rating conversion handled here
			if (bonus.pformat) then
					ratingval, points = BonusScanner:ProcessSpecialBonus (bonus.effect, BonusScanner.bonuses[bonus.effect], UnitLevel("player"));
					if ratingval == "" then
				 ratingval = " ("..format(bonus.pformat,points)..") ";
				  end
				 else
				 ratingval = "";
			end	 				 
			DEFAULT_CHAT_FRAME:AddMessage(GREEN_FONT_COLOR_CODE .. L["BONUSSCANNER_NAMES"][bonus.effect] .. ": " .. HIGHLIGHT_FONT_COLOR_CODE .. BonusScanner.bonuses[bonus.effect] .. ratingval.." " .. s);
		end
	end --end for

end --end function

function BonusScanner:PrintInfo(bonuses,GemnoRed,GemnoYellow,GemnoBlue)
	local bonus, name, e, level, ratingval;
	local cat = "";
		
		if not bonuses then
		return;
		end	
		
	for _,e in pairs (BONUSSCANNER_EFFECTS) do
	  if (bonuses[e.effect]) then
	  --set the level of the target for rating conversions. If we are scanning an item then use the player's level
			local tar = GetUnitName("target");
			if (tar) and IsItem==nil then
	  	level = UnitLevel("target");
	  	else
	  	level = UnitLevel("player");
	  	end
	  	--handle whispers with or without conversion here 
			if (WhisperParam) then
			  if (e.pformat) then
			   if IsItem then
			   ratingval = "";
			   else
			   	ratingval, points = BonusScanner:ProcessSpecialBonus (e.effect, bonuses[e.effect], level);
			   	if ratingval == "" then
				 ratingval = " ("..format(e.pformat,points)..") ";
				  end
				 end				   				 
		       SendChatMessage(L["BONUSSCANNER_NAMES"][e.effect] .. ": " .. bonuses[e.effect]..ratingval,"WHISPER",nil,WhisperParam);
        else
           SendChatMessage(L["BONUSSCANNER_NAMES"][e.effect] .. ": " .. bonuses[e.effect],"WHISPER",nil,WhisperParam);
         end
			else
				 if(e.cat ~= cat) then
				cat = e.cat;				
				DEFAULT_CHAT_FRAME:AddMessage(GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_CAT_"..cat]..":");				
				 end
				 --handle rating conversion here
				 if (e.pformat) then
				 	ratingval, points = BonusScanner:ProcessSpecialBonus (e.effect, bonuses[e.effect], level);
				 	if ratingval =="" then
				 ratingval = " ("..format(e.pformat,points)..") ";
				  end
				 DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_NAMES"][e.effect] .. ": " .. HIGHLIGHT_FONT_COLOR_CODE .. bonuses[e.effect]..ratingval);
				 else
			     DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE .. L["BONUSSCANNER_NAMES"][e.effect] .. ": " .. HIGHLIGHT_FONT_COLOR_CODE .. bonuses[e.effect]);
			   end			   
			end			
	  end
	end --end for
	
if not (WhisperParam) then	
	if GemnoRed~=0 or GemnoYellow~=0 or GemnoBlue~=0 then
					DEFAULT_CHAT_FRAME:AddMessage(GREEN_FONT_COLOR_CODE..L["BONUSSCANNER_CAT_GEMS"]..":");
				 end
				 if GemnoRed~=0 then
					DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"]..RED_FONT_COLOR_CODE..L["BONUSSCANNER_GEMRED_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoRed);
				 end
				 if GemnoYellow~=0 then
					DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"].."|cffffd200"..L["BONUSSCANNER_GEMYELLOW_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoYellow);
				 end
				if GemnoBlue~=0 then
					DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..L["BONUSSCANNER_GEMCOUNT_LABEL"].."|cff2459ff"..L["BONUSSCANNER_GEMBLUE_LABEL"]..LIGHTYELLOW_FONT_COLOR_CODE..": "..HIGHLIGHT_FONT_COLOR_CODE..GemnoBlue);
				 end
	else
	  if GemnoRed~=0 or GemnoYellow~=0 or GemnoBlue~=0 then
					SendChatMessage(L["BONUSSCANNER_CAT_GEMS"]..":","WHISPER",nil,WhisperParam);
				 end
				 if GemnoRed~=0 then
					SendChatMessage(L["BONUSSCANNER_GEMCOUNT_LABEL"]..L["BONUSSCANNER_GEMRED_LABEL"]..": "..GemnoRed,"WHISPER",nil,WhisperParam);
				 end
				 if GemnoYellow~=0 then
					SendChatMessage(L["BONUSSCANNER_GEMCOUNT_LABEL"]..L["BONUSSCANNER_GEMYELLOW_LABEL"]..": "..GemnoYellow,"WHISPER",nil,WhisperParam);
				 end
				if GemnoBlue~=0 then
					SendChatMessage(L["BONUSSCANNER_GEMCOUNT_LABEL"]..L["BONUSSCANNER_GEMBLUE_LABEL"]..": "..GemnoBlue,"WHISPER",nil,WhisperParam);
				 end
 end
end --end function
