
modName		= "Test_SUB_LEVEL_1"
modAuthor	= "Wbertro"
modDesc		= "Test_SUB_LEVEL_1"
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
        { -- testing bad https://discord.com/channels/215514623384748034/657304493767262218/1231544187191562252
          MBIN_FILE_SOURCE  = 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB.SCENE.MBIN',
          EXML_CHANGE_TABLE = {
            { 
              COMMENT = [[BAD line selected]],
              SPECIAL_KEY_WORDS  = {'Name', '_SubWings_D'},
              VALUE_CHANGE_TABLE = {
                {'TransY',       0.31}
              }
            },
            {
              COMMENT = [[GOOD line selected]],
              SPECIAL_KEY_WORDS  = {'Name', '_SubWings_D', "Transform", "TkTransformData.xml",},
              REPLACE_TYPE = "ALL",
              SUB_LEVEL = 4,
              VALUE_CHANGE_TABLE = {
                {'TransY',       0.31}
              }
            },
          },
        },
                
			},
		},
	}, --2 global replacements
}