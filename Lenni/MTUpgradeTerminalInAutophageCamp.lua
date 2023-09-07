NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]		= "MTUpgradeTerminalInAutophageCamp.pak",
    ["MOD_DESCRIPTION"]		= "Adds the MT Upgrade Terminal to autophage camps",
    ["MOD_AUTHOR"]			= "Lenni",
    ["NMS_VERSION"]			= "3.43", 
    ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
					-- ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE.SCENE.MBIN",
					-- ["EXML_CHANGE_TABLE"] =
					-- {
						-- {
							-- ["FSKWG"] =
							-- {
								-- {"Name", "LargeCrate34"},
								-- {"Name", "RefLargeCrate28"},
								-- {"Name", "RefLargeCrate29"},
								-- {"Name", "LargeCrate34"},
								-- {"Name", "LargeCrate35"},
								-- {"Name", "LargeCrate36"},
								-- {"Name", "LargeCrate31"},
								-- {"Name", "LargeCrate30"},
								-- {"Name", "RefResourceCont"},
							-- },
							-- ["VCT"] =
							-- {
								-- {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP.SCENE.MBIN"},
							-- }
						-- },
					-- }
					
				
				
				
				
                --    ["MBIN_FILE_SOURCE"]  = {{"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP.SCENE.MBIN", "MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\BURINGBARREL.SCENE.MBIN", "REMOVE"}},
					["MBIN_FILE_SOURCE"]  = {{"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP_TERMINAL.SCENE.MBIN", "MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\PARTS\BURINGBARREL.SCENE.MBIN", "REMOVE"}},
                }
            }
        }
    }
}