Author = "Exosolar"			--Edited by Xen0nex
ModName = "gExos Challenge"
ModNameSub = "Market StabilityX"
BaseDescription = "Removes market crashing by narrowing the range in which prices can fluctuate, reduces the effect of player selling."
GameVersion = "393"
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

	{["INTEGER_TO_FLOAT"] = "FORCE",							--Added by Xen0nex
	["REPLACE_TYPE"]         = "ALL",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSellingPriceMultiplier", 0.8},						--0.7		Lowest price you will initially pay for this type of trade item		(The Buy:-XX% on Galactic Map)
		{"MaxSellingPriceMultiplier", 0.99},					--0.9		Highest price you will initially  pay for this type of trade item	(The Buy:-XX% on Galactic Map)
		{"MinBuyingPriceMultiplier", 1.01},						--1.4		Lowest price you will initially  sell this type of trade item for	(The Sell:XX% on Galactic Map)
		{"MaxBuyingPriceMultiplier", 1.2}}},					--1.8		Highest price you will initially  sell this type of trade item for	(The Sell:XX% on Galactic Map)
	
	{["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MaxTradingMultiplier", 1.2},							--3			(1.01)
		{"MinTradingMultiplier", 0.8}}},						--0.2		(0.99)

	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_MINERALS"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)

	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_TECH"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_COMMODITY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_COMPONENT"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_ALLOY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_EXOTICS"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","UI_TRADE_TYPE_ENERGY"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.03		(0.001)
		
	{["SPECIAL_KEY_WORDS"] = {"Name","NONE"},
	["SECTION_UP"] = 1,
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.03		<---Different!		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}},			--0.001		<---Different!		(0.001)
	
	{["SPECIAL_KEY_WORDS"] = {"SpecialShop","GcTradingCategoryData.xml"},		--Added by Xen0nex
	["VALUE_CHANGE_TABLE"] = {
		{"ProductMultiplierChangePer100", 0.01},				--0.3		(0.01)
		{"SubstanceMultiplierChangePer100", 0.001}}}			--0.03		(0.001)

}}}}}}