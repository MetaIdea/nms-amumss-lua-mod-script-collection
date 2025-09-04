-- AUTOMATICALLY RUNS THE SCRIPT USING THE VARIABLES SET BELOW
-- WON'T ASK YOU FOR INPUT IF SET TO true
AUTORUN = false

--------- USER DEFAULTS ---------
--------- USER DEFAULTS ---------
--------- USER DEFAULTS ---------

-- DEFAULT VALUES OF WHICH SETS OF PALETTES TO ADD INTO EACH PALETTE LIST
-- CUSTOM COLOURS ARE ALWAYS ADDED BUT MAY NOT ALL BE USABLE IF VANILLA ONES ARE ADDED
-- 0: Add only Custom Palettes
-- 1: Add Legacy (Decoration), Corvette, and Custom Palettes
-- 2: Add Legacy (Decoration), and Custom Palettes
-- 3: Add Corvette, and Custom Palettes
-- 4: Add Freighter Base, and Custom Palettes
-- 5: Add Basic Parts, and Custom Palettes
-- SELECTING AN OPTION THAT INCLUDES ITSELF WILL STILL ADD ALL THE OTHER SETS IN THAT OPTION
LEGACY				= 0		-- Decorations and most structures, 
BASIC					= 0		-- Basic part structures
FREIGHTERBASE	= 0		-- Freighter Base structures
CORVETTES			= 0		-- Corvette parts

-- REPLACE VANILLA COLOUR PALETTES WITH CUSTOM PALETTES
-- AFFECTS EXISTING TIMBER, ALLOY, STONE, AND SALVAGED STRUCTURE PIECES
REPLACE_VANILLA_PALETTES =
{
	{	
		["PaletteGroup"] = "COLOURS_S",
		-- STONE BASIC PARTS PALETTES
		-- SET YOUR DECISION BELOW
		["Decision"] = false,
	},
	{ 
		["PaletteGroup"] = "COLOURS_F",
		-- ALLOY BASIC PARTS PALETTES
		-- SET YOUR DECISION BELOW
		["Decision"] = false,
	},
	{ 
		["PaletteGroup"] = "COLOURS_T",
		-- TIMBER BASIC PARTS PALETTES
		-- SET YOUR DECISION BELOW
		["Decision"] = false,
	},
	{ 
		["PaletteGroup"] = "COLOURS_B",
		-- SALVAGED BASIC PARTS PALETTES
		-- SET YOUR DECISION BELOW
		["Decision"] = false,
	},
}

--------- USER DEFAULTS ---------
--------- USER DEFAULTS ---------
--------- USER DEFAULTS ---------

-- PRINT DEBUG TEXT
DEBUG_TEXT = false

-- HARD LIMITS THE NUMBER OF CUSTOM PALETTES TO 13
-- KEEPS THE PRE-3.95 PALETTE ALLOCATION PLUS NEW VANILLA PALETTES
-- OVERRIDES YEET_VANILLA_PALETTES
-- DEPRECATED 1.3
-- USE_LEGACY_PALETTE_LIST = false



