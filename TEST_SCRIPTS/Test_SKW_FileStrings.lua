NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "Test_SKW_FileStrings.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Wbertro",
["NMS_VERSION"]     = "",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
          ["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              COMMENT = [[1) works: in SKW, "\" is used in the EXML
                        "MODELS\EFFECTS\WARP\SPEEDTUNNEL.SCENE.MBIN"]],
							SKW = {"Value","MODELS\EFFECTS\WARP\SPEEDTUNNEL.SCENE.MBIN",},
              VCT = {
                {"Name","SCENEGRAPH"},
              },
            },
          
						{
              COMMENT = [[2) works: in SKW, "\" is used in the EXML, AMUMSS changes double "\" into single "\"
                        "MODELS\\EFFECTS\WARP\\SPEEDTUNNEL.SCENE.MBIN"]],
							SKW = {"Value","MODELS\\EFFECTS\WARP\\SPEEDTUNNEL.SCENE.MBIN",},
              VCT = {
                {"Name","SCENEGRAPH"},
              },
            },
						{
              COMMENT = [=[3) works: in SKW, '\' is used in the EXML, AMUMSS changes double '\\' into single '\'
                        [[MODELS\EFFECTS\\WARP\SPEEDTUNNEL.SCENE.MBIN]]]=],
							SKW = {"Value",[[MODELS\EFFECTS\\WARP\SPEEDTUNNEL.SCENE.MBIN]],},
              VCT = {
                {"Name","SCENEGRAPH"},
              },
            },
						{
              COMMENT = [=[4) won't work: in SKW, HG uses BOTH '/' and '\' in MBIN, cannot automatically do it
                        script writer MUST use the right spelling
                        [[MODELS/EFFECTS/WARP/SPEEDTUNNEL.SCENE.MBIN]]]=],
							SKW = {"Value",[[MODELS/EFFECTS/WARP/SPEEDTUNNEL.SCENE.MBIN]],},
              VCT = {
                {"Name","SCENEGRAPH"},
              },
            },
          },
          
        },

        -- test VALUE_MATCH string
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\TECH\TECHBROKENICON.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{	
              COMMENT = [[5) works here: VALUE_MATCH, HG uses BOTH '/' and '\' in MBIN, cannot automatically do it
                        so the string used must be exact]],
							-- SKW = {"Image", "/TEXTURES/UI/HUD/HAZARDEXCLAMATION.DDS",}, -- not needed
							["VALUE_MATCH"] = "/TEXTURES/UI/HUD/HAZARDEXCLAMATION.DDS", -- this is unique in the file
              ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Image",	"/TEXTURES/UI/HUD/HAZARDEXCLAMATION2.DDS"},	--Use new uncached notification icon
							}
						},
					},
				},
        
			},
		},
	},	--4 global replacements
}