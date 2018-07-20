-- Gem color table and potential logic data (for future releases)
-- based on an idea derived by the GemHelper addon
-- GemHelper is an addon by Xinhuan @ US Blackrock Alliance (http://wowui.incgamers.com/?p=mod&m=4149)
-- all rights recognised
BonusScanner_Gems = {
-- Crafted Uncommon Quality Gems
{ itemID = "23095", red = 1, yellow = 0, blue = 0, meta = 0 }, --Bold Blood Garnet
{ itemID = "28595", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Blood Garnet
{ itemID = "23113", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Golden Draenite
{ itemID = "23106", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Deep Peridot
{ itemID = "23097", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Blood Garnet
{ itemID = "23105", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Deep Peridot
{ itemID = "23114", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Golden Draenite
{ itemID = "23100", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Flame Spessarite
{ itemID = "23108", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Shadow Draenite
{ itemID = "23098", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Flame Spessarite	
{ itemID = "23104", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Deep Peridot	
{ itemID = "23099", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Flame Spessarite
{ itemID = "23121", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Azure Moonstone
{ itemID = "23101", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Flame Spessarite	
{ itemID = "23103", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Deep Peridot
{ itemID = "23116", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Golden Draenite
{ itemID = "23109", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Shadow Draenite
{ itemID = "23096", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Blood Garnet
{ itemID = "23110", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Shadow Draenite
{ itemID = "28290", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Golden Draenite
{ itemID = "23118", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Azure Moonstone
{ itemID = "23111", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Shadow Draenite
{ itemID = "23119", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Azure Moonstone
{ itemID = "23120", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Azure Moonstone
{ itemID = "23094", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Blood Garnet
{ itemID = "23115", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Golden Draenite
-- Crafted Rare Quality Gems
{ itemID = "24027", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Living Ruby
{ itemID = "24031", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Living Ruby
{ itemID = "24047", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Dawnstone
{ itemID = "24065", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Talasite
{ itemID = "24028", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Living Ruby
{ itemID = "24062", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Talasite
{ itemID = "24036", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Flashing Living Ruby
{ itemID = "24050", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Dawnstone
{ itemID = "24061", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Noble Topaz
{ itemID = "24056", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Nightseye
{ itemID = "24058", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Noble Topaz
{ itemID = "24067", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Talasite
{ itemID = "24060", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Noble Topaz
{ itemID = "24037", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Star of Elune
{ itemID = "24059", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Noble Topaz
{ itemID = "24066", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Talasite
{ itemID = "24051", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Dawnstone
{ itemID = "24057", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Nightseye
{ itemID = "24030", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Living Ruby
{ itemID = "24055", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Nightseye
{ itemID = "24048", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Dawnstone
{ itemID = "24033", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Star of Elune
{ itemID = "24054", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Nightseye
{ itemID = "24035", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Star of Elune
{ itemID = "24039", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Star of Elune
{ itemID = "24032", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Subtle Living Ruby
{ itemID = "24029", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Living Ruby
{ itemID = "24052", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Dawnstone
	-- Crafted Rare Meta Gems
{ itemID = "25897", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Bracing Earthstorm Diamond
{ itemID = "25899", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Brutal Earthstorm Diamond
{ itemID = "25890", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Destructive Skyfire Diamond
{ itemID = "25895", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Enigmatic Skyfire Diamond
{ itemID = "25901", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Insightful Earthstorm Diamond
{ itemID = "25893", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Mystical Skyfire Diamond
{ itemID = "25896", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Powerful Earthstorm Diamond
{ itemID = "25894", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Skyfire Diamond
{ itemID = "25898", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Tenacious Earthstorm Diamond
	-- Enchanter Created
{ itemID = "22460", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Prismatic Sphere
{ itemID = "22459", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Void Sphere
	-- PvP Purchased Rare Meta Gems (Terrokar Spirit Towers)
{ itemID = "28557", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Starfire Diamond
{ itemID = "28556", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Windfire Diamond
	-- PvP Purchased Gems (Nagrand, Halaa)
{ itemID = "27679", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Sublime Mystic Dawnstone
{ itemID = "30598", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Don Amancio's Heart
-- PvP Purchased Epic Gems (Honor Points)
{ itemID = "28362", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Ornate Ruby
{ itemID = "28120", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Ornate Dawnstone
{ itemID = "28363", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Ornate Topaz
{ itemID = "28123", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Ornate Topaz
{ itemID = "28118", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Ornate Ruby
{ itemID = "28119", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Ornate Dawnstone
	-- PvP Puchased Rare Gems (Honor Hold/Thrallmar)
{ itemID = "27809", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Barbed Deep Peridot
{ itemID = "27786", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Barbed Deep Peridot
{ itemID = "28361", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Mighty Blood Garnet
{ itemID = "28360", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Mighty Blood Garnet
{ itemID = "27820", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Notched Deep Peridot
{ itemID = "27785", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Notched Deep Peridot
{ itemID = "27812", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Stark Blood Garnet
{ itemID = "27777", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Stark Blood Garnet
-- Vendor Purchased (Common Gems)
{ itemID = "28458", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Tourmaline
{ itemID = "28462", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Tourmaline
{ itemID = "28466", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Amber
{ itemID = "28459", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Tourmaline
{ itemID = "28469", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Amber
{ itemID = "28465", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Zircon
{ itemID = "28468", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Amber
{ itemID = "28461", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Tourmaline
{ itemID = "28467", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Amber	
{ itemID = "28463", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Zircon	
{ itemID = "28464", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Zircon
{ itemID = "28460", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Tourmaline	
{ itemID = "28470", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Amber	
-- Instance Epic Gem Drops
{ itemID = "30565", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Assassin's Fire Opal
{ itemID = "30601", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Beaming Fire Opal
{ itemID = "30574", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Brutal Tanzanite
{ itemID = "30587", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Champion's Fire Opal
{ itemID = "30566", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Defender's Tanzanite
{ itemID = "30594", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Effulgent Chrysoprase
{ itemID = "30584", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Enscribed Fire Opal
{ itemID = "30559", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Etched Fire Opal
{ itemID = "30600", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Fluorescent Tanzanite		
{ itemID = "30558", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glimmering Fire Opal
{ itemID = "30556", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glinting Fire Opal
{ itemID = "30585", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glistening Fire Opal
{ itemID = "30555", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Glowing Tanzanite
{ itemID = "31116", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Amethyst
{ itemID = "30551", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Infused Fire Opal
{ itemID = "30593", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Iridescent Fire Opal
{ itemID = "30602", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Jagged Chrysoprase
{ itemID = "30606", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Lambent Chrysophrase
{ itemID = "30547", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Luminous Fire Opal
{ itemID = "30548", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Polished Chrysoprase
{ itemID = "30553", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Pristine Fire Opal
{ itemID = "31118", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Pulsing Amethyst
{ itemID = "30608", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Radiant Chrysoprase
{ itemID = "30563", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Regal Tanzanite
{ itemID = "30604", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Resplendent Fire Opal
{ itemID = "30603", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Royal Tanzanite
{ itemID = "30586", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Seer's Chrysoprase
{ itemID = "30549", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Shifting Tanzanite
{ itemID = "30564", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Shining Fire Opal
{ itemID = "31117", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Soothing Amethyst
{ itemID = "30546", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Sovereign Tanzanite
{ itemID = "30607", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Splendid Fire Opal
{ itemID = "30554", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Stalwart Fire Opal
{ itemID = "30592", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Steady Chrysoprase
{ itemID = "30550", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Sundered Chrysoprase
{ itemID = "30583", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Timeless Chrysoprase
{ itemID = "30605", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Vivid Chrysoprase
	
{ itemID = "30552", red = 1, yellow = 0, blue = 1, meta = 0 },  -- Blessed Tanzanite
{ itemID = "30589", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Dazzling Chrysoprase
{ itemID = "30582", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Deadly Fire Opal
{ itemID = "30581", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Durable Fire Opal
{ itemID = "30591", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Empowered Fire Opal
{ itemID = "30590", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Enduring Chrysoprase
{ itemID = "30572", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Imperial Tanzanite
{ itemID = "30573", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Mysterious Fire Opal
{ itemID = "30575", red = 1, yellow = 1, blue = 0, meta = 0 },  -- Nimble Fire Opal
{ itemID = "30588", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Potent Fire Opal
{ itemID = "30560", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Rune Covered Chrysoprase
-- (patch 2.1.1)
{ itemID = "31863", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Nightseye
{ itemID = "31861", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Dawnstone
{ itemID = "31865", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Nightseye
{ itemID = "31867", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Noble Topaz
{ itemID = "31868", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Noble Topaz
{ itemID = "32836", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Purified Shadow Pearl
{ itemID = "32833", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Purified Jaggal Pearl
{ itemID = "32409", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Relentless Earthstorm Diamond
{ itemID = "32410", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Relentless Earthstorm Diamond	
-- (patch 2.1.3)
{ itemID = "24053", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Mystic Dawnstone
{ itemID = "32634", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Unstable Amethyst
{ itemID = "32635", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Unstable Peridot
{ itemID = "32636", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Unstable Sapphire
{ itemID = "32637", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Unstable Citrine	
{ itemID = "32638", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Unstable Topaz
{ itemID = "32639", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Unstable Talasite
{ itemID = "32640", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Potent Unstable Diamond	
{ itemID = "32641", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Imbued Unstable Diamond
-- Epic gem drops in Black Temple/Hyjal
{ itemID = "32193", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bold Crimson Spinel
{ itemID = "32194", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Delicate Crimson Spinel
{ itemID = "32195", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Teardrop Crimson Spinel
{ itemID = "35489", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Teardrop Crimson Spinel
{ itemID = "32196", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Runed Crimson Spinel
{ itemID = "35488", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Runed Crimson Spinel
{ itemID = "32197", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bright Crimson Spinel
{ itemID = "35487", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bright Crimson Spinel
{ itemID = "32198", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Subtle Crimson Spinel
{ itemID = "32199", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Flashing Crimson Spinel
{ itemID = "32200", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Solid Empyrean Sapphire
{ itemID = "32201", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Sparkling Empyrean Sapphire
{ itemID = "32202", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Lustrous Empyrean Sapphire
{ itemID = "32203", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Stormy Empyrean Sapphire
{ itemID = "32204", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Brilliant Lionseye
{ itemID = "32205", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Smooth Lionseye
{ itemID = "32206", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Rigid Lionseye
{ itemID = "32207", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Gleaming Lionseye
{ itemID = "32208", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Thick Lionseye
{ itemID = "32209", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Mystic Lionseye
{ itemID = "32210", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Lionseye
{ itemID = "32211", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Sovereign Shadowsong Amethyst
{ itemID = "32212", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Shifting Shadowsong Amethyst
{ itemID = "32213", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Shadowsong Amethyst
{ itemID = "32214", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Shadowsong Amethyst
{ itemID = "32215", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Glowing Shadowsong Amethyst
{ itemID = "32216", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Royal Shadowsong Amethyst
{ itemID = "32217", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Inscribed Pyrestone
{ itemID = "32218", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Potent Pyrestone
{ itemID = "32219", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Luminous Pyrestone
{ itemID = "32220", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glinting Pyrestone
{ itemID = "32221", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Pyrestone
{ itemID = "32222", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Pyrestone
{ itemID = "32223", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Enduring Seaspray Emerald
{ itemID = "32224", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Radiant Seaspray Emerald
{ itemID = "32225", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Dazzling Seaspray Emerald
{ itemID = "32226", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Jagged Seaspray Emerald
	-- (patch 2.2.0)
{ itemID = "33131", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Crimson Sun
{ itemID = "33133", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Don Julio's Heart
{ itemID = "33134", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Kailee's Rose
{ itemID = "33135", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Falling Star
{ itemID = "33140", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Blood of Ember
{ itemID = "33143", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Stone of Blades
{ itemID = "33144", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Facet of Eternity
{ itemID = "33782", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Steady Talasite
	-- (patch 2.2.2)
{ itemID = "31862", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Shadow Draenite
{ itemID = "31860", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Golden Draenite
{ itemID = "31864", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Shadow Draenite
{ itemID = "31866", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Flame Spessarite
{ itemID = "31869", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Flame Spessarite
-- (patch 2.3.0)
{ itemID = "34220", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Chaotic Skyfire Diamond
{ itemID = "34256", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Charmed Amani Jewel
-- (patch 2.4.0)
{ itemID = "35503", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Ember Skyfire Diamond
{ itemID = "35501", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Eternal Earthstorm Diamond
{ itemID = "35707", red = 1, yellow = 0, blue = 1, meta = 0 }, 	-- Regal Nightseye
{ itemID = "34831", red = 0, yellow = 0, blue = 1, meta = 0 }, 	-- Eye of the Sea
{ itemID = "35758", red = 0, yellow = 1, blue = 1, meta = 0 }, 	-- Steady Seaspray Emerald
{ itemID = "35759", red = 0, yellow = 1, blue = 1, meta = 0 }, 	-- Forceful Seaspray Emerald
{ itemID = "35760", red = 1, yellow = 1, blue = 0, meta = 0 }, 	-- Reckless Pyrestone
{ itemID = "35761", red = 0, yellow = 1, blue = 0, meta = 0 }, 	-- Quick Lionseye
-- (patch 2.4.2)
{ itemID = "37503", red = 1, yellow = 0, blue = 1, meta = 0 }, 	-- Purified Shadowsong Amethyst
{ itemID = "35315", red = 0, yellow = 1, blue = 0, meta = 0 }, 	-- Quick Dawnstone
{ itemID = "35316", red = 1, yellow = 1, blue = 0, meta = 0 }, 	-- Reckless Noble Topaz
{ itemID = "35318", red = 0, yellow = 1, blue = 1, meta = 0 }, 	-- Forceful Talasite
-- WOTLK !
-- Red
{ itemID = "40111", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Cardinal Ruby
{ itemID = "40114", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Cardinal Ruby
{ itemID = "40112", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Cardinal Ruby
{ itemID = "40116", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Flashing Cardinal Ruby
{ itemID = "40117", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Fractured Cardinal Ruby
{ itemID = "34835", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Omar's Gem of POWAH
{ itemID = "40118", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Precise Cardinal Ruby
{ itemID = "40113", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Cardinal Ruby
{ itemID = "40115", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Subtle Cardinal Ruby
{ itemID = "39996", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Scarlet Ruby
{ itemID = "39999", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Scarlet Ruby
{ itemID = "39997", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Scarlet Ruby
{ itemID = "40001", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Flashing Scarlet Ruby
{ itemID = "40002", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Fractured Scarlet Ruby
{ itemID = "40003", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Precise Scarlet Ruby
{ itemID = "40003", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Precise Scarlet Ruby
{ itemID = "39998", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Scarlet Ruby
{ itemID = "40000", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Subtle Scarlet Ruby
{ itemID = "38292", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Test Living Ruby
{ itemID = "39900", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Bloodstone
{ itemID = "39906", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Bloodstone
{ itemID = "39905", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Bloodstone
{ itemID = "39908", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Flashing Bloodstone
{ itemID = "39909", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Fractured Bloodstone
{ itemID = "41432", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Bold Bloodstone
{ itemID = "41433", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Bright Bloodstone
{ itemID = "41434", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Delicate Bloodstone
{ itemID = "41435", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Flashing Bloodstone
{ itemID = "41436", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Fractured Bloodstone
{ itemID = "41437", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Precise Bloodstone
{ itemID = "41438", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Runed Bloodstone
{ itemID = "41439", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Perfect Subtle Bloodstone
{ itemID = "39910", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Precise Bloodstone
{ itemID = "39911", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Bloodstone
{ itemID = "39907", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Subtle Bloodstone
-- Yellow
{ itemID = "40123", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant King's Amber
{ itemID = "40127", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Mystic King's Amber
{ itemID = "40128", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Quick King's Amber
{ itemID = "40125", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid King's Amber
{ itemID = "40124", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth King's Amber
{ itemID = "40126", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick King's Amber
{ itemID = "40012", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Autumn's Glow
{ itemID = "40016", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Mystic Autumn's Glow
{ itemID = "40017", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Quick Autumn's Glow
{ itemID = "40014", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Autumn's Glow
{ itemID = "40013", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Autumn's Glow
{ itemID = "40015", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Autumn's Glow
{ itemID = "39912", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Sun Crystal
{ itemID = "39917", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Mystic Sun Crystal
{ itemID = "41444", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Brilliant Sun Crystal
{ itemID = "41445", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Mystic Sun Crystal
{ itemID = "41446", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Quick Sun Crystal
{ itemID = "41447", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Rigid Sun Crystal
{ itemID = "41448", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Smooth Sun Crystal
{ itemID = "41449", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Perfect Thick Sun Crystal
{ itemID = "39918", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Quick Sun Crystal
{ itemID = "39915", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Sun Crystal 
{ itemID = "39914", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Sun Crystal
{ itemID = "39916", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Sun Crystal
-- Blue
{ itemID = "40121", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Majestic Zircon
{ itemID = "40119", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Majestic Zircon
{ itemID = "40120", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Majestic Zircon
{ itemID = "40122", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Majestic Zircon
{ itemID = "40010", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Sky Sapphire
{ itemID = "37430", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Sky Sapphire
{ itemID = "40008", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Sky Sapphire
{ itemID = "40009", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Sky Sapphire
{ itemID = "40011", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Sky Sapphire
{ itemID = "39927", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Chalcedony
{ itemID = "41440", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Perfect Lustrous Chalcedony
{ itemID = "41441", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Perfect Solid Chalcedony
{ itemID = "41442", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Perfect Sparkling Chalcedony
{ itemID = "41443", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Perfect Stormy Chalcedony
{ itemID = "39919", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Chalcedony
{ itemID = "39920", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Chalcedony
{ itemID = "39932", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Chalcedony
-- Purple
{ itemID = "40136", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Balanced Dreadstone
{ itemID = "40139", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Defender's Dreadstone
{ itemID = "40132", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Dreadstone
{ itemID = "40141", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Guardian's Dreadstone
{ itemID = "40137", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Infused Dreadstone
{ itemID = "40135", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Mysterious Dreadstone
{ itemID = "40140", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Puissant Dreadstone
{ itemID = "40133", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Purified Dreadstone
{ itemID = "40138", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Regal Dreadstone
{ itemID = "40134", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Dreadstone
{ itemID = "40130", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Dreadstone
{ itemID = "40129", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Dreadstone
{ itemID = "40131", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Tenuous Dreadstone
{ itemID = "40029", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Balanced Twilight Opal
{ itemID = "40032", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Defender's Twilight Opal
{ itemID = "40025", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Twilight Opal
{ itemID = "40034", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Guardian's Twilight Opal
{ itemID = "40030", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Infused Twilight Opal
{ itemID = "40028", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Mysterious Twilight Opal
{ itemID = "40033", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Puissant Twilight Opal
{ itemID = "40026", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Purified Twilight Opal
{ itemID = "40031", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Regal Twilight Opal
{ itemID = "40027", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Twilight Opal
{ itemID = "40023", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Twilight Opal
{ itemID = "40022", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Twilight Opal
{ itemID = "40024", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Tenuous Twilight Opal
{ itemID = "39937", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Balanced Shadow Crystal
{ itemID = "39939", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Defender's Shadow Crystal
{ itemID = "39936", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Shadow Crystal
{ itemID = "39940", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Guardian's Shadow Crystal
{ itemID = "39944", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Infused Shadow Crystal
{ itemID = "39945", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Mysterious Shadow Crystal
{ itemID = "41450", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Balanced Shadow Crystal
{ itemID = "41451", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Defender's Shadow Crystal
{ itemID = "41452", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Glowing Shadow Crystal
{ itemID = "41453", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Guardian's Shadow Crystal
{ itemID = "41454", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Infused Shadow Crystal
{ itemID = "41455", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Mysterious Shadow Crystal
{ itemID = "41456", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Puissant Shadow Crystal
{ itemID = "41457", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Purified Shadow Crystal
{ itemID = "41458", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Regal Shadow Crystal
{ itemID = "41459", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Royal Shadow Crystal
{ itemID = "41460", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Shifting Shadow Crystal
{ itemID = "41461", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Sovereign Shadow Crystal
{ itemID = "41462", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Perfect Tenuous Shadow Crystal
{ itemID = "39933", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Puissant Shadow Crystal
{ itemID = "39941", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Purified Shadow Crystal
{ itemID = "39938", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Regal Shadow Crystal
{ itemID = "39943", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Shadow Crystal
{ itemID = "39935", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Shadow Crystal
{ itemID = "39934", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Shadow Crystal
{ itemID = "39942", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Tenuous Shadow Crystal
-- Green
{ itemID = "40175", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Eye of Zul
{ itemID = "40167", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Eye of Zul
{ itemID = "40179", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Energized Eye of Zul
{ itemID = "40169", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Forceful Eye of Zul
{ itemID = "40174", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Intricate Eye of Zul
{ itemID = "40165", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Eye of Zul
{ itemID = "40177", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Lambent Eye of Zul
{ itemID = "40171", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Misty Eye of Zul
{ itemID = "40178", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Opaque Eye of Zul
{ itemID = "40180", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Eye of Zul
{ itemID = "40170", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Seer's Eye of Zul
{ itemID = "40182", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shattered Eye of Zul
{ itemID = "40172", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shining Eye of Zul
{ itemID = "40168", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Steady Eye of Zul
{ itemID = "40176", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Sundered Eye of Zul
{ itemID = "40181", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Tense Eye of Zul
{ itemID = "40164", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Timeless Eye of Zul
{ itemID = "40173", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Turbid Eye of Zul
{ itemID = "40166", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Vivid Eye of Zul
{ itemID = "40094", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Forest Emerald
{ itemID = "40089", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Forest Emerald
{ itemID = "40105", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Energized Forest Emerald
{ itemID = "40091", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Forceful Forest Emerald
{ itemID = "40104", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Intricate Forest Emerald
{ itemID = "40086", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Forest Emerald
{ itemID = "40100", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Lambent Forest Emerald
{ itemID = "40095", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Misty Forest Emerald
{ itemID = "40103", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Opaque Forest Emerald
{ itemID = "40098", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Forest Emerald
{ itemID = "40092", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Seer's Forest Emerald
{ itemID = "40106", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shattered Forest Emerald
{ itemID = "40099", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shining Forest Emerald
{ itemID = "40090", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Steady Forest Emerald
{ itemID = "40096", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Sundered Forest Emerald
{ itemID = "40101", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Tense Forest Emerald
{ itemID = "40232", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Test Dazzling Talasite
{ itemID = "40085", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Timeless Forest Emerald
{ itemID = "40102", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Turbid Forest Emerald
{ itemID = "40088", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Vivid Forest Emerald
{ itemID = "39984", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Dark Jade
{ itemID = "39976", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Dark Jade
{ itemID = "39989", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Energized Dark Jade
{ itemID = "39978", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Forceful Dark Jade
{ itemID = "39983", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Intricate Dark Jade
{ itemID = "39974", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Dark Jade
{ itemID = "39986", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Lambent Dark Jade
{ itemID = "39980", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Misty Dark Jade
{ itemID = "39988", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Opaque Dark Jade
{ itemID = "41463", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Dazzling Dark Jade
{ itemID = "41464", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Enduring Dark Jade
{ itemID = "41465", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Energized Dark Jade
{ itemID = "41466", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Forceful Dark Jade
{ itemID = "41467", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Intricate Dark Jade
{ itemID = "41468", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Jagged Dark Jade
{ itemID = "41469", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Lambent Dark Jade
{ itemID = "41470", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Misty Dark Jade
{ itemID = "41471", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Opaque Dark Jade
{ itemID = "41472", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Radiant Dark Jade
{ itemID = "41473", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Seer's Dark Jade
{ itemID = "41474", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Shattered Dark Jade
{ itemID = "41475", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Shining Dark Jade
{ itemID = "41476", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Steady Dark Jade
{ itemID = "41477", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Sundered Dark Jade
{ itemID = "41478", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Tense Dark Jade
{ itemID = "41479", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Timeless Dark Jade
{ itemID = "41480", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Turbid Dark Jade
{ itemID = "41481", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Perfect Vivid Dark Jade
{ itemID = "39990", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Dark Jade
{ itemID = "39979", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Seer's Dark Jade
{ itemID = "39992", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shattered Dark Jade
{ itemID = "39981", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Shining Dark Jade
{ itemID = "39977", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Steady Dark Jade
{ itemID = "39985", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Sundered Dark Jade
{ itemID = "39991", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Tense Dark Jade
{ itemID = "39968", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Timeless Dark Jade
{ itemID = "39982", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Turbid Dark Jade
{ itemID = "39975", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Vivid Dark Jade
-- Orange
{ itemID = "40162", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Accurate Flawless Ametrine
{ itemID = "40144", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Champion's Flawless Ametrine
{ itemID = "40147", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deadly Flawless Ametrine
{ itemID = "40150", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deft Flawless Ametrine
{ itemID = "40154", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Durable Flawless Ametrine
{ itemID = "40158", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Empowered Flawless Ametrine
{ itemID = "40143", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Etched Flawless Ametrine
{ itemID = "40146", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Fierce Flawless Ametrine
{ itemID = "40161", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glimmering Flawless Ametrine
{ itemID = "40148", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Flawless Ametrine
{ itemID = "40142", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Flawless Ametrine
{ itemID = "40149", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Lucent Flawless Ametrine
{ itemID = "40151", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Flawless Ametrine
{ itemID = "40152", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Flawless Ametrine
{ itemID = "40157", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Pristine Flawless Ametrine
{ itemID = "40155", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Reckless Flawless Ametrine
{ itemID = "40163", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resolute Flawless Ametrine
{ itemID = "40145", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resplendent Flawless Ametrine
{ itemID = "40160", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stalwart Flawless Ametrine
{ itemID = "40159", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stark Flawless Ametrine
{ itemID = "40153", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Veiled Flawless Ametrine
{ itemID = "40156", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Wicked Flawless Ametrine
{ itemID = "40058", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Accurate Monarch Topaz
{ itemID = "40039", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Champion's Monarch Topaz
{ itemID = "40043", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deadly Monarch Topaz
{ itemID = "40046", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deft Monarch Topaz
{ itemID = "40050", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Durable Monarch Topaz
{ itemID = "40054", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Empowered Monarch Topaz
{ itemID = "40038", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Etched Monarch Topaz
{ itemID = "40041", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Fierce Monarch Topaz
{ itemID = "40057", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glimmering Monarch Topaz
{ itemID = "40044", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Monarch Topaz
{ itemID = "40037", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Monarch Topaz
{ itemID = "40045", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Lucent Monarch Topaz
{ itemID = "40047", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Monarch Topaz
{ itemID = "40048", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Monarch Topaz
{ itemID = "40053", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Pristine Monarch Topaz
{ itemID = "40051", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Reckless Monarch Topaz
{ itemID = "40059", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resolute Monarch Topaz
{ itemID = "40040", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resplendent Monarch Topaz
{ itemID = "40056", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stalwart Monarch Topaz
{ itemID = "40055", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stark Monarch Topaz
{ itemID = "40049", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Veiled Monarch Topaz
{ itemID = "40052", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Wicked Monarch Topaz
{ itemID = "39966", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Accurate Huge Citrine
{ itemID = "39949", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Champion's Huge Citrine
{ itemID = "39952", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deadly Huge Citrine
{ itemID = "39955", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Deft Huge Citrine
{ itemID = "39958", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Durable Huge Citrine
{ itemID = "39962", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Empowered Huge Citrine
{ itemID = "39948", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Etched Huge Citrine
{ itemID = "39951", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Fierce Huge Citrine
{ itemID = "39965", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glimmering Huge Citrine
{ itemID = "39953", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Huge Citrine
{ itemID = "39947", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Huge Citrine
{ itemID = "39954", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Lucent Huge Citrine
{ itemID = "39946", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Huge Citrine
{ itemID = "41482", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Accurate Huge Citrine
{ itemID = "41483", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Champion's Huge Citrine
{ itemID = "41484", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Deadly Huge Citrine
{ itemID = "41485", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Deft Huge Citrine
{ itemID = "41486", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Durable Huge Citrine
{ itemID = "41487", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Empowered Huge Citrine
{ itemID = "41488", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Etched Huge Citrine
{ itemID = "41489", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Fierce Huge Citrine
{ itemID = "41490", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Glimmering Huge Citrine
{ itemID = "41491", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Glinting Huge Citrine
{ itemID = "41492", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Inscribed Huge Citrine
{ itemID = "41493", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Lucent Huge Citrine
{ itemID = "41494", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Luminous Huge Citrine
{ itemID = "41495", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Potent Huge Citrine
{ itemID = "41496", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Pristine Huge Citrine
{ itemID = "41497", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Reckless Huge Citrine
{ itemID = "41498", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Resolute Huge Citrine
{ itemID = "41499", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Resplendent Huge Citrine
{ itemID = "41500", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Stalwart Huge Citrine
{ itemID = "41501", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Stark Huge Citrine
{ itemID = "41502", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Veiled Huge Citrine
{ itemID = "41429", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Perfect Wicked Huge Citrine
{ itemID = "39956", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Huge Citrine
{ itemID = "39961", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Pristine Huge Citrine
{ itemID = "39959", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Reckless Huge Citrine
{ itemID = "39967", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resolute Huge Citrine
{ itemID = "39950", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Resplendent Huge Citrine
{ itemID = "39964", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stalwart Huge Citrine
{ itemID = "39963", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Stark Huge Citrine
{ itemID = "39957", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Veiled Huge Citrine
{ itemID = "39960", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Wicked Huge Citrine
-- Meta
{ itemID = "41380", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Austere Earthsiege Diamond
{ itemID = "41389", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Beaming Earthsiege Diamond
{ itemID = "41395", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Bracing Earthsiege Diamond
{ itemID = "41285", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Chaotic Skyflare Diamond
{ itemID = "41307", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Destructive Skyflare Diamond
{ itemID = "41377", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Effulgent Skyflare Diamond
{ itemID = "41333", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Ember Skyflare Diamond
{ itemID = "41335", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Enigmatic Skyflare Diamond
{ itemID = "44081", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Enigmatic Starflare Diamond
{ itemID = "41396", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Eternal Earthsiege Diamond
{ itemID = "41378", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Forlorn Skyflare Diamond
{ itemID = "44084", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Forlorn Starflare Diamond
{ itemID = "41379", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Impassive Skyflare Diamond
{ itemID = "44082", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Impassive Starflare Diamond
{ itemID = "41401", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Insightful Earthsiege Diamond
{ itemID = "41385", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Invigorating Earthsiege Diamond
{ itemID = "44087", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Persistent Earthshatter Diamond
{ itemID = "41381", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Persistent Earthsiege Diamond
{ itemID = "44088", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Powerful Earthshatter Diamond
{ itemID = "41397", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Powerful Earthsiege Diamond
{ itemID = "41398", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Relentless Earthsiege Diamond
{ itemID = "41376", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Revitalizing Skyflare Diamond
{ itemID = "41339", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Skyflare Diamond
{ itemID = "44076", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Starflare Diamond
{ itemID = "41400", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Thundering Skyflare Diamond
{ itemID = "41375", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Tireless Skyflare Diamond
{ itemID = "44078", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Tireless Starflare Diamond
{ itemID = "44089", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Trenchant Earthshatter Diamond
{ itemID = "41382", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Trenchant Earthsiege Diamond
-- Prismatic
{ itemID = "42142", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Bold Dragon's Eye
{ itemID = "36766", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Bright Dragon's Eye
{ itemID = "42148", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Brilliant Dragon's Eye
{ itemID = "42143", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Delicate Dragon's Eye
{ itemID = "42152", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Flashing Dragon's Eye
{ itemID = "42153", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Fractured Dragon's Eye
{ itemID = "42146", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Lustrous Dragon's Eye
{ itemID = "42158", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Mystic Dragon's Eye
{ itemID = "42154", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Precise Dragon's Eye
{ itemID = "42150", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Quick Dragon's Eye
{ itemID = "42156", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Rigid Dragon's Eye
{ itemID = "42144", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Runed Dragon's Eye
{ itemID = "42149", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Smooth Dragon's Eye
{ itemID = "36767", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Solid Dragon's Eye
{ itemID = "42145", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Sparkling Dragon's Eye
{ itemID = "42155", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Stormy Dragon's Eye
{ itemID = "42151", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Subtle Dragon's Eye
{ itemID = "42157", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Thick Dragon's Eye
{ itemID = "34143", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Chromatic Sphere
{ itemID = "42702", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Enchanted Tear
{ itemID = "34142", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Infinite Sphere
{ itemID = "42701", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Enchanted Pearl
};