NEW_COLOURS_HEX =
-- HEX COLOUR VALUES WITHOUT THE HASHTAG
-- FEEL FREE TO ADD A FEW OF YOUR OWN CUSTOM COLOURS
-- COLOURS WILL BE SHOWN TO OTHER PLAYERS IN MULTIPLAYER AS WHITE
-- IF YOU DON'T WANT TO REPLACE ANY VANILLA PALETTES YOU SHOULD PLACE YOUR ENTRIES AT THE TOP OF THE LIST
-- KEEP THE "Name" VALUE UNDER 30 CHARACTERS
-- NOTE: TYPE "&" SYMBOL AS "&amp;"
--[[ CODE EXAMPLE FOR A SINGLE PALETTE
	{
		["PrimaryColour"] = 	"000000",
		["SecondaryColour"] = 	"000000",
		["TernaryColour"] = 	"000000",
		["QuaternaryColour"] = 	"000000",
		["Name"] =				"All Black",
		["Id"] =				"BF_ALLBLACK",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
-- COLOURS ARE IN HEXCODE
]]
{	
	{
		["PrimaryColour"] = 	"000000",
		["SecondaryColour"] = 	"000000",
		["TernaryColour"] = 	"000000",
		["QuaternaryColour"] = 	"000000",
		["Name"] =				"All Black",
		["Id"] =				"BF_ALLBLACK",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"ffffff",
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"ffffff",
		["QuaternaryColour"] = 	"ffffff",
		["Name"] =				"All White",
		["Id"] =				"BF_ALLWHITE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"000000",
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"000000",
		["QuaternaryColour"] = 	"ffffff",
		["Name"] =				"Tai-chi 1",
		["Id"] =				"BF_TAICHI1",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"ffffff",
		["SecondaryColour"] = 	"000000",
		["TernaryColour"] = 	"ffffff",
		["QuaternaryColour"] = 	"000000",
		["Name"] =				"Tai-chi 2",
		["Id"] =				"BF_TAICHI2",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"bbd5bf",
		["SecondaryColour"] = 	"d46738",
		["TernaryColour"] = 	"487473",
		["QuaternaryColour"] = 	"487473",
		["Name"] =				"ArC 1",
		["Id"] =				"BF_ARCONE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" },
		["Display"] = "-1",
	},
	{
		["PrimaryColour"] = 	"f090be",	--331
		["SecondaryColour"] = 	"a4e6f0",
		["TernaryColour"] = 	"a34673",
		["QuaternaryColour"] = 	"659ba3",
		["Name"] =				"Pastel Magenta &amp; Blizzard Blue",
		["Id"] =				"BF_MAG_BLIZ",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F78A83",	--3
		["SecondaryColour"] = 	"F54538",
		["TernaryColour"] = 	"C2372D",
		["QuaternaryColour"] = 	"75211B",
		["Name"] =				"Coral Pink &amp; Red Orange",
		["Id"] =				"BF_CORP_REDOR",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F66420",	--19
		["SecondaryColour"] = 	"F6CB20",
		["TernaryColour"] = 	"D4711C",
		["QuaternaryColour"] = 	"D49D1C",
		["Name"] =				"Crayon Orange &amp; Jonquil",
		["Id"] =				"BF_ORA_JON",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"A5F54E",	--88
		["SecondaryColour"] = 	"EB6BFF",
		["TernaryColour"] = 	"61A814",
		["QuaternaryColour"] = 	"9725A8",
		["Name"] =				"French Lime &amp; Heliotrope",
		["Id"] =				"BF_LIM_HELIO",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"A9F3CC",	--148
		["SecondaryColour"] = 	"A8F29D",
		["TernaryColour"] = 	"B6F0F2",
		["QuaternaryColour"] = 	"B6F0F2",
		["Name"] =				"Magic Mint &amp; Light Green",
		["Id"] =				"BF_MINT_LG",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"2CF6D7",	--170
		["SecondaryColour"] = 	"2C3EF6",
		["TernaryColour"] = 	"26BFD4",
		["QuaternaryColour"] = 	"2663D4",
		["Name"] =				"Turquoise &amp; Palatinate Blue",
		["Id"] =				"BF_TUR_PAL",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"0057b7",	--211
		["SecondaryColour"] = 	"ffd700",
		["TernaryColour"] = 	"ffd700",
		["QuaternaryColour"] = 	"ffd700",
		["Name"] =				"Ukraine Colours",
		["Id"] =				"BF_UKRAINE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"2c65a9",	--212
		["SecondaryColour"] = 	"52ce97",
		["TernaryColour"] = 	"52ce97",
		["QuaternaryColour"] = 	"52ce97",
		["Name"] =				"Lapis &amp; Shamrock",
		["Id"] =				"BF_LAP_SHAM",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"C737FA",	--284
		["SecondaryColour"] = 	"F54198",
		["TernaryColour"] = 	"DE31DB",
		["QuaternaryColour"] = 	"DE31DB",
		["Name"] =				"Psychedelic Purple &amp; Rose",
		["Id"] =				"BF_PSYC_ROSE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F63B3B",	--0
		["SecondaryColour"] = 	"903BF6",
		["TernaryColour"] = 	"D43383",
		["QuaternaryColour"] = 	"A833D4",
		["Name"] =				"Coral Red &amp; Veronica",
		["Id"] =				"BF_COR_VER",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F0A741",	--34
		["SecondaryColour"] = 	"F04647",
		["TernaryColour"] = 	"A36E24",
		["QuaternaryColour"] = 	"A32425",
		["Name"] =				"Yellow Orange &amp; Carmine Pink",
		["Id"] =				"BF_YO_CPINK",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F2ECBF",	--52
		["SecondaryColour"] = 	"F2C6A7",
		["TernaryColour"] = 	"F3DEB5",
		["QuaternaryColour"] = 	"F3DEB5",
		["Name"] =				"Pale Spring Bud &amp; Apricot",
		["Id"] =				"BF_BUD_APRI",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"FFF870",	--57
		["SecondaryColour"] = 	"8A51F0",
		["TernaryColour"] = 	"A39D27",
		["QuaternaryColour"] = 	"4817A3",
		["Name"] =				"Icterine &amp; Lavender Indigo",
		["Id"] =				"BF_ICT_LAV",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"ede91e",	--58
		["SecondaryColour"] = 	"826494",
		["TernaryColour"] = 	"826494",
		["QuaternaryColour"] = 	"826494",
		["Name"] =				"Titanium Yellow &amp; French Lilac",
		["Id"] =				"BF_TIT_LILAC",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"2b651e",	--109
		["SecondaryColour"] = 	"5fc8dc",
		["TernaryColour"] = 	"5fc8dc",
		["QuaternaryColour"] = 	"5fc8dc",
		["Name"] =				"Dark Green &amp; Middle Blue",
		["Id"] =				"BF_DG_MIDB",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"3DF656",	--128
		["SecondaryColour"] = 	"F6EA3D",
		["TernaryColour"] = 	"52D435",
		["QuaternaryColour"] = 	"C1D435",
		["Name"] =				"Erin &amp; Dandelion",
		["Id"] =				"BF_ERIN_DAN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"48C25A",	--128
		["SecondaryColour"] = 	"44784C",
		["TernaryColour"] = 	"A5F7B1",
		["QuaternaryColour"] = 	"2B7536",
		["Name"] =				"Bice &amp; Fern Green",
		["Id"] =				"BF_BICE_FERN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"69CFFF",	--199
		["SecondaryColour"] = 	"F5A84C",
		["TernaryColour"] = 	"237EA8",
		["QuaternaryColour"] = 	"A86413",
		["Name"] =				"Light Sky Blue &amp; Yellow Orange",
		["Id"] =				"BF_SKY_YELORA",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"C1E7FA",	--199
		["SecondaryColour"] = 	"D8C1FA",
		["TernaryColour"] = 	"ABBFDE",
		["QuaternaryColour"] = 	"B2ABDE",
		["Name"] =				"Uranian Blue &amp; Pale Lavender",
		["Id"] =				"BF_URAN_LAV",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"BAD6F5",	--211
		["SecondaryColour"] = 	"AEF4F5",
		["TernaryColour"] = 	"C9C6F5",
		["QuaternaryColour"] = 	"C9C6F5",
		["Name"] =				"Cornflower &amp; Pale Blue",
		["Id"] =				"BF_CORN_BLUE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"73A1F5",	--218
		["SecondaryColour"] = 	"CA5BF5",
		["TernaryColour"] = 	"5874A8",
		["QuaternaryColour"] = 	"8836A8",
		["Name"] =				"Vista Blue &amp; Medium Orchid",
		["Id"] =				"BF_VISB_ORC",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"8146b3",	--272
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"8146b3",
		["QuaternaryColour"] = 	"8146b3",
		["Name"] =				"Medium Violet &amp; White",
		["Id"] =				"BF_MVIO_WHI",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"E1BDF5",	--278
		["SecondaryColour"] = 	"B7B0F5",
		["TernaryColour"] = 	"F5C9E5",
		["QuaternaryColour"] = 	"F5C9E5",
		["Name"] =				"Electric Lav &amp; Max Blurple",
		["Id"] =				"BF_LAV_BLUP",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"ff0000",
		["SecondaryColour"] = 	"ff0000",
		["TernaryColour"] = 	"ff0000",
		["QuaternaryColour"] = 	"ff0000",
		["Name"] =				"All Red",
		["Id"] =				"BF_ALLRED",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"00ff00",
		["SecondaryColour"] = 	"00ff00",
		["TernaryColour"] = 	"00ff00",
		["QuaternaryColour"] = 	"00ff00",
		["Name"] =				"All Green",
		["Id"] =				"BF_ALLGREEN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"0000ff",
		["SecondaryColour"] = 	"0000ff",
		["TernaryColour"] = 	"0000ff",
		["QuaternaryColour"] = 	"0000ff",
		["Name"] =				"All Blue",
		["Id"] =				"BF_ALLBLUE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"d46738",
		["SecondaryColour"] = 	"bbd5bf",
		["TernaryColour"] = 	"487473",
		["QuaternaryColour"] = 	"487473",
		["Name"] =				"ArC 2",
		["Id"] =				"BF_ARCTWO",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"05445E",
		["SecondaryColour"] = 	"75E6DA",
		["TernaryColour"] = 	"189AB4",
		["QuaternaryColour"] = 	"D4F1F4",
		["Name"] =				"Summer Splash",
		["Id"] =				"BF_NEW1",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"145DA0",
		["SecondaryColour"] = 	"0C2D48",
		["TernaryColour"] = 	"2E8BC0",
		["QuaternaryColour"] = 	"B1D4E0",
		["Name"] =				"Mermaid Lagoon",
		["Id"] =				"BF_NEW2",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"3D550C",
		["SecondaryColour"] = 	"ECF87F",
		["TernaryColour"] = 	"81B622",
		["QuaternaryColour"] = 	"59981A",
		["Name"] =				"Healthy Leaves",
		["Id"] =				"BF_NEW3",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"EEB5EB",
		["SecondaryColour"] = 	"C8F4F9",
		["TernaryColour"] = 	"C26DBC",
		["QuaternaryColour"] = 	"3CACAE",
		["Name"] =				"Icy Gradient",
		["Id"] =				"BF_NEW4",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"F2C5E0",
		["SecondaryColour"] = 	"D43790",
		["TernaryColour"] = 	"EC8FD0",
		["QuaternaryColour"] = 	"870A30",
		["Name"] =				"Petal Party",
		["Id"] =				"BF_NEW7",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"0A7029",
		["SecondaryColour"] = 	"FEDE00",
		["TernaryColour"] = 	"C8DF52",
		["QuaternaryColour"] = 	"DBE8D8",
		["Name"] =				"Cheeky Marguerita",
		["Id"] =				"BF_NEW8",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"4297A0",
		["SecondaryColour"] = 	"E57F84",
		["TernaryColour"] = 	"F4EAE6",
		["QuaternaryColour"] = 	"2F5061",
		["Name"] =				"San Francisco Clouded",
		["Id"] =				"BF_NEW9",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"FFC2C7",
		["SecondaryColour"] = 	"B6E5D8",
		["TernaryColour"] = 	"FBE5C8",
		["QuaternaryColour"] = 	"8FDDE7",
		["Name"] =				"Afternoon Sinkers",
		["Id"] =				"BF_NEW10",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"BBE7FE",
		["SecondaryColour"] = 	"D3B5E5",
		["TernaryColour"] = 	"FFD4DB",
		["QuaternaryColour"] = 	"EFF1DB",
		["Name"] =				"Easter Egg Nest",
		["Id"] =				"BF_NEW11",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"C4DBE0",
		["SecondaryColour"] = 	"2EB5E0",
		["TernaryColour"] = 	"00A8A8",
		["QuaternaryColour"] = 	"0C6980",
		["Name"] =				"In the Blue",
		["Id"] =				"BF_NEW12",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"5BB0BA",
		["SecondaryColour"] = 	"C15B78",
		["TernaryColour"] = 	"EBF5F7",
		["QuaternaryColour"] = 	"F6C8CC",
		["Name"] =				"Melted Ice Cream",
		["Id"] =				"BF_NEW14",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"54627B",
		["SecondaryColour"] = 	"ECD5BB",
		["TernaryColour"] = 	"FFFFFF",
		["QuaternaryColour"] = 	"710117",
		["Name"] =				"Lake View",
		["Id"] =				"BF_NEW15",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"15B5B0",
		["SecondaryColour"] = 	"F9BDC0",
		["TernaryColour"] = 	"FBE698",
		["QuaternaryColour"] = 	"6DECE0",
		["Name"] =				"Bubbly Banana",
		["Id"] =				"BF_NEW16",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"BA0F30",
		["SecondaryColour"] = 	"2F2440",
		["TernaryColour"] = 	"C6B79B",
		["QuaternaryColour"] = 	"FF2511",
		["Name"] =				"Red Beanie",
		["Id"] =				"BF_NEW17",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"FF8370",
		["SecondaryColour"] = 	"00B1B0",
		["TernaryColour"] = 	"FEC84D",
		["QuaternaryColour"] = 	"E42256",
		["Name"] =				"Apple Shine",
		["Id"] =				"BF_NEW18",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"39918C",
		["SecondaryColour"] = 	"2F435A",
		["TernaryColour"] = 	"D0B49F",
		["QuaternaryColour"] = 	"AB6B51",
		["Name"] =				"Coffee Run",
		["Id"] =				"BF_NEW19",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"DC4731",
		["SecondaryColour"] = 	"FFF3D9",
		["TernaryColour"] = 	"B8390E",
		["QuaternaryColour"] = 	"3B0918",
		["Name"] =				"Pomegranate Crush",
		["Id"] =				"BF_NEW20",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"774A62",
		["SecondaryColour"] = 	"FBD2C9",
		["TernaryColour"] = 	"313E61",
		["QuaternaryColour"] = 	"81ABBC",
		["Name"] =				"Fresh Blankets",
		["Id"] =				"BF_NEW21",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"FEDE00",
		["SecondaryColour"] = 	"B4F8C8",
		["TernaryColour"] = 	"6AB8EE",
		["QuaternaryColour"] = 	"A8D9F8",
		["Name"] =				"Thirst Quencher",
		["Id"] =				"BF_NEW22",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"DBA40E",
		["SecondaryColour"] = 	"4B5A20",
		["TernaryColour"] = 	"787D12",
		["QuaternaryColour"] = 	"7E6E13",
		["Name"] =				"Trees During Fall",
		["Id"] =				"BF_NEW23",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"5E376D",
		["SecondaryColour"] = 	"BD97CB",
		["TernaryColour"] = 	"F3EAC0",
		["QuaternaryColour"] = 	"747080",
		["Name"] =				"Ivy Swipe",
		["Id"] =				"BF_NEW24",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
	{
		["PrimaryColour"] = 	"391306",
		["SecondaryColour"] = 	"F1CED4",
		["TernaryColour"] = 	"710019",
		["QuaternaryColour"] = 	"F9CCD3",
		["Name"] =				"Cherry Blossom",
		["Id"] =				"BF_NEW25",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B", "FREIGHTERBASE", "BIGGS" }
	},
}

VANILLA_PALETTE_IDS =
-- VANILLA PALETTE IDS TO BE ADDED TO OTHER PALETTE GROUPS
{
	["LEGACY"] = 
	{
		["Group"] = "LEGACY",
		["Palettes"] =
		{
			"LEGACY1",
			"LEGACY2",
			"LEGACY3",
			"LEGACY4",
			"LEGACY5",
			"LEGACY6",
			"LEGACY7",
			"LEGACY8",
			"LEGACY9",
			"LEGACY10",
			"LEGACY11",
			"LEGACY12",
			"LEGACY13",
			"LEGACY14",
			"LEGACY15",
			"LEGACY16",
		},
		["Yeet"] = false,
	},
	["COLOURS_S"] =
	{
		["Group"] = "COLOURS_S",
		["Palettes"] =
		{
			"STONENATURAL1",
			"STONENATURAL2",
			"STONENATURAL3",
			"STONENATURAL4",
			"STONEBLUE1",
			"STONEBLUE2",
			"STONEBLUE3",
			"STONEGREEN1",
			"STONEGREEN2",
			"STONEGREEN3",
			"STONEROYAL1",
		},
		["Yeet"] = false,
	},
	["COLOURS_B"] =
	{
		["Group"] = "COLOURS_B",
		["Palettes"] =
		{
			"BUILDERS1",
			"BUILDERS2",
			"BUILDERS3",
			"BUILDERS4",
			"BUILDERS5",
			"BUILDERS6",
			"BUILDERS7",
			"BUILDERS8",
		},
		["Yeet"] = false,
	},
	["COLOURS_F"] =
	{
		["Group"] = "COLOURS_F",
		["Palettes"] =
		{
			"FIBREGLASS1",
			"FIBREGLASS2",
			"FIBREGLASS3",
			"FIBREGLASS4",
			"FIBREGLASS5",
			"FIBREGLASS6",
			"FIBREGLASS7",
			"FIBREGLASS8",
		},
		["Yeet"] = false,
	},
	["COLOURS_T"] =
	{
		["Group"] = "COLOURS_T",
		["Palettes"] =
		{
			"TIMBERBASIC1",
			"TIMBERBASIC2",
			"TIMBERBASIC3",
			"TIMBERBASIC4",
			"TIMBERSTAINED1",
			"TIMBERSTAINED2",
			"TIMBERSTAINED3",
			"TIMBERSTAINED4",
			"TIMBERROYAL1",
		},
		["Yeet"] = false,
	},
	["FREIGHTERBASE"] =
	{
		["Group"] = "FREIGHTERBASE",
		["Palettes"] =
		{
			"FREIGHTERBASE0",
			"FREIGHTERBASE1",
			"FREIGHTERBASE2",
			"FREIGHTERBASE3",
			"FREIGHTERBASE4",
			"FREIGHTERBASE5",
			"FREIGHTERBASE6",
			"FREIGHTERBASE7",
			"FREIGHTERBASE8",
			"FREIGHTERBASE9",
			"FREIGHTERBASE10",
			"FREIGHTERBASE11",
			"FREIGHTERBASE12",
			"FREIGHTERBASE13",
			"FREIGHTERBASE14",
			"FREIGHTERBASE15",
		},
		["Yeet"] = false,
	},
	["BIGGS"] =
	{
		["Group"] = "BIGGS",
		["Palettes"] =
		{
			"BIGGS0",
			"BIGGS1",
			"BIGGS2",
			"BIGGS3",
			"BIGGS4",
			"BIGGS5",
			"BIGGS6",
			"BIGGS7",
			"BIGGS8",
			"BIGGS9",
			"BIGGS10",
			"BIGGS11",
			"BIGGS12",
			"BIGGS13",
			"BIGGS14",
			"BIGGS15",
		},
		["Yeet"] = false,
	},
}

HIDDEN_PALETTE_IDS =
{
	"FLAGS1",
	"FLAGS2",
	"FLAGS3",
	"FLAGS4",
	"FLAGS5",
	"FLAGS6",
	"FIBREGLASSC1",
	"FIBREGLASSC2",
	"FIBREGLASSC3",
	"FIBREGLASSC4",
	"FIBREGLASSC5",
	"FIBREGLASSC6",
	"FIBREGLASSC7",
	"FIBREGLASSC8",
	"FIBREGLASSB1",
	"FIBREGLASSB2",
	"FIBREGLASSB3",
	"FIBREGLASSB4",
	"FIBREGLASSB5",
	"FIBREGLASSB6",
	"FIBREGLASSB7",
	"FIBREGLASSB8",
	"BUILDERSB1",
	"BUILDERSB2",
	"BUILDERSB3",
	"BUILDERSB4",
	"BUILDERSB5",
	"BUILDERSB6",
	"BUILDERSB7",
	"BUILDERSB8",
}

PALETTE_QUAD = {"PrimaryColour", "SecondaryColour", "TernaryColour", "QuaternaryColour"}

RGB = {"R", "G", "B"}

-- OPTIONS FOR PALETTE SETS TO BE ADDED INTO INDIVIDUAL PALETTE LISTS
PALETTE_ADD_SETS =
{
	{""},
	{"LEGACY", "BIGGS"},
	{"LEGACY"},
	{"BIGGS"},
	{"FREIGHTERBASE"},
	{"COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B"},
}

USERINPUT_DICT =
{
	{1,4,5,6,1,1},
	{1,2,3,4,5,6},
	{1,2,3,4,6,1},
	{1,3,5,6,1,1},
}

-- GUIF PROMPTS, DECISIONS, AND THE PALETTES EACH PROMPT ADD TO
USER_INPUT_LOOPS=
{
	{
		["Module"] = 0,
		["Affect"] = {"LEGACY"},
		["Prompt"] = { LEGACY,
[[Which Palettes do you want to add into the LEGACY Palette List?
This will affect most decorations and planetary structures.
0: Add only Custom Palettes
1: Add Corvette, and Custom Palettes
2: Add Freighter Base, and Custom Palettes
3: Add Basic Parts, and Custom Palettes
Default:]] .. tostring(LEGACY) .. [[ 
]]},
		["Prompt_Yeet"] = { LEGACY,
[[Which Palettes do you want to add into the LEGACY Palette List?
This will affect most decorations and planetary structures.
0: Add only Custom Palettes
1: Add Corvette, and Custom Palettes
2: Add Freighter Base, and Custom Palettes
Default:]] .. tostring(LEGACY) .. [[ 
]]},
	},
	{
		["Module"] = 0,
		["Affect"] = {"COLOURS_S", "COLOURS_F", "COLOURS_T", "COLOURS_B"},
		["Prompt"] = { BASIC,
[[Which Palettes do you want to add into the BASIC PARTS Palette List?
This will affect all Basic Part structures and Flags.
0: Add only Custom Palettes
1: Add Legacy (Decoration), Corvette, and Custom Palettes
2: Add Legacy (Decoration), and Custom Palettes
3: Add Corvette, and Custom Palettes
4: Add Freighter Base, and Custom Palettes
5: Add All other Basic Parts, and Custom Palettes
Default:]] .. tostring(BASIC) .. [[ 
]]},
		["Prompt_Yeet"] = { BASIC,
[[Which Palettes do you want to add into the BASIC PARTS Palette List?
This will affect all Basic Part structures and Flags.
0: Add only Custom Palettes
1: Add Legacy (Decoration), Corvette, and Custom Palettes
2: Add Legacy (Decoration), and Custom Palettes
3: Add Corvette, and Custom Palettes
4: Add Freighter Base, and Custom Palettes
Default:]] .. tostring(BASIC) .. [[ 
]]},
	},
	{
		["Module"] = 0,
		["Affect"] = {"FREIGHTERBASE"},
		["Prompt"] = { FREIGHTERBASE,
[[Which Palettes do you want to add into the FREIGHTER BASE Palette List?
This will affect all Freighter Base Parts.
0: Add only Custom Palettes
1: Add Legacy (Decoration), Corvette, and Custom Palettes
2: Add Legacy (Decoration), and Custom Palettes
3: Add Corvette, and Custom Palettes
4: Add Basic Parts, and Custom Palettes
Default:]] .. tostring(FREIGHTERBASE) .. [[ 
]]},
		["Prompt_Yeet"] = { FREIGHTERBASE,
[[Which Palettes do you want to add into the FREIGHTER BASE Palette List?
This will affect all Freighter Base Parts.
0: Add only Custom Palettes
1: Add Legacy (Decoration), Corvette, and Custom Palettes
2: Add Legacy (Decoration), and Custom Palettes
3: Add Corvette, and Custom Palettes
Default:]] .. tostring(FREIGHTERBASE) .. [[ 
]]},
	},
	{
		["Module"] = 0,
		["Affect"] = {"BIGGS"},
		["Prompt"] = { CORVETTES,
[[Which Palettes do you want to add into the CORVETTE Palette List?
This will affect all Corvette Parts.
0: Add only Custom Palettes
1: Add Legacy (Decoration), and Custom Palettes
2: Add Freighter Base, and Custom Palettes
3: Add Basic Parts, and Custom Palettes
Default:]] .. tostring(CORVETTES) .. [[ 
]]},
		["Prompt_Yeet"] = { CORVETTES,
[[Which Palettes do you want to add into the CORVETTE Palette List?
This will affect all Corvette Parts.
0: Add only Custom Palettes
1: Add Legacy (Decoration), and Custom Palettes
2: Add Freighter Base, and Custom Palettes
Default:]] .. tostring(CORVETTES) .. [[ 
]]},
	},
}

REPLACE_VANILLA_PALETTES_GUIF =
{
	["COLOURS_S"] = [[Do you want to replace STONE BASIC PARTS PALETTES?
All existing Stone Basic Parts will be affected.
It will also allow ]] .. #VANILLA_PALETTE_IDS["COLOURS_S"]["Palettes"] .. [[ Custom Palettes to be added.
]],
	["COLOURS_F"] = [[Do you want to replace ALLOY BASIC PARTS PALETTES?
All existing Alloy Basic Parts will be affected.
It will also allow ]] .. #VANILLA_PALETTE_IDS["COLOURS_F"]["Palettes"] .. [[ Custom Palettes to be added.
]],
	["COLOURS_T"] = [[Do you want to replace TIMBER BASIC PARTS PALETTES?
All existing Timber Basic Parts will be affected.
It will also allow ]] .. #VANILLA_PALETTE_IDS["COLOURS_T"]["Palettes"] .. [[ Custom Palettes to be added.
]],
	["COLOURS_B"] = [[Do you want to replace SALVAGED BASIC PARTS PALETTES?
All existing Salvaged Basic Parts will be affected.
It will also allow ]] .. #VANILLA_PALETTE_IDS["COLOURS_B"]["Palettes"] .. [[ Custom Palettes to be added.
]],
}

