
Author = "alchemist"
ModName = "Scene_StartSceneDebris"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	-- removes the 4 red o2 plants from initial crash site
	{["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\DISTRESSSIGNAL\\STARTSCENE.SCENE.MBIN",
	["EXML_CHANGE_TABLE"] = {

		{["SPECIAL_KEY_WORDS"] = {"Name", "FUELPLANT",},
		["REMOVE"] 	= "SECTION",},

		{["SPECIAL_KEY_WORDS"] = {"Name", "FUELPLANT1",},
		["REMOVE"] 	= "SECTION",},

		{["SPECIAL_KEY_WORDS"] = {"Name", "FUELPLANT2",},
		["REMOVE"] 	= "SECTION",},

		{["SPECIAL_KEY_WORDS"] = {"Name", "FUELPLANT3",},
		["REMOVE"] 	= "SECTION",},

	}},

}}}}