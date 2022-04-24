Author = "Gumsk"
ModName = "gStack"
ModNameSub = "2"
BaseDescription = "Multiplies stack sizes"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN"
FileSource2 = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
	{
		["MBIN_CHANGE_TABLE"] = {
			{
				["MBIN_FILE_SOURCE"] = {FileSource1,FileSource2},
				["EXML_CHANGE_TABLE"] = {
					{
						["MATH_OPERATION"] = "*",
						["VALUE_CHANGE_TABLE"] = {
							{"DefaultSubstanceMaxAmount",ModNameSub},
							{"DefaultProductMaxAmount",ModNameSub},
							{"SubstanceMaxAmountLimit",ModNameSub},
							{"ProductMaxAmountLimit",ModNameSub},
						},
					},
				}
			},
		}
	}
}}
