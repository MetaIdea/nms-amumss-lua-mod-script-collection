
modName		= "Test_1"
modAuthor	= "Wbertro"
modDesc		= "Test_1"
modVer		= "."
scriptVer	= ""
gameVer		= "ALL"

NMS_MOD_DEFINITION_CONTAINER	= {
	["MOD_FILENAME"]			= table.concat({"__", modName, "_v", modVer, gameVer, scriptVer, ".pak"}),
	["MOD_DESCRIPTION"]			= modDesc,
	["MOD_AUTHOR"]				= modAuthor,
	["LUA_AUTHOR"]				= modAuthor,
	["NMS_VERSION"]				= gameVer,
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"]	= [[GCATLASGLOBALS.GLOBAL.MBIN]],
					["EXML_CHANGE_TABLE"]	= {
						{
							COMMENT = [[1 action: change 0 to 53]],
              VCT = {
                {"ChanceOfDisconnect","53"},
              },
						},            
					},
				},        
			},
		},
	}, --1 global replacements
}