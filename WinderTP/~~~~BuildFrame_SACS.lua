-- HARD LIMITS THE NUMBER OF CUSTOM PALETTES TO 13
-- KEEPS THE PRE-3.95 PALETTE ALLOCATION PLUS NEW VANILLA PALETTES
-- OVERRIDES YEET_VANILLA_PALETTES
USE_LEGACY_PALETTE_LIST = false

-- SET TO TRUE TO IGNORE VANILLA PALETTE NUMBER LIMITS
-- EFFECTIVELY ELIMINATING SOME VANILLA PALETTES
-- UNUSED SINCE 3.95
-- YEET_VANILLA_PALETTES = false

NEW_COLOURS_HEX =
-- HEX COLOUR VALUES WITHOUT THE HASHTAG
-- FEEL FREE TO ADD A FEW OF YOUR OWN CUSTOM COLOURS
-- COLOURS WILL BE SHOWN TO OTHER PLAYERS IN MULTIPLAYER AS WHITE
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
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
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
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"ffffff",
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"ffffff",
		["QuaternaryColour"] = 	"ffffff",
		["Name"] =				"All White",
		["Id"] =				"BF_ALLWHITE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"000000",
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"000000",
		["QuaternaryColour"] = 	"ffffff",
		["Name"] =				"Tai-chi 1",
		["Id"] =				"BF_TAICHI1",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"ffffff",
		["SecondaryColour"] = 	"000000",
		["TernaryColour"] = 	"ffffff",
		["QuaternaryColour"] = 	"000000",
		["Name"] =				"Tai-chi 2",
		["Id"] =				"BF_TAICHI2",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"bbd5bf",
		["SecondaryColour"] = 	"d46738",
		["TernaryColour"] = 	"487473",
		["QuaternaryColour"] = 	"487473",
		["Name"] =				"ArC 1",
		["Id"] =				"BF_ARCONE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"f090be",	--331
		["SecondaryColour"] = 	"a4e6f0",
		["TernaryColour"] = 	"a34673",
		["QuaternaryColour"] = 	"659ba3",
		["Name"] =				"Pastel Magenta &amp; Blizzard Blue",
		["Id"] =				"BF_MAG_BLIZ",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F78A83",	--3
		["SecondaryColour"] = 	"F54538",
		["TernaryColour"] = 	"C2372D",
		["QuaternaryColour"] = 	"75211B",
		["Name"] =				"Coral Pink &amp; Red Orange",
		["Id"] =				"BF_CORP_REDOR",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F66420",	--19
		["SecondaryColour"] = 	"F6CB20",
		["TernaryColour"] = 	"D4711C",
		["QuaternaryColour"] = 	"D49D1C",
		["Name"] =				"Crayon Orange &amp; Jonquil",
		["Id"] =				"BF_ORA_JON",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"A5F54E",	--88
		["SecondaryColour"] = 	"EB6BFF",
		["TernaryColour"] = 	"61A814",
		["QuaternaryColour"] = 	"9725A8",
		["Name"] =				"French Lime &amp; Heliotrope",
		["Id"] =				"BF_LIM_HELIO",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"A9F3CC",	--148
		["SecondaryColour"] = 	"A8F29D",
		["TernaryColour"] = 	"B6F0F2",
		["QuaternaryColour"] = 	"B6F0F2",
		["Name"] =				"Magic Mint &amp; Light Green",
		["Id"] =				"BF_MINT_LG",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"2CF6D7",	--170
		["SecondaryColour"] = 	"2C3EF6",
		["TernaryColour"] = 	"26BFD4",
		["QuaternaryColour"] = 	"2663D4",
		["Name"] =				"Turquoise &amp; Palatinate Blue",
		["Id"] =				"BF_TUR_PAL",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"0057b7",	--211
		["SecondaryColour"] = 	"ffd700",
		["TernaryColour"] = 	"ffd700",
		["QuaternaryColour"] = 	"ffd700",
		["Name"] =				"Ukraine Colours",
		["Id"] =				"BF_UKRAINE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"2c65a9",	--212
		["SecondaryColour"] = 	"52ce97",
		["TernaryColour"] = 	"52ce97",
		["QuaternaryColour"] = 	"52ce97",
		["Name"] =				"Lapis &amp; Shamrock",
		["Id"] =				"BF_LAP_SHAM",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
{
		["PrimaryColour"] = 	"C737FA",	--284
		["SecondaryColour"] = 	"F54198",
		["TernaryColour"] = 	"DE31DB",
		["QuaternaryColour"] = 	"DE31DB",
		["Name"] =				"Psychedelic Purple &amp; Rose",
		["Id"] =				"BF_PSYC_ROSE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F63B3B",	--0
		["SecondaryColour"] = 	"903BF6",
		["TernaryColour"] = 	"D43383",
		["QuaternaryColour"] = 	"A833D4",
		["Name"] =				"Coral Red &amp; Veronica",
		["Id"] =				"BF_COR_VER",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F0A741",	--34
		["SecondaryColour"] = 	"F04647",
		["TernaryColour"] = 	"A36E24",
		["QuaternaryColour"] = 	"A32425",
		["Name"] =				"Yellow Orange &amp; Carmine Pink",
		["Id"] =				"BF_YO_CPINK",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F2ECBF",	--52
		["SecondaryColour"] = 	"F2C6A7",
		["TernaryColour"] = 	"F3DEB5",
		["QuaternaryColour"] = 	"F3DEB5",
		["Name"] =				"Pale Spring Bud &amp; Apricot",
		["Id"] =				"BF_BUD_APRI",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"FFF870",	--57
		["SecondaryColour"] = 	"8A51F0",
		["TernaryColour"] = 	"A39D27",
		["QuaternaryColour"] = 	"4817A3",
		["Name"] =				"Icterine &amp; Lavender Indigo",
		["Id"] =				"BF_ICT_LAV",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"ede91e",	--58
		["SecondaryColour"] = 	"826494",
		["TernaryColour"] = 	"826494",
		["QuaternaryColour"] = 	"826494",
		["Name"] =				"Titanium Yellow &amp; French Lilac",
		["Id"] =				"BF_TIT_LILAC",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"2b651e",	--109
		["SecondaryColour"] = 	"5fc8dc",
		["TernaryColour"] = 	"5fc8dc",
		["QuaternaryColour"] = 	"5fc8dc",
		["Name"] =				"Dark Green &amp; Middle Blue",
		["Id"] =				"BF_DG_MIDB",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"3DF656",	--128
		["SecondaryColour"] = 	"F6EA3D",
		["TernaryColour"] = 	"52D435",
		["QuaternaryColour"] = 	"C1D435",
		["Name"] =				"Erin &amp; Dandelion",
		["Id"] =				"BF_ERIN_DAN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"48C25A",	--128
		["SecondaryColour"] = 	"44784C",
		["TernaryColour"] = 	"A5F7B1",
		["QuaternaryColour"] = 	"2B7536",
		["Name"] =				"Bice &amp; Fern Green",
		["Id"] =				"BF_BICE_FERN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"69CFFF",	--199
		["SecondaryColour"] = 	"F5A84C",
		["TernaryColour"] = 	"237EA8",
		["QuaternaryColour"] = 	"A86413",
		["Name"] =				"Light Sky Blue &amp; Yellow Orange",
		["Id"] =				"BF_SKY_YELORA",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"C1E7FA",	--199
		["SecondaryColour"] = 	"D8C1FA",
		["TernaryColour"] = 	"ABBFDE",
		["QuaternaryColour"] = 	"B2ABDE",
		["Name"] =				"Uranian Blue &amp; Pale Lavender",
		["Id"] =				"BF_URAN_LAV",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"BAD6F5",	--211
		["SecondaryColour"] = 	"AEF4F5",
		["TernaryColour"] = 	"C9C6F5",
		["QuaternaryColour"] = 	"C9C6F5",
		["Name"] =				"Cornflower &amp; Pale Blue",
		["Id"] =				"BF_CORN_BLUE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"73A1F5",	--218
		["SecondaryColour"] = 	"CA5BF5",
		["TernaryColour"] = 	"5874A8",
		["QuaternaryColour"] = 	"8836A8",
		["Name"] =				"Vista Blue &amp; Medium Orchid",
		["Id"] =				"BF_VISB_ORC",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"8146b3",	--272
		["SecondaryColour"] = 	"ffffff",
		["TernaryColour"] = 	"8146b3",
		["QuaternaryColour"] = 	"8146b3",
		["Name"] =				"Medium Violet &amp; White",
		["Id"] =				"BF_MVIO_WHI",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"E1BDF5",	--278
		["SecondaryColour"] = 	"B7B0F5",
		["TernaryColour"] = 	"F5C9E5",
		["QuaternaryColour"] = 	"F5C9E5",
		["Name"] =				"Electric Lav &amp; Max Blurple",
		["Id"] =				"BF_LAV_BLUP",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"ff0000",
		["SecondaryColour"] = 	"ff0000",
		["TernaryColour"] = 	"ff0000",
		["QuaternaryColour"] = 	"ff0000",
		["Name"] =				"All Red",
		["Id"] =				"BF_ALLRED",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"00ff00",
		["SecondaryColour"] = 	"00ff00",
		["TernaryColour"] = 	"00ff00",
		["QuaternaryColour"] = 	"00ff00",
		["Name"] =				"All Green",
		["Id"] =				"BF_ALLGREEN",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"0000ff",
		["SecondaryColour"] = 	"0000ff",
		["TernaryColour"] = 	"0000ff",
		["QuaternaryColour"] = 	"0000ff",
		["Name"] =				"All Blue",
		["Id"] =				"BF_ALLBLUE",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"d46738",
		["SecondaryColour"] = 	"bbd5bf",
		["TernaryColour"] = 	"487473",
		["QuaternaryColour"] = 	"487473",
		["Name"] =				"ArC 2",
		["Id"] =				"BF_ARCTWO",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"05445E",
		["SecondaryColour"] = 	"75E6DA",
		["TernaryColour"] = 	"189AB4",
		["QuaternaryColour"] = 	"D4F1F4",
		["Name"] =				"Summer Splash",
		["Id"] =				"BF_NEW1",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"145DA0",
		["SecondaryColour"] = 	"0C2D48",
		["TernaryColour"] = 	"2E8BC0",
		["QuaternaryColour"] = 	"B1D4E0",
		["Name"] =				"Mermaid Lagoon",
		["Id"] =				"BF_NEW2",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"3D550C",
		["SecondaryColour"] = 	"ECF87F",
		["TernaryColour"] = 	"81B622",
		["QuaternaryColour"] = 	"59981A",
		["Name"] =				"Healthy Leaves",
		["Id"] =				"BF_NEW3",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"EEB5EB",
		["SecondaryColour"] = 	"C8F4F9",
		["TernaryColour"] = 	"C26DBC",
		["QuaternaryColour"] = 	"3CACAE",
		["Name"] =				"Icy Gradient",
		["Id"] =				"BF_NEW4",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"F2C5E0",
		["SecondaryColour"] = 	"D43790",
		["TernaryColour"] = 	"EC8FD0",
		["QuaternaryColour"] = 	"870A30",
		["Name"] =				"Petal Party",
		["Id"] =				"BF_NEW7",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"0A7029",
		["SecondaryColour"] = 	"FEDE00",
		["TernaryColour"] = 	"C8DF52",
		["QuaternaryColour"] = 	"DBE8D8",
		["Name"] =				"Cheeky Marguerita",
		["Id"] =				"BF_NEW8",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"4297A0",
		["SecondaryColour"] = 	"E57F84",
		["TernaryColour"] = 	"F4EAE6",
		["QuaternaryColour"] = 	"2F5061",
		["Name"] =				"San Francisco Clouded",
		["Id"] =				"BF_NEW9",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"FFC2C7",
		["SecondaryColour"] = 	"B6E5D8",
		["TernaryColour"] = 	"FBE5C8",
		["QuaternaryColour"] = 	"8FDDE7",
		["Name"] =				"Afternoon Sinkers",
		["Id"] =				"BF_NEW10",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"BBE7FE",
		["SecondaryColour"] = 	"D3B5E5",
		["TernaryColour"] = 	"FFD4DB",
		["QuaternaryColour"] = 	"EFF1DB",
		["Name"] =				"Easter Egg Nest",
		["Id"] =				"BF_NEW11",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"C4DBE0",
		["SecondaryColour"] = 	"2EB5E0",
		["TernaryColour"] = 	"00A8A8",
		["QuaternaryColour"] = 	"0C6980",
		["Name"] =				"In the Blue",
		["Id"] =				"BF_NEW12",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"5BB0BA",
		["SecondaryColour"] = 	"C15B78",
		["TernaryColour"] = 	"EBF5F7",
		["QuaternaryColour"] = 	"F6C8CC",
		["Name"] =				"Melted Ice Cream",
		["Id"] =				"BF_NEW14",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"54627B",
		["SecondaryColour"] = 	"ECD5BB",
		["TernaryColour"] = 	"FFFFFF",
		["QuaternaryColour"] = 	"710117",
		["Name"] =				"Lake View",
		["Id"] =				"BF_NEW15",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"15B5B0",
		["SecondaryColour"] = 	"F9BDC0",
		["TernaryColour"] = 	"FBE698",
		["QuaternaryColour"] = 	"6DECE0",
		["Name"] =				"Bubbly Banana",
		["Id"] =				"BF_NEW16",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"BA0F30",
		["SecondaryColour"] = 	"2F2440",
		["TernaryColour"] = 	"C6B79B",
		["QuaternaryColour"] = 	"FF2511",
		["Name"] =				"Red Beanie",
		["Id"] =				"BF_NEW17",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"FF8370",
		["SecondaryColour"] = 	"00B1B0",
		["TernaryColour"] = 	"FEC84D",
		["QuaternaryColour"] = 	"E42256",
		["Name"] =				"Apple Shine",
		["Id"] =				"BF_NEW18",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"39918C",
		["SecondaryColour"] = 	"2F435A",
		["TernaryColour"] = 	"D0B49F",
		["QuaternaryColour"] = 	"AB6B51",
		["Name"] =				"Coffee Run",
		["Id"] =				"BF_NEW19",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"DC4731",
		["SecondaryColour"] = 	"FFF3D9",
		["TernaryColour"] = 	"B8390E",
		["QuaternaryColour"] = 	"3B0918",
		["Name"] =				"Pomegranate Crush",
		["Id"] =				"BF_NEW20",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"774A62",
		["SecondaryColour"] = 	"FBD2C9",
		["TernaryColour"] = 	"313E61",
		["QuaternaryColour"] = 	"81ABBC",
		["Name"] =				"Fresh Blankets",
		["Id"] =				"BF_NEW21",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"FEDE00",
		["SecondaryColour"] = 	"B4F8C8",
		["TernaryColour"] = 	"6AB8EE",
		["QuaternaryColour"] = 	"A8D9F8",
		["Name"] =				"Thirst Quencher",
		["Id"] =				"BF_NEW22",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"DBA40E",
		["SecondaryColour"] = 	"4B5A20",
		["TernaryColour"] = 	"787D12",
		["QuaternaryColour"] = 	"7E6E13",
		["Name"] =				"Trees During Fall",
		["Id"] =				"BF_NEW23",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"5E376D",
		["SecondaryColour"] = 	"BD97CB",
		["TernaryColour"] = 	"F3EAC0",
		["QuaternaryColour"] = 	"747080",
		["Name"] =				"Ivy Swipe",
		["Id"] =				"BF_NEW24",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
	},
	{
		["PrimaryColour"] = 	"391306",
		["SecondaryColour"] = 	"F1CED4",
		["TernaryColour"] = 	"710019",
		["QuaternaryColour"] = 	"F9CCD3",
		["Name"] =				"Cherry Blossom",
		["Id"] =				"BF_NEW25",
		["PaletteGroup"] =		{ "LEGACY", "COLOURS_S", "COLOURS_F", "COLOURS_T", "FREIGHTERBASE" }
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
		}
	},
	["FLAGS"] =
	{
		["Group"] = "FLAGS",
		["Palettes"] =
		{
			"FLAGS1",
			"FLAGS2",
			"FLAGS3",
			"FLAGS4",
			"FLAGS5",
			"FLAGS6",
		}
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
		}
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
		}
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
		}
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
		}
	},
}