YEET_PALETTE_TOTAL = 0
YEET_PROMPT_DEFAULT_DISPLAY = ""

-- NUMBER OF CURRENT VANILLA PALETTES
CURRENT_VANILLA_COLOUR = 0
for _i,j in pairs(VANILLA_PALETTE_IDS) do
	CURRENT_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR + #j["Palettes"]
	if j["Yeet"] then
		YEET_PALETTE_TOTAL = YEET_PALETTE_TOTAL + #j["Palettes"]
	end	
end

print([[SACS - Total vanilla palette amount: ]] .. CURRENT_VANILLA_COLOUR .. [[ 
]] .. tostring(128 - CURRENT_VANILLA_COLOUR) .. [[ custom palettes can be added without removing vanilla palettes]])

CURRENT_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR + #HIDDEN_PALETTE_IDS

-- MULTIPLIER TO THE HEIGHT OF THE COLOUR PALETTE SELECTRION WINDOW
-- MODIFY WITH CARE
-- UI_HEIGHT_MULTIPLIER = "2.85"
UI_HEIGHT_MULTIPLIER = "2.85"


-- NUMBER OF CURRENT VANILLA UI PALLETE SLOTS
-- ONLY EDIT UPON VANILLA UI UPDATES
-- VANILLA_UI_SLOTS = 25

