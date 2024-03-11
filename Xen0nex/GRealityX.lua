Author = "Gumsk"			-- Edited by Xen0nex
--ModName = "gExos Challenge"
ModNameSub = "GRealityX"
BaseDescription = "Increases suit upgrade prices, changes initial suit & ship slots"
GameVersion = "452"
ModVersion = "a"

--Planning to go from 24 slots to 40 slots
SuitMainPrices = [[ <Property name="SuitUpgradePrices">
	<Property value="100000"  />
	<Property value="200000"  />
	<Property value="300000"  />
	<Property value="400000"  />
	<Property value="500000"  />
	<Property value="750000"  />
	<Property value="1000000"  />
	<Property value="1250000"  />
	<Property value="1500000"  />
	<Property value="2000000"  />
	<Property value="2500000"  />
	<Property value="3500000"  />
	<Property value="4500000"  />
	<Property value="6000000"  />
	<Property value="7500000"  />
	<Property value="10000000"  />
	<Property value="16161616"  />
	<Property value="16161616"  />
	<Property value="16161616"  />
	<Property value="16161616"  />
	<Property value="16161616"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="1616161616"  />
  </Property>]]

--Planning to go from 5 slots to 40 slots
SuitTechPrices = [[ <Property name="SuitTechOnlyUpgradePrices">
	<Property value="50000"  />
	<Property value="100000"  />
	<Property value="150000"  />
	<Property value="200000"  />
	<Property value="250000"  />
	<Property value="325000"  />
	<Property value="400000"  />
	<Property value="475000"  />
	<Property value="550000"  />
	<Property value="625000"  />
	<Property value="700000"  />
	<Property value="800000"  />
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
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="10000000"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="161616160"  />
	<Property value="1616161616"  />
  </Property>]]

--Deprecated as of NMS v4.0
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
  SuitStartingSlotLayout = 24										--24	(24)		Setting this to a value other than 24 seems to result in the game automatically unlocking random new slots each time you load the game
  SuitTechOnlyStartingSlotLayout = 5								--10	(5)
  --SuitCargoStartingSlotLayout = 0									--0		(0)			Deprecated as of NMS v4.0
  
  --Changing these values doesn't seem to have any effect:
  --SuitGenSeed = 1													--1
  --SuitGenUseSeed = "True"											--"True"		Whether the Exosuit General tab slots should use a seed to determine layout???

  --Initial unlocked slots for different starting ship tabs on a new game			Added by Xen0nex
  ShipStartingLayout = 7											--24	(7)			The game seems to add 1 to whatever value is entered here
  ShipTechOnlyStartingLayout = 11									--13	(11)
  --ShipCargoOnlyStartingLayout = 3									--0		(0)			Deprecated as of NMS v4.0


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModNameSub.." "..GameVersion..ModVersion..".pak",
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
	--[[{["PRECEDING_KEY_WORDS"] = {"SuitCargoStartingSlotLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",SuitCargoStartingSlotLayout},
	}},]]
	
	{["PRECEDING_KEY_WORDS"] = {"ShipStartingLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",ShipStartingLayout},
	}},
	{["PRECEDING_KEY_WORDS"] = {"ShipTechOnlyStartingLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",ShipTechOnlyStartingLayout},
	}},
	--[[{["PRECEDING_KEY_WORDS"] = {"ShipCargoOnlyStartingLayout"},
		["VALUE_CHANGE_TABLE"] = {
			{"Slots",ShipCargoOnlyStartingLayout},
	}},]]
	
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