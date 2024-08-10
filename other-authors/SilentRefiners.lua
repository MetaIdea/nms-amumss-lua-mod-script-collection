-- ======= SCRIPT INFO =======
author = "Umaroth"
luaAuthor = "Umaroth"
modName = "SilentRefiners"
description = "Silences the ambient noise produced by active refiners."
gameVersion = "5.3"
modVersion = "1.0"

-- ======== SETTINGS ========
-- Edit to your preference by setting true/false (case-sensitive)
SILENCE_PER_REFINER = true --Both Small and Medium Personal Refiners
SILENCE_SML_REFINER = true --Portable Refiner
SILENCE_MED_REFINER = true --Medium Base Refiner
SILENCE_LRG_REFINER = true --Large Base Refiner

modNameSub = "Custom"

-- ========== CODE ==========
NMS_MOD_DEFINITION_CONTAINER = {["MOD_FILENAME"]=modName.."_"..modNameSub.."_v"..modVersion.."_nms"..gameVersion..".pak",["MOD_DESCRIPTION"]=description,["MOD_AUTHOR"]= author,["LUA_AUTHOR"]=luaAuthor,["NMS_VERSION"]=gameVersion,["MODIFICATIONS"]={{["MBIN_CT"]={}}}}

MBIN_CT = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"]

MBINS_TO_EDIT = {}
if SILENCE_PER_REFINER then MBINS_TO_EDIT[#MBINS_TO_EDIT + 1] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN" end
if SILENCE_SML_REFINER then MBINS_TO_EDIT[#MBINS_TO_EDIT + 1] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN" end
if SILENCE_MED_REFINER then MBINS_TO_EDIT[#MBINS_TO_EDIT + 1] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER2.ENTITY.MBIN" end
if SILENCE_LRG_REFINER then MBINS_TO_EDIT[#MBINS_TO_EDIT + 1] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER3.ENTITY.MBIN" end

MBIN_CT[#MBIN_CT + 1] = 
	{
		["MBIN_FS"] = MBINS_TO_EDIT,
		["EXML_CT"] = 
		{
			{
				["SKW"] = {"StateID","REFINE_START"},
				["PKW"] = "Sound",
				["REMOVE"] = "SECTION",
			}
		}
	}