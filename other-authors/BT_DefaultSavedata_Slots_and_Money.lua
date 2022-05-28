NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "DefaultSavedate.pak",
  ["MOD_DESCRIPTION"]		= "", 
  ["MOD_AUTHOR"]			= "Babscoole", 
  ["NMS_VERSION"]			= "3.89",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
								{
								{"Units",				 	"99999999"},  	
								{"Nanites",				 	"999999"},  	
								{"Specials",				 	"999999"},  	
								{"StartingSuitTechSlots",				 	"48"}, 
								{"StartingSuitCargoSlots",				 	"48"}, 
								{"StartingSuitSlots",				 	"48"},
								}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"WeaponInventoryLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"24"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Layout","GcInventoryLayout.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"24"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"ShipInventoryLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"ShipTechInventoryLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest1Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},	
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest2Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest3Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest4Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest5Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest6Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest7Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest8Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest9Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"Chest10Layout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"InventoryLayout","GcInventoryLayout.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},	
						{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\DEFAULTREALITY.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{	
						{
							{
						    ["SPECIAL_KEY_WORDS"] = {"SuitStartingSlotLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"SuitTechOnlyStartingSlotLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"SuitCargoStartingSlotLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"ShipStartingLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},											
						{
						    ["SPECIAL_KEY_WORDS"] = {"ShipTechOnlyStartingLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
						},					
						{
						    ["SPECIAL_KEY_WORDS"] = {"ShipCargoOnlyStartingLayout","GcInventoryLayout.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Slots",	"48"},
							},
									}
								}
							},
						},						
					},
				},
			}
		}
	}
}