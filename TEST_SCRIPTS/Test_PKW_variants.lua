-- Created: Sep 02, 2022

modName		= "RerollUpgradeModules"
modAuthor	= "DarkScythe"
modDesc		= "Returns upgrade modules on dismantling"
modVer		= "0.0."
scriptVer	= "a"
gameVer		= "3.991"

-- techTable = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

-- testProduct = [[
        -- <Property value="GcTechnologyRequirement.xml">
          -- <Property name="ID" value="U_HYPERX" />
          -- <Property name="InventoryType" value="GcInventoryType.xml">
            -- <Property name="InventoryType" value="Product" />
          -- </Property>
          -- <Property name="Amount" value="1" />
        -- </Property>
-- ]]

NMS_MOD_DEFINITION_CONTAINER	= {
	["MOD_FILENAME"]			= table.concat({"__", modName, "_v", modVer, gameVer, scriptVer, ".pak"}),
	["MOD_DESCRIPTION"]			= modDesc,
	["MOD_AUTHOR"]				= modAuthor,
	["LUA_AUTHOR"]				= modAuthor,
	["NMS_VERSION"]				= gameVer,

	-- Actual mod container
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= {
						{
							COMMENT = [[1 action: Finds only one section because ALL PKW point 'exactly' to that section]],
              ["SKW"] = {"ID", "T_HDRIVE"},
							-- ["SECTION_SAVE_TO"] = "tempSection",
							-- ["SECTION_EDIT"] = "tempSection",
							-- ["VCT"] = {{"ID", "T_HDRIVE_X"}},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["SECTION_ADD_NAMED"] = "tempSection",
							["PKW"]	= {"Requirements", "GcTechnologyRequirement.xml"},
						-- },
						-- {
						-- 	["SKW"] = {"ID", "T_HDRIVE_X"},
							-- ["PKW"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ALL",
							-- ["REMOVE"] = "SECTION",
              VCT = {
                {"Amount","{:}"}, -- replace with original value
              },
						},
            
						{
							COMMENT = [[3 actions: Finds 3 sections because PKW points to those sections]],
							["SKW"] = {"ID", "T_HDRIVE"},
							["PKW"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ALL",
							-- ["REMOVE"] = "SECTION",
              VCT = {
                {"Amount","{:}"}, -- replace with original value
              },
						},
                        
						-- {
							-- ["SKW"] = {"ID", "T_HDRIVE"},
							-- ["PKW"] = {"Requirements"},
							-- ["ADD"] = testProduct,


							-- -- ["VALUE_CHANGE_TABLE"]	= {
							-- -- 	{},
							-- -- 	{},
							-- -- },
						-- },
            
					}
				},
			}
		}
	} --4 global replacements
}