PALETTE_QUAD = {"PrimaryColour", "SecondaryColour", "TernaryColour", "QuaternaryColour"}

RGB = {"R", "G", "B"}

-- VANILLA MAX PALETTE SLOTS IN ONE PALETTE GROUP WITHOUT UI FILE CHANGES
-- DO NOT ALTER 
NUM_VANILLA_COLOUR =
{ 
["LEGACY"] = 	16,
["FLAGS"] = 	6,
["COLOURS_S"] = 11,
["COLOURS_F"] = 8,
["COLOURS_T"] = 9,
["FREIGHTERBASE"] = 16,
}

-- MULTIPLIER TO THE HEIGHT OF THE COLOUR PALETTE SELECTRION WINDOW
-- MODIFY WITH CARE
UI_HEIGHT_MULTIPLIER = "2.85"

-- NUMBER OF CURRENT VANILLA PALETTES
-- ONLY EDIT UPON VANILLA BASE BUILDING PALETTE UPDATES
CURRENT_VANILLA_COLOUR = 0
-- CURRENT_VANILLA_COLOUR = 66
for _i,j in pairs(NUM_VANILLA_COLOUR) do
	CURRENT_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR + j
end

-- NUMBER OF CURRENT VANILLA UI PALLETE SLOTS
-- ONLY EDIT UPON VANILLA UI UPDATES
-- VANILLA_UI_SLOTS = 25

