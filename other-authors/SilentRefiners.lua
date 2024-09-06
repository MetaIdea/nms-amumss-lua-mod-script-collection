-- ======= SCRIPT INFO =======
author = "Umaroth"
luaAuthor = "Umaroth"
modName = "SilentRefiners"
description = "Silences the ambient noise produced by active refiners."
gameVersion = "5.10.0"
modVersion = "1.1"
maintenance = author

-- ======== SETTINGS ========
-- Edit to your preference by setting true/false (case-sensitive)
SILENCE_PER_REFINER = true --Both Small and Medium Personal Refiners
SILENCE_SML_REFINER = true --Portable Refiner
SILENCE_MED_REFINER = true --Medium Base Refiner
SILENCE_LRG_REFINER = true --Large Base Refiner

modNameSub = "Custom"

-- ========== CODE ==========
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = string.format("%s_%s_v%s_nms%s.pak", modName, modNameSub, modVersion, gameVersion),
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"] = author,
	["LUA_AUTHOR"] = luaAuthor,
	["MAINTENANCE"] = maintenance,
	["NMS_VERSION"] = gameVersion,
	-- Only need the structure here. Code below will add all necessary changes based on user settings.
	["MODIFICATIONS"]={{["MBIN_CT"]={}}}
}

MBIN_CT = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"]

MBINsToEdit = {} --Build table of user-selected MBIN's to edit
if SILENCE_PER_REFINER then table.insert(MBINsToEdit,"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN") end
if SILENCE_SML_REFINER then table.insert(MBINsToEdit,"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN") end
if SILENCE_MED_REFINER then table.insert(MBINsToEdit,"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER2.ENTITY.MBIN") end
if SILENCE_LRG_REFINER then table.insert(MBINsToEdit,"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER3.ENTITY.MBIN") end

table.insert(MBIN_CT,{
	["MBIN_FS"] = MBINsToEdit,
	["EXML_CT"] = 
	{
		{   --Remove sound section from "REFINE_START" on each user-selected MBIN
			["SKW"] = {"StateID","REFINE_START"},
			["PKW"] = "Sound",
			["REMOVE"] = "SECTION",
		}
	}
})