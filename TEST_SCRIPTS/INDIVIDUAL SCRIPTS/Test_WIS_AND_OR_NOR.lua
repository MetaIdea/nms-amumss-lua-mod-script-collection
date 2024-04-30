NMS_MOD_DEFINITION_CONTAINER = {
	MOD_AUTHOR = [[Wbertro]],
	MOD_FILENAME = [[Test_WIS_AND_OR_NOR.pak]],
	MOD_DESCRIPTION = [[]],
	NMS_VERSION = [[]],
	MODIFICATIONS = {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FS = [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA_EXTERIOR.SCENE.MBIN]],
					EXML_CT = {
            
            {
 							COMMENT = [[3 sections found, one WIS]],
              PRECEDING_FIRST = [[true]],
							PRECEDING_KEY_WORDS = {[[TkSceneNodeData.xml]],},
							REPLACE_TYPE = [[ALL]],
              WISEC_LOP = "OR", -- default
              WIS = {
                {"NameHash","507973633"},
              },
            },

            -- also work
            -- {
 							-- COMMENT = [[3 sections found, one WISS]],
              -- PRECEDING_FIRST = [[true]],
							-- PRECEDING_KEY_WORDS = {[[TkSceneNodeData.xml]],},
							-- REPLACE_TYPE = [[ALL]],
              -- WISUBSEC_LOP = "OR", -- default
              -- WISS = {
                -- {"NameHash","507973633"},
              -- },
            -- },

            {
 							COMMENT = [[4 sections found, multiple WIS]],
              PRECEDING_FIRST = [[true]],
							PRECEDING_KEY_WORDS = {[[TkSceneNodeData.xml]],},
							REPLACE_TYPE = [[ALL]],
              WISEC_LOP = "OR",
              WIS = {
                {"NameHash","507973633"},
                {"Name","polySurface1988"},
              },
            },

            -- also work
            -- {
 							-- COMMENT = [[4 sections found, multiple WISS]],
              -- PRECEDING_FIRST = [[true]],
							-- PRECEDING_KEY_WORDS = {[[TkSceneNodeData.xml]],},
							-- REPLACE_TYPE = [[ALL]],
              -- WISUBSEC_LOP = "OR",
              -- WISS = {
                -- {"NameHash","507973633"},
                -- {"Name","polySurface1988"},
              -- },
            -- },

            {
 							COMMENT = [[14 sections found, one WIS using NOR]],
							PRECEDING_KEY_WORDS = {[[TkSceneNodeData.xml]],},
              WISEC_LOP = "NOR",
              WIS = {
                {"Name","EntranceGlow"},
              },
							REMOVE = [[SECTION]],
            },
            
					},
				},
			},
		},
	}, --14 global replacements
}