-- HARDCODED NUMBER OF MAXIMUM SLOTS
-- DO NOT ALTER
-- PALETTE_SLOTS_LIMIT = 98
PALETTE_SLOTS_LIMIT = 127

-- NUMBER OF MAXIMUM PALETTE SLOTS PER LINE DICTATED BY UI FILES
-- DO NOT ALTER
UI_SINGLE_LINE = 8

-- SUB CANVAS EXTRA UI HEIGHT
-- DO NOT ALTER
UI_OUTER_SPACING = "13"

-- NUMBER OF PALETTES ADDED WITH YEET_VANILLA_PALETTES TRUE PRE-3.95
-- DO NOT ALTER
LEGACY_INJECT_AMOUNT = 13

-- PRINT DEBUG TEXT
DEBUG_TEXT = false

-- EXML DATA BLOCKS
COLOUR_START =  [[
		<!--BuildFrame-->
		<Property value="GcNGuiSpacingData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="50" />
              <Property name="Height" value="6" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
        <Property value="GcNGuiSpacingData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="0" />
              <Property name="Height" value="5" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
]]
SPACING = [[
        <Property value="GcNGuiSpacingData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="5" />
              <Property name="Height" value="50" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="True" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
]]
LINE_BREAK = [[
        <Property value="GcNGuiSpacingData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="THIS ONE" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="7" />
              <Property name="Height" value="2" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
        <Property value="GcNGuiSpacingData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="0" />
              <Property name="Height" value="2" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="False" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
        </Property>
]]

