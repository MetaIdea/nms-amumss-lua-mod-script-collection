Author = "Gumsk"
ModName = "gBobble"
ModNameSub = "lMonk"
BaseDescription = "Repositions the fighter bobblehead"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1
			EXML_CHANGE_TABLE  = {
				{
					INTEGER_TO_FLOAT  = "FORCE",
					MATH_OPERATION     = "+",
					SPECIAL_KEY_WORDS  = {"Name", "BobbleHeadLocator"},
					VALUE_CHANGE_TABLE   = {
						{"TransX",	0.081},		-- 0.088366
						{"TransY",	0.0208},	-- -0.485839
						{"TransZ",	0.081},		-- 1.067041
						{"ScaleX",	-0.29},		-- 1
						{"ScaleY",	-0.29},		-- 1
						{"ScaleZ",	-0.3}		-- 1
					}
				}
			}
		}
	}
},
}}