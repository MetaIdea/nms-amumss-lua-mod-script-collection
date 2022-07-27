
Author = "alchemist"
ModName = "RefinerInputsExpanded_BaseMedium"
BaseDescription = "Survive."
GameVersion = "3-6x"
ModVersion = "1"

-- must be 1-3 or game will crash
NUM_INPUTS = 3

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\REFINER\\ENTITIES\\REFINER2.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"] = {

		{["SPECIAL_KEY_WORDS"] = {
			"Title", "REFINER2_NAME_L",
		},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"VisibleMaintenanceSlots", 1 + NUM_INPUTS},
			{"NumInputs", NUM_INPUTS},
		}},

	}},

}}}}