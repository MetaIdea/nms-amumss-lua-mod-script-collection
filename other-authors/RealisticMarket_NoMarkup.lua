NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_RealisticMarketNoMarkup.pak",
["MOD_DESCRIPTION"]		= "Overhaul to make markets realistic, plus adding blacklisted item into shop's selling listing",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "261",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Nanites 1275 unit pricing
		["SPECIAL_KEY_WORDS"] = {"ID","TECHFRAG"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1275"}}},
		{ --Removes markup from all items
		["VALUE_CHANGE_TABLE"] = {
			{"SpaceStationMarkup","0"},
			{"BuyBaseMarkup","0"},
			{"BuyMarkupMod","0"}},
			["REPLACE_TYPE"] = "ALL"},
		{ --Nanites 0 Inflation Cost (flat price)
		["SPECIAL_KEY_WORDS"] = {"ID","TECHFRAG","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","0"},
				{"BuyMarkupMod","0"}}},
	}},
	
	{["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Removes markup from all items
		["VALUE_CHANGE_TABLE"] = {
			{"SpaceStationMarkup","0"},
			{"BuyBaseMarkup","0"},
			{"BuyMarkupMod","0"}},
			["REPLACE_TYPE"] = "ALL"},
		--Inflate S class Freighter modules
		{ --S mining
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_MINE4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_MINE1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_MINE2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_MINE3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_MINE4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S scanner
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_EXP4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_EXP1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_EXP2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_EXP3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_EXP4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S comm array
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_TRA4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_TRA1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_TRA2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_TRA3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_TRA4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S defensive system
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_COM4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_COM1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_COM2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_COM3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_COM4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S fueling
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_FUEL4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_FUEL1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_FUEL2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_FUEL3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_FUEL4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S Navigation System (speed)
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_SPE4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_SPE1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_SPE2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_SPE3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_SPE4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		{ --S Hyperdrive
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_HYP4","Cost","GcItemPriceModifiers.xml"},
			["VALUE_CHANGE_TABLE"] = {
				{"SpaceStationMarkup","0"},
				{"LowPriceMod","0"},
				{"HighPriceMod","0"},
				{"BuyBaseMarkup","9"},
				{"BuyMarkupMod","0"}}},
		{ --Pricing
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_HYP1"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","1000"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_HYP2"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","2500"}}},
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_HYP3"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","5000"}}},	
		{
		["SPECIAL_KEY_WORDS"] = {"Id","U_FR_HYP4"},
			["VALUE_CHANGE_TABLE"] = {
				{"BaseValue","10000"}}},
		}},

	{["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\TRADINGCLASSDATATABLE.MBIN",
	["EXML_CHANGE_TABLE"] = {

	{ --Halt prices changes from all items
		["VALUE_CHANGE_TABLE"] = {
			{"ProductMultiplierChangePer100", 0.0},		
			{"SubstanceMultiplierChangePer100", 0.0}},
			["REPLACE_TYPE"] = "ALL"},
	}},
}}}}