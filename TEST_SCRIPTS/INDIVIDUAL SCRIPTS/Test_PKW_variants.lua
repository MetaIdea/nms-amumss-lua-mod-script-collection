
modName		= "Test_PKW_variants"
modAuthor	= "Wbertro"
modDesc		= "Test_PKW_variants"
modVer		= "."
scriptVer	= ""
gameVer		= "ALL"

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
							["PKW"]	= {"Requirements", "GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ALL",
              VCT = {
                {"Amount","{:}"}, -- replace with original value
              },
						},
            
						{
							COMMENT = [[3 actions: Finds 3 sections because PKW points to those sections]],
							["SKW"] = {"ID", "T_HDRIVE"},
							["PKW"] = {"GcTechnologyRequirement.xml"},
							["REPLACE_TYPE"] = "ALL",
              VCT = {
                {"Amount","{:}"}, -- replace with original value
              },
						},
					},
				},        
			},
		},
	}, --4 global replacements
}