-- FORCES ALL BASE OBJECT TO USE THE NOW-UNIFIED LEGACY PALETTE GROUP
PALETTE_GROUP_REPLACEMENT =
	{
		-- ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml"},
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
		-- ["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml"},
		-- ["VALUE_MATCH_OPTIONS"] = "~=",
		-- ["VALUE_MATCH"] = ".+",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = 
		{
			{"DefaultColourPaletteId", "LEGACY1"}
		}
	}

-- TRUNCATION
function trunc(x)
	return math.modf(x*1000)/1000
end

function GetBaseBuildingPalette(PRIMARY, SECONDARY, TERNARY, QUATERNARY, NAME, ID)
return [[
    <Property value="GcBaseBuildingPalette.xml">
      <Property name="PrimaryColour" value="Colour.xml">
        <Property name="R" value="]] .. PRIMARY["R"] .. [[" />
        <Property name="G" value="]] .. PRIMARY["G"] .. [[" />
        <Property name="B" value="]] .. PRIMARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SecondaryColour" value="Colour.xml">
        <Property name="R" value="]] .. SECONDARY["R"] .. [[" />
        <Property name="G" value="]] .. SECONDARY["G"] .. [[" />
        <Property name="B" value="]] .. SECONDARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="TernaryColour" value="Colour.xml">
        <Property name="R" value="]] .. TERNARY["R"] .. [[" />
        <Property name="G" value="]] .. TERNARY["G"] .. [[" />
        <Property name="B" value="]] .. TERNARY["B"] .. [[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="QuaternaryColour" value="Colour.xml">
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
]]
end

