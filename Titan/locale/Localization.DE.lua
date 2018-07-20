-- Version : German
-- Thanks to Sensity for correcting some Rider and XP translations and to Littlemaxi for providing translations for Profession Bags.

function TitanLocalizeDE() 
	TITAN_DEBUG = "<Titan>";
	TITAN_INFO = "<Titan>"

	TITAN_NA = "N/V";
	TITAN_SECONDS = "Sekunde(n)";
	TITAN_MINUTES = "Minute(n)";
	TITAN_HOURS = "Stunde(n)";
	TITAN_DAYS = "Tag(e)";
	TITAN_SECONDS_ABBR = "s";
	TITAN_MINUTES_ABBR = "m";
	TITAN_HOURS_ABBR = "S";
	TITAN_DAYS_ABBR = "T";
	TITAN_MILLISECOND = "ms";
	TITAN_KILOBYTES_PER_SECOND = "KB/s";
	TITAN_KILOBITS_PER_SECOND = "kBps"
	TITAN_MEGABYTE = "MB";
	TITAN_NONE = "None";

	TITAN_MOVABLE_TOOLTIP = "Ziehen zum verschieben.";

	TITAN_PANEL_ERROR_DUP_PLUGIN = " scheint 2 mal registriert zu sein. Aus diesem Grund funktioniert Titan Panel nicht richtig, bitte behebe dieses Problem"
	TITAN_PANEL_ERROR_PROF_DELCURRENT = "Aktuelles Profil darf nicht geloescht werden."; --SENSITY
  TITAN_PANEL_RESET_WARNING = GREEN_FONT_COLOR_CODE.."Warnung:"..FONT_COLOR_CODE_CLOSE.."Diese Einstellung wird die Leiste(n) zuruecksetzen und das aktuelle Profil erneuern. Fuer WEITER druecke 'Accept' (UI wird neu laden), andernfalls druecke 'Cancel' oder 'Escape'."; --SENSITY
	
	-- slash command help
	TITAN_PANEL_SLASH_STRING2 = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/tp {reset | reset tipfont/tipalpha/panelscale/spacing}";
	TITAN_PANEL_SLASH_STRING3 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffffSetzt Panelposition/-inhalt auf Voreinstellung zurueck."; --SENSITY
	TITAN_PANEL_SLASH_STRING4 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffffSetzt Paneltooltip-Schriftgroesse auf Voreinstellung zurueck."; --SENSITY
	TITAN_PANEL_SLASH_STRING5 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffffSetzt Paneltooltip-Transparenz auf Voreinstellung zurueck."; --SENSITY
	TITAN_PANEL_SLASH_STRING6 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffffSetzt Panelgroesse auf Voreinstellung zurueck."; --SENSITY
	TITAN_PANEL_SLASH_STRING7 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffffSetzt Panel-Buttonabstand auf Voreinstellung zurueck."; --SENSITY
	TITAN_PANEL_SLASH_STRING8 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffffOeffnet das Ace3-Panel-Kontroll-GUI."; --SENSITY
  TITAN_PANEL_SLASH_STRING9 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffffOeffnet das Ace3-Transparenz-Kontroll-GUI."; --SENSITY
  TITAN_PANEL_SLASH_STRING10 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffffOeffnet das Ace3-Skin-Kontroll-GUI."; --SENSITY
  TITAN_PANEL_SLASH_STRING11 = LIGHTYELLOW_FONT_COLOR_CODE.."Fuer Hilfe zu BonusScanner eingeben: |cffffffff/bscan"; --SENSITY
	
	-- slash command responses
	TITAN_PANEL_SLASH_RESP1 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Tooltip-Schriftgroesse wurde zurueckgesetzt."; --SENSITY
	TITAN_PANEL_SLASH_RESP2 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Tooltip-Transparenz wurde zurueckgesetzt."; --SENSITY
	TITAN_PANEL_SLASH_RESP3 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Groesse wurde zurueckgesetzt."; --SENSITY
	TITAN_PANEL_SLASH_RESP4 = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Buttonabstand wurde zurueckgesetzt."; --SENSITY
	
	-- general panel locale
	TITAN_PANEL = "Titan Panel";
	TITAN_PANEL_VERSION_INFO = "|cffffffff vom "..RED_FONT_COLOR_CODE.."Titan Dev Team".." |cffffffff(HonorGoG, jaketodd422, joejanko, Lothayer, Tristanian, oXidFoX)"; --SENSITY
	TITAN_PANEL_MENU_TITLE = "Titan Panel";
	TITAN_PANEL_MENU_HIDE = "Ausblenden";
	TITAN_PANEL_MENU_CUSTOMIZE = "Anpassen";
	TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN = "(In Combat)";
	TITAN_PANEL_MENU_RELOADUI = "(Reload UI)";
	TITAN_PANEL_MENU_SHOW_COLORED_TEXT = "Farbigen Text anzeigen";
	TITAN_PANEL_MENU_SHOW_ICON = "Icon anzeigen";
	TITAN_PANEL_MENU_SHOW_LABEL_TEXT = "Beschriftungstext anzeigen";
	TITAN_PANEL_MENU_AUTOHIDE = "Titanleiste automatisch ausblenden";
	TITAN_PANEL_MENU_BGMINIMAP = "Schlachtfeld Mini-Map";
	TITAN_PANEL_MENU_CENTER_TEXT = "Text zentrieren";
	TITAN_PANEL_MENU_DISPLAY_ONTOP = "Oben am Bildschirm anzeigen";
	TITAN_PANEL_MENU_DISPLAY_BOTH = "Oben und unten am Bildschirm anzeigen";
	TITAN_PANEL_MENU_DISABLE_PUSH = "Bildschirmjustierung deaktivieren (Gr\195\182\195\159en\195\164nderung)";
	TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH = "Minimapjustierung deaktivieren"; -- Sensity
	TITAN_PANEL_MENU_DISABLE_LOGS = "Log automatisch justieren";
	TITAN_PANEL_MENU_BUILTINS = "Titan Standardplugins";
	TITAN_PANEL_MENU_LEFT_SIDE = "Linke Seite";
	TITAN_PANEL_MENU_RIGHT_SIDE = "Rechte Seite";
	TITAN_PANEL_MENU_PROFILES = "Profile"; --SENSITY
  TITAN_PANEL_MENU_PROFILE = "Profil "; --SENSITY
  TITAN_PANEL_MENU_PROFILE_CUSTOM = "Benutzerdefiniert"; --SENSITY
  TITAN_PANEL_MENU_PROFILE_DELETED = " wurde geloescht."; --SENSITY
  TITAN_PANEL_MENU_PROFILE_SERVERS = "Server";
  TITAN_PANEL_MENU_PROFILE_CHARS = "Charakter";
  TITAN_PANEL_MENU_PROFILE_RELOADUI = "UI wird jetzt neu geladen nach druecken von 'Okay' und das benutzerdefinierte Profil sichern."; --SENSITY
  TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE = "Name fuer benutzerdefiniertes Profil:\n(20 Zeichen max, keine Leerzeichen erlaubt, Gross-/Kleinschreibung beachten) "; --SENSITY
  TITAN_PANEL_MENU_PROFILE_SAVE_PENDING = "Aktuelle Leisteneinstellung werden gesichtert unter Profilname: "; --SENSITY
  TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS = "Dieser Profilname existiert bereits. Soll wirklich ueberschrieben werden? Druecke 'Accept' fuer JA, wenn NEIN druecke 'Cancel' oder 'Escape'."; --SENSITY
  TITAN_PANEL_MENU_MANAGE_SETTINGS = "Verwalten"; --SENSITY
	TITAN_PANEL_MENU_LOAD_SETTINGS = "Einstellungen laden"; --SENSITY
	TITAN_PANEL_MENU_DELETE_SETTINGS = "Loeschen"; --SENSITY
  TITAN_PANEL_MENU_SAVE_SETTINGS = "Sichern"; --SENSITY
	TITAN_PANEL_MENU_DOUBLE_BAR = "Doppeltes Panel";
	TITAN_PANEL_MENU_CONFIGURATION = "Konfiguration";
	TITAN_PANEL_MENU_OPTIONS = "Optionen"; --SENSITY
	TITAN_PANEL_MENU_OPTIONS_PANEL = "Panel";
	TITAN_PANEL_MENU_OPTIONS_BARS = "Leisten"; --SENSITY
	TITAN_PANEL_MENU_OPTIONS_TOOLTIPS = "Tooltips";
	TITAN_PANEL_MENU_OPTIONS_FRAMES = "Bilder pro sec";
	TITAN_PANEL_MENU_OPTIONS_LDB = "Data Broker";
	TITAN_PANEL_MENU_PLUGINS = "Plugins";
	TITAN_PANEL_MENU_LOCK_BUTTONS = "Buttons fixieren"; -- Sensity
	TITAN_PANEL_MENU_VERSION_SHOWN = "Pluginversionen anzeigen";
	TITAN_PANEL_MENU_LDB_SHOWN = "Broker suffix an Menue anhaengen"; --SENSITY
  TITAN_PANEL_MENU_LDB_SIDE = "Plugin rechts"; --SENSITY
  TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER = "Schiebe Starter nach rechts"; --SENSITY
	TITAN_PANEL_MENU_DISABLE_FONT = "Schriftarten skalieren sperren"; 
	TITAN_PANEL_MENU_CATEGORIES = {"Allgemein","Kampf","Informationen","Interface","Beruf"}
	TITAN_PANEL_MENU_TOOLTIPS_SHOWN = "Zeige Tooltips";
	TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT = "Verberge Tooltips im Kampf"; -- Sensity
	TITAN_PANEL_MENU_CASTINGBAR = "Verschiebe Zauberleiste";
	TITAN_PANEL_MENU_RESET = "Einstellungen zur\195\188cksetzen";
  TITAN_PANEL_MENU_TEXTURE_SETTINGS = "Oberflaecheneinstellungen"; --SENSITY
  TITAN_PANEL_MENU_FONT = "Font";
  TITAN_PANEL_MENU_LSM_FONTS = "LibSharedMedia Fonts"
  TITAN_PANEL_MENU_ENABLED = "Ein"; --SENSITY
	TITAN_PANEL_MENU_DISABLED = "Aus"; --SENSITY
	
	-- localization strings for AceConfigDialog-3.0     
	TITAN_PANEL_CONFIG_MAIN_LABEL = "Informationsleisten-Addon. Erlaubt Dateneingaben oder Start-Zusaetze auf einer Kontrollleiste am oberen oder unteren Bildschirmrand.";	--SENSITY		 
	TITAN_TRANS_MENU_TEXT_SHORT = "Transparenz"; --SENSITY
	TITAN_TRANS_MENU_DESC = "Transparenz fuer Titanleisten und Tooltips einstellen."; --SENSITY		
	TITAN_TRANS_MAIN_CONTROL_TITLE = "Hauptleiste"; --SENSITY
  TITAN_TRANS_AUX_CONTROL_TITLE = "Erweiterungsleiste"; --SENSITY
  TITAN_TRANS_CONTROL_TITLE_TOOLTIP = "Tooltip";		 
	TITAN_TRANS_MAIN_BAR_DESC = "Setzt Transparenz der Hauptleiste."; --SENSITY
	TITAN_TRANS_AUX_BAR_DESC = "Setzt Transparenz der Erweiterungsleiste (unten)."; --SENSITY
	TITAN_TRANS_TOOLTIP_DESC = "Setzt Transparenz der Tooltips verschiedener Plugins."; --SENSITY
	TITAN_UISCALE_MENU_TEXT = "Leisteneinstellungen"; --SENSITY
	TITAN_UISCALE_CONTROL_TITLE_UI = "UI Groesse"; --SENSITY
	TITAN_UISCALE_CONTROL_TITLE_PANEL = "Leistengroesse"; --SENSITY
	TITAN_UISCALE_CONTROL_TITLE_BUTTON = "Buttonabstand"; --SENSITY
	TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT = "Tooltip Font Skalierung" ; --SENSITY
	TITAN_UISCALE_TOOLTIP_DISABLE_TEXT = "Tooltip Font Skalierung aus"; --SENSITY
	TITAN_UISCALE_MENU_DESC = "Kontrolliert verschiedene Aspekte von UI und Leisten."; --SENSITY
	TITAN_UISCALE_SLIDER_DESC = "Skaliert das gesamte UI."; --SENSITY
	TITAN_UISCALE_PANEL_SLIDER_DESC = "Skaliert verschiedene Panelbuttons und Icons."; --SENSITY
	TITAN_UISCALE_BUTTON_SLIDER_DESC = "Abstandsjustierung linke Plugins."; --SENSITY
	TITAN_UISCALE_TOOLTIP_SLIDER_DESC = "Groessenjustierung fuer Tooltips verschiedener Plugins."; --SENSITY
	TITAN_UISCALE_DISABLE_TOOLTIP_DESC = "Titan's Tooltip Font Skalierung AUS."; --SENSITY
	TITAN_SKINS_MAIN_DESC = "Skin-Verwaltung der Titan-Leisten."; --SENSITY
	TITAN_SKINS_LIST_TITLE = "Skin-Auswahl"; --SENSITY
	TITAN_SKINS_SET_DESC = "Waehle Skin fuer die Titanleisten."; --SENSITY
	TITAN_SKINS_SET_HEADER = "Bestimme Leisten-Skin"; --SENSITY
	TITAN_SKINS_NEW_HEADER = "Neue Skin hinzufuegen"; --SENSITY
	TITAN_SKINS_NAME_TITLE = "Skin Name";
	TITAN_SKINS_NAME_DESC = "Name fuer neue Skin."; --SENSITY
	TITAN_SKINS_NAME_EXAMPLE = "Beispiel: My Titan Skin"; --SENSITY
	TITAN_SKINS_PATH_TITLE = "Skin Speicherort"; --SENSITY
	TITAN_SKINS_PATH_DESC = "Exakten Speicherort der eigenen Skin eingeben, wie im Beispiel und in den Hinweisen beschrieben."; --SENSITY
	TITAN_SKINS_PATH_EXAMPLE = "Beispiel: Interface\\AddOns\\Titan\\Artwork\\Custom\\<My Skin folder>\\"; --SENSITY
	TITAN_SKINS_ADD_HEADER = "Skin hinzufuegen"; --SENSITY
	TITAN_SKINS_ADD_DESC = "Fuegt eine neue Skin zur bestehenden Liste hinzu."; --SENSITY
	TITAN_SKINS_REMOVE_HEADER = "Entferne Skin"; --SENSITY
	TITAN_SKINS_REMOVE_DESC = "Zu entfernende Skin aus der bestehenden Liste waehlen."; --SENSITY
	TITAN_SKINS_REMOVE_BUTTON = "Entfernen"; --SENSITY
	TITAN_SKINS_REMOVE_BUTTON_DESC = "Entfernt die gewaehlte Skin aus der bestehenden Liste."; --SENSITY
	TITAN_SKINS_NOTES = "|cff19ff19Notes:|r Beim Hinzufuegen einer neuen Skin sicherstellen, dass ein entsprechender Ordner VOR dem Laden von 'World of Warcraft' erstellt wurde und der eingegebene Speicherort exakt damit uebereinstimmt (Gross-/Kleinschreibung beachten und Endung mit '\\' Zeichen)."; --SENSITY
	TITAN_SKINS_RESET_DEFAULTS_TITLE = "Reset to Defaults";
	TITAN_SKINS_RESET_DEFAULTS_DESC = "Resets the skin list to the default, build-in skins.";
	-- /end localization strings for AceConfigDialog-3.0

	TITAN_AUTOHIDE_TOOLTIP = "Leiste automatisch ausblenden";
	TITAN_AUTOHIDE_MENU_TEXT = "Automatisch ausblenden";

	TITAN_AMMO_FORMAT = "%d";
	TITAN_AMMO_BUTTON_LABEL_AMMO = "Munition: ";
	TITAN_AMMO_BUTTON_LABEL_THROWN = "Geworfen: ";
	TITAN_AMMO_BUTTON_LABEL_AMMO_THROWN = "Munition/Geworfen: ";
	TITAN_AMMO_TOOLTIP = "Angelegte Munition/Geworfen Z\195\164hler";
	TITAN_AMMO_MENU_TEXT = "Munition/Geworfen";
	TITAN_AMMO_BUTTON_NOAMMO = "Keine Munition"; --SENSITY
  TITAN_AMMO_MENU_REFRESH = "Aktualisiere Display"; --SENSITY
  TITAN_AMMO_BULLET_NAME = "Show ammo name";
	
	TITAN_BAG_FORMAT = "%d/%d";
	TITAN_BAG_BUTTON_LABEL = "Taschen: ";
	TITAN_BAG_TOOLTIP = "Taschenbenutzung";
	TITAN_BAG_TOOLTIP_HINTS = "Hinweis: Links-Klick um alle Taschen zu \195\182ffnen.";
	TITAN_BAG_MENU_TEXT = "Taschenbenutzung";
	TITAN_BAG_USED_SLOTS = "Benutzte Plaetze"; --SENSITY
  TITAN_BAG_FREE_SLOTS = "Freie Plaetze"; --SENSITY
  TITAN_BAG_BACKPACK = "Rucksack";
	TITAN_BAG_MENU_SHOW_USED_SLOTS = "Bereits belegte Pl\195\164tze anzeigen";
	TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS = "Noch verf\195\188gbare Pl\195\164tze anzeigen";
	TITAN_BAG_MENU_SHOW_DETAILED = "Zeige detaillierten Tooltip"; --SENSITY
	TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS = "Pl\195\164tze des Munitionsbeutels ignorieren";
	TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS = "Ignoriere Splittertaschen";
	TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS = "Ignoriere Berufs-Taschen";
	TITAN_BAG_AMMO_POUCH_NAMES = {"Grollhufbalgk\195\182cher", "Worgbalgk\195\182cher", "Uraltes in Sehnen eingewickeltes Laminablatt", "K\195\182cher der tausend Federn", "K\195\182cher aus Knotenhautleder", "K\195\182cher aus Harpyienhaut", "Ribblys K\195\182cher", "Schnellziehk\195\182cher", "Schwerer K\195\182cher", "K\195\182cher der Nachtwache", "Jagdk\195\182cher", "Mittlerer K\195\182cher", "Leichter Lederk\195\182cher", "Kleiner K\195\182cher", "Leichter K\195\182cher", "Munitionsbeutel des Schmugglers", "Munitionsbeutel aus Knotenhautleder", "Munitionsbeutel aus Netherschuppen", "Schulterg\195\188rtel aus Gnollhaut", "Ribblys Schulterg\195\188rtel", "Dicker Ledermunitionsbeutel", "Schwerer Ledermunitionsbeutel", "Schulterg\195\188rtel der Nachtwache", "Mittlerer Geschossbeutel", "Jagdmunitionssack" ,"Kleiner Ledermunitionsbeutel", "Kleiner Geschossbeutel", "Kleiner Munitionsbeutel"};
	TITAN_BAG_SHARD_BAG_NAMES = {"Seelenbeutel", "Kleiner Seelenbeutel", "Seelenkasten", "Teufelsstofftasche", "Kernteufelsstofftasche", "Schwarzschattentasche"};
	TITAN_BAG_PROF_BAG_NAMES = {"Verzauberter Magiestoffbeutel", "Verzauberte Runenstofftasche", "Grosse Verzauberertasche", "Verzaubererranzen", "Zauberfeuertasche", "Werkzeugkasten aus Khorium", "Werkzeugkasten aus Teufelseisen", "Schwerer Werkzeugkasten", "Edelsteinbeutel", "Juwelenbeutel", "Verst\195\164rkte Bergbautasche", "Bergbausack", "Ranzen des Lederers", "Tasche f\195\188r alle Felle", "Kr\195\164uterbeutel", "Cenarische Kr\195\164utertasche","Cenarischer Ranzen","Mycahs Botanikerbeutel"};

	TITAN_BGMINIMAP_MENU_TEXT = "Schlachtfeld Minimap"
	TITAN_BGMINIMAP_TOOLTIP = "wechsle Schlachtfeld Minimap"

	TITAN_CLOCK_TOOLTIP = "Uhr";
	TITAN_CLOCK_TOOLTIP_VALUE = "Momentane Zeitverschiebung: ";
	TITAN_CLOCK_TOOLTIP_LOCAL_TIME = "Lokale Zeit: "; --SENSITY
  TITAN_CLOCK_TOOLTIP_SERVER_TIME = "Server Zeit: "; --SENSITY
  TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME = "Eingestellte Server Zeit: "; --SENSITY
	TITAN_CLOCK_TOOLTIP_HINT1 = "Hinweis: Links-Klick um die Zeitverschiebung festzulegen"
	TITAN_CLOCK_TOOLTIP_HINT2 = "und zwischen dem 12/24 Stundenformat zu wechseln.";
	TITAN_CLOCK_TOOLTIP_HINT3 = "Shift Left-Click to toggle the Calendar on/off.";
	TITAN_CLOCK_CONTROL_TOOLTIP = "Zeitverschiebung in Stunden: ";
	TITAN_CLOCK_CONTROL_TITLE = "Verschiebung";
	TITAN_CLOCK_CONTROL_HIGH = "+12";
	TITAN_CLOCK_CONTROL_LOW = "-12";
	TITAN_CLOCK_CHECKBUTTON = "24Std Fmt";
	TITAN_CLOCK_CHECKBUTTON_TOOLTIP = "Wechselt die Anzeige zwischen dem 12-Stunden und 24-Stunden Format.";
	TITAN_CLOCK_MENU_TEXT = "Uhr";
	TITAN_CLOCK_MENU_LOCAL_TIME = "Lokale Zeit anzeigen (L)"; --SENSITY 
  TITAN_CLOCK_MENU_SERVER_TIME = "Serverzeit anzeigen (S)"; --SENSITY
  TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME = "Eingestellte Serverzeit anzeigen (A)"; --SENSITY
	TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE = "Ganz rechts anzeigen.";
	TITAN_CLOCK_MENU_HIDE_GAMETIME = "Hide Time/Calendar button";

	TITAN_COORDS_FORMAT = "(%.d, %.d)";
	TITAN_COORDS_FORMAT2 = "(%.1f, %.1f)";
	TITAN_COORDS_FORMAT3 = "(%.2f, %.2f)";
	TITAN_COORDS_FORMAT_LABEL = "(xx , yy)";
	TITAN_COORDS_FORMAT2_LABEL = "(xx.x , yy.y)";
	TITAN_COORDS_FORMAT3_LABEL = "(xx.xx , yy.yy)";
	TITAN_COORDS_FORMAT_COORD_LABEL = "Koordinatenformat"; --SENSITY
	TITAN_COORDS_BUTTON_LABEL = "Pos: ";
	TITAN_COORDS_TOOLTIP = "Info zur Position";
	TITAN_COORDS_TOOLTIP_HINTS_1 = "Hinweis: Shift + Links-Klick um die";
	TITAN_COORDS_TOOLTIP_HINTS_2 = "momentane Position in den Chat einzuf\195\188gen.";-- Sensity
	TITAN_COORDS_TOOLTIP_ZONE = "Zone: ";
	TITAN_COORDS_TOOLTIP_SUBZONE = "SubZone: ";
	TITAN_COORDS_TOOLTIP_PVPINFO = "PVP Info: ";
	TITAN_COORDS_TOOLTIP_HOMELOCATION = "Heimatort";
	TITAN_COORDS_TOOLTIP_INN = "Gasthaus: ";
	TITAN_COORDS_MENU_TEXT = "Position";
	TITAN_COORDS_MENU_SHOW_ZONE_ON_PANEL_TEXT = "Zonentext in der Leiste anzeigen";
	TITAN_COORDS_MENU_SHOW_COORDS_ON_MAP_TEXT = "Koordinaten auf der Weltkarte anzeigen";
	TITAN_COORDS_MAP_CURSOR_COORDS_TEXT = "Mauszeiger (X,Y): %s";
	TITAN_COORDS_MAP_PLAYER_COORDS_TEXT = "Spieler (X,Y): %s";
	TITAN_COORDS_NO_COORDS = "No Coords";
	TITAN_COORDS_MENU_SHOW_LOC_ON_MINIMAP_TEXT = "Show location on mini map";

	TITAN_FPS_FORMAT = "%.1f";
	TITAN_FPS_BUTTON_LABEL = "BPS: ";
	TITAN_FPS_MENU_TEXT = "Bilder pro Sekunde (BPS)";
	TITAN_FPS_TOOLTIP_CURRENT_FPS = "Momentan: ";
	TITAN_FPS_TOOLTIP_AVG_FPS = "Durchschnitt: ";
	TITAN_FPS_TOOLTIP_MIN_FPS = "Bisher Minimum: ";
	TITAN_FPS_TOOLTIP_MAX_FPS = "Bisher Maximum: ";
	TITAN_FPS_TOOLTIP = "Bilder pro Sekunde";

	TITAN_LATENCY_FORMAT = "%d"..TITAN_MILLISECOND;
	TITAN_LATENCY_BANDWIDTH_FORMAT = "%.3f "..TITAN_KILOBYTES_PER_SECOND;
	TITAN_LATENCY_BUTTON_LABEL = "Latenz: ";
	TITAN_LATENCY_TOOLTIP = "Netzwerkstatus";
	TITAN_LATENCY_TOOLTIP_LATENCY = "Momentane Latenz: ";
	TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN = "Bandbreite rein: ";
	TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT = "Bandbreite raus: ";
	TITAN_LATENCY_MENU_TEXT = "Latenz";

	TITAN_LOOTTYPE_BUTTON_LABEL = "Pl\195\188ndern: ";
	TITAN_LOOTTYPE_FREE_FOR_ALL = "Jeder gegen Jeden";
	TITAN_LOOTTYPE_ROUND_ROBIN = "Reihum";
	TITAN_LOOTTYPE_MASTER_LOOTER = "Pl\195\188ndermeister";
	TITAN_LOOTTYPE_GROUP_LOOT = "Pl\195\188ndern als Gruppe";
	TITAN_LOOTTYPE_NEED_BEFORE_GREED = "Bedarf vor Gier";
	TITAN_LOOTTYPE_TOOLTIP = "Pl\195\188ndermethode";
	TITAN_LOOTTYPE_MENU_TEXT = "Pl\195\188ndereinstellungen";
	TITAN_LOOTTYPE_RANDOM_ROLL_LABEL = "W\195\188rfelwurf";
	TITAN_LOOTTYPE_TOOLTIP_HINT1 = "Hinweis: Links-Klick f\195\188r W\195\188rfelwurf.";
	TITAN_LOOTTYPE_TOOLTIP_HINT2 = "Auswahl der W\195\188rfelmethode im Rrechtsklick-Men\195\188.";

	TITAN_MEMORY_FORMAT = "%.3f"..TITAN_MEGABYTE;
	TITAN_MEMORY_FORMAT_KB = "%d".."KB";
	TITAN_MEMORY_RATE_FORMAT = "%.3f"..TITAN_KILOBYTES_PER_SECOND;
	TITAN_MEMORY_BUTTON_LABEL = "Speicher: ";
	TITAN_MEMORY_TOOLTIP = "Script Speichernutzung";
	TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY = "Momentan: ";
	TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY = "Anf\195\164nglich: ";
	TITAN_MEMORY_TOOLTIP_INCREASING_RATE = "Steigerungsrate: ";
	TITAN_MEMORY_KBMB_LABEL = "KB/MB"; 		
	--TITAN_MEMORY_MENU_TEXT = "Script Speichernutzung";
	--TITAN_MEMORY_MENU_RESET_SESSION = "Zur\195\188cksetzen";

	TITAN_MONEY_GOLD = "G";
	TITAN_MONEY_SILVER = "S";
	TITAN_MONEY_COPPER = "K";
	TITAN_MONEY_FORMAT = "%d"..TITAN_MONEY_GOLD..", %d"..TITAN_MONEY_SILVER..", %d"..TITAN_MONEY_COPPER;
	
	TITAN_PERFORMANCE_TOOLTIP = "Leistung";
	TITAN_PERFORMANCE_MENU_TEXT = "Leistung";
	TITAN_PERFORMANCE_ADDONS = "Addon Nutzung";
	TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL = "Addon Speicher Verbrauch";
	TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL = "Addon Speicher Format";
	TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL = "Addon CPU Nutzung"; -- Sensity
	TITAN_PERFORMANCE_ADDON_NAME_LABEL = "Name:";
	TITAN_PERFORMANCE_ADDON_USAGE_LABEL = "Verbrauch";
	TITAN_PERFORMANCE_ADDON_RATE_LABEL = "Rate";
	TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL = "Gesamt Addon Speichernutzung:"; -- Sensity
	TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL = "Total CPU Time:";
	TITAN_PERFORMANCE_MENU_SHOW_FPS = "Zeige FPS";
	TITAN_PERFORMANCE_MENU_SHOW_LATENCY = "Zeige Latenz";
	TITAN_PERFORMANCE_MENU_SHOW_MEMORY = "Zeige Speicher";
	TITAN_PERFORMANCE_MENU_SHOW_ADDONS = "Zeige Addon Speicher Verbrauch";
	TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE = "Zeige Addon verbrauchs Rate";
	TITAN_PERFORMANCE_MENU_CPUPROF_LABEL = "CPU Profiling Mode";
	TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON = "CPU Profiling Mode einschalten "; -- Sensity
	TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF = "CPU Profiling Mode abschalten "; -- Sensity
	TITAN_PERFORMANCE_CONTROL_TOOLTIP = "\195\156berwachte Addons: ";
	TITAN_PERFORMANCE_CONTROL_TITLE = "\195\156berwachte Addons";
	TITAN_PERFORMANCE_CONTROL_HIGH = "40";
	TITAN_PERFORMANCE_CONTROL_LOW = "1";
	TITAN_PERFORMANCE_TOOLTIP_HINT = "Hinweis: Links-Klick f\195\188r eine Speicherbereinigung.";

	TITAN_XP_FORMAT = "%d";
	TITAN_XP_PERCENT_FORMAT = TITAN_XP_FORMAT.." (%.1f%%)";
	TITAN_XP_BUTTON_LABEL_XPHR_LEVEL = "XP/Std (Level): ";
	TITAN_XP_BUTTON_LABEL_XPHR_SESSION = "XP/Std (Sitzung): ";
	TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL = "Zeit bis Aufstieg: ";
	TITAN_XP_LEVEL_COMPLETE = "Level komplett: "; --SENSITY
	TITAN_XP_TOTAL_RESTED = "Ausgeruht: "; --SENSITY
  TITAN_XP_XPTOLEVELUP = "XP bis Levelaufstieg: "; --SENSITY
	TITAN_XP_TOOLTIP = "Info XP";
	TITAN_XP_TOOLTIP_TOTAL_TIME = "Spielzeit Gesamt: ";
	TITAN_XP_TOOLTIP_LEVEL_TIME = "Spielzeit dieses Levels: ";
	TITAN_XP_TOOLTIP_SESSION_TIME = "Spielzeit dieser Sitzung: ";
	TITAN_XP_TOOLTIP_TOTAL_XP = "Gesamt XP dieses Levels: ";
	TITAN_XP_TOOLTIP_LEVEL_XP = "XP erhalten dieses Levels: ";
	TITAN_XP_TOOLTIP_TOLEVEL_XP = "XP ben\195\182tigt bis Aufstieg: ";
	TITAN_XP_TOOLTIP_SESSION_XP = "XP erhalten diese Sitzung: ";
	TITAN_XP_TOOLTIP_XPHR_LEVEL = "XP/Std dieses Levels: ";
	TITAN_XP_TOOLTIP_XPHR_SESSION = "XP/Std dieser Sitzung: ";
	TITAN_XP_TOOLTIP_TOLEVEL_LEVEL = "Zeit bis Aufstieg (Levelrate): ";
	TITAN_XP_TOOLTIP_TOLEVEL_SESSION = "Zeit bis Aufstieg (Sitzungsrate): ";
	TITAN_XP_MENU_TEXT = "XP";
	TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL = "Zeige XP/Std dieses Levels";
	TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION = "Zeige XP/Std dieser Sitzung";
	TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP = "Show Multi-info view";
  TITAN_XP_MENU_SIMPLE_BUTTON_TITLE = "Button";
  TITAN_XP_MENU_SIMPLE_BUTTON_RESTED = "Show Rested XP";
  TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP = "Show XP to level";
  TITAN_XP_MENU_SIMPLE_BUTTON_KILLS = "Show est. kills to level";
	TITAN_XP_MENU_RESET_SESSION = "Session Zur\195\188cksetzen";
  TITAN_XP_MENU_REFRESH_PLAYED = "Zaehler zuruecksetzen"; --SENSITY
  TITAN_XP_UPDATE_PENDING = "Updating...";
  TITAN_XP_UNKNOWN = "Unknown";
  TITAN_XP_KILLS_LABEL = "Kills to level (at %d XP gained last): ";
  TITAN_XP_KILLS_LABEL_SHORT = "Est. Kills: ";
  
	TITAN_REGEN_MENU_TEXT 		= "Regeneration"
	TITAN_REGEN_MENU_TOOLTIP_TITLE	= "Regenerationsrate"
	TITAN_REGEN_MENU_SHOW1 		= "Zeigen" -- Sensity
	TITAN_REGEN_MENU_SHOW2 		= "HP"
	TITAN_REGEN_MENU_SHOW3 		= "MP"
	TITAN_REGEN_MENU_SHOW4		= "Als Prozentsatz"
	TITAN_REGEN_BUTTON_TEXT_HP 		= "HP: "..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_BUTTON_TEXT_HP_PERCENT 	= "HP: "..HIGHLIGHT_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_BUTTON_TEXT_MP 		= " MP: "..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_BUTTON_TEXT_MP_PERCENT 	= " MP: "..HIGHLIGHT_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_TOOLTIP1 		= "Gesundheit: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	TITAN_REGEN_TOOLTIP2 		= "Mana: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	TITAN_REGEN_TOOLTIP3 		= "Beste HP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_TOOLTIP4 		= "Schlechteste HP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_TOOLTIP5 		= "Beste MP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_TOOLTIP6 		= "Schlechteste MP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	TITAN_REGEN_TOOLTIP7		= "MP Regeneration im letzten Kampf: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..GREEN_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE.."%%)";

	REPAIR_LOCALE["pattern"] = "^Haltbarkeit (%d+) / (%d+)$";
	REPAIR_LOCALE["menu"] = "Reparieren";
	REPAIR_LOCALE["tooltip"] = "Haltbarkeits Info";
	REPAIR_LOCALE["button"] = "Haltbarkeit: ";
	REPAIR_LOCALE["normal"] = "Reparaturkosten (Normal): ";
	REPAIR_LOCALE["friendly"] = "Reparaturkosten (freundlich): "; -- SENSITIY
	REPAIR_LOCALE["honored"] = "Reparaturkosten (wohlwollend): "; -- SENSITIY
	REPAIR_LOCALE["revered"] = "Reparaturkosten (respektvoll): "; -- SENSITIY
	REPAIR_LOCALE["exalted"] = "Reparaturkosten (ehrf\195\188rchtig): "; -- SENSITIY
	REPAIR_LOCALE["buttonNormal"] = "Zeige normal";
	REPAIR_LOCALE["buttonFriendly"] = "Zeige freundlich (5%)"; -- SENSITIY
	REPAIR_LOCALE["buttonHonored"] = "Zeige wohlwollend (10%)"; -- SENSITIY
	REPAIR_LOCALE["buttonRevered"] = "Zeige respektvoll (15%)"; -- SENSITIY
	REPAIR_LOCALE["buttonExalted"] = "Zeige ehrf\195\188rchtig (20%)"; -- SENSITIY
	REPAIR_LOCALE["percentage"] = "Prozent anzeigen";
	REPAIR_LOCALE["itemname"] = "Gegenstandsnamen anzeigen";
