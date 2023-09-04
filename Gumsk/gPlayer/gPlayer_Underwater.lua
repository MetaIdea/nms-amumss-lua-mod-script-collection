Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "UnderwaterSpeed"
BaseDescription = "Increase to underwater player speed"
GameVersion = "4431"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"
  
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource,
			["EXML_CHANGE_TABLE"] = {
				{
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackUnderwaterDrainRate",0.3},			--0.4
						{"JetpackUnderwaterFillRate",2},			--1
						{"UnderwaterMaxSpeed",6},					--4
						{"UnderwaterForce",25},						--15
						{"UnderwaterMaxJetpackSpeed",25},			--8
						{"UnderwaterJetpackForce",50},				--25
					}
				},
			}
		}
	}
}
}}