Author = "Gumsk"			-- Edited by Xen0nex
ModName = "gExos Challenge"
ModNameSub = "RealityX"
BaseDescription = "Increases suit upgrade prices"
GameVersion = "393"
ModVersion = "a"

SuitMainPrices = [[ <Property name="SuitUpgradePrices">
	<Property value="75000"  />
	<Property value="150000"  />
	<Property value="225000"  />
	<Property value="300000"  />
	<Property value="375000"  />
	<Property value="450000"  />
	<Property value="525000"  />
	<Property value="600000"  />
	<Property value="675000"  />
	<Property value="750000"  />
	<Property value="1000000"  />
	<Property value="1250000"  />
	<Property value="1500000"  />
	<Property value="1750000"  />
	<Property value="2000000"  />
	<Property value="2500000"  />
	<Property value="3000000"  />
	<Property value="3500000"  />
	<Property value="4000000"  />
	<Property value="4500000"  />
	<Property value="5000000"  />
	<Property value="7500000"  />
	<Property value="10000000"  />
  </Property>]]

SuitTechPrices = [[ <Property name="SuitTechOnlyUpgradePrices">
	<Property value="50000"  />
	<Property value="100000"  />
	<Property value="150000"  />
	<Property value="200000"  />
	<Property value="250000"  />
	<Property value="300000"  />
	<Property value="350000"  />
	<Property value="400000"  />
	<Property value="450000"  />
	<Property value="500000"  />
	<Property value="600000"  />
	<Property value="700000"  />
	<Property value="800000"  />
	<Property value="1000000"  />
  </Property>]]

SuitCargoPrices = [[ <Property name="SuitCargoUpgradePrices">	
	<Property value="100000"  />
	<Property value="200000"  />
	<Property value="300000"  />
	<Property value="400000"  />
	<Property value="600000"  />
	<Property value="800000"  />
	<Property value="1000000"  />
	<Property value="1250000"  />
	<Property value="1500000"  />
	<Property value="1750000"  />
	<Property value="2000000"  />
	<Property value="2500000"  />
	<Property value="5000000"  />
	<Property value="7500000"  />
	<Property value="10000000"  />
	<Property value="15000000"  />
	<Property value="20000000"  />
	<Property value="25000000"  />
  </Property>]]
  
  --Initial unlocked slots for different Exosuit tabs on a new game			Added by Xen0nex
  SuitStartingSlotLayout = 24										--24	(20)		Setting this to a value other than 24 seems to result in the game automatically unlocking random new slots each time you load the game
  SuitTechOnlyStartingSlotLayout = 0								--4		(0)
  SuitCargoStartingSlotLayout = 0									--2		(0)
  
  --These changes didn't seem to have any effect
  --SuitGenSeed = 1													--1
  --SuitGenUseSeed = "True"											--"True"		Whether the Exosuit General tab slots should use a seed to determine layout???

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"SuitStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",SuitStartingSlotLayout},
			--{"Seed",SuitGenSeed},
			--{"UseSeedValue",SuitGenUseSeed},
	}},
	{["PRECEDING_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",SuitTechOnlyStartingSlotLayout},
	}},
	{["PRECEDING_KEY_WORDS"] = {"SuitCargoStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",SuitCargoStartingSlotLayout},
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
}}
}}}}