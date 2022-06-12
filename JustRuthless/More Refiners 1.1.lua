-----------------------------
-- Refiners Limit Settings --
-----------------------------

-- Refiners Limits --
REFINER_SMALL  = "0" -- 0 - Numbers on the right are the default values
REFINER_MEDIUM = "0" -- 3 - Zero is for Unlimited
REFINER_LARGE  = "0" -- 2

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

-- File Settings --
FileName = "More Refiners 1.1.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= FileName,
  ["MOD_AUTHOR"]				= ModAuthor,
  ["LUA_AUTHOR"]				= LuaAuthor,
  ["NMS_VERSION"]				= NMS_Version,
  ["MODIFICATIONS"] 		=                     
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {FileSource1},
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
					["MBIN_FILE_SOURCE"] 	= {FileSource2},
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
					},
				}
			},
		}
	},
}