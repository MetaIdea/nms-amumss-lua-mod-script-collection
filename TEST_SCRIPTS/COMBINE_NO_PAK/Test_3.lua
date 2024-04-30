
modName		= "Test_3"
modAuthor	= "Wbertro"
modDesc		= "Test_3"
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
							COMMENT = [[2 actions: back to original values]],
              VCT = {
                {"ChanceOfDisconnect","0"},
                {"TimeoutSecConnection","20"},
              },
						},            
					},
				},        
			},
		},
	}, --2 global replacements
}