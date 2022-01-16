
Author = "alchemist"
ModName = "Globals_LivingShip"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

local function setEvolveCost(i, cost)
	return {
		["PRECEDING_KEY_WORDS"] = {
			"AlienShipEvolveCosts"
		},
		["LINE_OFFSET"] = i,
		["VALUE_CHANGE_TABLE"] 	= {
			{"IGNORE", cost},
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

		setEvolveCost(1, 1024),
		setEvolveCost(2, 2048),
		setEvolveCost(3, 4096),
		setEvolveCost(4, 8192),
		setEvolveCost(5, 8192)

	}}

}}}}