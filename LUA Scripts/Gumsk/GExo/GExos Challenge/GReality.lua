Author = "Gumsk"
ModName = "gExos Challenge"
ModNameSub = "Reality"
BaseDescription = "Increases suit upgrade prices"
GameVersion = "370"
ModVersion = "a"

SuitMainPrices = [[ <Property name="SuitUpgradePrices">
    <Property value="30000" />
    <Property value="50000" />
    <Property value="70000" />
    <Property value="90000" />
    <Property value="200000" />
    <Property value="400000" />
    <Property value="600000" />
    <Property value="800000" />
    <Property value="1000000" />
    <Property value="3000000" />
    <Property value="5000000" />
    <Property value="7000000" />
    <Property value="9000000" />
    <Property value="20000000" />
    <Property value="40000000" />
    <Property value="60000000" />
    <Property value="80000000" />
    <Property value="100000000" />
    <Property value="300000000" />
    <Property value="500000000" />
    <Property value="700000000" />
    <Property value="900000000" />
    <Property value="1000000000" />
    <Property value="2000000000" />
  </Property>]]

SuitTechPrices = [[ <Property name="SuitTechOnlyUpgradePrices">
    <Property value="10000" />
    <Property value="40000" />
    <Property value="70000" />
    <Property value="100000" />
    <Property value="400000" />
    <Property value="700000" />
    <Property value="1000000" />
    <Property value="4000000" />
    <Property value="70000000" />
    <Property value="100000000" />
    <Property value="400000000" />
    <Property value="700000000" />
    <Property value="1000000000" />
    <Property value="2000000000" />
  </Property>]]

SuitCargoPrices = [[ <Property name="SuitCargoUpgradePrices">	
    <Property value="1000" />
    <Property value="10000" />
    <Property value="20000" />
    <Property value="30000" />
    <Property value="40000" />
    <Property value="50000" />
    <Property value="60000" />
    <Property value="70000" />
    <Property value="80000" />
    <Property value="90000" />
    <Property value="100000" />
    <Property value="200000" />
    <Property value="300000" />
    <Property value="400000" />
    <Property value="500000" />
    <Property value="600000" />
    <Property value="700000" />
    <Property value="800000" />
    <Property value="900000" />
    <Property value="1000000" />
    <Property value="2000000" />
    <Property value="3000000" />
    <Property value="4000000" />
    <Property value="5000000" />
    <Property value="6000000" />
    <Property value="7000000" />
    <Property value="8000000" />
    <Property value="9000000" />
    <Property value="10000000" />
    <Property value="20000000" />
    <Property value="30000000" />
    <Property value="40000000" />
    <Property value="50000000" />
    <Property value="60000000" />
    <Property value="70000000" />
    <Property value="80000000" />
    <Property value="90000000" />
    <Property value="100000000" />
    <Property value="200000000" />
    <Property value="300000000" />
    <Property value="400000000" />
    <Property value="500000000" />
    <Property value="600000000" />
    <Property value="700000000" />
    <Property value="800000000" />
    <Property value="900000000" />
    <Property value="1000000000" />
    <Property value="2000000000" />
  </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots","0"},
	}},
	{["PRECEDING_KEY_WORDS"] = {"SuitCargoStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots","0"},
	}},
	
	{["PRECEDING_KEY_WORDS"] = {"SuitUpgradePrices"},
		["REMOVE"] = "SECTION",
	},
	{["PRECEDING_KEY_WORDS"] = {"ShipTechOnlyStartingLayout"},
		["ADD"] = SuitMainPrices,
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
	},

	{["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyUpgradePrices"},
		["REMOVE"] = "SECTION",
	},
	{["PRECEDING_KEY_WORDS"] = {"SuitUpgradePrices"},
		["ADD"] = SuitTechPrices,
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
	},

	{["PRECEDING_KEY_WORDS"] = {"SuitCargoUpgradePrices"},
		["REMOVE"] = "SECTION",
	},
	{["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyUpgradePrices"},
		["ADD"] = SuitCargoPrices,
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
	},
	
}}}}}}