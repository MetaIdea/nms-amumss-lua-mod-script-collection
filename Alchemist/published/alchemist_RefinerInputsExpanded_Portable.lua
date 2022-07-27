
Author = "alchemist"
ModName = "RefinerInputsExpanded_Portable"
BaseDescription = "Survive."
GameVersion = "3-6x"
ModVersion = "1"

--[[

WARNING - Using this disables the fuel input to make it so you can pick it back up.
But in doing so, unintentionally disables the checks for if there is something inside,
and on pick up will DESTROY THE OUTPUT if it is not empty.

--]]

-- must be 1-3 or game will crash
NUM_INPUTS = 3

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\REFINER\\ENTITIES\\REFINER1.ENTITY.MBIN",
	["EXML_CHANGE_TABLE"] = {

		-- remove fuel requirement so it can be picked up
		{["SPECIAL_KEY_WORDS"] = {
			"Title", "REFINER1_NAME_L",
			"Id", "MAINT_FUEL1",
		},
		["REMOVE"] = "SECTION"},

		{["SPECIAL_KEY_WORDS"] = {
			"Title", "REFINER1_NAME_L",
		},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"VisibleMaintenanceSlots", 1 + NUM_INPUTS},
			{"NumInputs", NUM_INPUTS},
		}},

	}},

}}}}