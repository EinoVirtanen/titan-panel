﻿--如果你可以提供最新的中文譯文，請發送電郵到yeachan@live.com或者聯絡Titan Developement Team。


local L = LibStub("AceLocale-3.0"):NewLocale("Titan","zhTW")
if not L then return end

L["TITAN_PANEL"] = "Titan Panel";
local TITAN_PANEL = "Titan Panel";
L["TITAN_DEBUG"] = "<Titan>";
L["TITAN_PRINT"] = "Titan";

L["TITAN_NA"] = "N/A";
L["TITAN_SECONDS"] = "秒鐘";
L["TITAN_MINUTES"] = "分鐘";
L["TITAN_HOURS"] = "小時";
L["TITAN_DAYS"] = "天";
L["TITAN_SECONDS_ABBR"] = "秒";
L["TITAN_MINUTES_ABBR"] = "分";
L["TITAN_HOURS_ABBR"] = "時";
L["TITAN_DAYS_ABBR"] = "天";
L["TITAN_MILLISECOND"] = "ms";
L["TITAN_KILOBYTES_PER_SECOND"] = "KB/s";
L["TITAN_KILOBITS_PER_SECOND"] = "kbps"
L["TITAN_MEGABYTE"] = "MB";
L["TITAN_NONE"] = "無";
L["TITAN_USE_COMMA"] = "Use comma";
L["TITAN_USE_PERIOD"] = "Use period";

L["TITAN_PANEL_ERROR_PROF_DELCURRENT"] = "你可能已經刪除目前的角色配置。";
local TITAN_PANEL_WARNING = GREEN_FONT_COLOR_CODE.."Warning : "..FONT_COLOR_CODE_CLOSE
local TITAN_PANEL_RELOAD_TEXT = "如果你要繼續請按「套用」，你的插件將會重新載入，如果不確定請按「取消」或 Esc 鍵。"
L["TITAN_PANEL_RESET_WARNING"] = TITAN_PANEL_WARNING
	.."此設定將會重置你的 Titan 的設定為預設值，並且會重新建立你的配置檔案。 "
	..TITAN_PANEL_RELOAD_TEXT
L["TITAN_PANEL_RELOAD"] = TITAN_PANEL_WARNING
	.."這會重新載入泰坦面板. "
	..TITAN_PANEL_RELOAD_TEXT
L["TITAN_PANEL_ATTEMPTS"] = TITAN_PANEL.." Attempts"
L["TITAN_PANEL_ATTEMPTS_SHORT"] = "Attempts"
L["TITAN_PANEL_ATTEMPTS_DESC"] = "The plugins below requested to be registered with "..TITAN_PANEL..".\n"
	.."Please send any issues to the plugin author."
L["TITAN_PANEL_ATTEMPTS_TYPE"] = "Type"
L["TITAN_PANEL_ATTEMPTS_CATEGORY"] = "Category"
L["TITAN_PANEL_ATTEMPTS_BUTTON"] = "Button Name"
L["TITAN_PANEL_ATTEMPTS_STATUS"] = "Status"
L["TITAN_PANEL_ATTEMPTS_ISSUE"] = "Issue"
L["TITAN_PANEL_ATTEMPTS_NOTES"] = "Notes"
L["TITAN_PANEL_ATTEMPTS_TABLE"] = "Table index"
L["TITAN_PANEL_EXTRAS"] = TITAN_PANEL.." Extras"
L["TITAN_PANEL_EXTRAS_SHORT"] = "Extras"
L["TITAN_PANEL_EXTRAS_DESC"] = "These are plugins with configuration data that are not currently loaded.\n"
	.."These are safe to delete."
L["TITAN_PANEL_EXTRAS_DELETE_BUTTON"] = "Delete config data"
L["TITAN_PANEL_EXTRAS_DELETE_MSG"] = "configuration entry has been removed."
L["TITAN_PANEL_CHARS"] = "Characters"
L["TITAN_PANEL_CHARS_DESC"] = "These are characters with configuration data."
L["TITAN_PANEL_REGISTER_START"] = "Register "..TITAN_PANEL.." plugins..."
L["TITAN_PANEL_REGISTER_END"] = "Registration process done."
	
