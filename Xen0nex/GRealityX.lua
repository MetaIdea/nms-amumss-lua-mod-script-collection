Author = "Gumsk"			-- Edited by Xen0nex
--ModName = "gExos Challenge"
ModNameSub = "GRealityX"
BaseDescription = "Increases suit upgrade prices, changes initial suit & ship slots"
GameVersion = "5_62"
ModVersion = "a"

--Planning to go from 24 slots to 40 slots
SuitMainPrices = [[ <Property name="SuitUpgradePrices">
	<Property name="SuitUpgradePrices" value="100000"  />
	<Property name="SuitUpgradePrices" value="200000"  />
	<Property name="SuitUpgradePrices" value="300000"  />
	<Property name="SuitUpgradePrices" value="400000"  />
	<Property name="SuitUpgradePrices" value="500000"  />
	<Property name="SuitUpgradePrices" value="750000"  />
	<Property name="SuitUpgradePrices" value="1000000"  />
	<Property name="SuitUpgradePrices" value="1250000"  />
	<Property name="SuitUpgradePrices" value="1500000"  />
	<Property name="SuitUpgradePrices" value="2000000"  />
	<Property name="SuitUpgradePrices" value="2500000"  />
	<Property name="SuitUpgradePrices" value="3500000"  />
	<Property name="SuitUpgradePrices" value="4500000"  />
	<Property name="SuitUpgradePrices" value="6000000"  />
	<Property name="SuitUpgradePrices" value="7500000"  />
	<Property name="SuitUpgradePrices" value="10000000"  />
	<Property name="SuitUpgradePrices" value="16161616"  />
	<Property name="SuitUpgradePrices" value="16161616"  />
	<Property name="SuitUpgradePrices" value="16161616"  />
	<Property name="SuitUpgradePrices" value="16161616"  />
	<Property name="SuitUpgradePrices" value="16161616"  />
	<Property name="SuitUpgradePrices" value="161616160"  />
	<Property name="SuitUpgradePrices" value="161616160"  />
	<Property name="SuitUpgradePrices" value="161616160"  />
	<Property name="SuitUpgradePrices" value="161616160"  />
	<Property name="SuitUpgradePrices" value="161616160"  />
	<Property name="SuitUpgradePrices" value="1616161616"  />
  </Property>]]

--Planning to go from 5 slots to 40 slots
SuitTechPrices = [[ <Property name="SuitTechOnlyUpgradePrices">
	<Property name="SuitTechOnlyUpgradePrices" value="50000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="100000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="150000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="200000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="250000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="325000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="400000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="475000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="550000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="625000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="700000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="800000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="1000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="1250000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="1500000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="1750000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="2000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="2500000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="3000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="3500000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="4000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="4500000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="5000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="7500000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="10000000"  />
	<Property name="SuitTechOnlyUpgradePrices" value="161616160"  />
	<Property name="SuitTechOnlyUpgradePrices" value="161616160"  />
	<Property name="SuitTechOnlyUpgradePrices" value="161616160"  />
	<Property name="SuitTechOnlyUpgradePrices" value="161616160"  />
	<Property name="SuitTechOnlyUpgradePrices" value="161616160"  />
	<Property name="SuitTechOnlyUpgradePrices" value="1616161616"  />
  </Property>]]

--Deprecated as of NMS v4.0
SuitCargoPrices = [[ <Property name="SuitCargoUpgradePrices">	
	<Property name="SuitCargoUpgradePrices" value="100000"  />
	<Property name="SuitCargoUpgradePrices" value="200000"  />
	<Property name="SuitCargoUpgradePrices" value="300000"  />
	<Property name="SuitCargoUpgradePrices" value="400000"  />
	<Property name="SuitCargoUpgradePrices" value="600000"  />
	<Property name="SuitCargoUpgradePrices" value="800000"  />
	<Property name="SuitCargoUpgradePrices" value="1000000"  />
	<Property name="SuitCargoUpgradePrices" value="1250000"  />
	<Property name="SuitCargoUpgradePrices" value="1500000"  />
	<Property name="SuitCargoUpgradePrices" value="1750000"  />
	<Property name="SuitCargoUpgradePrices" value="2000000"  />
	<Property name="SuitCargoUpgradePrices" value="2500000"  />
	<Property name="SuitCargoUpgradePrices" value="5000000"  />
	<Property name="SuitCargoUpgradePrices" value="7500000"  />
	<Property name="SuitCargoUpgradePrices" value="10000000"  />
	<Property name="SuitCargoUpgradePrices" value="15000000"  />
	<Property name="SuitCargoUpgradePrices" value="20000000"  />
	<Property name="SuitCargoUpgradePrices" value="25000000"  />
  </Property>]]
  
  --Initial unlocked slots for different Exosuit tabs on a new game			Added by Xen0nex
  SuitStartingSlotLayout = 24										--24	(24)		Setting this to a value other than 24 seems to result in the game automatically unlocking random new slots each time you load the game
  SuitTechOnlyStartingSlotLayout = 5								--10	(5)
  --SuitCargoStartingSlotLayout = 0									--0		(0)			Deprecated as of NMS v4.0
  
  --Changing these values doesn't seem to have any effect:
  --SuitGenSeed = 1													--1
  --SuitGenUseSeed = "true"											--"true"		Whether the Exosuit General tab slots should use a seed to determine layout???

  --Initial unlocked slots for different starting ship tabs on a new game			Added by Xen0nex
  ShipStartingLayout = 6											--24	(7)			The game seems to add 1 to whatever value is entered here
  ShipTechOnlyStartingLayout = 11									--13	(11)
  --ShipCargoOnlyStartingLayout = 3									--0		(0)			Deprecated as of NMS v4.0

	--Initial unlocked slots for starting multi-tool set in "PTSd Ship+MultiTool Rebalance.lua"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
["MXML_CHANGE_TABLE"] = {
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