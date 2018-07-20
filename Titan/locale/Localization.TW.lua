﻿-- Version : Traditional Chinese
-- Translated by Yeachan .Special thanks to Juha.
function TitanLocalizeTW()
     TITAN_DEBUG = "<Titan>";
	   TITAN_INFO = "<Titan>"
	
	   TITAN_NA = "N/A";
	   TITAN_SECONDS = "秒鐘";
	   TITAN_MINUTES = "分鐘";
	   TITAN_HOURS = "小時";
	   TITAN_DAYS = "天";
	   TITAN_SECONDS_ABBR = "秒";
	   TITAN_MINUTES_ABBR = "分";
	   TITAN_HOURS_ABBR = "時";
	   TITAN_DAYS_ABBR = "天";
	   TITAN_MILLISECOND = "ms";
	   TITAN_KILOBYTES_PER_SECOND = "KB/s";
	   TITAN_KILOBITS_PER_SECOND = "kbps"
	   TITAN_MEGABYTE = "MB";
     TITAN_NONE = "無";
	
	   TITAN_MOVABLE_TOOLTIP = "拖曳移動";

	   TITAN_PANEL_ERROR_DUP_PLUGIN = " 出現了重覆的二次錯誤，這可能會使泰坦面板執行失敗，請修正此問題"
     TITAN_PANEL_ERROR_PROF_DELCURRENT = "你可能已經刪除目前的角色配置。";
     TITAN_PANEL_RESET_WARNING = GREEN_FONT_COLOR_CODE.."警告:"..FONT_COLOR_CODE_CLOSE.."此設定將會重置你的 Titan 的設定為預設值，並且會重新建立你的配置檔案。如果你要繼續請按「套用」，你的插件將會重新載入，如果不確定請按「取消」或 Esc 鍵。";
	
	-- slash command help
	   TITAN_PANEL_SLASH_STRING2 = LIGHTYELLOW_FONT_COLOR_CODE.."輸入: |cffffffff/tp {reset | reset tipfont/tipalpha/panelscale/spacing}";
	   TITAN_PANEL_SLASH_STRING3 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffff重置面板為預設值/位置。";
     TITAN_PANEL_SLASH_STRING4 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffff重置面板提示文字大小為預設值。";
	   TITAN_PANEL_SLASH_STRING5 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffff重製面板提示視窗透明度為預設值。";
	   TITAN_PANEL_SLASH_STRING6 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffff重置面板大小為預設值。";
	   TITAN_PANEL_SLASH_STRING7 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffff重置面板按鈕間距為預設值。";
     TITAN_PANEL_SLASH_STRING8 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffff開啟 Ace3 面板控制介面。";
     TITAN_PANEL_SLASH_STRING9 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffff開啟 Ace3 透明度控制介面。";
     TITAN_PANEL_SLASH_STRING10 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffff開啟 Ace3 外觀控制介面。";
     TITAN_PANEL_SLASH_STRING11 = LIGHTYELLOW_FONT_COLOR_CODE.."輸入|cffffffff/bscan|r 顯示 BonusScanner 使用說明。";
	
	-- slash command responses
	   TITAN_PANEL_SLASH_RESP1 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 提示文字大小已重置。";
	   TITAN_PANEL_SLASH_RESP2 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 提示視窗透明度已重置。";
	   TITAN_PANEL_SLASH_RESP3 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 大小已重置。";
	   TITAN_PANEL_SLASH_RESP4 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel 按鈕間距已重置。";
	
    -- general panel locale
	   TITAN_PANEL = "泰坦面版";
	   TITAN_PANEL_VERSION_INFO = "|cffffffff 作者 |cffBB33BBTitan 開發團隊".." |cffffffff(HonorGoG, jaketodd422, joejanko, Lothayer, Tristanian, oXidFoX)";
	   TITAN_PANEL_MENU_TITLE = "泰坦面版";
	   TITAN_PANEL_MENU_HIDE = "隱藏";
	   TITAN_PANEL_MENU_CUSTOMIZE = "自訂";
	   TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN = "(戰鬥中)";
	   TITAN_PANEL_MENU_RELOADUI = "(重載介面)";
	   TITAN_PANEL_MENU_SHOW_COLORED_TEXT = "顯示彩色文字";
	   TITAN_PANEL_MENU_SHOW_ICON = "顯示圖示";
	   TITAN_PANEL_MENU_SHOW_LABEL_TEXT = "顯示標籤文字";
	   TITAN_PANEL_MENU_AUTOHIDE = "自動隱藏";
	   TITAN_PANEL_MENU_BGMINIMAP = "戰場小地圖";
	   TITAN_PANEL_MENU_CENTER_TEXT = "文字置中";
	   TITAN_PANEL_MENU_DISPLAY_ONTOP = "顯示最上層";
   	 TITAN_PANEL_MENU_DISPLAY_BOTH = "顯示二條工作列";
	   TITAN_PANEL_MENU_DISABLE_PUSH = "關閉螢幕調整";
	   TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH = "關閉小地圖調整";
	   TITAN_PANEL_MENU_DISABLE_LOGS = "自動調整紀錄";
	   TITAN_PANEL_MENU_BUILTINS = "內建插件";
	   TITAN_PANEL_MENU_LEFT_SIDE = "左邊區域";
	   TITAN_PANEL_MENU_RIGHT_SIDE = "右邊區域";
     TITAN_PANEL_MENU_PROFILES = "配置檔";
     TITAN_PANEL_MENU_PROFILE = "配置檔「";
     TITAN_PANEL_MENU_PROFILE_CUSTOM = "自訂";
     TITAN_PANEL_MENU_PROFILE_DELETED = "」已刪除。";
     TITAN_PANEL_MENU_PROFILE_SERVERS = "伺服器";
     TITAN_PANEL_MENU_PROFILE_CHARS = "角色";
     TITAN_PANEL_MENU_PROFILE_RELOADUI = "當按下「確定」按鈕時，你的插件將立即新載入並儲存你的自訂配置檔。";
     TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE = "請輸入你的自訂配置檔名稱:\n(最大 20 個字元，不可有空格且區分大小寫。)";
     TITAN_PANEL_MENU_PROFILE_SAVE_PENDING = "目前的面板設定將會儲存到配置檔： ";
     TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS = "此配置檔名稱已存在，你確定你要覆蓋嗎？如果確定請按「套用」，否則請按「取消」或 ESC 鍵。";
     TITAN_PANEL_MENU_MANAGE_SETTINGS = "管理";
     TITAN_PANEL_MENU_LOAD_SETTINGS = "載入設定";
     TITAN_PANEL_MENU_DELETE_SETTINGS = "刪除";
     TITAN_PANEL_MENU_SAVE_SETTINGS = "儲存";
	   TITAN_PANEL_MENU_DOUBLE_BAR = "工作列二行顯示";
     TITAN_PANEL_MENU_CONFIGURATION = "配置設定";
	   TITAN_PANEL_MENU_OPTIONS = "選項";
	   TITAN_PANEL_MENU_OPTIONS_PANEL = "面板";
	   TITAN_PANEL_MENU_OPTIONS_BARS = "狀態列";
	   TITAN_PANEL_MENU_OPTIONS_TOOLTIPS = "提示訊息";
	   TITAN_PANEL_MENU_OPTIONS_FRAMES = "視窗";
     TITAN_PANEL_MENU_OPTIONS_LDB = "資料仲介者";
	   TITAN_PANEL_MENU_PLUGINS = "插件";
	   TITAN_PANEL_MENU_LOCK_BUTTONS = "鎖定面板";
	   TITAN_PANEL_MENU_VERSION_SHOWN = "顯示插件版本";
     TITAN_PANEL_MENU_LDB_SHOWN = "在選單中後綴附加仲介者";
     TITAN_PANEL_MENU_LDB_SIDE = "右側插件";
     TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER = "強制快捷列於右側";
   	 TITAN_PANEL_MENU_DISABLE_FONT = "關閉字型縮放";
	   TITAN_PANEL_MENU_CATEGORIES = {"一般","戰鬥","資訊","介面","專業"}
	   TITAN_PANEL_MENU_TOOLTIPS_SHOWN = "顯示提示";
	   TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT = "戰鬥中隱藏提示訊息";
	   TITAN_PANEL_MENU_CASTINGBAR = "移動施法條";
	   TITAN_PANEL_MENU_RESET = "重置面板為預設值";
	   TITAN_PANEL_MENU_TEXTURE_SETTINGS = "面板設定";
     TITAN_PANEL_MENU_FONT = "字型";
     TITAN_PANEL_MENU_LSM_FONTS = "LibSharedMedia 字型"
	   TITAN_PANEL_MENU_ENABLED = "啟用";
	   TITAN_PANEL_MENU_DISABLED = "停用";

	-- localization strings for AceConfigDialog-3.0     
	   TITAN_PANEL_CONFIG_MAIN_LABEL = "顯示狀態列插件資訊。允許使用者在螢幕控制面板的上方或下方加入資料或快捷列插件。";			 
		 TITAN_TRANS_MENU_TEXT_SHORT = "透明度";
		 TITAN_TRANS_MENU_DESC = "調整 Titan 狀態列和提示視窗的透明度。";		
		 TITAN_TRANS_MAIN_CONTROL_TITLE = "主要狀態列";
     TITAN_TRANS_AUX_CONTROL_TITLE = "輔助狀態列";
     TITAN_TRANS_CONTROL_TITLE_TOOLTIP = "提示訊息";		 
		 TITAN_TRANS_MAIN_BAR_DESC = "設定主要狀態列的透明度。";
		 TITAN_TRANS_AUX_BAR_DESC = "設定輔助狀態列(下方)的透明度。.";
		 TITAN_TRANS_TOOLTIP_DESC = "設定各種提示訊息插件的透明度。";
		 TITAN_UISCALE_MENU_TEXT = "面板控制";
		 TITAN_UISCALE_CONTROL_TITLE_UI = "插件大小";
		 TITAN_UISCALE_CONTROL_TITLE_PANEL = "面板大小";
		 TITAN_UISCALE_CONTROL_TITLE_BUTTON = "按鈕間距";
		 TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT = "提示訊息文字大小";
		 TITAN_UISCALE_TOOLTIP_DISABLE_TEXT = "關閉提示訊息文字大小";		 
		 TITAN_UISCALE_MENU_DESC = "控制各種插件和面板的外觀。";
		 TITAN_UISCALE_SLIDER_DESC = "設定整體插件的大小。";
		 TITAN_UISCALE_PANEL_SLIDER_DESC = "設定各種面板按鈕及圖示大小。";
		 TITAN_UISCALE_BUTTON_SLIDER_DESC = "調整左側插件間的空間大小";
		 TITAN_UISCALE_TOOLTIP_SLIDER_DESC = "調整各種提示訊息插件的大小。";
		 TITAN_UISCALE_DISABLE_TOOLTIP_DESC = "關閉 Titan 的提示訊息字型大小控制。";
		 TITAN_SKINS_MAIN_DESC = "管理各種 Titan 狀態列的外觀。";
		 TITAN_SKINS_LIST_TITLE = "外觀清單";
		 TITAN_SKINS_SET_DESC = "選擇一個 Titan 狀態列的外觀設定。";
		 TITAN_SKINS_SET_HEADER = "設定面板外觀";
	   TITAN_SKINS_NEW_HEADER = "加入新外觀";
	 	 TITAN_SKINS_NAME_TITLE = "外觀名稱";
		 TITAN_SKINS_NAME_DESC = "請輸入新外觀的名稱。";
		 TITAN_SKINS_NAME_EXAMPLE = "例如: My Titan Skin";
		 TITAN_SKINS_PATH_TITLE = "外觀路徑";
		 TITAN_SKINS_PATH_DESC = "請輸入放置外觀檔案的正確路徑，如範例所示，說明請看「注意」事項。";
		 TITAN_SKINS_PATH_EXAMPLE = "例如: Interface\\AddOns\\Titan\\Artwork\\Custom\\<My Skin folder>\\";
		 TITAN_SKINS_ADD_HEADER = "新增外觀";
		 TITAN_SKINS_ADD_DESC = "新增一個面板可用的外觀到清單中。";
		 TITAN_SKINS_REMOVE_HEADER = "移除外觀";
		 TITAN_SKINS_REMOVE_DESC = "從清單中選擇欲移除的面板外觀。";
		 TITAN_SKINS_REMOVE_BUTTON = "移除";
		 TITAN_SKINS_REMOVE_BUTTON_DESC = "從清單中移除所選的面板外觀。";
		 TITAN_SKINS_NOTES = "|cff19ff19注意:|r 當新增一個外觀時，請確定在載入遊戲前，外觀檔案已存在於資料夾中 (路徑有區分大小寫，且要以 '\\' 作結束)。";
		 -- /end localization strings for AceConfigDialog-3.0
	
	   TITAN_AUTOHIDE_TOOLTIP = "自動隱藏 開/關";
	   TITAN_AUTOHIDE_MENU_TEXT = "自動隱藏";
	
	   TITAN_AMMO_FORMAT = "%d";
	   TITAN_AMMO_BUTTON_LABEL_AMMO = "彈藥: ";
	   TITAN_AMMO_BUTTON_LABEL_THROWN = "投擲: ";
	   TITAN_AMMO_BUTTON_LABEL_AMMO_THROWN = "彈藥/投擲: ";
	   TITAN_AMMO_TOOLTIP = "已裝備 彈藥/投擲 數量";
	   TITAN_AMMO_MENU_TEXT = "彈藥/投擲";
     TITAN_AMMO_BUTTON_NOAMMO = "沒有彈藥";
     TITAN_AMMO_MENU_REFRESH = "重新整理";
	
	   TITAN_BAG_FORMAT = "%d/%d";
	   TITAN_BAG_BUTTON_LABEL = "背包: ";
	   TITAN_BAG_TOOLTIP = "背包";
	   TITAN_BAG_TOOLTIP_HINTS = "提示:滑鼠左鍵打開所有背包";
	   TITAN_BAG_MENU_TEXT = "背包";
     TITAN_BAG_USED_SLOTS = "已使用空間";
     TITAN_BAG_FREE_SLOTS = "閒置空間";
     TITAN_BAG_BACKPACK = "背包";
	   TITAN_BAG_MENU_SHOW_USED_SLOTS = "顯示已使用空間";
	   TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS = "顯示剩餘空間";
     TITAN_BAG_MENU_SHOW_DETAILED = "顯示詳細提示訊息";
	   TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS = "忽略彈藥袋的空間";
	   TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS = "忽略靈魂碎片包空間";
	   TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS = "忽略專業背包空間";
	   TITAN_BAG_SHARD_BAG_NAMES = {"靈魂", "惡魔布包", "熔核惡魔布包", "黑檀暗影包", "暗影包"};
	   TITAN_BAG_AMMO_POUCH_NAMES = {"彈藥", "箭袋", "彈藥袋", "子彈", "飛鏢"};
	   TITAN_BAG_PROF_BAG_NAMES = {"附魔魔紋包", "附魔符文布背包", "附魔大背包", "附魔師的背包", "魔焰包", "克銀工具箱", "魔鐵工具箱", "沉重的工具箱", "寶石袋", "寶石包", "強化礦石包", "採礦包", "製皮師的背包", "拼接皮包", "草藥袋", "塞納里奧草藥包", "塞納留斯的背包"};
	
	   TITAN_BGMINIMAP_MENU_TEXT = "戰場迷你地圖"
	   TITAN_BGMINIMAP_TOOLTIP = "開關 戰場迷你地圖"
	
	   TITAN_CLOCK_TOOLTIP = "時鐘";
	   TITAN_CLOCK_TOOLTIP_VALUE = "時差值: ";
     TITAN_CLOCK_TOOLTIP_LOCAL_TIME = "本地時間: ";
     TITAN_CLOCK_TOOLTIP_SERVER_TIME = "伺服器時間: ";
     TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME = "伺服器調整時間: ";
	   TITAN_CLOCK_TOOLTIP_HINT1 = "提示:滑鼠左鍵調整時間"
	   TITAN_CLOCK_TOOLTIP_HINT2 = "切換 12/24 小時制";
     TITAN_CLOCK_TOOLTIP_HINT3 = "Shift+左鍵開啟/關閉行事曆。";
	   TITAN_CLOCK_CONTROL_TOOLTIP = "時差: ";
	   TITAN_CLOCK_CONTROL_TITLE = "時差";
	   TITAN_CLOCK_CONTROL_HIGH = "+12";
	   TITAN_CLOCK_CONTROL_LOW = "-12";
	   TITAN_CLOCK_CHECKBUTTON = "24 小時";
	   TITAN_CLOCK_CHECKBUTTON_TOOLTIP = "切換 12/24 小時制";
	   TITAN_CLOCK_MENU_TEXT = "時鐘";
     TITAN_CLOCK_MENU_LOCAL_TIME = "顯示本地時間 (L)";
     TITAN_CLOCK_MENU_SERVER_TIME = "顯示伺服器時間 (S)";
     TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME = "顯示伺服器調整時間 (A)";
	   TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE = "顯示靠最右邊"
	   TITAN_CLOCK_MENU_HIDE_GAMETIME = "隱藏 時間/日曆 按鈕";
	
	   TITAN_COORDS_FORMAT = "(%.d, %.d)";
	   TITAN_COORDS_FORMAT2 = "(%.1f, %.1f)";
	   TITAN_COORDS_FORMAT3 = "(%.2f, %.2f)";
	   TITAN_COORDS_FORMAT_LABEL = "(xx , yy)";
	   TITAN_COORDS_FORMAT2_LABEL = "(xx.x , yy.y)";
	   TITAN_COORDS_FORMAT3_LABEL = "(xx.xx , yy.yy)";
	   TITAN_COORDS_FORMAT_COORD_LABEL = "座標格式";
	   TITAN_COORDS_BUTTON_LABEL = "座標: ";
	   TITAN_COORDS_TOOLTIP = "座標資訊";
	   TITAN_COORDS_TOOLTIP_HINTS_1 = "提示:Shift+滑鼠左鍵來增加位置資訊";
	   TITAN_COORDS_TOOLTIP_HINTS_2 = "顯示資訊在頻道上";
	   TITAN_COORDS_TOOLTIP_ZONE = "區域: ";
	   TITAN_COORDS_TOOLTIP_SUBZONE = "地區: ";
	   TITAN_COORDS_TOOLTIP_PVPINFO = "PVP 資訊: ";
	   TITAN_COORDS_TOOLTIP_HOMELOCATION = "爐石設定位置";
	   TITAN_COORDS_TOOLTIP_INN = "旅館: ";
	   TITAN_COORDS_MENU_TEXT = "位置";
   	 TITAN_COORDS_MENU_SHOW_ZONE_ON_PANEL_TEXT = "顯示區域文字";
	   TITAN_COORDS_MENU_SHOW_COORDS_ON_MAP_TEXT = "顯示座標在世界地圖上";
	   TITAN_COORDS_MAP_CURSOR_COORDS_TEXT = "游標(X,Y): %s";
	   TITAN_COORDS_MAP_PLAYER_COORDS_TEXT = "玩家(X,Y): %s";
     TITAN_COORDS_NO_COORDS = "無座標";
	
	   TITAN_FPS_FORMAT = "%.1f";
	   TITAN_FPS_BUTTON_LABEL = "FPS: ";
	   TITAN_FPS_MENU_TEXT = "FPS";
	   TITAN_FPS_TOOLTIP_CURRENT_FPS = "目前 FPS: ";
	   TITAN_FPS_TOOLTIP_AVG_FPS = "平均 FPS: ";
	   TITAN_FPS_TOOLTIP_MIN_FPS = "最小 FPS: ";
	   TITAN_FPS_TOOLTIP_MAX_FPS = "最大 FPS: ";
	   TITAN_FPS_TOOLTIP = "每秒的畫面數";
	
	   TITAN_LATENCY_FORMAT = "%d"..TITAN_MILLISECOND;
	   TITAN_LATENCY_BANDWIDTH_FORMAT = "%.3f "..TITAN_KILOBYTES_PER_SECOND;
	   TITAN_LATENCY_BUTTON_LABEL = "連線速度: ";
	   TITAN_LATENCY_TOOLTIP = "網路狀態";
	   TITAN_LATENCY_TOOLTIP_LATENCY = "連線速度: ";
	   TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN = "頻寬(IN): ";
	   TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT = "頻寬(OUT): ";
	   TITAN_LATENCY_MENU_TEXT = "連線速度";
	
	   TITAN_LOOTTYPE_BUTTON_LABEL = "拾取方式: ";
	   TITAN_LOOTTYPE_FREE_FOR_ALL = "自由拾取";
	   TITAN_LOOTTYPE_ROUND_ROBIN = "輪流拾取";
	   TITAN_LOOTTYPE_MASTER_LOOTER = "隊長分配";
	   TITAN_LOOTTYPE_GROUP_LOOT = "團隊分配";
	   TITAN_LOOTTYPE_NEED_BEFORE_GREED = "需求分配";
	   TITAN_LOOTTYPE_TOOLTIP = "拾取方式";
	   TITAN_LOOTTYPE_MENU_TEXT = "拾取方式";
     TITAN_LOOTTYPE_RANDOM_ROLL_LABEL = "隨機擲骰";
	   TITAN_LOOTTYPE_TOOLTIP_HINT1 = "提示: 左鍵隨機擲骰。";
	   TITAN_LOOTTYPE_TOOLTIP_HINT2 = "右鍵從選單中選擇擲骰類型。";
	
	   TITAN_MEMORY_FORMAT = "%.3f"..TITAN_MEGABYTE;
     TITAN_MEMORY_FORMAT_KB = "%d".."KB";
     TITAN_MEMORY_RATE_FORMAT = "%.3f"..TITAN_KILOBYTES_PER_SECOND;
	   TITAN_MEMORY_BUTTON_LABEL = "記憶體: ";
	   TITAN_MEMORY_TOOLTIP = "記憶體使用狀態";
	   TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY = "目前: ";
	   TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY = "初始: ";
	   TITAN_MEMORY_TOOLTIP_INCREASING_RATE = "增加比率: ";
     TITAN_MEMORY_KBMB_LABEL = "KB/MB";     
	-- TITAN_MEMORY_MENU_TEXT = "記憶體";
	-- TITAN_MEMORY_MENU_RESET_SESSION = "重設記憶體資料";
	
	   TITAN_MONEY_GOLD = "金";
	   TITAN_MONEY_SILVER = "銀";
	   TITAN_MONEY_COPPER = "銅";
	   TITAN_MONEY_FORMAT = "%d"..TITAN_MONEY_GOLD..", %d"..TITAN_MONEY_SILVER..", %d"..TITAN_MONEY_COPPER;
	
	   TITAN_PERFORMANCE_TOOLTIP = "畫面表現";
	   TITAN_PERFORMANCE_MENU_TEXT = "畫面表現";
	   TITAN_PERFORMANCE_ADDONS = "插件使用情況";
	   TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL = "插件記憶體使用情況";
     TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL = "插件記憶體格式";
	   TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL = "插件 CPU 使用情況";
	   TITAN_PERFORMANCE_ADDON_NAME_LABEL = "名稱: ";
	   TITAN_PERFORMANCE_ADDON_USAGE_LABEL = "使用情況";
	   TITAN_PERFORMANCE_ADDON_RATE_LABEL = "比率";
	   TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL = "總插件使用記憶體 :";
   	 TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL = "總插件使用 CPU :";
	   TITAN_PERFORMANCE_MENU_SHOW_FPS = "顯示 FPS";
	   TITAN_PERFORMANCE_MENU_SHOW_LATENCY = "顯示連線速度";
	   TITAN_PERFORMANCE_MENU_SHOW_MEMORY = "顯示記憶體";
	   TITAN_PERFORMANCE_MENU_SHOW_ADDONS = "顯示插件記憶體使用情況";
	   TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE = "顯示插件使用比率";
	   TITAN_PERFORMANCE_MENU_CPUPROF_LABEL = "CPU 配置模式";
	   TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON = "啟用 CPU 配置模式 ";
	   TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF = "關閉 CPU 配置模式 ";
	   TITAN_PERFORMANCE_CONTROL_TOOLTIP = "已監督插件: ";
	   TITAN_PERFORMANCE_CONTROL_TITLE = "已監督插件";
	   TITAN_PERFORMANCE_CONTROL_HIGH = "40";
	   TITAN_PERFORMANCE_CONTROL_LOW = "1";
	   TITAN_PERFORMANCE_TOOLTIP_HINT = "提示: 左鍵強制清除垃圾。";

	   TITAN_XP_FORMAT = "%d";
	   TITAN_XP_PERCENT_FORMAT = TITAN_XP_FORMAT.." (%.1f%%)";
	   TITAN_XP_BUTTON_LABEL_XPHR_LEVEL = "EXP/小時 目前等級: ";
	   TITAN_XP_BUTTON_LABEL_XPHR_SESSION = "EXP/小時 目前階段: ";
	   TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL = "升級所需的時間: ";
		 TITAN_XP_LEVEL_COMPLETE = "等級完成: ";
		 TITAN_XP_TOTAL_RESTED = "休息: ";
		 TITAN_XP_XPTOLEVELUP = "等級提昇尚須經驗值: ";
	   TITAN_XP_TOOLTIP = "EXP 經驗值資訊";
	   TITAN_XP_TOOLTIP_TOTAL_TIME = "總共遊戲時間: ";
	   TITAN_XP_TOOLTIP_LEVEL_TIME = "這個等級遊戲的時間: ";
	   TITAN_XP_TOOLTIP_SESSION_TIME = "這個階段遊戲的時間: ";
	   TITAN_XP_TOOLTIP_TOTAL_XP = "這個等級總共要求的 EXP: ";
	   TITAN_XP_TOOLTIP_LEVEL_XP = "這個等級內所獲得的 EXP: ";
	   TITAN_XP_TOOLTIP_TOLEVEL_XP = "升級下一級所需要的 EXP: ";
	   TITAN_XP_TOOLTIP_SESSION_XP = "這個階段內所獲得的 EXP: ";
	   TITAN_XP_TOOLTIP_XPHR_LEVEL = "EXP/小時 這個等級內: ";
	   TITAN_XP_TOOLTIP_XPHR_SESSION = "EXP/小時 這個階段內: ";
	   TITAN_XP_TOOLTIP_TOLEVEL_LEVEL = "至升級所需的時間 (等級比率): ";
	   TITAN_XP_TOOLTIP_TOLEVEL_SESSION = "至升級所需的時間 (階段比率): ";
	   TITAN_XP_MENU_TEXT = "經驗值系統(EXP)";
	   TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL = "顯示 EXP/小時 這個等級";
	   TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION = "顯示 EXP/小時 這個階段";
     TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP = "顯示更多訊息";
     TITAN_XP_MENU_SIMPLE_BUTTON_TITLE = "按鈕";
     TITAN_XP_MENU_SIMPLE_BUTTON_RESTED = "顯示剩餘經驗";
     TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP = "顯示升級所需經驗";
     TITAN_XP_MENU_SIMPLE_BUTTON_KILLS = "顯示升級所需的預估擊殺數";
     TITAN_XP_MENU_RESET_SESSION = "重置連接時間";
     TITAN_XP_MENU_REFRESH_PLAYED = "刷新計時器";
     TITAN_XP_UPDATE_PENDING = "更新中...";
     TITAN_XP_UNKNOWN = "未知";
     TITAN_XP_KILLS_LABEL = "升級所需擊殺數 (基於最後一個的經驗 %d): ";
     TITAN_XP_KILLS_LABEL_SHORT = "預估擊殺數: ";
	
	   TITAN_REGEN_MENU_TEXT = "角色恢復速度"
	   TITAN_REGEN_MENU_TOOLTIP_TITLE	= "恢復速率"
	   TITAN_REGEN_MENU_SHOW1 = "顯示"
     TITAN_REGEN_MENU_SHOW2 = "HP"
	   TITAN_REGEN_MENU_SHOW3 = "MP"
	   TITAN_REGEN_MENU_SHOW4 = "顯示百分比"
	   TITAN_REGEN_BUTTON_TEXT_HP = "HP: "..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_BUTTON_TEXT_HP_PERCENT = "HP: "..HIGHLIGHT_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_BUTTON_TEXT_MP = " MP: "..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_BUTTON_TEXT_MP_PERCENT = " MP: "..HIGHLIGHT_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_TOOLTIP1 = "生命: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	   TITAN_REGEN_TOOLTIP2 = "法力: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	   TITAN_REGEN_TOOLTIP3 = "最高 HP 恢復速度: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_TOOLTIP4 = "最低 HP 恢復速度: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_TOOLTIP5 = "最高 MP 恢復速度: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_TOOLTIP6 = "最低 MP 恢復速度: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	   TITAN_REGEN_TOOLTIP7 = "上一場戰鬥的 MP 恢復速度: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..GREEN_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE.."%%)";

	   TITAN_ITEMBONUSES_TEXT = "裝備屬性";
	   TITAN_ITEMBONUSES_DISPLAY_NONE = "不顯示";
	   TITAN_ITEMBONUSES_SHORTDISPLAY = "顯示摘要";
	   TITAN_ITEMBONUSES_BONUSSCANNER_MISSING = "需要 BonusScanner 插件";

	   TITAN_ITEMBONUSES_CAT_ATT = "屬性";
	   TITAN_ITEMBONUSES_CAT_RES = "抗性";
	   TITAN_ITEMBONUSES_CAT_SKILL = "技能";
	   TITAN_ITEMBONUSES_CAT_BON = "近戰和遠程攻擊";
	   TITAN_ITEMBONUSES_CAT_SBON = "法術";
	   TITAN_ITEMBONUSES_CAT_OBON = "生命力和法力值";
	   TITAN_ITEMBONUSES_CAT_EBON = "特殊加成";
	
	-- Titan Repair
	        REPAIR_LOCALE = {
		      pattern = "^耐久度 (%d+) / (%d+)$",
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
		      itemname = "顯示物品的名稱",
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
	};	

	    TITAN_PLUGINS_MENU_TITLE = "插件";
	
end