-- HARDCODED NUMBER OF MAXIMUM SLOTS
-- DO NOT ALTER
-- PALETTE_SLOTS_LIMIT = 98
PALETTE_SLOTS_LIMIT = 79

-- NUMBER OF MAXIMUM PALETTE SLOTS PER LINE DICTATED BY UI FILES
-- DO NOT ALTER
UI_SINGLE_LINE = 8

-- SUB CANVAS EXTRA UI HEIGHT
-- DO NOT ALTER
UI_OUTER_SPACING = "13"

-- NUMBER OF PALETTES ADDED WITH YEET_VANILLA_PALETTES TRUE PRE-3.95
-- DO NOT ALTER
LEGACY_INJECT_AMOUNT = 13

-- EXML DATA BLOCKS
COLOUR_START =  [[
		<!--BuildFrame-->
			<Property name="Children" value="GcNGuiSpacingData">
        <Property value="GcNGuiSpacingData">
          <Property name="ElementData" value="GcNGuiElementData">
            <Property name="ID" value="" />
            <Property name="Is Hidden" value="False" />
            <Property name="IgnoreInput" value="False" />
            <Property name="Editor Visible" value="GcNGuiEditorVisibility">
              <Property name="EditorVisibility" value="UseData" />
            </Property>
            <Property name="ForcedStyle" value="TkNGuiForcedStyle">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="Position X" value="0" />
              <Property name="Position Y" value="0" />
              <Property name="Width" value="50" />
              <Property name="Height" value="6" />
              <Property name="Constrain Aspect" value="1" />
              <Property name="Max Width" value="0" />
              <Property name="Align" value="TkNGuiAlignment">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="Width Percentage" value="False" />
              <Property name="Height Percentage" value="False" />
              <Property name="Constrain Proportions" value="False" />
              <Property name="Force Aspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
			<Property name="Children" value="GcNGuiSpacingData">
        <Property value="GcNGuiSpacingData">
          <Property name="ElementData" value="GcNGuiElementData">
            <Property name="ID" value="" />
            <Property name="Is Hidden" value="False" />
            <Property name="IgnoreInput" value="False" />
            <Property name="Editor Visible" value="GcNGuiEditorVisibility">
              <Property name="EditorVisibility" value="UseData" />
            </Property>
            <Property name="ForcedStyle" value="TkNGuiForcedStyle">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="Position X" value="0" />
              <Property name="Position Y" value="0" />
              <Property name="Width" value="0" />
              <Property name="Height" value="5" />
              <Property name="Constrain Aspect" value="1" />
              <Property name="Max Width" value="0" />
              <Property name="Align" value="TkNGuiAlignment">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="Width Percentage" value="False" />
              <Property name="Height Percentage" value="False" />
              <Property name="Constrain Proportions" value="False" />
              <Property name="Force Aspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
SPACING = [[
			<Property name="Children" value="GcNGuiSpacingData">
        <Property value="GcNGuiSpacingData">
          <Property name="ElementData" value="GcNGuiElementData">
            <Property name="ID" value="" />
            <Property name="Is Hidden" value="False" />
            <Property name="IgnoreInput" value="False" />
            <Property name="Editor Visible" value="GcNGuiEditorVisibility">
              <Property name="EditorVisibility" value="UseData" />
            </Property>
            <Property name="ForcedStyle" value="TkNGuiForcedStyle">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="Position X" value="0" />
              <Property name="Position Y" value="0" />
              <Property name="Width" value="5" />
              <Property name="Height" value="50" />
              <Property name="Constrain Aspect" value="1" />
              <Property name="Max Width" value="0" />
              <Property name="Align" value="TkNGuiAlignment">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="Width Percentage" value="False" />
              <Property name="Height Percentage" value="False" />
              <Property name="Constrain Proportions" value="False" />
              <Property name="Force Aspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="True" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
LINE_BREAK = [[
			<Property name="Children" value="GcNGuiSpacingData">
        <Property value="GcNGuiSpacingData">
          <Property name="ElementData" value="GcNGuiElementData">
            <Property name="ID" value="THIS ONE" />
            <Property name="Is Hidden" value="False" />
            <Property name="IgnoreInput" value="False" />
            <Property name="Editor Visible" value="GcNGuiEditorVisibility">
              <Property name="EditorVisibility" value="UseData" />
            </Property>
            <Property name="ForcedStyle" value="TkNGuiForcedStyle">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="Position X" value="0" />
              <Property name="Position Y" value="0" />
              <Property name="Width" value="7" />
              <Property name="Height" value="4" />
              <Property name="Constrain Aspect" value="1" />
              <Property name="Max Width" value="0" />
              <Property name="Align" value="TkNGuiAlignment">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="Width Percentage" value="False" />
              <Property name="Height Percentage" value="False" />
              <Property name="Constrain Proportions" value="False" />
              <Property name="Force Aspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
			<Property name="Children" value="GcNGuiSpacingData">
        <Property value="GcNGuiSpacingData">
          <Property name="ElementData" value="GcNGuiElementData">
            <Property name="ID" value="" />
            <Property name="Is Hidden" value="False" />
            <Property name="IgnoreInput" value="False" />
            <Property name="Editor Visible" value="GcNGuiEditorVisibility">
              <Property name="EditorVisibility" value="UseData" />
            </Property>
            <Property name="ForcedStyle" value="TkNGuiForcedStyle">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="Position X" value="0" />
              <Property name="Position Y" value="0" />
              <Property name="Width" value="0" />
              <Property name="Height" value="12" />
              <Property name="Constrain Aspect" value="1" />
              <Property name="Max Width" value="0" />
              <Property name="Align" value="TkNGuiAlignment">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="Width Percentage" value="False" />
              <Property name="Height Percentage" value="False" />
              <Property name="Constrain Proportions" value="False" />
              <Property name="Force Aspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
]]

-- FORCES ALL BASE OBJECT TO USE THE NOW-UNIFIED LEGACY PALETTE GROUP
--[[PALETTE_GROUP_REPLACEMENT =
	{
		-- ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry"},
		-- ["VALUE_MATCH_OPTIONS"] = "~=",
		-- ["VALUE_MATCH"] = ".+",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = 
		{
			{"ColourPaletteGroupId", "LEGACY"}
		}
	}

DEFAULT_PALETTE_REPLACEMENT =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = 
		{
			{"DefaultColourPaletteId", "LEGACY1"}
		}
	}]]

-- TRUNCATION
function trunc(x)
	return math.modf(x*1000)/1000
end

function GetBaseBuildingPalette(PRIMARY, SECONDARY, TERNARY, QUATERNARY, NAME, ID, DISPLAY, REPLACE)
local EXPORT = {}
table.insert(EXPORT, [[
    <Property value="GcBaseBuildingPalette"]])
if REPLACE ~= "" then table.insert(EXPORT, [[ _id="]] .. REPLACE .. [["]]) end
if DISPLAY then table.insert(EXPORT, [[ _display="WTP"]]) end
table.insert(EXPORT, [[>]])
table.insert(EXPORT, [[
      <Property name="PrimaryColour" value="Colour">
        <Property name="R" value="]] .. PRIMARY["R"] .. [[" />
        <Property name="G" value="]] .. PRIMARY["G"] .. [[" />
        <Property name="B" value="]] .. PRIMARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SecondaryColour" value="Colour">
        <Property name="R" value="]] .. SECONDARY["R"] .. [[" />
        <Property name="G" value="]] .. SECONDARY["G"] .. [[" />
        <Property name="B" value="]] .. SECONDARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="TernaryColour" value="Colour">
        <Property name="R" value="]] .. TERNARY["R"] .. [[" />
        <Property name="G" value="]] .. TERNARY["G"] .. [[" />
        <Property name="B" value="]] .. TERNARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="QuaternaryColour" value="Colour">
        <Property name="R" value="]] .. QUATERNARY["R"] .. [[" />
        <Property name="G" value="]] .. QUATERNARY["G"] .. [[" />
        <Property name="B" value="]] .. QUATERNARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
			<Property name="Name" value="]] .. NAME .. [[" />
			<Property name="Id" value="]] .. ID .. [[" />
      <Property name="SwatchPrimaryColour" value="Primary" />
      <Property name="SwatchSecondaryColour" value="Secondary" />
    </Property>
]])
if DEBUG_TEXT then
	print(DISPLAY)
	print(table.concat(EXPORT))
end
return table.concat(EXPORT)
end

--[[function GetObjectPaletteGroupReplacement(FROM)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry"},
		["VALUE_MATCH"] = FROM,
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = 
		{
			{"ColourPaletteGroupId", "LEGACY"}
		}
	}
end]]

function GetPaletteGroupEntry(PALETTEGROUP, ADD)
return
	{
		-- ["PRECEDING_FIRST"] = "TRUE",
		["SPECIAL_KEY_WORDS"] = {"PaletteGroups", "GcId256List", "Id", PALETTEGROUP},
		["PRECEDING_KEY_WORDS"] = {"IdList"},
		-- ["LINE_OFFSET"] = "+1",
		["ADD"] = ADD
	}
end

-- EFFICIENCY IMPROVEMENTS COURTESY OF Wberto
function GetPaletteGroupEntry_ALT(ID)
return [[				<Property name="IdList" value="]] .. ID .. [["/>]]
end

-- ADDING NEW PALETTES SO THAT THE LAST CUSTOM PALETTE IS THE PALETTE_SLOTS_LIMITth ONE
function GetYeetPaletteTable(ADD)
return
	{
		["PKW"] = {"Palettes"},
		["ADD"] = ADD
	}
	--[[{
		["SKW"] = {"Palettes", "GcBaseBuildingPalette"},
		["SECTION_ACTIVE"] = WHERE,
		["ADD_OPTION"] = "ADDafterSECTION",
		["ADD"] = ADD
	}]]
end

--[[function GetInsertPalatteTable(WHERE, ADD)
return
	{
		["SKW"] = {"Palettes", "GcBaseBuildingPalette", "Id", WHERE},
		["ADD_OPTION"] = "ADDbeforeSECTION",
		["ADD"] = ADD
	}
end]]

--[[function GetYeetPaletteSingleEntry(PALETTE)
return	{"Palettes", "GcBaseBuildingPalette", "Id", PALETTE}
end

function GetYeetPaletteEntries(PALETTES_LIST)
return
	{
		["SKW"] = PALETTES_LIST,
		["REMOVE"] = "SECTION",
	}
end]]

function GetYeetPaletteSingleGroup(GROUP)
return	{"PaletteGroups", "GcId256List", "Id", GROUP}
end

function GetYeetPaletteGroup(GROUP_LIST)
return
	{
		["SKW"] = GROUP_LIST,
		["PKW"] = "IdList",
		-- ["REPLACE_TYPE"] = "ALL",
		-- ["REMOVE"] = "SECTION",
		["CREATE_HOES"] = "TRUE",
		-- ["CREATE_HOS"] = "TRUE",
	}
end

function GetPaletteGroupHOS(GROUP_LIST)
return
	{
		["SKW"] = GROUP_LIST,
		["PKW"] = "IdList",
		-- ["REPLACE_TYPE"] = "ALL",
		-- ["REMOVE"] = "SECTION",
		-- ["CREATE_HOES"] = "TRUE",
		["CREATE_HOS"] = "TRUE",
	}
end

function HexToVector3fx4(HEX_COLOURS, QUAD_KEYS, CHANNELS, DEBUG)
local VECTOR3FX4 = {}
	-- RGB IN Vector3f FORMAT, TRUNCATED TO 3 DECIMAL PLACES
	for _i,j in pairs(QUAD_KEYS) do
		local NEW_COLOUR_TEMP = {}
		for k,l in pairs(CHANNELS) do
			-- CONVERTING 2 DIGITS OF THE HEX COLOUR INTO DECIMAL, DIVIDING BY 255 AND TRUNCATING TO 3 D.P
			NEW_COLOUR_TEMP[l] = trunc(tonumber(string.sub(HEX_COLOURS[j],((k-1)*2)+1,((k-1)*2)+2),16)/255)
			if DEBUG then
				print(l .. [[ - ]] .. NEW_COLOUR_TEMP[l])
			end
		end
		-- SETTING PRI/SEC/TER/QUA COLOURS ACCORDING TO PALETTE_QUAD
		VECTOR3FX4[j] = NEW_COLOUR_TEMP
	end
return VECTOR3FX4
end

--[[function SetOverwriteToList(LIST)
return
	{
		["PKW"] = {LIST},
		["EXML_FLAGS"]  = "OVERWRITE",
	}
end]]

function GetPaletteUIData(NUM)
return [[
			<Property name="Children" value="GcNGuiLayerData">
						<Property name="GcNGuiLayerData">
							<Property name="Element Data" value="GcNGuiElementData">
								<Property name="ID" value="OPTION]] .. NUM .. [[" />
								<Property name="Is Hidden" value="false" />
								<Property name="IgnoreInput" value="false" />
								<Property name="Editor Visible" value="GcNGuiEditorVisibility">
									<Property name="EditorVisibility" value="UseData" />
								</Property>
								<Property name="ForcedStyle" value="TkNGuiForcedStyle">
									<Property name="NGuiForcedStyle" value="None" />
								</Property>
								<Property name="Layout" value="GcNGuiLayoutData">
									<Property name="VROverrides" />
									<Property name="AccessibleOverrides" />
									<Property name="Position X" value="0.000000" />
									<Property name="Position Y" value="0.000000" />
									<Property name="Width" value="70.000000" />
									<Property name="Height" value="50.000000" />
									<Property name="Constrain Aspect" value="1.000000" />
									<Property name="Max Width" value="0.000000" />
									<Property name="Align" value="TkNGuiAlignment">
										<Property name="Vertical" value="Top" />
										<Property name="Horizontal" value="Left" />
									</Property>
									<Property name="Width Percentage" value="false" />
									<Property name="Height Percentage" value="false" />
									<Property name="Constrain Proportions" value="false" />
									<Property name="Force Aspect" value="false" />
									<Property name="Anchor" value="false" />
									<Property name="AnchorPercent" value="false" />
									<Property name="SameLine" value="true" />
									<Property name="SlowCursorOnHover" value="false" />
								</Property>
							</Property>
							<Property name="Style" value="TkNGuiGraphicStyle">
								<Property name="Default" value="TkNGuiGraphicStyleData">
									<Property name="Colour">
										<Property name="R" value="0.118" />
										<Property name="G" value="0.212" />
										<Property name="B" value="0.235" />
										<Property name="A" value="0.000000" />
									</Property>
									<Property name="Icon Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Gradient Colour">
										<Property name="R" value="0.000000" />
										<Property name="G" value="0.000000" />
										<Property name="B" value="0.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Gradient Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="PaddingX" value="0.000000" />
									<Property name="PaddingY" value="0.000000" />
									<Property name="MarginX" value="0.000000" />
									<Property name="MarginY" value="0.000000" />
									<Property name="Gradient Start Offset" value="0.000000" />
									<Property name="Gradient End Offset" value="0.000000" />
									<Property name="Corner Radius" value="0.000000" />
									<Property name="Stroke Size" value="1.000000" />
									<Property name="Image" value="0" />
									<Property name="EditorIcon" value="TkNGuiEditorIcons">
										<Property name="NGuiEditorIcon" value="none" />
									</Property>
									<Property name="Desaturation" value="0.000000" />
									<Property name="Stroke Gradient Offset" value="0.000000" />
									<Property name="Stroke Gradient Feather" value="0.000000" />
									<Property name="Shape" value="Rectangle" />
									<Property name="Gradient" value="None" />
									<Property name="Solid Colour" value="false" />
									<Property name="Has Drop Shadow" value="false" />
									<Property name="Has Outer Gradient" value="false" />
									<Property name="Has Inner Gradient" value="false" />
									<Property name="Gradient Offset Percent" value="false" />
									<Property name="Stroke Gradient" value="true" />
								</Property>
								<Property name="Highlight" value="TkNGuiGraphicStyleData">
									<Property name="Colour">
										<Property name="R" value="0.117647059" />
										<Property name="G" value="0.211764708" />
										<Property name="B" value="0.235294119" />
										<Property name="A" value="0.600000" />
									</Property>
									<Property name="Icon Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Gradient Colour">
										<Property name="R" value="0.000000" />
										<Property name="G" value="0.000000" />
										<Property name="B" value="0.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Gradient Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="PaddingX" value="0.000000" />
									<Property name="PaddingY" value="0.000000" />
									<Property name="MarginX" value="0.000000" />
									<Property name="MarginY" value="0.000000" />
									<Property name="Gradient Start Offset" value="0.000000" />
									<Property name="Gradient End Offset" value="0.000000" />
									<Property name="Corner Radius" value="0.000000" />
									<Property name="Stroke Size" value="1.000000" />
									<Property name="Image" value="0" />
									<Property name="EditorIcon" value="TkNGuiEditorIcons">
										<Property name="NGuiEditorIcon" value="none" />
									</Property>
									<Property name="Desaturation" value="0.000000" />
									<Property name="Stroke Gradient Offset" value="0.000000" />
									<Property name="Stroke Gradient Feather" value="0.000000" />
									<Property name="Shape" value="Rectangle" />
									<Property name="Gradient" value="None" />
									<Property name="Solid Colour" value="false" />
									<Property name="Has Drop Shadow" value="false" />
									<Property name="Has Outer Gradient" value="false" />
									<Property name="Has Inner Gradient" value="false" />
									<Property name="Gradient Offset Percent" value="false" />
									<Property name="Stroke Gradient" value="true" />
								</Property>
								<Property name="Active" value="TkNGuiGraphicStyleData">
									<Property name="Colour">
										<Property name="R" value="0.117647059" />
										<Property name="G" value="0.211764708" />
										<Property name="B" value="0.235294119" />
										<Property name="A" value="0.000000" />
									</Property>
									<Property name="Icon Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Gradient Colour">
										<Property name="R" value="0.000000" />
										<Property name="G" value="0.000000" />
										<Property name="B" value="0.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="Stroke Gradient Colour">
										<Property name="R" value="1.000000" />
										<Property name="G" value="1.000000" />
										<Property name="B" value="1.000000" />
										<Property name="A" value="1.000000" />
									</Property>
									<Property name="PaddingX" value="0.000000" />
									<Property name="PaddingY" value="0.000000" />
									<Property name="MarginX" value="0.000000" />
									<Property name="MarginY" value="0.000000" />
									<Property name="Gradient Start Offset" value="0.000000" />
									<Property name="Gradient End Offset" value="0.000000" />
									<Property name="Corner Radius" value="0.000000" />
									<Property name="Stroke Size" value="1.000000" />
									<Property name="Image" value="0" />
									<Property name="EditorIcon" value="TkNGuiEditorIcons">
										<Property name="NGuiEditorIcon" value="none" />
									</Property>
									<Property name="Desaturation" value="0.000000" />
									<Property name="Stroke Gradient Offset" value="0.000000" />
									<Property name="Stroke Gradient Feather" value="0.000000" />
									<Property name="Shape" value="Rectangle" />
									<Property name="Gradient" value="None" />
									<Property name="Solid Colour" value="false" />
									<Property name="Has Drop Shadow" value="false" />
									<Property name="Has Outer Gradient" value="false" />
									<Property name="Has Inner Gradient" value="false" />
									<Property name="Gradient Offset Percent" value="false" />
									<Property name="Stroke Gradient" value="true" />
								</Property>
								<Property name="InheritStyleFromParentLayer" value="false" />
								<Property name="AutoAdjustToChildrenHeight" value="false" />
								<Property name="DistributeChildrenWidth" value="false" />
								<Property name="DistributeChildrenHeight" value="false" />
								<Property name="HighlightTime" value="0.100000" />
								<Property name="HighlightScale" value="1.000000" />
								<Property name="GlobalFade" value="1.000000" />
								<Property name="Animate" value="None" />
								<Property name="AnimTime" value="0.500000" />
								<Property name="AnimSplit" value="0.400000" />
								<Property name="AnimCurve1" value="TkCurveType">
									<Property name="Curve" value="Linear" />
								</Property>
								<Property name="AnimCurve2" value="TkCurveType">
									<Property name="Curve" value="Linear" />
								</Property>
								<Property name="CustomMinStart">
									<Property name="X" value="1.000000" />
									<Property name="Y" value="1.000000" />
								</Property>
								<Property name="CustomMaxStart">
									<Property name="X" value="1.000000" />
									<Property name="Y" value="1.000000" />
								</Property>
							</Property>
							<Property name="Image" value="" />
							<Property name="Children" />
							<Property name="DataFilename" value="UI/COMPONENTS/CHARCUSTOMISE/BUILDCOLOUROPTION.MBIN" />
							<Property name="AltMode" value="None" />
						</Property>
					</Property>
]]
end

MARVELLER = {}
CHANGE_LEOPARDON = {}
table.insert(MARVELLER, [[<!--BuildFrame-->
]])
PALETTE_GROUP_CHANGE_TABLE = {}
PALETTE_GROUP_ADD_TEXT = {}


-- PALETTE EXPANSION

-- INITIALISE THE TEXT TABLE TO BE INJECTED INTO CORRESPONDING VANILLA PALETTE GROUPS
-- EFFICIENCY IMPROVEMENTS COURTESY OF Wberto
for i,j in pairs(VANILLA_PALETTE_IDS) do
	if DEBUG_TEXT then
		print(j["Group"])
	end
	PALETTE_GROUP_ADD_TEXT[j["Group"]] = {}	
end

-- BUNCHING USER DEFAULTS INTO A LIST
-- TO BE USED IN CONJUNCTION WITH FOR LOOP BELOW WHEN AUTORUN = true
DECISIONS =
{
	LEGACY,
	BASIC,
	FREIGHTERBASE,
	CORVETTES,
}

YEET_VANILLA_PALETTES = false

if not AUTORUN then
	for _,j in ipairs(REPLACE_VANILLA_PALETTES) do
		VANILLA_PALETTE_IDS[ j["PaletteGroup"] ]["Yeet"] = GUIF({j["Decision"], REPLACE_VANILLA_PALETTES_GUIF[ j["PaletteGroup"] ]}, 10)
	end
end

for _,j in pairs(VANILLA_PALETTE_IDS) do
	if j["Yeet"] then YEET_VANILLA_PALETTES = true end
end

-- OG_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR
YEET_PALETTE_GROUP_LIST = {}
YEET_PALETTE_ENTRY_LIST = {}
-- VANILLA_REPLACEMENT_TEXT = {}
APPEND_PALETTES_START_POINT = 1

-- REPLACING HIDDEN PALETTES
repeat
	-- CONVERTS 4 HEX COLOURS INTO A VECTOR3F TIMES 4 COLOUR PALETTE
	local NEW_COLOURS = HexToVector3fx4(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT], PALETTE_QUAD, RGB, DEBUG_TEXT)
	local ExportDisplay = false; if NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Display"] ~= nil then ExportDisplay = true end
	if DEBUG_TEXT then print(ExportDisplay) end
	table.insert(MARVELLER, GetBaseBuildingPalette(NEW_COLOURS["PrimaryColour"], NEW_COLOURS["SecondaryColour"], NEW_COLOURS["TernaryColour"], NEW_COLOURS["QuaternaryColour"], NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Name"], NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Id"], ExportDisplay, HIDDEN_PALETTE_IDS[APPEND_PALETTES_START_POINT]))
	for _i,p in pairs(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["PaletteGroup"]) do
		if PALETTE_GROUP_ADD_TEXT[p] ~= nil then
			table.insert(PALETTE_GROUP_ADD_TEXT[p], GetPaletteGroupEntry_ALT(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Id"]))
		end
	end 
	APPEND_PALETTES_START_POINT = APPEND_PALETTES_START_POINT + 1	
	if APPEND_PALETTES_START_POINT > #NEW_COLOURS_HEX and DEBUG_TEXT then
		print([[SACS DEBUG - END OF CUSTOM PALETTE LIST!!!]])
	end
	-- print(APPEND_PALETTES_START_POINT)
until APPEND_PALETTES_START_POINT > #NEW_COLOURS_HEX or APPEND_PALETTES_START_POINT > #HIDDEN_PALETTE_IDS

-- REPLACING (CHOSEN) BASIC PARTS PALETTES
if YEET_VANILLA_PALETTES then
	for _k,l in pairs(VANILLA_PALETTE_IDS) do
		-- ONLY REPLACE PALETTE SETS DESIGNATED TO BE YOTE
		if l["Yeet"] then
			--[[if #NEW_COLOURS_HEX < YEET_PALETTE_TOTAL
				then INSERT_END = #NEW_COLOURS_HEX
				else INSERT_END = YEET_PALETTE_TOTAL
			end]]
			-- REPLACING INDIVIDUAL PALTTES
			for m,n in pairs(l["Palettes"]) do
				-- AVOID GOING OVER THE NUMBER OF TOTAL CUSTOM PALETTES 
				if APPEND_PALETTES_START_POINT > #NEW_COLOURS_HEX then
					if DEBUG_TEXT then
						print([[SACS DEBUG - END OF CUSTOM PALETTE LIST!!!]])
					end
					break
				end
				-- CONVERTS 4 HEX COLOURS INTO A VECTOR3F TIMES 4 COLOUR PALETTE
				local NEW_COLOURS = HexToVector3fx4(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT], PALETTE_QUAD, RGB, DEBUG_TEXT)
				local ExportDisplay = false; if NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Display"] ~= nil then ExportDisplay = true end
				table.insert(MARVELLER, GetBaseBuildingPalette(NEW_COLOURS["PrimaryColour"], NEW_COLOURS["SecondaryColour"], NEW_COLOURS["TernaryColour"], NEW_COLOURS["QuaternaryColour"], NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Name"], NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Id"], ExportDisplay, n))
				for _,p in pairs(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["PaletteGroup"]) do
					if PALETTE_GROUP_ADD_TEXT[p] ~= nil then
						table.insert(PALETTE_GROUP_ADD_TEXT[p], GetPaletteGroupEntry_ALT(NEW_COLOURS_HEX[APPEND_PALETTES_START_POINT]["Id"]))
					end
				end 
				APPEND_PALETTES_START_POINT = APPEND_PALETTES_START_POINT + 1
			-- table.insert(CHANGE_LEOPARDON, GetInsertPalatteTable(l["Palettes"][1], table.concat(VANILLA_REPLACEMENT_TEXT)))
			end
			table.insert(YEET_PALETTE_GROUP_LIST, GetYeetPaletteSingleGroup(l["Group"]))
		end
	end
	-- table.insert(CHANGE_LEOPARDON, GetYeetPaletteEntries(YEET_PALETTE_ENTRY_LIST))
	table.insert(CHANGE_LEOPARDON, GetYeetPaletteGroup(YEET_PALETTE_GROUP_LIST))
	table.insert(CHANGE_LEOPARDON, GetPaletteGroupHOS(YEET_PALETTE_GROUP_LIST))
	-- table.insert(CHANGE_LEOPARDON, SetOverwriteToList("Palettes"))
