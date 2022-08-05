ModeName = "SpawnrateForClasses"
Author = "Jackty89"

InventoryTablePath = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= ModeName..".pak",
["MOD_DESCRIPTION"]			= "Rework of all Spaceships and their bonuses and price",
["MOD_AUTHOR"]				= Author,
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= InventoryTablePath,
					["EXML_CHANGE_TABLE"] 	=
					{
						--General Ship Spawn changes for sytsems - 1 Star still has 0% chance
						{
							--2 Star systems now have a 2% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Average"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",	"40"},
								{"B",	"35"},
								{"A",	"23"},
								{"S",	"2"},
							}
						},
						{
							--3 Star System now have a 5% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Wealthy"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",	"30"},
								{"B",	"37"},
								{"A",	"28"},
								{"S",	"5"},
							}
						}
					}
				}
			}
		}
	}
}