
modName		= "Test_4"
modAuthor	= "Wbertro"
modDesc		= "Test_4"
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
					["MBIN_FILE_SOURCE"]	= [[GCATLASGLOBALS.GLOBAL.MBIN]],
					["EXML_CHANGE_TABLE"]	= {
						{
							COMMENT = [[1 action: change 20 to 99]],
              VCT = {
                {"TimeoutSecConnection","99"},
              },
						},            
					},
				},        
			},
		},
	}, --1 global replacements
}