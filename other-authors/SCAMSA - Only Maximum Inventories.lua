--EDITABLE SECTION BEGINS HERE--

--Mod Settings

--Minimum and Maximum slot values of generated ships. (Fighter, Hauler etc.)

MinInventorySlotsShip	=	48
MaxInventorySlotsShip	=	48

--Minimum and Maximum slot values of generated living ships.

MinInventorySlotsLivingShip	=	48
MaxInventorySlotsLivingShip	=	48

--Minimum and Maximum slot values of generated freighters.

MinInventorySlotsFreighter	=	48
MaxInventorySlotsFreighter	=	48

--Minimum and Maximum slot values of generated multi-tools. (DO NOT SET ANYTHING ABOVE 24, IT WILL CRASH THE GAME)

MinInventorySlotsMultiTool	=	24
MaxInventorySlotsMultiTool	=	24

--Minimum and Maximum slot values of generated exocrafts.

MinInventorySlotsExocraft	=	48
MaxInventorySlotsExocraft	=	48

--Minimum and maximum technology slot values of generated ships.

MinTechSlotsShip	= 48
MaxTechSlotsShip	= 48

--Minimum and maximum technology slot values of generated living ships.

MinTechSlotsLivingShip	= 48
MaxTechSlotsLivingShip	= 48

--Minimum and maximum technology slot values of generated freighters.

MinTechSlotsFreighter	= 48
MaxTechSlotsFreighter	= 48

--Minimum and maximum cargo slot values of generated ships.

MinCargoSlotsShip	= 48
MaxCargoSlotsShip	= 48

--Minimum and maximum cargo slot values of generated living ships.

MinCargoSlotsLivingShip	= 48
MaxCargoSlotsLivingShip	= 48

--Minimum and maximum cargo slot values of generated freighters.

MinCargoSlotsFreighter	= 48
MaxCargoSlotsFreighter	= 48

--Maximum inventory capacity of ships depending on their class

SClassMaxInventorySize	=	48
AClassMaxInventorySize	=	48
BClassMaxInventorySize	=	48
CClassMaxInventorySize	=	48

--EDITABLE SECTION ENDS HERE--

--UNEDITABLE SECTION STARTS HERE--

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SCAMSA - Only Maximum Inventories.pak",
["MOD_AUTHOR"]				= "musty123",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "Every generated ship, multi-tool and freighter will have maxed inventories.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				--SHIP INVENTORY DATA--
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
					{
							["PRECEDING_KEY_WORDS"] = "SciSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SciMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SciLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FgtSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FgtMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FgtLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShuSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShtMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShtLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DrpSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DrpMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DrpLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RoySmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RoyMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RoyLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SailSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SailMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SailLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsShip},
								{"MaxSlots",		MaxInventorySlotsShip},
								{"MinTechSlots",		MinTechSlotsShip},
								{"MaxTechSlots",		MaxTechSlotsShip},
								{"MinCargoSlots",		MinCargoSlotsShip},
								{"MaxCargoSlots",		MaxCargoSlotsShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "AlienSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsLivingShip},
								{"MaxSlots",		MaxInventorySlotsLivingShip},
								{"MinTechSlots",		MinTechSlotsLivingShip},
								{"MaxTechSlots",		MaxTechSlotsLivingShip},
								{"MinCargoSlots",		MinCargoSlotsLivingShip},
								{"MaxCargoSlots",		MaxCargoSlotsLivingShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "AlienMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsLivingShip},
								{"MaxSlots",		MaxInventorySlotsLivingShip},
								{"MinTechSlots",		MinTechSlotsLivingShip},
								{"MaxTechSlots",		MaxTechSlotsLivingShip},
								{"MinCargoSlots",		MinCargoSlotsLivingShip},
								{"MaxCargoSlots",		MaxCargoSlotsLivingShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "AlienLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsLivingShip},
								{"MaxSlots",		MaxInventorySlotsLivingShip},
								{"MinTechSlots",		MinTechSlotsLivingShip},
								{"MaxTechSlots",		MaxTechSlotsLivingShip},
								{"MinCargoSlots",		MinCargoSlotsLivingShip},
								{"MaxCargoSlots",		MaxCargoSlotsLivingShip},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponSmall", --KEEP MULTITOOLS MAX SLOTS AT 24, OTHERWISE GAME WILL FREEZE ON LOADING SCREEN--
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsMultiTool},
								{"MaxSlots",		MaxInventorySlotsMultiTool},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponMedium", --KEEP MULTITOOLS MAX SLOTS AT 24, OTHERWISE GAME WILL FREEZE ON LOADING SCREEN--
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsMultiTool},
								{"MaxSlots",		MaxInventorySlotsMultiTool},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WeaponLarge", --KEEP MULTITOOLS MAX SLOTS AT 24, OTHERWISE GAME WILL FREEZE ON LOADING SCREEN--
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsMultiTool},
								{"MaxSlots",		MaxInventorySlotsMultiTool},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FreighterSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsFreighter},
								{"MaxSlots",		MaxInventorySlotsFreighter},
								{"MinTechSlots",		MinTechSlotsFreighter},
								{"MaxTechSlots",		MaxTechSlotsFreighter},
								{"MinCargoSlots",		MinCargoSlotsFreighter},
								{"MaxCargoSlots",		MaxCargoSlotsFreighter},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FreighterMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsFreighter},
								{"MaxSlots",		MaxInventorySlotsFreighter},
								{"MinTechSlots",		MinTechSlotsFreighter},
								{"MaxTechSlots",		MaxTechSlotsFreighter},
								{"MinCargoSlots",		MinCargoSlotsFreighter},
								{"MaxCargoSlots",		MaxCargoSlotsFreighter},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "FreighterLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsFreighter},
								{"MaxSlots",		MaxInventorySlotsFreighter},
								{"MinTechSlots",		MinTechSlotsFreighter},
								{"MaxTechSlots",		MaxTechSlotsFreighter},
								{"MinCargoSlots",		MinCargoSlotsFreighter},
								{"MaxCargoSlots",		MaxCargoSlotsFreighter},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleSmall",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsExocraft},
								{"MaxSlots",		MaxInventorySlotsExocraft},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleMedium",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsExocraft},
								{"MaxSlots",		MaxInventorySlotsExocraft},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VehicleLarge",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		MinInventorySlotsExocraft},
								{"MaxSlots",		MaxInventorySlotsExocraft},
							}
						},
					}
				}
			}
		},
	}	
}
--UNEDITABLE SECTION ENDS HERE--