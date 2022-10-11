Author = "alchemist"
ModName = "Globals_CreatureGlobals"
BaseDescription = "Tweaks to pet timers and behavior."
GameVersion = "4-03"
ModVersion = "3"

-- sanity to seconds conversion
local function minutes(m)
	return m * 60
end

local function hours(h)
	return h * minutes(60)
end

local function days(d)
	return d * hours(24)
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
["EXML_CHANGE_TABLE"] = {
	{["VALUE_CHANGE_TABLE"] = {

		-- incubations and growth (in seconds)
		{"PetGrowthTime", days(3)}, -- 1209600
		{"PetIncubationTime", hours(1)}, -- 86400
		{"PetEggLayingInterval", hours(4)}, -- 86400
		{"PetEggFirstEggDelay", hours(1)}, -- 86400

		-- egg modification machine
		{"PetEggScaleRangeModifier", 0.1}, -- 0.5
		{"PetEggScaleRangeMax", 0.5}, -- 0.5
		{"PetEggTraitRangeModifier", 0.02}, -- 0.1
		{"PetEggTraitRangeMax", 0.1}, -- 0.2

		-- trust impacts how fast lonely/hungry
		{"PetTrustOnAdoption", 0.4}, -- 0.6
		{"PetTrustOnHatch", 0.6}, -- 0.7
		{"PetTrustChangeInterval", minutes(2)}, -- 86400
		{"PetTrustIncreaseStep", 0.01}, -- 0.05
		{"PetTrustDecreaseStep", 0.01}, -- 0.02

		-- pet chatting
		{"PetTickleChatChance", 0.7}, -- 0.33
		{"PetTreatChatChance", 1}, -- 1
		{"PetChatUseTraitTemplateChance", 0.3}, -- 0.1

		-- riding (optimized for ~2m creature)
		{"RideSpeedSlow", 1.5}, -- 0.5
		{"RideSpeedFast", 3}, -- 2

	}},
}},

}}}}