Author = "Gumsk"
ModName = "gGame"
ModNameSub = "Terrain"
BaseDescription = "Various modifications to gameplay globals"
GameVersion = "403"
ModVersion = "a"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {

							--Terrain Resources
								{"ResourceReducer",7},				--10; Reduces amount of standard resource deposit yields. Higher means fewer resources.
								{"ResourceMinAmount",2},			--1; Minimum amount of standard resource deposit yields per hit.
								{"ResourceMaxAmount",3},			--2; Maximum amount of standard resource deposit yields per hit.
								{"ResourceCommonReducer",4},		--5 ???
								{"ResourceCommonMinAmount",2},		--1 ???
								{"ResourceCommonMaxAmount",12},		--8 ???
								{"ResourceDirtReducer",5},			--40; Reduces amount of silicate powder yields. Higher means fewer silicate powder.
								{"ResourceDirtMinAmount",2},		--1; Minimum amount of silicate powder yields per hit.
								{"ResourceDirtMaxAmount",12},		--8; Maximum amount of silicate powder yields per hit.
							},
						},
					},
				},
			}
		}
	}
}