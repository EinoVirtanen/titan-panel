local L = LibStub("AceLocale-3.0"):NewLocale("Titan","esES")
if not L then return end

	L["TITAN_DEBUG"] = "<Titan>";
	L["TITAN_INFO"] = "<Titan>"
	
	L["TITAN_NA"] = "N/D";
	L["TITAN_SECONDS"] = "segundos";
	L["TITAN_MINUTES"] = "minutos";
	L["TITAN_HOURS"] = "horas";
	L["TITAN_DAYS"] = "días";
	L["TITAN_SECONDS_ABBR"] = "s";
	L["TITAN_MINUTES_ABBR"] = "m";
	L["TITAN_HOURS_ABBR"] = "h";
	L["TITAN_DAYS_ABBR"] = "d";
	L["TITAN_MILLISECOND"] = "ms";
	L["TITAN_KILOBYTES_PER_SECOND"] = "KB/s";
	L["TITAN_KILOBITS_PER_SECOND"] = "kbps"
	L["TITAN_MEGABYTE"] = "MB";
	L["TITAN_NONE"] = "Nada";
	
	L["TITAN_MOVABLE_TOOLTIP"] = "Pincha para mover";

	L["TITAN_PANEL_ERROR_DUP_PLUGIN"] = " aparece duplicado. Esto puede hacer que Titan Panel falle, por favor, corrija el problema."
	L["TITAN_PANEL_ERROR_PROF_DELCURRENT"] = "No puedes borrar el perfil actual.";
	L["TITAN_PANEL_RESET_WARNING"] = GREEN_FONT_COLOR_CODE.."Cuidado:"..FONT_COLOR_CODE_CLOSE.."Esta opción reseteará la configuración de tus barras y panel a los valores por defecto, y recreará tu perfil actual. Si deseas continuar con esta opreación, pulsa 'Aceptar' (se recargará tu interface), de lo contrario pulsa 'Cancelar' o la tecla 'Escape'.";
  
	-- slash command help
	L["TITAN_PANEL_SLASH_STRING2"] = LIGHTYELLOW_FONT_COLOR_CODE.."Uso: |cffffffff/tp {reset | reset tipfont/tipalpha/panelscale/spacing}";
	L["TITAN_PANEL_SLASH_STRING3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffffResetea Titan Panel a sus valores y posiciones por defecto.";
	L["TITAN_PANEL_SLASH_STRING4"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffffResetea la escala de la fuente en los tooltips de Titan Panel a su valor por defecto.";
	L["TITAN_PANEL_SLASH_STRING5"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffffResetea la transparencia de los tooltips de Titan Panel a su valor por defecto.";
	L["TITAN_PANEL_SLASH_STRING6"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffffResetea la escala de Titan Panel a su valor por defecto.";
	L["TITAN_PANEL_SLASH_STRING7"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffffResetea el espaciado de los botones de Titan Panel a su valor por defecto.";
	L["TITAN_PANEL_SLASH_STRING8"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffffAbre el interface de control de Ace3 para Titan Panel.";
	L["TITAN_PANEL_SLASH_STRING9"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffffAbre el interface de control de transarencia de Ace3 para Titan Panel.";
	L["TITAN_PANEL_SLASH_STRING10"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffffAbre el interface de control de Skin de Ace3 para Titan Panel.";
	L["TITAN_PANEL_SLASH_STRING11"] = LIGHTYELLOW_FONT_COLOR_CODE.."Para ayuda con BonusScanner, escribe : |cffffffff/bscan";
	
	-- slash command responses
	L["TITAN_PANEL_SLASH_RESP1"] = LIGHTYELLOW_FONT_COLOR_CODE.."La escala de la fuente en los tooltips de Titan Panel ha sido reseteada.";
	L["TITAN_PANEL_SLASH_RESP2"] = LIGHTYELLOW_FONT_COLOR_CODE.."La transparencia de los tooltips de Titan Panel ha sido reseteada.";
	L["TITAN_PANEL_SLASH_RESP3"] = LIGHTYELLOW_FONT_COLOR_CODE.."La escala de Titan Panel ha sido reseteada.";
	L["TITAN_PANEL_SLASH_RESP4"] = LIGHTYELLOW_FONT_COLOR_CODE.."El espaciado de los botones de Titan Panel ha sido reseteado.";
	
	-- general panel locale
	L["TITAN_PANEL"] = "Titan Panel";
	L["TITAN_PANEL_VERSION_INFO"] = "|cffffffff de la "..RED_FONT_COLOR_CODE.."Titan Development Team".." |cffffffff(HonorGoG, jaketodd422, joejanko, Lothayer, Tristanian, oXidFoX)";
	L["TITAN_PANEL_MENU_TITLE"] = "Titan Panel";
	L["TITAN_PANEL_MENU_HIDE"] = "Ocultar";
	L["TITAN_PANEL_MENU_CUSTOMIZE"] = "Personalizar";
	L["TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN"] = "(En combate)";
	L["TITAN_PANEL_MENU_RELOADUI"] = "(Recargar UI)";
	L["TITAN_PANEL_MENU_SHOW_COLORED_TEXT"] = "Mostrar texto en color";
	L["TITAN_PANEL_MENU_SHOW_ICON"] = "Mostrar icono";
	L["TITAN_PANEL_MENU_SHOW_LABEL_TEXT"] = "Mostrar etiqueta de texto";
	L["TITAN_PANEL_MENU_AUTOHIDE"] = "Auto-ocultar";
	L["TITAN_PANEL_MENU_BGMINIMAP"] = "Campo de batalla en mini-mapa";
	L["TITAN_PANEL_MENU_CENTER_TEXT"] = "Centrar texto";
	L["TITAN_PANEL_MENU_DISPLAY_ONTOP"] = "Mostrar barra superior";
	L["TITAN_PANEL_MENU_DISPLAY_BOTH"] = "Mostrar ambas barras";
	L["TITAN_PANEL_MENU_DISABLE_PUSH"] = "Desactivar ajuste de pantalla";
	L["TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH"] = "Desactivar ajuste de minimapa";
	L["TITAN_PANEL_MENU_DISABLE_LOGS"] = "Ajuste de log automático";
	L["TITAN_PANEL_MENU_BUILTINS"] = "De serie en Titan";
	L["TITAN_PANEL_MENU_LEFT_SIDE"] = "Lado izquierdo";
	L["TITAN_PANEL_MENU_RIGHT_SIDE"] = "Lado derecho";
	L["TITAN_PANEL_MENU_PROFILES"] = "Perfiles";
	L["TITAN_PANEL_MENU_PROFILE"] = "Perfil ";
	L["TITAN_PANEL_MENU_PROFILE_CUSTOM"] = "Personalizado";
	L["TITAN_PANEL_MENU_PROFILE_DELETED"] = " ha sido borrado.";
	L["TITAN_PANEL_MENU_PROFILE_SERVERS"] = "Servidor";
	L["TITAN_PANEL_MENU_PROFILE_CHARS"] = "Personaje";
	L["TITAN_PANEL_MENU_PROFILE_RELOADUI"] = "Se recargará tu interface en cuanto pulses 'Ok' para poder grabar tu perfil personalizado.";
	L["TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE"] = "Introduce un nombre para tu perfil personalizado::\n(20 carácteres máximo, sin espacios, diferencia entre mayúsculas y minúsculas)";
	L["TITAN_PANEL_MENU_PROFILE_SAVE_PENDING"] = "La configuración actual del panel se va a grabar en el perfil llamado: ";
	L["TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS"] = "El nombre de perfil introducido ya existe. Â¿Estás seguro de que quieres sobreescribirlo? Pulsa 'Aceptar' si lo deseas, de lo contrario pulsa 'Cancelar' o la tecla 'Escape'.";
	L["TITAN_PANEL_MENU_MANAGE_SETTINGS"] = "Gestionar";
	L["TITAN_PANEL_MENU_LOAD_SETTINGS"] = "Cargar ajustes";
	L["TITAN_PANEL_MENU_DELETE_SETTINGS"] = "Borrar";
	L["TITAN_PANEL_MENU_SAVE_SETTINGS"] = "Grabar";
	L["TITAN_PANEL_MENU_DOUBLE_BAR"] = "Barra superior doble";
	L["TITAN_PANEL_MENU_CONFIGURATION"] = "Configuración";
	L["TITAN_PANEL_MENU_OPTIONS"] = "Opciones";
	L["TITAN_PANEL_MENU_OPTIONS_PANEL"] = "Panel";
	L["TITAN_PANEL_MENU_OPTIONS_BARS"] = "Barras";
	L["TITAN_PANEL_MENU_OPTIONS_TOOLTIPS"] = "Tooltips";
	L["TITAN_PANEL_MENU_OPTIONS_FRAMES"] = "Marcos";
	L["TITAN_PANEL_MENU_OPTIONS_LDB"] = "Datos del Corredor";
	L["TITAN_PANEL_MENU_PLUGINS"] = "Plugins";
	L["TITAN_PANEL_MENU_LOCK_BUTTONS"] = "Bloquear botones";
	L["TITAN_PANEL_MENU_VERSION_SHOWN"] = "Mostrar versiones del plugin";
	L["TITAN_PANEL_MENU_LDB_SHOWN"] = "Añadir sufijos del Corredor en el menú";
	L["TITAN_PANEL_MENU_LDB_SIDE"] = "Plugin del lado derecho";
	L["TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER"] = "Forzar lanzadores en el lado derecho";
	L["TITAN_PANEL_MENU_DISABLE_FONT"] = "Desactivar escalado de fuentes";
	L["TITAN_PANEL_MENU_CATEGORIES"] = {"General","Combate","Información","Interfaz","Profesión"}
	L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN"] = "Mostrar tooltips";
	L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT"] = "Ocultar tooltips en combate";
	L["TITAN_PANEL_MENU_CASTINGBAR"] = "Mover barra de casteo";
	L["TITAN_PANEL_MENU_RESET"] = "Ajustes por defecto del Panel";
	L["TITAN_PANEL_MENU_TEXTURE_SETTINGS"] = "Skins";
	L["TITAN_PANEL_MENU_FONT"] = "Fuente";
	L["TITAN_PANEL_MENU_LSM_FONTS"] = "Fuentes LibSharedMedia"
	L["TITAN_PANEL_MENU_ENABLED"] = "Activado";
	L["TITAN_PANEL_MENU_DISABLED"] = "Desactivado";
	
	-- localization strings for AceConfigDialog-3.0     
	L["TITAN_PANEL_CONFIG_MAIN_LABEL"] = "Addon de la barra de información. Permite a los usuarios añadir orígenes de datos o plugins lanzadores en un panel de control situado en la parte superior o inferior de la pantalla.";			 
	L["TITAN_TRANS_MENU_TEXT_SHORT"] = "Transparencia";
	L["TITAN_TRANS_MENU_DESC"] = "Ajustar transparencia para las barras Titan y sus tooltips.";		
	L["TITAN_TRANS_MAIN_CONTROL_TITLE"] = "Barra principal";
	L["TITAN_TRANS_AUX_CONTROL_TITLE"] = "Barra auxiliar";
	L["TITAN_TRANS_CONTROL_TITLE_TOOLTIP"] = "Tooltips";		 
	L["TITAN_TRANS_MAIN_BAR_DESC"] = "Establece la transparencia para la barra principal.";
	L["TITAN_TRANS_AUX_BAR_DESC"] = "Establece la transparencia para la barra auxiliar (inferior).";
	L["TITAN_TRANS_TOOLTIP_DESC"] = "Establece la transparencia para los tooltips de varios plugins.";
	L["TITAN_UISCALE_MENU_TEXT"] = "Control del Panel";
	L["TITAN_UISCALE_CONTROL_TITLE_UI"] = "Escala del interface";
	L["TITAN_UISCALE_CONTROL_TITLE_PANEL"] = "Escala del Panel";
	L["TITAN_UISCALE_CONTROL_TITLE_BUTTON"] = "Espaciado de los botones";
	L["TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT"] = "Tamaño de la fuente de los tooltips";
	L["TITAN_UISCALE_TOOLTIP_DISABLE_TEXT"] = "Desactivar tamaño de la fuente de los tooltips";		 
	L["TITAN_UISCALE_MENU_DESC"] = "Controla varios aspectos del interface y el Panel.";
	L["TITAN_UISCALE_SLIDER_DESC"] = "Establece la escala de todo el interface.";
	L["TITAN_UISCALE_PANEL_SLIDER_DESC"] = "Establece la escala para los distintos botones e iconos del Panel.";
	L["TITAN_UISCALE_BUTTON_SLIDER_DESC"] = "Ajusta el espacio entre los plugins del lado izquierdo.";
	L["TITAN_UISCALE_TOOLTIP_SLIDER_DESC"] = "Ajusta la escala de los tooltips de varios plugins.";
	L["TITAN_UISCALE_DISABLE_TOOLTIP_DESC"] = "Desactiva el control de la escala de los tooltips en Titan Panel.";
	L["TITAN_SKINS_MAIN_DESC"] = "Gestiona varios skins para las barras Titan.";
	L["TITAN_SKINS_LIST_TITLE"] = "Lista de skins";
	L["TITAN_SKINS_SET_DESC"] = "Elije que skin quieres para las barras Titan.";
	L["TITAN_SKINS_SET_HEADER"] = "Establece skin del panel";
	L["TITAN_SKINS_NEW_HEADER"] = "Añadir nuevo skin";
	L["TITAN_SKINS_NAME_TITLE"] = "Nombre de skin";
	L["TITAN_SKINS_NAME_DESC"] = "Introduce un nombre para tu nuevo skin.";
	L["TITAN_SKINS_NAME_EXAMPLE"] = "ejemplo: mi skin Titan";
	L["TITAN_SKINS_PATH_TITLE"] = "Ruta del skin";
	L["TITAN_SKINS_PATH_DESC"] = "Introduce la ruta exacta donde están las imágenes para tu skin, como se muestra en el ejemplo y se explica en las 'Notas'.";
	L["TITAN_SKINS_PATH_EXAMPLE"] = "ejemplo: Interface\\AddOns\\Titan\\Artwork\\Custom\\<directorio de mi skin>\\";
	L["TITAN_SKINS_ADD_HEADER"] = "Añadir skin";
	L["TITAN_SKINS_ADD_DESC"] = "Añade un nuevo skin a la lista de skins disponibles para el Panel.";
	L["TITAN_SKINS_REMOVE_HEADER"] = "Eliminar skin";
	L["TITAN_SKINS_REMOVE_DESC"] = "Elije un skin para eliminar de la lista de skins disponibles para el Panel.";
	L["TITAN_SKINS_REMOVE_BUTTON"] = "Eliminar";
	L["TITAN_SKINS_REMOVE_BUTTON_DESC"] = "Elimina el skin selecionado de la lista de skins disponibles para el Panel.";
	L["TITAN_SKINS_NOTES"] = "|cff19ff19Notas:|r Al añadir un nuevo skin, por favor asegurate de que el directorio que contiene tus imágenes personalizadas ha sido creado antes de cargar 'World of Warcraft' y que la ruta introducida corresponde a ese directorio exactamente (las rutas son sensibles a mayúsculas y minúsculas y siempre acaban con el carácter '\\')..";
	L["TITAN_SKINS_RESET_DEFAULTS_TITLE"] = "Resetear lista";
	L["TITAN_SKINS_RESET_DEFAULTS_DESC"] = "Resetea la lista de skins a sus valores por defecto, los skins incluidos de serie.";
	-- /end localization strings for AceConfigDialog-3.0
	
	L["TITAN_AUTOHIDE_TOOLTIP"] = "Activar/Desactivar botón auto-ocultar";
	L["TITAN_AUTOHIDE_MENU_TEXT"] = "Auto-ocultar";
	
	L["TITAN_AMMO_FORMAT"] = "%d";
	L["TITAN_AMMO_BUTTON_LABEL_AMMO"] = "Munición: ";
	L["TITAN_AMMO_BUTTON_LABEL_THROWN"] = "Arrojadiza: ";
	L["TITAN_AMMO_BUTTON_LABEL_AMMO_THROWN"] = "Munición/Arrojadiza: ";
	L["TITAN_AMMO_TOOLTIP"] = "Contador de munición/arrojadiza equipada";
	L["TITAN_AMMO_MENU_TEXT"] = "Munición/Arrojadiza";
	L["TITAN_AMMO_BUTTON_NOAMMO"] = "No hay munición";
	L["TITAN_AMMO_MENU_REFRESH"] = "Actualizar información";
	L["TITAN_AMMO_BULLET_NAME"] = "Mostrar nombre de la munición";
	
	L["TITAN_BAG_FORMAT"] = "%d/%d";
	L["TITAN_BAG_BUTTON_LABEL"] = "Bolsas: ";
	L["TITAN_BAG_TOOLTIP"] = "Uso de bolsas";
	L["TITAN_BAG_TOOLTIP_HINTS"] = "Consejo: Click-Izq. Abre todas las bolsas.";
	L["TITAN_BAG_MENU_TEXT"] = "Bolsas";
	L["TITAN_BAG_USED_SLOTS"] = "Huecos usados";
	L["TITAN_BAG_FREE_SLOTS"] = "Huecos libres";
	L["TITAN_BAG_BACKPACK"] = "Mochila";
	L["TITAN_BAG_MENU_SHOW_USED_SLOTS"] = "Mostrar huecos usados";
	L["TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS"] = "Mostrar huecos libres";
	L["TITAN_BAG_MENU_SHOW_DETAILED"] = "Mostrar tooltip detallado";
	L["TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS"] = "Ignorar bolsas de munición";
	L["TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS"] = "Ignorar bolsas de almas";
	L["TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS"] = "Ignorar bolsas de profesión";
	L["TITAN_BAG_SHARD_BAG_NAMES"] = {"Faltriquera de almas", "Bolsa de tela vil", "Bolsa de tela vil del Núcleo", "Bolsa de las Sombras de ébano", "Faltriquera de almas pequeña", "Caja de almas"};
	L["TITAN_BAG_AMMO_POUCH_NAMES"] = {"munición", "Carcaj", "Bandolera", "pólvora", "lámina"};
	L["TITAN_BAG_PROF_BAG_NAMES"] = {"Faltriquera de tejido mágico encantada","Bolsa de paño rúnico encantada","Bolsa de encantamiento grande","Cartera de encantador","Bolsa fuego de hechizo","Caja de herramientas de hierro vil","Caja de herramientas pesada","Faltriquera de gemas","Bolsa de joyas","Bolsa de minero reforzada","Saco de minero","Cartera de peletero","Bolsa de muchos pellejos","Faltriquera de hierbas","Bolsa de hierbas Cenarion","Cartera de Cenarius","Bolsa Botánica de Mycah"};

	L["TITAN_BGMINIMAP_MENU_TEXT"] = "Campo de Batalla en minimapa"
	L["TITAN_BGMINIMAP_TOOLTIP"] = "Botón Campode Batalla en minimapa"
	
	L["TITAN_CLOCK_TOOLTIP"] = "Reloj";
	L["TITAN_CLOCK_TOOLTIP_VALUE"] = "Ajuste horario: ";
	L["TITAN_CLOCK_TOOLTIP_LOCAL_TIME"] = "Hora local: ";
	L["TITAN_CLOCK_TOOLTIP_SERVER_TIME"] = "Hora del servidor: ";
	L["TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME"] = "Hora del servidor ajustada: ";
	L["TITAN_CLOCK_TOOLTIP_HINT1"] = "Consejo: Click-Izq. ajusta el horario"
	L["TITAN_CLOCK_TOOLTIP_HINT2"] = "y el formato de tiempo 12/24H.";
	L["TITAN_CLOCK_TOOLTIP_HINT3"] = "Sift + Click-Izq. para activar y desactivar el calendario.";
	L["TITAN_CLOCK_CONTROL_TOOLTIP"] = "Ajuste horario: ";
	L["TITAN_CLOCK_CONTROL_TITLE"] = "Ajuste horario";
	L["TITAN_CLOCK_CONTROL_HIGH"] = "+12";
	L["TITAN_CLOCK_CONTROL_LOW"] = "-12";
	L["TITAN_CLOCK_CHECKBUTTON"] = "24H";
	L["TITAN_CLOCK_CHECKBUTTON_TOOLTIP"] = "12H / 24H";
	L["TITAN_CLOCK_MENU_TEXT"] = "Reloj";
	L["TITAN_CLOCK_MENU_LOCAL_TIME"] = "Muestra hora local";
	L["TITAN_CLOCK_MENU_SERVER_TIME"] = "Muestra hora del servidor (S)";
	L["TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME"] = "Muestra hora del servidor ajustada (A)";
	L["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"] = "Mostrar al final a la derecha";
	L["TITAN_CLOCK_MENU_HIDE_GAMETIME"] = "Ocultar botón de calendario";

	
	L["TITAN_COORDS_FORMAT"] = "(%.d, %.d)";
	L["TITAN_COORDS_FORMAT2"] = "(%.1f, %.1f)";
	L["TITAN_COORDS_FORMAT3"] = "(%.2f, %.2f)";
	L["TITAN_COORDS_FORMAT_LABEL"] = "(xx , yy)";
	L["TITAN_COORDS_FORMAT2_LABEL"] = "(xx.x , yy.y)";
	L["TITAN_COORDS_FORMAT3_LABEL"] = "(xx.xx , yy.yy)";
	L["TITAN_COORDS_FORMAT_COORD_LABEL"] = "Formato de coordenadas";
	L["TITAN_COORDS_BUTTON_LABEL"] = "Loc: ";
	L["TITAN_COORDS_TOOLTIP"] = "Localización";
	L["TITAN_COORDS_TOOLTIP_HINTS_1"] = "Consejo: Shift + Click-Izq. para poner la localización";
	L["TITAN_COORDS_TOOLTIP_HINTS_2"] = "en el chat de mensajes.";
	L["TITAN_COORDS_TOOLTIP_ZONE"] = "Zona: ";
	L["TITAN_COORDS_TOOLTIP_SUBZONE"] = "Subzona: ";
	L["TITAN_COORDS_TOOLTIP_PVPINFO"] = "Info PVP: ";
	L["TITAN_COORDS_TOOLTIP_HOMELOCATION"] = "Localización de mi casa";
	L["TITAN_COORDS_TOOLTIP_INN"] = "Posada: ";
	L["TITAN_COORDS_MENU_TEXT"] = "Localización";
	L["TITAN_COORDS_MENU_SHOW_ZONE_ON_PANEL_TEXT"] = "Mostrar texto de zona";
	L["TITAN_COORDS_MENU_SHOW_COORDS_ON_MAP_TEXT"] = "Mostrar coordenadas en el mapamundi";
	L["TITAN_COORDS_MAP_CURSOR_COORDS_TEXT"] = "Cursor(X,Y): %s";
	L["TITAN_COORDS_MAP_PLAYER_COORDS_TEXT"] = "Jugador(X,Y): %s";
	L["TITAN_COORDS_NO_COORDS"] = "Sin Coordenadas";
	L["TITAN_COORDS_MENU_SHOW_LOC_ON_MINIMAP_TEXT"] = "Mostrar coordenadas en el minimapa";

	L["TITAN_FPS_FORMAT"] = "%.1f";
	L["TITAN_FPS_BUTTON_LABEL"] = "FPS: ";
	L["TITAN_FPS_MENU_TEXT"] = "FPS";
	L["TITAN_FPS_TOOLTIP_CURRENT_FPS"] = "FPS actuales: ";
	L["TITAN_FPS_TOOLTIP_AVG_FPS"] = "FPS de nedia: ";
	L["TITAN_FPS_TOOLTIP_MIN_FPS"] = "FPS mínimos: ";
	L["TITAN_FPS_TOOLTIP_MAX_FPS"] = "FPS máximos: ";
	L["TITAN_FPS_TOOLTIP"] = "Imágenes por segundo";
	
	L["TITAN_LATENCY_FORMAT"] = "%d".."ms";
	L["TITAN_LATENCY_BANDWIDTH_FORMAT"] = "%.3f ".."KB/s";
	L["TITAN_LATENCY_BUTTON_LABEL"] = "Latencia: ";
	L["TITAN_LATENCY_TOOLTIP"] = "Estado de red";
	L["TITAN_LATENCY_TOOLTIP_LATENCY"] = "Latencia: ";
	L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN"] = "Ancho de banda entrante: ";
	L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT"] = "Ancho de banda de salida: ";
	L["TITAN_LATENCY_MENU_TEXT"] = "Latencia";
	
	L["TITAN_LOOTTYPE_BUTTON_LABEL"] = "Saqueo: ";
	L["TITAN_LOOTTYPE_FREE_FOR_ALL"] = "Libre para todos";
	L["TITAN_LOOTTYPE_ROUND_ROBIN"] = "Por turnos";
	L["TITAN_LOOTTYPE_MASTER_LOOTER"] = "Maestro despojador";
	L["TITAN_LOOTTYPE_GROUP_LOOT"] = "Botín de grupo";
	L["TITAN_LOOTTYPE_NEED_BEFORE_GREED"] = "Necesidad antes que codicia";
	L["TITAN_LOOTTYPE_TOOLTIP"] = "Tipo de saqueo";
	L["TITAN_LOOTTYPE_MENU_TEXT"] = "Tipo de saqueo";
	L["TITAN_LOOTTYPE_RANDOM_ROLL_LABEL"] = "Tirar dados";
	L["TITAN_LOOTTYPE_TOOLTIP_HINT1"] = "Consejo: Click-Izq. para tirar dados.";
	L["TITAN_LOOTTYPE_TOOLTIP_HINT2"] = "Seleccione el valor de la tirada de dados con el menu de Click-Der.";
	
	L["TITAN_MEMORY_FORMAT"] = "%.3f".."MB";
	L["TITAN_MEMORY_FORMAT_KB"] = "%d".."KB";
	L["TITAN_MEMORY_RATE_FORMAT"] = "%.3f".."KB/s";
	L["TITAN_MEMORY_BUTTON_LABEL"] = "Memoria: ";
	L["TITAN_MEMORY_TOOLTIP"] = "Uso de Memoria";
	L["TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY"] = "Actual: ";
	L["TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY"] = "Inicial: ";
	L["TITAN_MEMORY_TOOLTIP_INCREASING_RATE"] = "Ratio de Incremento: ";
	L["TITAN_MEMORY_KBMB_LABEL"] = "KB/MB";
	
	L["TITAN_MONEY_GOLD"] = "o";
	L["TITAN_MONEY_SILVER"] = "p";
	L["TITAN_MONEY_COPPER"] = "b";
	L["TITAN_MONEY_FORMAT"] = "%d".."o"..", %d".."p"..", %d".."b";
		
	L["TITAN_PERFORMANCE_TOOLTIP"] = "Monitorización";
	L["TITAN_PERFORMANCE_MENU_TEXT"] = "Monitorización";
	L["TITAN_PERFORMANCE_ADDONS"] = "Addon de uso";
	L["TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL"] = "Addon de uso de memoria";
	L["TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL"] = "Formato de memoria";
	L["TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL"] = "Addon de uso de procesador";
	L["TITAN_PERFORMANCE_ADDON_NAME_LABEL"] = "Nombre:";
	L["TITAN_PERFORMANCE_ADDON_USAGE_LABEL"] = "Uso";
	L["TITAN_PERFORMANCE_ADDON_RATE_LABEL"] = "Ratio";
	L["TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL"] = "Uso de memoria total:";
	L["TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL"] = "Uso de procesador total:";
	L["TITAN_PERFORMANCE_MENU_SHOW_FPS"] = "Mostrar FPS";
	L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY"] = "Mostrar latencia";
	L["TITAN_PERFORMANCE_MENU_SHOW_MEMORY"] = "Mostrar nemoria";
	L["TITAN_PERFORMANCE_MENU_SHOW_ADDONS"] = "Mostrar Addon de uso de memoria";
	L["TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE"] = "Mostrar Addon de ratio de uso";
	L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL"] = "Modo de monitorización del procesador";
	L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON"] = "Activar monitorización del procesador ";
	L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF"] = "Desactivar monitorización del procesador ";
	L["TITAN_PERFORMANCE_CONTROL_TOOLTIP"] = "Addons monitorizados: ";
	L["TITAN_PERFORMANCE_CONTROL_TITLE"] = "Addons monitorizados";
	L["TITAN_PERFORMANCE_CONTROL_HIGH"] = "40";
	L["TITAN_PERFORMANCE_CONTROL_LOW"] = "1";
	L["TITAN_PERFORMANCE_TOOLTIP_HINT"] = "Consejo: Click-Izq. para forzar una limpieza de memoria.";

	L["TITAN_XP_FORMAT"] = "%d";
	L["TITAN_XP_PERCENT_FORMAT"] = "%d".." (%.1f%%)";
	L["TITAN_XP_BUTTON_LABEL_XPHR_LEVEL"] = "XP/hr este nivel: ";
	L["TITAN_XP_BUTTON_LABEL_XPHR_SESSION"] = "XP/hr esta sesión: ";
	L["TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL"] = "Tiempo para subir: ";
	L["TITAN_XP_LEVEL_COMPLETE"] = "Nivel completo: ";
	L["TITAN_XP_TOTAL_RESTED"] = "XP bonifcada por descanso: ";
	L["TITAN_XP_XPTOLEVELUP"] = "XP para subir: ";
	L["TITAN_XP_TOOLTIP"] = "INFO XP";
	L["TITAN_XP_TOOLTIP_TOTAL_TIME"] = "Tiempo total jugado: ";
	L["TITAN_XP_TOOLTIP_LEVEL_TIME"] = "Tiempo jugado este nivel: ";
	L["TITAN_XP_TOOLTIP_SESSION_TIME"] = "Tiempo jugado esta sesión: ";
	L["TITAN_XP_TOOLTIP_TOTAL_XP"] = "XP requerida este nivel: ";
	L["TITAN_XP_TOOLTIP_LEVEL_XP"] = "XP ganada este nivel: ";
	L["TITAN_XP_TOOLTIP_TOLEVEL_XP"] = "XP necesaria este nivel: ";
	L["TITAN_XP_TOOLTIP_SESSION_XP"] = "XP ganada esta sesión: ";
	L["TITAN_XP_TOOLTIP_XPHR_LEVEL"] = "XP/hr este nivel: ";
	L["TITAN_XP_TOOLTIP_XPHR_SESSION"] = "XP/hr esta sesión: ";
	L["TITAN_XP_TOOLTIP_TOLEVEL_LEVEL"] = "Tiempo para subir (ratio de nivel): ";
	L["TITAN_XP_TOOLTIP_TOLEVEL_SESSION"] = "Tiempo para subir (ratio de sesión): ";
	L["TITAN_XP_MENU_TEXT"] = "XP";
	L["TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL"] = "Mostrar XP/hr este nivel";
	L["TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION"] = "Mostrar XP/hr esta sesión";
	L["TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP"] = "Mostrar descanso/XP para subir";
	L["TITAN_XP_MENU_SIMPLE_BUTTON_TITLE"] = "Botón";
	L["TITAN_XP_MENU_SIMPLE_BUTTON_RESTED"] = "Mostrar bonus XP por descanso";
	L["TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP"] = "Mostrar XP para subir";
	L["TITAN_XP_MENU_SIMPLE_BUTTON_KILLS"] = "Mostrar muertes estimadas para subir";
	L["TITAN_XP_MENU_RESET_SESSION"] = "Reiniciar sesión";
	L["TITAN_XP_MENU_REFRESH_PLAYED"] = "Actualizar temporizadores";
	L["TITAN_XP_UPDATE_PENDING"] = "Actualizando...";
	L["TITAN_XP_UNKNOWN"] = "Desconocido";
	L["TITAN_XP_KILLS_LABEL"] = "Muertes para subir (a %d XP ganados la última vez): ";
	L["TITAN_XP_KILLS_LABEL_SHORT"] = "Muertes estimadas: ";
	
	L["TITAN_REGEN_MENU_TEXT"] = "Regeneración"
	L["TITAN_REGEN_MENU_TOOLTIP_TITLE"] = "Ratios de regeneración"
	L["TITAN_REGEN_MENU_SHOW2"] = "HP"
	L["TITAN_REGEN_MENU_SHOW3"] = "MP"
	L["TITAN_REGEN_MENU_SHOW4"] = "Como porcentaje"
	L["TITAN_REGEN_BUTTON_TEXT_HP"] = "HP: "
	L["TITAN_REGEN_BUTTON_TEXT_MP"] = " MP: "
	L["TITAN_REGEN_TOOLTIP1"] = "Salud: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	L["TITAN_REGEN_TOOLTIP2"] = "Maná: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
	L["TITAN_REGEN_TOOLTIP3"] = "Mejor regeneración de HP: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	L["TITAN_REGEN_TOOLTIP4"] = "Peor regeneración de HP : \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	L["TITAN_REGEN_TOOLTIP5"] = "Mejor regeneración de MP : \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	L["TITAN_REGEN_TOOLTIP6"] = "Peor regeneración de MP : \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
	L["TITAN_REGEN_TOOLTIP7"] = "Regeneración de MP en último combate: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..GREEN_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE.."%%)";

	--Titan Repair
	L["REPAIR_LOCALE"] = {
		pattern = "^Durabilidad (%d+) / (%d+)$",
		menu = "Reparación",
		tooltip = "Información de durabilidad",
		button = "Durabilidad: ",
		normal = "Coste de reparación (Neutral): ",
		friendly = "Coste de reparación (Amistoso): ",
		honored = "Coste de reparación (Honorable): ",
		revered = "Coste de reparación (Venerado): ",
		exalted = "Coste de reparación (Exaltado): ",
		buttonNormal = "Mostrar neutral",
		buttonFriendly = "Mostrar amistoso (5%)",
		buttonHonored = "Mostrar honorable (10%)",
		buttonRevered = "Mostrar venerado (15%)",
		buttonExalted = "Mostrar exaltado (20%)",
		percentage = "Mostrar como porcentaje",
    itemnames = "Mostrar nombres de objetos",
    mostdamaged = "Mostrar el más dañado",
    showdurabilityframe = "Mostrar tooltip informativo",
		undamaged = "Mostrar objetos sin dañar",
		discount = "Mostrar descuento y objetos",
		nothing = "Nada dañado",
		confirmation = "Â¿Quieres reparar todos los objetos equipados?",
		badmerchant = "Este comerciante no puede reparar. Mostrando entonces los costes de reparación normales.",
		popup = "Mostrar ventana emergente de reparación",
		showinventory = "Calcular daño de inventario",
    WholeScanInProgress = "Escaneando...",
    AutoReplabel = "Auto-reparar",
		AutoRepitemlabel = "Auto reparar todos los objetos",
		ShowRepairCost = "Mostrar coste de reparar",
		ignoreThrown = "Ignorar armas arrojadizas",
	};

	L["TITAN_PLUGINS_MENU_TITLE"] = "Plug-ins";