end

-- ADDING THE REST OF THE NEW PALETTES TO MASTER LIST
for m = APPEND_PALETTES_START_POINT, #NEW_COLOURS_HEX do
	local NEW_COLOURS = {}
	CURRENT_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR + 1
	-- CONVERTS 4 HEX COLOURS INTO A VECTOR3F TIMES 4 COLOUR PALETTE
	NEW_COLOURS = HexToVector3fx4(NEW_COLOURS_HEX[m], PALETTE_QUAD, RGB, DEBUG_TEXT)
	local ExportDisplay = false; if NEW_COLOURS_HEX[m]["Display"] ~= nil then ExportDisplay = true end
	table.insert(MARVELLER,GetBaseBuildingPalette(NEW_COLOURS["PrimaryColour"], NEW_COLOURS["SecondaryColour"], NEW_COLOURS["TernaryColour"], NEW_COLOURS["QuaternaryColour"], NEW_COLOURS_HEX[m]["Name"], NEW_COLOURS_HEX[m]["Id"], ExportDisplay, ""))
	for _,p in pairs(NEW_COLOURS_HEX[m]["PaletteGroup"]) do
		if PALETTE_GROUP_ADD_TEXT[p] ~= nil then
			table.insert(PALETTE_GROUP_ADD_TEXT[p], GetPaletteGroupEntry_ALT(NEW_COLOURS_HEX[m]["Id"]))
		end
	end
	-- CHECK TOTAL NUMBER OF PALETTES TO PREVENT VANILLA PALETTES DISAPPEARING FROM OVERFLOW
	--[[if USE_LEGACY_PALETTE_LIST then
		if CURRENT_VANILLA_COLOUR == OG_VANILLA_COLOUR + LEGACY_INJECT_AMOUNT then break end
	end]]
	-- print(CURRENT_VANILLA_COLOUR)
	if CURRENT_VANILLA_COLOUR >= 128 then
		print([[SACS DEBUG - PALETTE COUNT REACHED HARDCODED LIMIT AT ]] .. NEW_COLOURS_HEX[m]["Name"] .. [[!!!]])
		break
	end