--[[function GetObjectPaletteGroupReplacement(FROM)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml"},
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
		["PRECEDING_KEY_WORDS"] = {"PaletteGroups"},
		["PRECEDING_FIRST"] = "TRUE",
		["SPECIAL_KEY_WORDS"] = {"Id", PALETTEGROUP},
		["LINE_OFFSET"] = "+1",
		["ADD"] = ADD
	}
end

-- EFFICIENCY IMPROVEMENTS COURTESY OF Wberto
function GetPaletteGroupEntry_ALT(ID)
return [[
    <!--BUILDFRAME -->
		<Property value="NMSString0x20.xml">
		  <Property name="Value" value="]] .. ID .. [["/>
		</Property>
]]
end

-- ADDING NEW PALETTES SO THAT THE LAST CUSTOM PALETTE IS THE PALETTE_SLOTS_LIMITth ONE
function GetYeetPaletteTable(WHERE, ADD)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingPalette.xml"},
		["SECTION_ACTIVE"] = WHERE,
		["REPLACE_TYPE"] = "ADDafterSECTION",
		["ADD"] = ADD
	}
end

function GetPaletteUIData(NUM)
return [[
		<Property value="GcNGuiLayerData.xml">
          <Property name="ElementData" value="GcNGuiElementData.xml">
            <Property name="ID" value="OPTION]] .. NUM .. [[" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="False" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="0" />
              <Property name="PositionY" value="0" />
              <Property name="Width" value="70" />
              <Property name="Height" value="50" />
              <Property name="ConstrainAspect" value="1" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Top" />
                <Property name="Horizontal" value="Left" />
              </Property>
              <Property name="WidthPercentage" value="False" />
              <Property name="HeightPercentage" value="False" />
              <Property name="ConstrainProportions" value="False" />
              <Property name="ForceAspect" value="False" />
              <Property name="Anchor" value="False" />
              <Property name="AnchorPercent" value="False" />
              <Property name="SameLine" value="True" />
              <Property name="SlowCursorOnHover" value="False" />
            </Property>
          </Property>
          <Property name="Style" value="TkNGuiGraphicStyle.xml">
            <Property name="Default" value="TkNGuiGraphicStyleData.xml">
              <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.118" />
                <Property name="G" value="0.212" />
                <Property name="B" value="0.235" />
                <Property name="A" value="0" />
              </Property>
              <Property name="IconColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="0" />
              <Property name="StrokeSize" value="1" />
              <Property name="Image" value="0" />
              <Property name="Icon" value="0" />
              <Property name="Desaturation" value="0" />
              <Property name="StrokeGradientOffset" value="0" />
              <Property name="StrokeGradientFeather" value="0" />
              <Property name="Shape" value="Rectangle" />
              <Property name="Gradient" value="None" />
              <Property name="SolidColour" value="False" />
              <Property name="HasDropShadow" value="False" />
              <Property name="HasOuterGradient" value="False" />
              <Property name="HasInnerGradient" value="False" />
              <Property name="GradientOffsetPercent" value="False" />
              <Property name="StrokeGradient" value="True" />
            </Property>
            <Property name="Highlight" value="TkNGuiGraphicStyleData.xml">
              <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.118" />
                <Property name="G" value="0.212" />
                <Property name="B" value="0.235" />
                <Property name="A" value="0.6" />
              </Property>
              <Property name="IconColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="0" />
              <Property name="StrokeSize" value="1" />
              <Property name="Image" value="0" />
              <Property name="Icon" value="0" />
              <Property name="Desaturation" value="0" />
              <Property name="StrokeGradientOffset" value="0" />
              <Property name="StrokeGradientFeather" value="0" />
              <Property name="Shape" value="Rectangle" />
              <Property name="Gradient" value="None" />
              <Property name="SolidColour" value="False" />
              <Property name="HasDropShadow" value="False" />
              <Property name="HasOuterGradient" value="False" />
              <Property name="HasInnerGradient" value="False" />
              <Property name="GradientOffsetPercent" value="False" />
              <Property name="StrokeGradient" value="True" />
            </Property>
            <Property name="Active" value="TkNGuiGraphicStyleData.xml">
              <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.118" />
                <Property name="G" value="0.212" />
                <Property name="B" value="0.235" />
                <Property name="A" value="0" />
              </Property>
              <Property name="IconColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="1" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="0" />
              <Property name="StrokeSize" value="1" />
              <Property name="Image" value="0" />
              <Property name="Icon" value="0" />
              <Property name="Desaturation" value="0" />
              <Property name="StrokeGradientOffset" value="0" />
              <Property name="StrokeGradientFeather" value="0" />
              <Property name="Shape" value="Rectangle" />
              <Property name="Gradient" value="None" />
              <Property name="SolidColour" value="False" />
              <Property name="HasDropShadow" value="False" />
              <Property name="HasOuterGradient" value="False" />
              <Property name="HasInnerGradient" value="False" />
              <Property name="GradientOffsetPercent" value="False" />
              <Property name="StrokeGradient" value="True" />
            </Property>
            <Property name="CustomMinStart" value="Vector2f.xml">
              <Property name="x" value="1" />
              <Property name="y" value="1" />
            </Property>
            <Property name="CustomMaxStart" value="Vector2f.xml">
              <Property name="x" value="1" />
              <Property name="y" value="1" />
            </Property>
            <Property name="HighlightTime" value="0.1" />
            <Property name="HighlightScale" value="1" />
            <Property name="GlobalFade" value="1" />
            <Property name="AnimTime" value="0.5" />
            <Property name="AnimSplit" value="0.4" />
            <Property name="AnimCurve1" value="TkCurveType.xml">
              <Property name="Curve" value="Linear" />
            </Property>
            <Property name="AnimCurve2" value="TkCurveType.xml">
              <Property name="Curve" value="Linear" />
            </Property>
            <Property name="Animate" value="None" />
            <Property name="InheritStyleFromParentLayer" value="False" />
          </Property>
          <Property name="Image" value="" />
          <Property name="Children" />
          <Property name="DataFilename" value="UI/COMPONENTS/CHARCUSTOMISE/BUILDCOLOUROPTION.MBIN" />
          <Property name="AltMode" value="None" />
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

OG_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR
-- ADDING NEW PALETTES
for m,n in pairs(NEW_COLOURS_HEX) do
NEW_COLOURS = {}
CURRENT_VANILLA_COLOUR = CURRENT_VANILLA_COLOUR + 1
	-- RGB IN Vector3f FORMAT, TRUNCATED TO 3 DECIMAL PLACES
	for i,j in pairs(PALETTE_QUAD) do
		NEW_COLOUR_TEMP = {}
		for k,l in pairs(RGB) do
			-- CONVERTING 2 DIGITS OF THE HEX COLOUR INTO DECIMAL, DIVIDING BY 255 AND TRUNCATING TO 3 D.P
			NEW_COLOUR_TEMP[l] = trunc(tonumber(string.sub(n[j],((k-1)*2)+1,((k-1)*2)+2),16)/255)
			if DEBUG_TEXT then
				print(l .. [[ - ]] .. NEW_COLOUR_TEMP[l])
			end
		end
		-- SETTING PRI/SEC/TER/QUA COLOURS ACCORDING TO PALETTE_QUAD
		NEW_COLOURS[j] = NEW_COLOUR_TEMP
	end
	table.insert(MARVELLER,GetBaseBuildingPalette(NEW_COLOURS["PrimaryColour"], NEW_COLOURS["SecondaryColour"], NEW_COLOURS["TernaryColour"], NEW_COLOURS["QuaternaryColour"], n["Name"], n["Id"]))
	for o,p in pairs(n["PaletteGroup"]) do
		table.insert(PALETTE_GROUP_ADD_TEXT[p], GetPaletteGroupEntry_ALT(n["Id"]))
	end
	-- CHECK TOTAL NUMBER OF PALETTES TO PREVENT VANILLA PALETTES DISAPPEARING FROM OVERFLOW
	if USE_LEGACY_PALETTE_LIST then
		if CURRENT_VANILLA_COLOUR == OG_VANILLA_COLOUR + LEGACY_INJECT_AMOUNT then break end
	end
	if CURRENT_VANILLA_COLOUR == PALETTE_SLOTS_LIMIT then break end
end

-- INJECTING ALL VANILLA PALETTES IN GROUPS OTHER THAN LEGACY INTO THE LEGACY GROUP
for i,j in pairs(VANILLA_PALETTE_IDS) do
	-- table.insert(CHANGE_LEOPARDON, GetObjectPaletteGroupReplacement(j["Group"]))
	if j["Group"] ~= "LEGACY" then
		for k,l in pairs(j["Palettes"]) do
			table.insert(PALETTE_GROUP_ADD_TEXT["LEGACY"], GetPaletteGroupEntry_ALT(l))
		end
	end
end

-- EFFICIENCY IMPROVEMENTS COURTESY OF Wberto
table.insert(CHANGE_LEOPARDON, PALETTE_GROUP_REPLACEMENT)
table.insert(CHANGE_LEOPARDON, DEFAULT_PALETTE_REPLACEMENT)
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

if USE_LEGACY_PALETTE_LIST then
	table.insert(CHANGE_LEOPARDON, GetYeetPaletteTable(tostring(#VANILLA_PALETTE_IDS["LEGACY"]["Palettes"]), table.concat(MARVELLER)))
else
  table.insert(CHANGE_LEOPARDON, GetYeetPaletteTable(tostring(OG_VANILLA_COLOUR + 1), table.concat(MARVELLER)))
end

for i,j in pairs(PALETTE_GROUP_CHANGE_TABLE) do
	table.insert(CHANGE_LEOPARDON, j)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~SACS.pak",
["MOD_BATCHNAME"]			= "~~~~BuildFrame_Comp.pak",
["MOD_AUTHOR"]				= "WinderTP, Babscoole, Wberto",
["MOD_DESCRIPTION"]			= "Selection Augmentation for Colour System", -- AKA Palette Augmentation and Tailoring System (PAnTS)
["NMS_VERSION"]				= "",
["GLOBAL_INTEGER_TO_FLOAT"]	= "PRESERVE",
["AMUMSS_SUPPRESS_MSG"]     = "UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON
				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\BUILDCOLOUR.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							-- COMPLETELY REMOVE THE ORIGINAL COLOUR UI BLOCK (COLOUR SLOT)
							-- ["PRECEDING_KEY_WORDS"] = {"Children", "Children", "GcNGuiLayerData.xml"},
							["SPECIAL_KEY_WORDS"] = {"DataFilename", "UI/COMPONENTS/CHARCUSTOMISE/BUILDCOLOUROPTION.MBIN"},
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							-- COMPLETELY REMOVE THE ORIGINAL COLOUR UI BLOCK (SPACING)
							-- ["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData.xml"},
							-- ["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData.xml", "Layout", "GcNGuiLayoutData.xml", "SameLine", "True"},
							-- ["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						--[[{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData.xml", "Layout", "GcNGuiLayoutData.xml", "SameLine", "True"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},]]
						--[[{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData.xml", "ID", "THIS ONE"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData.xml", "Layout", "GcNGuiLayoutData.xml", "Height", "12"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcNGuiSpacingData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Data", "GcNGuiElementData.xml", "Layout", "GcNGuiLayoutData.xml", "Height", "50"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] 	= "ALL",
							["REMOVE"] = "SECTION",
						},]]
						{
							-- ADDS THE REBUILT COLOUR UI BLOCK
							-- ["PRECEDING_KEY_WORDS"] = {"GcNGuiLayerData.xml"},
							-- ["PRECEDING_FIRST"] = "TRUE",
							["SPECIAL_KEY_WORDS"] = {"ID", "LABEL"},
							["SECTION_UP_SPECIAL"] = 1,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = table.concat(COLOUR_UI_ADD_TABLE)
						},
						{
							-- UI CANVAS FOR COLOUR SLOTS
							["SPECIAL_KEY_WORDS"] = {"ID", "COLOUR1", "Layout", "GcNGuiLayoutData.xml"},
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
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData.xml" }, 
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
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData.xml" }, 
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
							["PRECEDING_KEY_WORDS"] = { "Children", "GcNGuiLayerData.xml" }, 
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
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							-- UI CANVAS FOR COLOUR SLOTS
							["SPECIAL_KEY_WORDS"] = {"ID", "COLOUR1", "Layout", "GcNGuiLayoutData.xml"},
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", UI_HEIGHT_MULTIPLIER},
							},
						},
						{
							-- EXPANDS MAIN COLOUR/MATERIAL CUSTOMISATION CANVAS TO VERTICAL 90% OF SCREEN
							["SPECIAL_KEY_WORDS"] = {"ID", "CUSTOMISE", "Layout", "GcNGuiLayoutData.xml"},
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"PositionY", "5" },
								{"Height", "100" },
							},
						},
					}
				},
			}
		}, 
	}	
}