--          itemnames = "Show Item Names",
--          mostdamaged = "Show Most Damaged",
--          showdurabilityframe = "Show Durability Frame",
	REPAIR_LOCALE["undamaged"] = "Unbesch\195\164digte Gegenst\195\164nde anzeigen";
	REPAIR_LOCALE["discount"] = "Rabatt"; -- Sensity
	REPAIR_LOCALE["nothing"] = "Nichts besch\195\164digt";
	REPAIR_LOCALE["confirmation"] = "Wollt Ihr alles reparieren lassen?";
	REPAIR_LOCALE["badmerchant"] = "Dieser H/195/164/ndler kann nicht reparieren. Es werden nur normale Reparaturkosten angezeigt."; -- SENSITIY
	REPAIR_LOCALE["popup"] = "Zeige Reparieren-Popup"; -- SENSITIY
	REPAIR_LOCALE["showinventory"]  = "Kalkuliere Inventar-Besch\195\164digung";
	REPAIR_LOCALE["WholeScanInProgress"]  = "Updating...";
	REPAIR_LOCALE["AutoReplabel"] = "Automatische Reparatur"; -- SENSITIY	
	REPAIR_LOCALE["AutoRepitemlabel"] = "Automatische Reparatur aller Gegenst\195\164nde"; -- SENSITIY
	REPAIR_LOCALE["ShowRepairCost"] = "Zeige Reparaturkosten"; --SENSITY
	REPAIR_LOCALE["ignoreThrown"] = "Ignore Thrown";

	TITAN_PLUGINS_MENU_TITLE = "Plugins";

end