Path = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR.SCENE.MBIN"

--Multiply the existing min and max values by the following. X and Z are horizontal (N/S and E/W). Y is vertical, the height of the object.
AABBMINX_Mult = 3					-- N/S minimum scaling, normally 33% of original item size. This is a negative number.
AABBMAXX_Mult = 3					-- N/S maximum scaling, normally 300% of original item size. This is a positive number.
AABBMINY_Mult = 0.1					-- N/S minimum scaling, normally 33% of original item size. This is a negative number.
AABBMAXY_Mult = 0.1					-- N/S maximum scaling, normally 300% of original item size. This is a positive number.
AABBMINZ_Mult = 3					-- E/W minimum scaling, normally 33% of original item size. This is a negative number.
AABBMAXZ_Mult = 3					-- E/W maximum scaling, normally 300% of original item size. This is a positive number.


NMS_MOD_DEFINITION_CONTAINER = 
{["MOD_FILENAME"]	= "GBase 232a Item Size Wood Floor.pak",
["MOD_DESCRIPTION"]	= "Adjusts the scaling options for the named file",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.3.2",
["MODIFICATIONS"]	= {{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = {{
	["MBIN_FILE_SOURCE"] = Path,
	["EXML_CHANGE_TABLE"] = 
	{
		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMINX"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMINX_Mult}
		}},
			
		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMAXX"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMAXX_Mult}
		}},
			
		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMINY"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMINY_Mult}
		}},
			
		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMAXY"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMAXY_Mult}
		}},			

		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMINZ"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMINZ_Mult}
		}},
		
		{["SPECIAL_KEY_WORDS"] = {"Name","AABBMAXZ"},
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] = {
			{"Value", AABBMAXZ_Mult}
		}}
	}},}},}}