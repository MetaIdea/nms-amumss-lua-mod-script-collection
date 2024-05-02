Author = "Gumsk"
ModName = "gCam"
ModNameSub = "Far"
BaseDescription = "Camera modifications"
GameVersion = "389"
ModVersion = "a"
FileSource = "GCCAMERAGLOBALS.GLOBAL.MBIN"

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
					["PRECEDING_KEY_WORDS"] = "CharacterUnarmedCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterRunCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterCombatCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",20},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterAirborneCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterMeleeBoostCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsChargeCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterFallingCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterAirborneCombatCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",20},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterSpaceCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterSteepSlopeCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{	
					["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCombatCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",20},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterJetpackCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",30},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "BuggyFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "HovercraftFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "SubmarineFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "BikeFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "WheeledBikeFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "TruckFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "MechFollowCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = "MechJetpackCam",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BackMaxDistance",40},
					}
				},
			}
		}
	}
}
}}