end

-- ADDING PALETTES INTO INDIVIDUAL PALETTE LISTS
for i,j in ipairs(USER_INPUT_LOOPS) do -- GOING THROUGH EACH PROMPT AND RESPECTIVE LISTS THE PROMPT ADD PALETTES INTO
	-- CHECK FOR AUTORUN
	if not AUTORUN then
		-- if YEET_VANILLA_PALETTES then
			-- j["Module"] = GUIF(j["Prompt_Yeet"], 10)
		-- else
			j["Module"] = GUIF(j["Prompt"], 10)
		-- end
		-- SET OUT OF RANGE VALUES TO 0
		-- ALSO SET OPTION 6 (ADD BASIC PARTS) TO 0 IF BASIC PART PALETTES ARE GETTING YOTE
		if j["Module"] < 0 or j["Module"] > 6 then j["Module"] = 0 end
		-- if j["Module"] < 0 or j["Module"] > 6 or (YEET_VANILLA_PALETTES and j["Module"] >= 6) then j["Module"] = 0 end
	end
	for _k,l in pairs(j["Affect"]) do -- ADD PALETTES INTO EACH AFFECTED PALETTE LIST
		-- NOT PUTTING THE AUTORUN VALUES THROUGH DICTIONARY BECAUSE THEY ARE PRE-TRANSLATED IN THE INPUT
		local FINAL_CHOICE = 0
		if AUTORUN then
			-- USER INPUT +1 BECAUSE ORIGINAL CHOICE STARTS FROM 0
			FINAL_CHOICE = DECISIONS[i] + 1
		else FINAL_CHOICE = USERINPUT_DICT[i][j["Module"] + 1] -- REFERNCING DICTIONARY TO TRANSLATE USER INPUT NUMBER TO TRUE DECISION
		end
		-- print(l)
		-- print(FINAL_CHOICE)
		-- ADDING PALETTES TO THE PALETTE GROUP BASED ON THE SET CHOSEN BY USER
		for _m,n in ipairs(PALETTE_ADD_SETS[FINAL_CHOICE]) do
			if n ~= "" and l ~= n and not VANILLA_PALETTE_IDS[n]["Yeet"] then -- "" IS CUSTOMS ONLY, AND SKIPPING ADDING THE SAME PALETTE LIST INTO ITSELF
				-- print(VANILLA_PALETTE_IDS[n]["Group"])
				for _o,p in pairs(VANILLA_PALETTE_IDS[n]["Palettes"]) do -- ADDING EACH PALETTE INTO THE LIST
					table.insert(PALETTE_GROUP_ADD_TEXT[l], GetPaletteGroupEntry_ALT(p))
				end
			end
		end
	end
