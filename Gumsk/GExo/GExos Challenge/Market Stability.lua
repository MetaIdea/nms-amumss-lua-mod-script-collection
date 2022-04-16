Author = "Exosolar"
ModName = "gExos Challenge"
ModNameSub = "Market Stability"
BaseDescription = "Removes market crashing"
GameVersion = "370"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\TRADINGCLASSDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {

	{["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MaxTradingMultiplier", 1.01},		
		{"MinTradingMultiplier", 0.99}}},

	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_MINERALS"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},

	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_TECH"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_COMMODITY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_COMPONENT"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_ALLOY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_EXOTICS"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_ENERGY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}},
		
	{["SPECIAL_KEY_WORDS"] = {"Name","NONE"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},		
		{"SubstanceMultiplierChangePer100", 0.001}}}

}}}}}}