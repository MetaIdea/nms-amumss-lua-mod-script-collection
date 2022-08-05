
Author			= "SpeedyS©1978 @_04_08_2022"
AuthorII		= "© by Onykron, SpeedyS©1978"
ModName			= "HyperStack"
GameVersion		= "ENDURANCE 3.98"
BaseDescription	= "This mod increases the stack to Max"

Stack 				= 9999999	--change this value for stack multiplier general
SubProdMulti 		= 1			--change this value for stack multiplier of substances and products
Limit 				= 9999999	--change this value for max limit
PersonalTechWidth 	= 8
PersonalTechHeight 	= 6

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= ModName.." for NMS "..GameVersion..".pak",
	["MOD_AUTHOR"]		= Author,
	["LUA_AUTHOR"]		= AuthorII,
	["NMS_VERSION"]		= GameVersion,
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN"},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"]	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSubstanceMaxAmount",			Stack},  --Original "9999"  line 4
								{"CargoProductStorageMultiplier",		Stack},  --Original "10"  line 7
								{"ShipProductStorageMultiplier",		Stack},  --Original "5"  line 9
								{"FreighterProductStorageMultiplier",	Stack},  --Original "10" line 11
								{"ChestProductStorageMultiplier",		Stack},  --Original "20" line 13
								{"BaseCapsuleProductStorageMultiplier",	Stack},  --Original "100" line 15
								{"DefaultProductStorageMultiplier",		Stack},  --Original "5" line 17
								{"SubstanceMaxAmountLimit",				Limit},  --Original "9999" line 18
								{"ProductMaxAmountLimit",				Limit},  --Original "9999" line 19
								{"PlayerPersonalInventoryTechWidth",	PersonalTechWidth},
								{"PlayerPersonalInventoryTechHeight",	PersonalTechHeight},
							}
						}
					}
				}, --9 replacements
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSubstanceMaxAmount",				Stack},  --Original "9999"  line 4
								{"CargoSubstanceStorageMultiplier",			"1"},  	 --Original "2"  line 6
								{"CargoProductStorageMultiplier",			Stack},  --Original "10"  line 7
								{"ShipSubstanceStorageMultiplier",			"1"},  	 --Original "2"  line 8
								{"ShipProductStorageMultiplier",			Stack},  --Original "5"  line 9
								{"FreighterSubstanceStorageMultiplier",		"1"},  	 --Original "4" line 10
								{"FreighterProductStorageMultiplier",		Stack},  --Original "10" line 11
								{"ChestSubstanceStorageMultiplier",			"1"},  	 --Original "4" line 12
								{"ChestProductStorageMultiplier",			Stack},  --Original "20" line 13
								{"BaseCapsuleSubstanceStorageMultiplier",	"1"},  	 --Original "8" line 14
								{"BaseCapsuleProductStorageMultiplier",		Stack},  --Original "100" line 15
								{"DefaultProductStorageMultiplier",			Stack},  --Original "5" line 17
								{"SubstanceMaxAmountLimit",					Limit},  --Original "9999" line 18
								{"ProductMaxAmountLimit",					Limit},  --Original "9999" line 19
								{"PlayerPersonalInventoryTechWidth",	PersonalTechWidth},
								{"PlayerPersonalInventoryTechHeight",	PersonalTechHeight}
							}
						}
					}
				}, --9 replacements
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",		-- what key words must occur in lines prior your desired value you want to change
							["MATH_OPERATION"] 		= "",		-- "*", "+", "-", "/" or leave empty for normal replacement
							["REPLACE_TYPE"] 		= "ALL",	-- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_MATCH"] 		= "0", 		-- only change value(s) that match this value
							["VALUE_MATCH_OPTIONS"] = "~=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	SubProdMulti}	-- Original many Value
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "", 
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "ALL", 
							["VALUE_MATCH"] 		= "0", 
							["VALUE_MATCH_OPTIONS"] = "~=", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	SubProdMulti}	-- Original many Value
							}
						}
					}
				}--1145 replacements
			}
		}
	}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE