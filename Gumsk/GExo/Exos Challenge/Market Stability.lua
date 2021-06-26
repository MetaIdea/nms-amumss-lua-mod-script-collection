NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "GExos Challenge Exos Market Stability 322a.pak",
["MOD_DESCRIPTION"]	= "LUA Adaptation of Exosolar's Market Stability",
["MOD_AUTHOR"]		= "Exosolar",
["NMS_VERSION"]		= "322",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\TRADINGCLASSDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {

	{["VALUE_CHANGE_TABLE"] = {
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