end

-- INJECTING ALL VANILLA PALETTES IN GROUPS OTHER THAN LEGACY INTO THE LEGACY GROUP
--[[for i,j in pairs(VANILLA_PALETTE_IDS) do
	-- table.insert(CHANGE_LEOPARDON, GetObjectPaletteGroupReplacement(j["Group"]))
	-- if j["Group"] ~= "LEGACY" and not j["Yeet"] then
	if j["Group"] ~= "LEGACY" then
		for k,l in pairs(j["Palettes"]) do
			table.insert(PALETTE_GROUP_ADD_TEXT["LEGACY"], GetPaletteGroupEntry_ALT(l))
		end
	end
end]]

-- EFFICIENCY IMPROVEMENTS COURTESY OF Wberto
-- table.insert(CHANGE_LEOPARDON, PALETTE_GROUP_REPLACEMENT)
-- table.insert(CHANGE_LEOPARDON, DEFAULT_PALETTE_REPLACEMENT)
for i,j in pairs(VANILLA_PALETTE_IDS) do
	-- DOESN'T TRY TO MAKE AMUMSS DO NOTHING IF A PALETTE GROUP HAS NOTHING ADDED TO IT, REDUCES WARNINGS
	if #PALETTE_GROUP_ADD_TEXT[j["Group"]] > 0 then
		PALETTE_GROUP_CHANGE_TABLE[j["Group"]] = GetPaletteGroupEntry(j["Group"], table.concat(PALETTE_GROUP_ADD_TEXT[j["Group"]]))
	end
