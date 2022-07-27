
Author = "alchemist"
ModName = "RefinerInputsExpanded_Backpack"
BaseDescription = "Survive."
GameVersion = "3-6x"
ModVersion = "1"

-- must be 1-3 or game will crash
NUM_INPUTS = 3
FUEL_TIME = 15 * 60

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER\\ENTITIES\\PLAYERCHARACTER.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"] = {

		{["SPECIAL_KEY_WORDS"] = {
			"Title", "UI_SUIT_REFINER_NAME_L",
			"Id", "MAINT_FUEL1"
		},
		["VALUE_CHANGE_TABLE"] = {
			{"AmountEmptyTimePeriod", FUEL_TIME}
		}},

		{["SPECIAL_KEY_WORDS"] = {
			"Title", "UI_SUIT_REFINER_NAME_L"
		},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"VisibleMaintenanceSlots", 2 + NUM_INPUTS},
			{"NumInputs", NUM_INPUTS},
		}},

	}},

}}}}