
NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME		= "GTech 233b Alien.pak",
MOD_DESCRIPTION		= "Only Alien ship changes",
MOD_AUTHOR			= "Gumsk",
NMS_VERSION			= "2.3.3",
MODIFICATIONS		= {{
MBIN_CHANGE_TABLE	= {{
MBIN_FILE_SOURCE	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
EXML_CHANGE_TABLE	= {
--Alien Adjustments
	{ --Economy Scanner - Add Conflict Scanner and change tech category
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_ECON","TechnologyRarity","Normal"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_ECON","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Conflict Scanner - Add Economy Scanner
	SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_COMBAT","TechnologyRarity","Normal"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPSCAN_COMBAT","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},
	
	{ --Emergency Warp
	SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","TechnologyRarity","Rare"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_QUICKWARP","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Teleport Receiver
	SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","TechnologyRarity","VeryRare"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIP_TELEPORT","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Rocket Launcher
	SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","TechnologyRarity","Common"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPROCKETS","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Rockets Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_ROCKETS","TechnologyRarity","Rare"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_ROCKETS","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Photonix Core
	SPECIAL_KEY_WORDS = {"ID","PHOTONIX_CORE","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","PHOTONIX_CORE","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Shotgun
	SPECIAL_KEY_WORDS = {"ID","SHIPSHOTGUN","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPSHOTGUN","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Shotgun Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPSHOT","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIPSHOT","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Shotgun Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPSHOT","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_SHIPSHOT","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Minigun
	SPECIAL_KEY_WORDS = {"ID","SHIPMINIGUN","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPMINIGUN","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Minigun Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPMINI","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIPMINI","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Minigun Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPMINI","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_SHIPMINI","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Infra-Knife
	SPECIAL_KEY_WORDS = {"ID","SHIPPLASMA","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","SHIPPLASMA","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Infra-Knife Upgrade
	SPECIAL_KEY_WORDS = {"ID","T_SHIPBLOB","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","T_SHIPBLOB","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},

	{ --Ship Infra-Knife Upgrade
	SPECIAL_KEY_WORDS = {"ID","UT_SHIPBLOB","TechnologyRarity","Impossible"}, 
	LINE_OFFSET = "-3",
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	REMOVE = "LINE"},
	
	{SPECIAL_KEY_WORDS = {"ID","UT_SHIPBLOB","TechnologyCategory","Ship"}, 
	VALUE_CHANGE_TABLE = {{"IGNORE","IGNORE"}},
	ADD = [[		<Property name="TechnologyCategory" value="AllShips" />]]},
}}}}}}