-- Refiners Limits --
REFINER_SMALL  = "0" -- 0 - Original values on the right
REFINER_MEDIUM = "0" -- 3 - Unlimited = 0
REFINER_LARGE  = "0" -- 2
---------------------

-- File Settings --
FileName    = "More Refiners 1.11.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = 
					{
						FileSource1,
						FileSource2,
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "BUILD_REFINER1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"RegionLimit", REFINER_SMALL},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "BUILD_REFINER2"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"RegionLimit", REFINER_MEDIUM},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID", "BUILD_REFINER3"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"RegionLimit", REFINER_LARGE},
							},	
						},
					}
				},
			}
		},
	}
}