end

table.insert(MARVELLER, [[<!--BuildFrame End-->]])


-- UI EXPANSION
COLOUR_UI_ADD_TABLE = {}
table.insert(COLOUR_UI_ADD_TABLE, COLOUR_START)
-- PLUS ONE TO AVOID ADDING THE LAST VANILLA ENTRY AGAIN
for i = 1, PALETTE_SLOTS_LIMIT do
	-- ADD LINE BREAK EVERY "UI_SINGLE_LINE"TH UI ENTRY, ELSE ADD HORIZONTAL SPACING
	if i ~= 1 then -- FIRST ONE HAS NO SPACING
		if (i - 1) % UI_SINGLE_LINE > 0 then
			table.insert(COLOUR_UI_ADD_TABLE, SPACING)
			else table.insert(COLOUR_UI_ADD_TABLE, LINE_BREAK)
		end
	end
	-- MINUS 1 SINCE VANILLA ID STARTS WITH 0
	table.insert(COLOUR_UI_ADD_TABLE, GetPaletteUIData(i-1))
end
table.insert(COLOUR_UI_ADD_TABLE, [[<!--BuildFrame End-->]])
if DEBUG_TEXT then
	print(table.concat(COLOUR_UI_ADD_TABLE))
	print(#VANILLA_PALETTE_IDS["LEGACY"]["Palettes"])
end

--[[if USE_LEGACY_PALETTE_LIST then
	table.insert(CHANGE_LEOPARDON, GetYeetPaletteTable(tostring(#VANILLA_PALETTE_IDS["LEGACY"]["Palettes"] - 1), table.concat(MARVELLER))) -- SA starts with index 0 now
else
  table.insert(CHANGE_LEOPARDON, GetYeetPaletteTable("LAST", table.concat(MARVELLER)))
end]]
table.insert(CHANGE_LEOPARDON, GetYeetPaletteTable(table.concat(MARVELLER)))

for i,j in pairs(PALETTE_GROUP_CHANGE_TABLE) do
	table.insert(CHANGE_LEOPARDON, j)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "++BuildFrame_SACS",
["MOD_BATCHNAME"]		= "++++DO_NOT_COMBINE_IN_AMUMSS",
["MOD_AUTHOR"]				= "WinderTP, Babscoole, Wberto",
["MOD_DESCRIPTION"]			= "Selection Augmentation for Colour System", -- AKA Palette Augmentation and Tailoring System (PAnTS)
["NMS_VERSION"]				= "",
["GLOBAL_INTEGER_TO_FLOAT"]	= "PRESERVE",
["AMUMSS_SUPPRESS_MSG"] 	= "UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.EXML",
					["MXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON
				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\BUILDCOLOUR.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							-- COMPLETELY REMOVE THE ORIGINAL COLOUR UI BLOCK (COLOUR SLOT)
							-- ["PRECEDING_KEY_WORDS"] = {"Children", "Children", "GcNGuiLayerData"},
							["SPECIAL_KEY_WORDS"] = {"DataFilename", "UI/COMPONENTS/CHARCUSTOMISE/BUILDCOLOUROPTION.MBIN"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							-- COMPLETELY REMOVE THE ORIGINAL COLOUR UI BLOCK (SPACING)
							-- ["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData"},
							-- ["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData", "Layout", "GcNGuiLayoutData", "SameLine", "True"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						--[[{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData", "Layout", "GcNGuiLayoutData", "SameLine", "True"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},]]
						--[[{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData", "ID", "THIS ONE"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData", "Layout", "GcNGuiLayoutData", "Height", "12"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData", "Layout", "GcNGuiLayoutData", "Height", "50"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},]]
						{
							-- ADDS THE REBUILT COLOUR UI BLOCK
							-- ["PRECEDING_KEY_WORDS"] = {"GcNGuiLayerData"},
							-- ["PRECEDING_FIRST"] = "TRUE",
							["SPECIAL_KEY_WORDS"] = {"ID", "LABEL"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = table.concat(COLOUR_UI_ADD_TABLE)
						},
						{
							-- UI CANVAS FOR COLOUR SLOTS
							["SPECIAL_KEY_WORDS"] = {"ID", "COLOUR1", "Layout", "GcNGuiLayoutData"},
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_HEIGHT_MULTIPLIER},
							},
						},
						--	NEXT 3 EDITS CHANGES THE SAME ENTRY
						{
							-- THIS SECTION IS A SUB CANVAS WITH EXTRA UNITS MORE HEIGHT
							-- THE EXTRA UNITS ARE FIRST TAKEN AWAY
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData" }, 
							-- ["SECTION_ACTIVE"] = 1,
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "+",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_OUTER_SPACING},
							},
						},
						{
							-- THE MATCHED HEIGHT IS MULTIPLIED EQUALLY TO THE PARENT UI CANVAS
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData" }, 
							-- ["SECTION_ACTIVE"] = 1,
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_HEIGHT_MULTIPLIER},
							},
						},
						{
							-- THE EXTRA UNITS ARE ADDED BACK AFTER MULTIPLICATION
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData" }, 
							-- ["SECTION_ACTIVE"] = 1,
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "-",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_OUTER_SPACING},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\BUILDCUSTOMISE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							-- UI CANVAS FOR COLOUR SLOTS
							["SPECIAL_KEY_WORDS"] = {"ID", "COLOUR1", "Layout", "GcNGuiLayoutData"},
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_HEIGHT_MULTIPLIER},
							},
						},
						{
							-- EXPANDS MAIN COLOUR/MATERIAL CUSTOMISATION CANVAS TO VERTICAL 90% OF SCREEN
							["SPECIAL_KEY_WORDS"] = {"ID", "CUSTOMISE", "Layout", "GcNGuiLayoutData"},
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Position Y", "5" },
								{"Height", "100" },
							},
						},
					}
				},
			}
		}, 
	}	
}