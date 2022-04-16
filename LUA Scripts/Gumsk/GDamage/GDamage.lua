Author = "Gumsk"
ModName = "GExos Challenge"
ModNameSub = "gDamage"
BaseDescription = "Damage adjustments"
GameVersion = "382"
ModVersion = "a"

FileSource = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {

	{["SPECIAL_KEY_WORDS"] = {"Id","BASICDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 1}}}, --default 1

	{["SPECIAL_KEY_WORDS"] = {"Id","ENERGY"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMEHEATDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","NOOXYDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMECOLDDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","TOXICGASDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","RADIATIONDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 4}}}, --default 2

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG_MED"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 7}}}, --default 3.5

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTBIGGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 11}}}, --default 8

	{["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGRENADEDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 10}}}, --default 7

	{["SPECIAL_KEY_WORDS"] = {"Id","LASERDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 7}}}, --default 5

	{["SPECIAL_KEY_WORDS"] = {"Id","SMLCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 30}}}, --default 20
	
	{["SPECIAL_KEY_WORDS"] = {"Id","MEDCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","LRGCREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 80}}}, --default 50
		
	{["SPECIAL_KEY_WORDS"] = {"Id","HUGECREATUREDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 80
	
	{["SPECIAL_KEY_WORDS"] = {"Id","PLAYERPREDDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 60}}}, --default 40
		
	{["SPECIAL_KEY_WORDS"] = {"Id","PREDDMGVR"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRTDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 80}}}, --default 40
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FIEND_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 45}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","PLANTDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 25}}}, --default 14
		
	{["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 25}}}, --default 15

	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 25}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 30}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 35}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 30}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER2"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 30
		
	{["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 60}}}, --default 50
		
	{["SPECIAL_KEY_WORDS"] = {"Id","WALKERLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 25}}}, --default 9		

	{["SPECIAL_KEY_WORDS"] = {"Id","SENTINEL_FLAME"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 6}}}, --default 3

	{["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50}}}, --default 16
		
	{["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 45}}}, --default 15

	{["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 150}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 250}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 400}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","IMPACTGROUND"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 800}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","IMPACTINSTANCE"},
	["VALUE_CHANGE_TABLE"] = {
		{"Damage", 400}}},

	{["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 1}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 1}}}, --default 20

	{["SPECIAL_KEY_WORDS"] = {"Id","GASPLANT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 18

	{["SPECIAL_KEY_WORDS"] = {"Id","VENT_HEAT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125}}}, --default 75

	{["SPECIAL_KEY_WORDS"] = {"Id","SPORE_VENT"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 75}}}, --default 25

	{["SPECIAL_KEY_WORDS"] = {"Id","FISHFIEND_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 65
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FLOATER_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125}}}, --default 80
		
	{["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 35}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","GRABPLANT_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50}}}, --default 10
		
	{["SPECIAL_KEY_WORDS"] = {"Id","FISHFIEND_PROP"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 10}}}, --default 1
		
	{["SPECIAL_KEY_WORDS"] = {"Id","CLAM_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 35
		
	{["SPECIAL_KEY_WORDS"] = {"Id","VENUSFLY_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 100}}}, --default 20
		
	{["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLERSPITDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 40}}}, --default 20

	{["SPECIAL_KEY_WORDS"] = {"Id","BASETURRETPDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 20}}}, --default 5	

	{["SPECIAL_KEY_WORDS"] = {"Id","LIGHTNING"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125}}}, --default 75

	{["SPECIAL_KEY_WORDS"] = {"Id","METEOR"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 125}}}, --default 75
		
	{["SPECIAL_KEY_WORDS"] = {"Id","TORNADO"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 50}}}, --default 35
		
	{["SPECIAL_KEY_WORDS"] = {"Id","MINIDRONE_DMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 15}}}, --default 6

}}}}}}