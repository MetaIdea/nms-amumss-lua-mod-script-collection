
Author = "alchemist"
ModName = "Tech_Frieghters"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

local function setJumpBonus(techName, bonus)
	return {
		["SPECIAL_KEY_WORDS"] = {"ID", techName},
		["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Bonus",	bonus}
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

	{["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
	["EXML_CHANGE_TABLE"] = {

		setJumpBonus("F_HYPERDRIVE", 1000),
		setJumpBonus("F_HDRIVEBOOST1", 2000),
		setJumpBonus("F_HDRIVEBOOST2", 4000),
		setJumpBonus("F_HDRIVEBOOST3", 8000),
		setJumpBonus("F_HACCESS1", 500),
		setJumpBonus("F_HACCESS2", 500),
		setJumpBonus("F_HACCESS3", 500),

	}},

}}}}