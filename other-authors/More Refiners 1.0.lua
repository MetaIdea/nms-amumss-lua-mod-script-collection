-----------------------------
-- Refiners Limit Settings --
-----------------------------

-- Refiners Limits --
REFINER_SMALL  = "0" -- 0 - Numbers on the right are the default values
REFINER_MEDIUM = "0" -- 3
REFINER_LARGE  = "0" -- 2

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "More Refiners 1.0.pak",
  ["MOD_AUTHOR"]				= "JustRuthless",
  ["LUA_AUTHOR"]				= "JustRuthless",
  ["NMS_VERSION"]				= "3.89",
  ["MODIFICATIONS"] 		=                     
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_SMALL},
							},	
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_MEDIUM},
							},	
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_LARGE},
							},	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER1"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_SMALL},
							},	
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER2"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_MEDIUM},
							},	
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"ID", "BUILD_REFINER3"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"RegionLimit",	REFINER_LARGE},
							},	
						},
					}
				},
			}
		},
	},	
}