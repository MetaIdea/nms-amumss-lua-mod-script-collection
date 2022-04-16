--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Free Upgrades.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]			= "",         --optional, for reference
  ["NMS_VERSION"]			= "3.0",      --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","CUSTOMISE_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Upgrade Slots"}, 		-- Original "UI_CUSTOM_FREIGHTER_OPT_A"
								{"Cost",	""},					-- Original "C_INV_FREIGHT"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?SHIP_SALVAGE_UPGRADE"},
							["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Upgrade Slots"}, 		-- Original "UI_SALVAGE_INV_OPTA"
								{"Cost",	""},					-- Original "C_INV_SAL_CASH"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","?SHIP_SALVAGE_UPGRADE"},
							["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Upgrade Class"}, 		-- Original "UI_SALVAGE_CLASS_OPT"
								{"Text",	""}, 					-- Original "UI_SALVAGE_CLASS_RES"
								{"Cost",	""},					-- Original "C_CLASS_UPGRADE"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_UPGRADE"},
							["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Upgrade Slots"}, 		-- Original "UI_WEAP_UPGRADE_INV_OPTA"
								{"Cost",	""},					-- Original "C_INV_WEAP_C"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEAPON_UPGRADE"},
							["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml","GcAlienPuzzleOption.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Upgrade Class"}, 		-- Original "UI_SALVAGE_CLASS_OPT"
								{"Text",	""}, 					-- Original "UI_WEAP_UPGRADE_CLASS_RES"
								{"Cost",	""},					-- Original "C_WEAP_UPGRADE"
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id","R_FREIGHTSLOT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Cost",	""},					-- Original "C_INV_FREIGHTR"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_SHIPSLOT_CASH"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Cost",	""},					-- Original "C_INV_SAL_CASHR"
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_WEAPSLOT_CASH"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Cost",	""},					-- Original "C_INV_WEAP_CR"
							},
						},
					},
				},
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE