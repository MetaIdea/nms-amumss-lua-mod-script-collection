NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GTech 23a New Only.pak",
MOD_DESCRIPTION	= "Only bobbleheads, starship trails, and moving items to Living ships",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.3",
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {{
MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
EXML_CHANGE_TABLE = 
--Organic Utilities
	{{ --Economy Scanner - Add Conflict Scanner and change tech category
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_ECON","TechnologyRarity","Normal"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_ECON","TechnologyCategory","Ship"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Conflict Scanner - Add Economy Scanner
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_COMBAT","TechnologyRarity","Normal"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_COMBAT","TechnologyCategory","Ship"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},
	
	{ --Emergency Warp
	SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","TechnologyRarity","Rare"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","TechnologyCategory","Ship"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Teleport Receiver
	SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","TechnologyRarity","VeryRare"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","TechnologyCategory","Ship"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Teleport Receiver
	SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","TechnologyRarity","Common"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","TechnologyCategory","Ship"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},
--Bobbleheads
	{ --Bobblehead Apollo
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_APOLLO","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_APOLLO","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Bobblehead Artemis
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_ART","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_ART","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Bobblehead Atlas
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_ATLAS","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_ATLAS","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Bobblehead Nada
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_NADA","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_NADA","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Bobblehead Null
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_NULL","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_NULL","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Bobblehead Polo
	SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_POLO","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_BOBBLE_POLO","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},
--Starship trails
	{ --Ship trails Rainbow
	SPECIAL_KEY_WORDS = {"ID","T_SHIP_RAINBOW","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIP_RAINBOW","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},
	
	{ --Ship trails Dark
	SPECIAL_KEY_WORDS = {"ID","T_SHIP_DARK","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIP_DARK","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Ship trails Red
	SPECIAL_KEY_WORDS = {"ID","T_SHIP_RED","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIP_RED","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Ship trails Green
	SPECIAL_KEY_WORDS = {"ID","T_SHIP_GREEN","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIP_GREEN","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

	{ --Ship trails Gold
	SPECIAL_KEY_WORDS = {"ID","T_SHIP_GOLD","TechnologyRarity","Impossible"},
	PRECEDING_KEY_WORDS = "",
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIP_GOLD","TechnologyCategory","12"},
	PRECEDING_KEY_WORDS = "",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="11" />]]},

}}}}}}