-- slash command help
L["TITAN_PANEL_SLASH_RESET_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."輸入: |cffffffff/titan {reset | reset tipfont/tipalpha/panelscale/spacing}";
L["TITAN_PANEL_SLASH_RESET_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffff重置面板為預設值/位置。";
L["TITAN_PANEL_SLASH_RESET_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffff重置面板提示文字大小為預設值。";
L["TITAN_PANEL_SLASH_RESET_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffff重製面板提示視窗透明度為預設值。";
L["TITAN_PANEL_SLASH_RESET_4"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffff重置面板大小為預設值。";
L["TITAN_PANEL_SLASH_RESET_5"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffff重置面板按鈕間距為預設值。";
L["TITAN_PANEL_SLASH_GUI_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/titan {gui control/trans/skin}";
L["TITAN_PANEL_SLASH_GUI_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffff開啟 Ace3 面板控制介面。";
L["TITAN_PANEL_SLASH_GUI_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffff開啟 Ace3 透明度控制介面。";
L["TITAN_PANEL_SLASH_GUI_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffff開啟 Ace3 外觀控制介面。";
L["TITAN_PANEL_SLASH_PROFILE_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/titan {profile use <profile>}";
L["TITAN_PANEL_SLASH_PROFILE_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."profile use <name> <server>: |cffffffffSets the profile to the requested saved profile.";
L["TITAN_PANEL_SLASH_PROFILE_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<name>: |cffffffffcan be either the character name or the custom profile name."
L["TITAN_PANEL_SLASH_PROFILE_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<server>: |cffffffffcan be either the server name or 'TitanCustomProfile'."
L["TITAN_PANEL_SLASH_HELP_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/titan {help | help <topic>}";
L["TITAN_PANEL_SLASH_HELP_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<topic>: reset/gui/profile/help ";
L["TITAN_PANEL_SLASH_ALL_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/titan <topic>";
L["TITAN_PANEL_SLASH_ALL_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<topic>: |cffffffffreset/gui/profile/help ";
	
-- slash command responses
L["TITAN_PANEL_SLASH_RESP1"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 提示文字大小已重置。";
L["TITAN_PANEL_SLASH_RESP2"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 提示視窗透明度已重置。";
L["TITAN_PANEL_SLASH_RESP3"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 大小已重置。";
L["TITAN_PANEL_SLASH_RESP4"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 按鈕間距已重置。";
     
-- global profile locale
L["TITAN_PANEL_GLOBAL"] = "Global";     
L["TITAN_PANEL_GLOBAL_PROFILE"] = "Global Profile";     
L["TITAN_PANEL_GLOBAL_USE"] = "Use Global Profile";     
L["TITAN_PANEL_GLOBAL_USE_AS"] = "Use as Global Profile";     
L["TITAN_PANEL_GLOBAL_USE_DESC"] = "Use a global profile for all characters";     
L["TITAN_PANEL_GLOBAL_RESET_PART"] = "resetting options";     
L["TITAN_PANEL_GLOBAL_ERR_1"] = "You may not load a profile when a global profile is in use";
	
-- general panel locale
L["TITAN_PANEL_VERSION_INFO"] = "|cffff8c00Titan Development Team |cffffffff Presents ".." |cffffffff";
L["TITAN_PANEL_MENU_TITLE"] = "泰坦面版";
L["TITAN_PANEL_MENU_HIDE"] = "隱藏";
L["TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN"] = "(戰鬥中)";
L["TITAN_PANEL_MENU_RELOADUI"] = "(重載介面)";
L["TITAN_PANEL_MENU_SHOW_COLORED_TEXT"] = "顯示彩色文字";
L["TITAN_PANEL_MENU_SHOW_ICON"] = "顯示圖示";
L["TITAN_PANEL_MENU_SHOW_LABEL_TEXT"] = "顯示標籤文字";
L["TITAN_PANEL_MENU_AUTOHIDE"] = "自動隱藏";
L["TITAN_PANEL_MENU_CENTER_TEXT"] = "文字置中";
L["TITAN_PANEL_MENU_DISPLAY_BAR"] = "Show Bar";
L["TITAN_PANEL_MENU_DISABLE_PUSH"] = "關閉螢幕調整";
L["TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH"] = "關閉小地圖調整";
L["TITAN_PANEL_MENU_DISABLE_LOGS"] = "自動調整紀錄";
L["TITAN_PANEL_MENU_DISABLE_BAGS"] = "自動調整背包";
L["TITAN_PANEL_MENU_DISABLE_TICKET"] = "自動調整標籤框體";
L["TITAN_PANEL_MENU_PROFILES"] = "配置檔";
L["TITAN_PANEL_MENU_PROFILE"] = "配置檔「";
L["TITAN_PANEL_MENU_PROFILE_CUSTOM"] = "自訂";
L["TITAN_PANEL_MENU_PROFILE_DELETED"] = "」已刪除。";
L["TITAN_PANEL_MENU_PROFILE_SERVERS"] = "伺服器";
L["TITAN_PANEL_MENU_PROFILE_CHARS"] = "角色";
L["TITAN_PANEL_MENU_PROFILE_RELOADUI"] = "當按下「確定」按鈕時，你的插件將立即新載入並儲存你的自訂配置檔。";
L["TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE"] = "請輸入你的自訂配置檔名稱:\n(最大 20 個字元，不可有空格且區分大小寫。)";
L["TITAN_PANEL_MENU_PROFILE_SAVE_PENDING"] = "目前的面板設定將會儲存到配置檔： ";
L["TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS"] = "此配置檔名稱已存在，你確定你要覆蓋嗎？如果確定請按「套用」，否則請按「取消」或 ESC 鍵。";
L["TITAN_PANEL_MENU_MANAGE_SETTINGS"] = "管理";
L["TITAN_PANEL_MENU_LOAD_SETTINGS"] = "載入設定";
L["TITAN_PANEL_MENU_DELETE_SETTINGS"] = "刪除";
L["TITAN_PANEL_MENU_SAVE_SETTINGS"] = "儲存";
L["TITAN_PANEL_MENU_CONFIGURATION"] = "配置設定";
L["TITAN_PANEL_OPTIONS"] = "選項";
L["TITAN_PANEL_MENU_TOP"] = "Top"
L["TITAN_PANEL_MENU_TOP2"] = "Top 2"
L["TITAN_PANEL_MENU_BOTTOM"] = "Bottom"
L["TITAN_PANEL_MENU_BOTTOM2"] = "Bottom 2"
L["TITAN_PANEL_MENU_OPTIONS"] = TITAN_PANEL.." Tooltips and Frames";
L["TITAN_PANEL_MENU_OPTIONS_SHORT"] = "Tooltips and Frames";
L["TITAN_PANEL_MENU_TOP_BARS"] = "Top Bars"
L["TITAN_PANEL_MENU_BOTTOM_BARS"] = "Bottom Bars"
L["TITAN_PANEL_MENU_OPTIONS_BARS"] = "狀態列";
L["TITAN_PANEL_MENU_OPTIONS_MAIN_BARS"] = TITAN_PANEL.." Top Bars";
L["TITAN_PANEL_MENU_OPTIONS_AUX_BARS"] = TITAN_PANEL.." Bottom Bars";
L["TITAN_PANEL_MENU_OPTIONS_TOOLTIPS"] = "Tooltips";
L["TITAN_PANEL_MENU_OPTIONS_FRAMES"] = "視窗";
L["TITAN_PANEL_MENU_PLUGINS"] = "插件";
L["TITAN_PANEL_MENU_LOCK_BUTTONS"] = "鎖定面板";
L["TITAN_PANEL_MENU_VERSION_SHOWN"] = "顯示插件版本";
L["TITAN_PANEL_MENU_LDB_SIDE"] = "右側插件";
L["TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER"] = "強制快捷列於右側";
L["TITAN_PANEL_MENU_CATEGORIES"] = {"內建插件","一般","戰鬥","資訊","介面","專業"}
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN"] = "顯示提示";
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT"] = "戰鬥中隱藏提示訊息";
L["TITAN_PANEL_MENU_AUTOHIDE_IN_COMBAT"] = "Lock auto hide bars while in combat";
L["TITAN_PANEL_MENU_RESET"] = "重置面板為預設值";
L["TITAN_PANEL_MENU_TEXTURE_SETTINGS"] = "面板設定";
L["TITAN_PANEL_MENU_LSM_FONTS"] = "面版字體"
L["TITAN_PANEL_MENU_ENABLED"] = "啟用";
L["TITAN_PANEL_MENU_DISABLED"] = "停用";
L["TITAN_PANEL_SHIFT_LEFT"] = "Shift 左鍵";
L["TITAN_PANEL_SHIFT_RIGHT"] = "Shift 右鍵";
L["TITAN_PANEL_MENU_SHOW_PLUGIN_TEXT"] = "Show plugin text";
L["TITAN_PANEL_MENU_BAR_ALWAYS"] = "Always on";
L["TITAN_PANEL_MENU_POSITION"] = "Position";
L["TITAN_PANEL_MENU_BAR"] = "Bar";
L["TITAN_PANEL_MENU_DISPLAY_ON_BAR"] = "Display on Bar";
L["TITAN_PANEL_MENU_SHOW"] = "Show plugin";
L["TITAN_PANEL_MENU_PLUGIN_RESET"] = "Refresh plugins";
L["TITAN_PANEL_MENU_PLUGIN_RESET_DESC"] = "Refresh plugin text and position";

-- localization strings for AceConfigDialog-3.0   
L["TITAN_ABOUT_VERSION"] = "Version";
L["TITAN_ABOUT_AUTHOR"] = "Author";
L["TITAN_ABOUT_CREDITS"] = "Credits";
L["TITAN_ABOUT_CATEGORY"] = "Category";
L["TITAN_ABOUT_EMAIL"] = "Email";
L["TITAN_ABOUT_WEB"] = "Website";
L["TITAN_ABOUT_LICENSE"] = "License";  
L["TITAN_PANEL_CONFIG_MAIN_LABEL"] = "顯示狀態列插件資訊。允許使用者在螢幕控制面板的上方或下方加入資料或快捷列插件。";			 
L["TITAN_TRANS_MENU_TEXT"] = TITAN_PANEL.." Transparency";
L["TITAN_TRANS_MENU_TEXT_SHORT"] = "透明度";
L["TITAN_TRANS_MENU_DESC"] = "調整 Titan 狀態列和提示視窗的透明度。";		
L["TITAN_TRANS_MAIN_CONTROL_TITLE"] = "主要狀態列";
L["TITAN_TRANS_AUX_CONTROL_TITLE"] = "輔助狀態列";
L["TITAN_TRANS_CONTROL_TITLE_TOOLTIP"] = "提示訊息";		 
L["TITAN_TRANS_TOOLTIP_DESC"] = "設定各種提示訊息插件的透明度。";
L["TITAN_UISCALE_MENU_TEXT"] = "面板控制";
L["TITAN_UISCALE_MENU_TEXT_SHORT"] = "Scale and Font";
L["TITAN_UISCALE_CONTROL_TITLE_UI"] = "插件大小";
L["TITAN_UISCALE_CONTROL_TITLE_PANEL"] = "面板大小";
L["TITAN_UISCALE_CONTROL_TITLE_BUTTON"] = "按鈕間距";
L["TITAN_UISCALE_CONTROL_TITLE_ICON"] = "Icon Spacing";
L["TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT"] = "提示訊息文字大小";
L["TITAN_UISCALE_TOOLTIP_DISABLE_TEXT"] = "關閉提示訊息文字大小";		 
L["TITAN_UISCALE_MENU_DESC"] = "控制各種插件和面板的外觀。";
L["TITAN_UISCALE_SLIDER_DESC"] = "設定整體插件的大小。";
L["TITAN_UISCALE_PANEL_SLIDER_DESC"] = "設定各種面板按鈕及圖示大小。";
L["TITAN_UISCALE_BUTTON_SLIDER_DESC"] = "調整左側插件間的空間大小";
L["TITAN_UISCALE_ICON_SLIDER_DESC"] = "Adjusts the space between right-side plugins.";
L["TITAN_UISCALE_TOOLTIP_SLIDER_DESC"] = "調整各種提示訊息插件的大小。";
L["TITAN_UISCALE_DISABLE_TOOLTIP_DESC"] = "關閉 Titan 的提示訊息字型大小控制。";

L["TITAN_SKINS_TITLE"] = TITAN_PANEL.." Skins";
L["TITAN_SKINS_OPTIONS_CUSTOM"] = "Skins - Custom";
L["TITAN_SKINS_TITLE_CUSTOM"] = TITAN_PANEL.." Custom Skins";
L["TITAN_SKINS_MAIN_DESC"] = "All custom skins are assumed to be in: \n"
			.."..\\AddOns\\Titan\\Artwork\\Custom\\<Skin Folder>\\ ".."\n"
			.."\n"..TITAN_PANEL.." and custom skins are stored under the Custom folder."
L["TITAN_SKINS_LIST_TITLE"] = "外觀清單";
L["TITAN_SKINS_SET_DESC"] = "選擇一個 Titan 狀態列的外觀設定。";
L["TITAN_SKINS_SET_HEADER"] = "設定面板外觀";
L["TITAN_SKINS_RESET_HEADER"] = "Reset "..TITAN_PANEL.." Skins";
L["TITAN_SKINS_NEW_HEADER"] = "加入新外觀";
L["TITAN_SKINS_NAME_TITLE"] = "外觀名稱";L["TITAN_SKINS_NAME_DESC"] = "請輸入新外觀的名稱。";
L["TITAN_SKINS_NAME_DESC"] = "例如: My Titan Skin";
L["TITAN_SKINS_PATH_TITLE"] = "外觀路徑";
L["TITAN_SKINS_PATH_DESC"] = "請輸入放置外觀檔案的正確路徑，如範例所示，說明請看「注意」事項。";
L["TITAN_SKINS_ADD_HEADER"] = "新增外觀";
L["TITAN_SKINS_ADD_DESC"] = "新增一個面板可用的外觀到清單中。";
L["TITAN_SKINS_REMOVE_HEADER"] = "移除外觀";
L["TITAN_SKINS_REMOVE_DESC"] = "從清單中選擇欲移除的面板外觀。";
L["TITAN_SKINS_REMOVE_BUTTON"] = "移除";
L["TITAN_SKINS_REMOVE_BUTTON_DESC"] = "從清單中移除所選的面板外觀。";
L["TITAN_SKINS_REMOVE_NOTES"] = "You are responsible for removing any unwanted custom skins "
	.."from the "..TITAN_PANEL.." install folder. Addons can not add or remove files."
L["TITAN_SKINS_RESET_DEFAULTS_TITLE"] = "重置配置";
L["TITAN_SKINS_RESET_DEFAULTS_DESC"] = "重置外觀列表至默認值.";
L["TITAN_PANEL_MENU_LSM_FONTS_DESC"] = "選擇泰坦條上各個模組的字體樣式.";
L["TITAN_PANEL_MENU_FONT_SIZE"] = "字體大小";
L["TITAN_PANEL_MENU_FONT_SIZE_DESC"] = "設置泰坦面板的字體大小.";
L["TITAN_PANEL_MENU_FRAME_STRATA"] = "面版框架層疊";
L["TITAN_PANEL_MENU_FRAME_STRATA_DESC"] = "為泰坦條設置是否顯示在最前.";
-- /end localization strings for AceConfigDialog-3.0

L["TITAN_PANEL_MENU_ADV"] = "Advanced";
L["TITAN_PANEL_MENU_ADV_DESC"] = "Change Timers only if you experience issues with frames not adjusting.".."\n";
L["TITAN_PANEL_MENU_ADV_PEW"] = "Entering World";
L["TITAN_PANEL_MENU_ADV_PEW_DESC"] = "Change value (usually increase) if frames do not adjust when entering / leaving world or an instance.";
L["TITAN_PANEL_MENU_ADV_VEHICLE"] = "Vehicle";
L["TITAN_PANEL_MENU_ADV_VEHICLE_DESC"] = "Change value (usually increase) if frames do not adjust when entering / leaving vehicle.";
	
L["TITAN_AUTOHIDE_TOOLTIP"] = "自動隱藏 開/關";
	
L["TITAN_BAG_FORMAT"] = "%d/%d";
L["TITAN_BAG_BUTTON_LABEL"] = "背包: ";
L["TITAN_BAG_TOOLTIP"] = "背包";
L["TITAN_BAG_TOOLTIP_HINTS"] = "提示:滑鼠左鍵打開所有背包";
L["TITAN_BAG_MENU_TEXT"] = "背包";
L["TITAN_BAG_USED_SLOTS"] = "已使用空間";
L["TITAN_BAG_FREE_SLOTS"] = "閒置空間";
L["TITAN_BAG_BACKPACK"] = "背包";
L["TITAN_BAG_MENU_SHOW_USED_SLOTS"] = "顯示已使用空間";
L["TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS"] = "顯示剩餘空間";
L["TITAN_BAG_MENU_SHOW_DETAILED"] = "顯示詳細提示訊息";
L["TITAN_BAG_MENU_IGNORE_SLOTS"] = "忽略容器";
L["TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS"] = "忽略專業背包空間";
L["TITAN_BAG_PROF_BAG_NAMES"] = {
-- Enchanting
"Enchanted Mageweave Pouch", "Enchanted Runecloth Bag", "Enchanter's Satchel", "Big Bag of Enchantment", "Spellfire Bag", 
"Mysterious Bag", "Otherworldly Bag", "\"Carriage - Exclusive\" Enchanting Evening Purse",
-- Engineering
"Heavy Toolbox", "Fel Iron Toolbox", "Titanium Toolbox", "Khorium Toolbox", "Elementium Toolbox", "\"Carriage - Maddy\" High Tech Bag",
-- Herbalism
"Herb Pouch", "Cenarion Herb Bag", "Satchel of Cenarius", "Mycah's Botanical Bag", "Emerald Bag", "Hyjal Expedition Bag",
"\"Carriage - Going Green\" Herb Tote Bag",
-- Inscription
"Scribe's Satchel", "Pack of Endless Pockets", "\"Carriage - Xandera\" Student's Satchel",
-- Jewelcrafting
"Gem Pouch", "Bag of Jewels", "\"Carriage - Exclusive\" Gem Studded Clutch",
-- Leatherworking
"Leatherworker's Satchel", "Bag of Many Hides", "Trapper's Traveling Pack", "\"Carriage - Meeya\" Leather Bag",
-- Mining
"Mining Sack", "Reinforced Mining Bag", "Mammoth Mining Bag", "\"Carriage - Christina\" Precious Metal Bag",
-- Fishing
"Lure Master Tackle Box",
-- Cooking
"Portable Refrigerator",
};
	
L["TITAN_CLOCK_TOOLTIP"] = "時鐘";
L["TITAN_CLOCK_TOOLTIP_VALUE"] = "時差值: ";
L["TITAN_CLOCK_TOOLTIP_LOCAL_TIME"] = "本地時間: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_TIME"] = "伺服器時間: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME"] = "伺服器調整時間: ";
L["TITAN_CLOCK_TOOLTIP_HINT1"] = "提示:滑鼠左鍵調整時間"
L["TITAN_CLOCK_TOOLTIP_HINT2"] = "切換 12/24 小時制";
L["TITAN_CLOCK_TOOLTIP_HINT3"] = "Shift+左鍵開啟/關閉行事曆。";
L["TITAN_CLOCK_CONTROL_TOOLTIP"] = "時差: ";
L["TITAN_CLOCK_CONTROL_TITLE"] = "時差";
L["TITAN_CLOCK_CONTROL_HIGH"] = "+12";
L["TITAN_CLOCK_CONTROL_LOW"] = "-12";
L["TITAN_CLOCK_CHECKBUTTON"] = "24 小時";
L["TITAN_CLOCK_CHECKBUTTON_TOOLTIP"] = "切換 12/24 小時制";
L["TITAN_CLOCK_MENU_TEXT"] = "時鐘";
L["TITAN_CLOCK_MENU_LOCAL_TIME"] = "顯示本地時間 (L)";
L["TITAN_CLOCK_MENU_SERVER_TIME"] = "顯示伺服器時間 (S)";
L["TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME"] = "顯示伺服器調整時間 (A)";
L["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"] = "顯示靠最右邊"
L["TITAN_CLOCK_MENU_HIDE_GAMETIME"] = "隱藏 時間/日曆 按鈕";
L["TITAN_CLOCK_MENU_HIDE_MAPTIME"] = "Hide Time Button";
L["TITAN_CLOCK_MENU_HIDE_CALENDAR"] = "Hide Calendar Button";

	
L["TITAN_COORDS_FORMAT"] = "(%.d, %.d)";
L["TITAN_COORDS_FORMAT2"] = "(%.1f, %.1f)";
L["TITAN_COORDS_FORMAT3"] = "(%.2f, %.2f)";
L["TITAN_COORDS_FORMAT_LABEL"] = "(xx , yy)";
L["TITAN_COORDS_FORMAT2_LABEL"] = "(xx.x , yy.y)";
L["TITAN_COORDS_FORMAT3_LABEL"] = "(xx.xx , yy.yy)";
L["TITAN_COORDS_FORMAT_COORD_LABEL"] = "座標格式";
L["TITAN_COORDS_BUTTON_LABEL"] = "座標: ";
L["TITAN_COORDS_TOOLTIP"] = "座標資訊";
L["TITAN_COORDS_TOOLTIP_HINTS_1"] = "提示:Shift+滑鼠左鍵來增加位置資訊";
L["TITAN_COORDS_TOOLTIP_HINTS_2"] = "顯示資訊在頻道上";
L["TITAN_COORDS_TOOLTIP_ZONE"] = "區域: ";
L["TITAN_COORDS_TOOLTIP_SUBZONE"] = "地區: ";
L["TITAN_COORDS_TOOLTIP_PVPINFO"] = "PVP 資訊: ";
L["TITAN_COORDS_TOOLTIP_HOMELOCATION"] = "爐石設定位置";
L["TITAN_COORDS_TOOLTIP_INN"] = "旅館: ";
L["TITAN_COORDS_MENU_TEXT"] = "位置";
L["TITAN_COORDS_MENU_SHOW_ZONE_ON_PANEL_TEXT"] = "顯示區域文字";
L["TITAN_COORDS_MENU_SHOW_COORDS_ON_MAP_TEXT"] = "顯示座標在世界地圖上";
L["TITAN_COORDS_MAP_CURSOR_COORDS_TEXT"] = "游標(X,Y): %s";
L["TITAN_COORDS_MAP_PLAYER_COORDS_TEXT"] = "玩家(X,Y): %s";
L["TITAN_COORDS_NO_COORDS"] = "無座標";
L["TITAN_COORDS_MENU_SHOW_LOC_ON_MINIMAP_TEXT"] = "在小地圖上顯示位置";
L["TITAN_COORDS_MENU_UPDATE_WORLD_MAP"] = "Update World Map When Zone Changes";
	
L["TITAN_FPS_FORMAT"] = "%.1f";
L["TITAN_FPS_BUTTON_LABEL"] = "FPS: ";
L["TITAN_FPS_MENU_TEXT"] = "FPS";
L["TITAN_FPS_TOOLTIP_CURRENT_FPS"] = "目前 FPS: ";
L["TITAN_FPS_TOOLTIP_AVG_FPS"] = "平均 FPS: ";
L["TITAN_FPS_TOOLTIP_MIN_FPS"] = "最小 FPS: ";
L["TITAN_FPS_TOOLTIP_MAX_FPS"] = "最大 FPS: ";
L["TITAN_FPS_TOOLTIP"] = "每秒的畫面數";
	
L["TITAN_LATENCY_FORMAT"] = "%d".."ms";
L["TITAN_LATENCY_BANDWIDTH_FORMAT"] = "%.3f ".."KB/s";
L["TITAN_LATENCY_BUTTON_LABEL"] = "連線速度: ";
L["TITAN_LATENCY_TOOLTIP"] = "網路狀態";
L["TITAN_LATENCY_TOOLTIP_LATENCY_HOME"] = "Realm Latency (home): ";
L["TITAN_LATENCY_TOOLTIP_LATENCY_WORLD"] = "Game Latency (world): ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN"] = "頻寬(IN): ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT"] = "頻寬(OUT): ";
L["TITAN_LATENCY_MENU_TEXT"] = "Latency";
	
L["TITAN_LOOTTYPE_BUTTON_LABEL"] = "拾取方式: ";
L["TITAN_LOOTTYPE_FREE_FOR_ALL"] = "自由拾取";
L["TITAN_LOOTTYPE_ROUND_ROBIN"] = "輪流拾取";
L["TITAN_LOOTTYPE_MASTER_LOOTER"] = "隊長分配";
L["TITAN_LOOTTYPE_GROUP_LOOT"] = "團隊分配";
L["TITAN_LOOTTYPE_NEED_BEFORE_GREED"] = "需求分配";
L["TITAN_LOOTTYPE_PERSONAL"] = "Personal";
L["TITAN_LOOTTYPE_TOOLTIP"] = "拾取方式";
L["TITAN_LOOTTYPE_MENU_TEXT"] = "拾取方式";
L["TITAN_LOOTTYPE_RANDOM_ROLL_LABEL"] = "隨機擲骰";
L["TITAN_LOOTTYPE_TOOLTIP_HINT1"] = "提示: 左鍵隨機擲骰。";
L["TITAN_LOOTTYPE_TOOLTIP_HINT2"] = "右鍵從選單中選擇擲骰類型。";
L["TITAN_LOOTTYPE_DUNGEONDIFF_LABEL"] = "五人副本難度";
L["TITAN_LOOTTYPE_DUNGEONDIFF_LABEL2"] = "團隊副本難度";
L["TITAN_LOOTTYPE_SHOWDUNGEONDIFF_LABEL"] = "顯示副本難度";
L["TITAN_LOOTTYPE_SETDUNGEONDIFF_LABEL"] = "設置五人副本難度";
L["TITAN_LOOTTYPE_SETRAIDDIFF_LABEL"] = "設置團隊副本難度";
L["TITAN_LOOTTYPE_AUTODIFF_LABEL"] = "自動設定 (基於隊伍類型)";
	
L["TITAN_MEMORY_FORMAT"] = "%.3f".."MB";
L["TITAN_MEMORY_FORMAT_KB"] = "%d".."KB";
L["TITAN_MEMORY_RATE_FORMAT"] = "%.3f".."KB/s";
L["TITAN_MEMORY_BUTTON_LABEL"] = "記憶體: ";
L["TITAN_MEMORY_TOOLTIP"] = "記憶體使用狀態";
L["TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY"] = "目前: ";
L["TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY"] = "初始: ";
L["TITAN_MEMORY_TOOLTIP_INCREASING_RATE"] = "增加比率: ";
L["TITAN_MEMORY_KBMB_LABEL"] = "KB/MB";
	
L["TITAN_MONEY_FORMAT"] = "%d".."g"..", %02d".."s"..", %02d".."c";
	
L["TITAN_PERFORMANCE_TOOLTIP"] = "畫面表現";
L["TITAN_PERFORMANCE_MENU_TEXT"] = "畫面表現";
L["TITAN_PERFORMANCE_ADDONS"] = "插件使用情況";
L["TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL"] = "插件記憶體使用情況";
L["TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL"] = "插件記憶體格式";
L["TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL"] = "插件 CPU 使用情況";
L["TITAN_PERFORMANCE_ADDON_NAME_LABEL"] = "名稱: ";
L["TITAN_PERFORMANCE_ADDON_USAGE_LABEL"] = "使用情況";
L["TITAN_PERFORMANCE_ADDON_RATE_LABEL"] = "比率";
L["TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL"] = "總插件使用記憶體 :";
L["TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL"] = "總插件使用 CPU :";
L["TITAN_PERFORMANCE_MENU_SHOW_FPS"] = "顯示 FPS";
L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY"] = "顯示連線速度";
L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY_WORLD"] = "Show Game Latency";
L["TITAN_PERFORMANCE_MENU_SHOW_MEMORY"] = "顯示記憶體";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDONS"] = "顯示插件記憶體使用情況";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE"] = "顯示插件使用比率";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL"] = "CPU 配置模式";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON"] = "啟用 CPU 配置模式 ";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF"] = "關閉 CPU 配置模式 ";
L["TITAN_PERFORMANCE_CONTROL_TOOLTIP"] = "已監督插件: ";
L["TITAN_PERFORMANCE_CONTROL_TITLE"] = "已監督插件";
L["TITAN_PERFORMANCE_CONTROL_HIGH"] = "40";
L["TITAN_PERFORMANCE_CONTROL_LOW"] = "1";
L["TITAN_PERFORMANCE_TOOLTIP_HINT"] = "提示: 左鍵強制清除垃圾。";

L["TITAN_XP_FORMAT"] = "%s";
L["TITAN_XP_PERCENT_FORMAT"] = "(%.1f%%)";
L["TITAN_XP_BUTTON_LABEL_XPHR_LEVEL"] = "EXP/小時 目前等級: ";
L["TITAN_XP_BUTTON_LABEL_XPHR_SESSION"] = "EXP/小時 目前階段: ";
L["TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL"] = "升級所需的時間: ";
L["TITAN_XP_LEVEL_COMPLETE"] = "等級完成: ";
L["TITAN_XP_TOTAL_RESTED"] = "休息: ";
L["TITAN_XP_XPTOLEVELUP"] = "等級提昇尚須經驗值: ";
L["TITAN_XP_TOOLTIP"] = "EXP 經驗值資訊";
L["TITAN_XP_TOOLTIP_TOTAL_TIME"] = "總共遊戲時間: ";
L["TITAN_XP_TOOLTIP_LEVEL_TIME"] = "這個等級遊戲的時間: ";
L["TITAN_XP_TOOLTIP_SESSION_TIME"] = "這個階段遊戲的時間: ";
L["TITAN_XP_TOOLTIP_TOTAL_XP"] = "這個等級總共要求的 EXP: ";
L["TITAN_XP_TOOLTIP_LEVEL_XP"] = "這個等級內所獲得的 EXP: ";
L["TITAN_XP_TOOLTIP_TOLEVEL_XP"] = "升級下一級所需要的 EXP: ";
L["TITAN_XP_TOOLTIP_SESSION_XP"] = "這個階段內所獲得的 EXP: ";
L["TITAN_XP_TOOLTIP_XPHR_LEVEL"] = "EXP/小時 這個等級內: ";
L["TITAN_XP_TOOLTIP_XPHR_SESSION"] = "EXP/小時 這個階段內: ";
L["TITAN_XP_TOOLTIP_TOLEVEL_LEVEL"] = "至升級所需的時間 (等級比率): ";
L["TITAN_XP_TOOLTIP_TOLEVEL_SESSION"] = "至升級所需的時間 (階段比率): ";
L["TITAN_XP_MENU_TEXT"] = "經驗值系統(EXP)";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL"] = "顯示 EXP/小時 這個等級";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION"] = "顯示 EXP/小時 這個階段";
L["TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP"] = "顯示升級尚須的休息/EXP";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TITLE"] = "按鈕";
L["TITAN_XP_MENU_SIMPLE_BUTTON_RESTED"] = "顯示休息的經驗值";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP"] = "顯示升級還需要的 EXP";
L["TITAN_XP_MENU_SIMPLE_BUTTON_KILLS"] = "顯示升級還需要的預計擊殺數";
L["TITAN_XP_MENU_RESET_SESSION"] = "重設經驗值統計";
L["TITAN_XP_MENU_REFRESH_PLAYED"] = "更新時間";
L["TITAN_XP_UPDATE_PENDING"] = "更新中...";
L["TITAN_XP_KILLS_LABEL"] = "升級還需的擊殺數(上次獲得 %s EXP): ";
L["TITAN_XP_KILLS_LABEL_SHORT"] = "預估擊殺數: ";
L["TITAN_XP_BUTTON_LABEL_SESSION_TIME"] = "連接: ";
L["TITAN_XP_MENU_SHOW_SESSION_TIME"] = "顯示連接時間";
L["TITAN_XP_GAIN_PATTERN"] = "(.*)死亡，你獲得(%d+)點經驗。";
L["TITAN_XP_XPGAINS_LABEL_SHORT"] = "預估獲得經驗: ";
L["TITAN_XP_XPGAINS_LABEL"] = "升級所需擊殺數(基於最後擊殺獲得的%s點經驗): ";
L["TITAN_XP_MENU_SIMPLE_BUTTON_XPGAIN"] = "顯示升級所需(基於最後所獲經驗)";
	
-- Titan Repair
   L["REPAIR_LOCALE"] = {
		      menu = "裝備耐久度",
		      tooltip = "裝備耐久度",
          button = "裝備耐久度: ",
		      normal = "修裝花費 (正常): ",
		      friendly = "修裝花費 (友善): ",
		      honored = "修裝花費 (尊敬): ",
		      revered = "修裝花費 (崇敬): ",
	    	  exalted = "修裝花費 (崇拜): ",
		      buttonNormal = "顯示正常",
		      buttonFriendly = "顯示友善 (5%)",
		      buttonHonored = "顯示尊敬 (10%)",
		      buttonRevered = "顯示崇敬 (15%)",
		      buttonExalted = "顯示崇拜 (20%)",
		      percentage = "顯示百分比",
		      itemnames = "顯示物品的名稱",
		      mostdamaged = "損壞最多的",
          showdurabilityframe = "顯示耐久面板",
		      undamaged = "顯示未損壞的物品",
		      discount = "顯示折扣於物品名稱和按鈕上",
		      nothing = "沒有損壞的物品",
		      confirmation = "你要修理所有已裝備物品嗎?",
		      badmerchant = "此商人無法修裝。 顯示正常的修裝花費",
		      popup = "顯示修理對話框",
		      showinventory = "計算背包中裝備損壞度",
		      WholeScanInProgress = "更新中...",
		      AutoReplabel = "自動修裝",
		      AutoRepitemlabel = "自動修理所有裝備",
          ShowRepairCost = "顯示修裝費用",
		      ignoreThrown = "忽略投擲武器",
		  		ShowItems = "Show Items",
		  		ShowDiscounts = "Show Discounts",
		  		ShowCosts = "Show Costs",
		  		Items = "Items",
		  		Discounts = "Discounts",
		  		Costs = "Costs",
				CostTotal = "Total Cost",
				CostBag = "Bag Cost",
				CostEquip = "Equip Cost",
 				TooltipOptions = "Tooltip",
	};

L["TITAN_REPAIR"] = "泰坦修理"
L["TITAN_REPAIR_GBANK_TOTAL"] = "公會銀行資金 :"
L["TITAN_REPAIR_GBANK_WITHDRAW"] = "你可以使用的資金 :"
L["TITAN_REPAIR_GBANK_USEFUNDS"] = "使用公會資金修理"
L["TITAN_REPAIR_GBANK_NOMONEY"] = "公會資金不足或者你超過了允許的修理費用."
L["TITAN_REPAIR_GBANK_NORIGHTS"] = "你沒有公會或者你沒有使用公會資金修理的許可."
L["TITAN_REPAIR_CANNOT_AFFORD"] = "你現在支付不起修理費用."
L["TITAN_REPAIR_REPORT_COST_MENU"] = "輸出修理費用到聊天頻道"
L["TITAN_REPAIR_REPORT_COST_CHAT"] = "修理費用是 "

--L["TITAN_PLUGINS_MENU_TITLE"] = "擴展插件";

L["TITAN_GOLD_TOOLTIPTEXT"] = "總計金錢於";
L["TITAN_GOLD_ITEMNAME"] = "金錢追蹤";
L["TITAN_GOLD_CLEAR_DATA_TEXT"] = "清除資料庫";
L["TITAN_GOLD_RESET_SESS_TEXT"] = "重置目前階段";
L["TITAN_GOLD_DB_CLEARED"] = "泰坦金錢追蹤 - 資料庫已清除。";
L["TITAN_GOLD_SESSION_RESET"] = "泰坦金錢追蹤 - 此階段已重置。";
L["TITAN_GOLD_MENU_TEXT"] = "金錢追蹤";
L["TITAN_GOLD_TOOLTIP"] = "金錢資訊";
L["TITAN_GOLD_TOGGLE_PLAYER_TEXT"] = "顯示玩家賺取金額";
L["TITAN_GOLD_TOGGLE_ALL_TEXT"] = "顯示伺服器賺取金額";
L["TITAN_GOLD_SESS_EARNED"] = "此階段賺取";
L["TITAN_GOLD_PERHOUR_EARNED"] = "每小時賺取";
L["TITAN_GOLD_SESS_LOST"] = "此階段花費";
L["TITAN_GOLD_PERHOUR_LOST"] = "每小時花費";
L["TITAN_GOLD_STATS_TITLE"] = "階段統計";
L["TITAN_GOLD_TTL_GOLD"] = "總計金額";
L["TITAN_GOLD_START_GOLD"] = "開始統計金額";
L["TITAN_GOLD_TOGGLE_SORT_GOLD"] = "依金額排列表單";
L["TITAN_GOLD_TOGGLE_SORT_NAME"] = "依名稱排列表單";
L["TITAN_GOLD_TOGGLE_GPH_SHOW"] = "顯示每小時賺取金額";
L["TITAN_GOLD_TOGGLE_GPH_HIDE"] = "隱藏每小時賺取金額";
L["TITAN_GOLD_GOLD"] = "g";
L["TITAN_GOLD_SILVER"] = "s";
L["TITAN_GOLD_COPPER"] = "c";
L["TITAN_GOLD_STATUS_PLAYER_SHOW"] = "顯示";
L["TITAN_GOLD_STATUS_PLAYER_HIDE"] = "隱藏";
L["TITAN_GOLD_DELETE_PLAYER"] = "刪除角色";
L["TITAN_GOLD_SHOW_PLAYER"] = "Show toon";
L["TITAN_GOLD_FACTION_PLAYER_ALLY"] = "聯盟";
L["TITAN_GOLD_FACTION_PLAYER_HORDE"] = "部落";
L["TITAN_GOLD_CLEAR_DATA_WARNING"] = GREEN_FONT_COLOR_CODE.."警告: "
..FONT_COLOR_CODE_CLOSE.."這會清空金幣助手的資料庫，按取消放弃此次操作.";
L["TITAN_GOLD_COIN_NONE"] = "Show No Labels";
L["TITAN_GOLD_COIN_LABELS"] = "Show Text Labels";
L["TITAN_GOLD_COIN_ICONS"] = "Show Icon Labels";
L["TITAN_GOLD_ONLY"] = "Show Gold Only";
L["TITAN_GOLD_COLORS"] = "Show Gold Colors";

L["TITAN_VOLUME_TOOLTIP"] = "音量控制";
L["TITAN_VOLUME_MASTER_TOOLTIP_VALUE"] = "主音量大小: ";
L["TITAN_VOLUME_SOUND_TOOLTIP_VALUE"] = "音效音量大小: ";
L["TITAN_VOLUME_AMBIENCE_TOOLTIP_VALUE"] = "環境音量大小: ";
L["TITAN_VOLUME_DIALOG_TOOLTIP_VALUE"] = "Dialog Sound Volume: ";
L["TITAN_VOLUME_MUSIC_TOOLTIP_VALUE"] = "音樂音量大小: ";
L["TITAN_VOLUME_MICROPHONE_TOOLTIP_VALUE"] = "麥克風音量大小: ";
L["TITAN_VOLUME_SPEAKER_TOOLTIP_VALUE"] = "喇叭音量大小: ";
L["TITAN_VOLUME_TOOLTIP_HINT1"] = "提示: 滑鼠左鍵調整"
L["TITAN_VOLUME_TOOLTIP_HINT2"] = "主音量大小";
L["TITAN_VOLUME_CONTROL_TOOLTIP"] = "主音量: ";
L["TITAN_VOLUME_CONTROL_TITLE"] = "音量";
L["TITAN_VOLUME_MASTER_CONTROL_TITLE"] = "主音量";
L["TITAN_VOLUME_SOUND_CONTROL_TITLE"] = "音效";
L["TITAN_VOLUME_AMBIENCE_CONTROL_TITLE"] = "環境";
L["TITAN_VOLUME_DIALOG_CONTROL_TITLE"] = "Dialog";
L["TITAN_VOLUME_MUSIC_CONTROL_TITLE"] = "音樂";
L["TITAN_VOLUME_MICROPHONE_CONTROL_TITLE"] = "麥克風";
L["TITAN_VOLUME_SPEAKER_CONTROL_TITLE"] = "喇叭";
L["TITAN_VOLUME_CONTROL_HIGH"] = "高";
L["TITAN_VOLUME_CONTROL_LOW"] = "低";
L["TITAN_VOLUME_MENU_TEXT"] = "音量";
L["TITAN_VOLUME_MENU_AUDIO_OPTIONS_LABEL"] = "顯示 聲音選項" ;
L["TITAN_VOLUME_MENU_OVERRIDE_BLIZZ_SETTINGS"] = "替換默認聲音控制";

-- Version : Traditional Chinese
-- Translated by Juha,added by yeachan.
