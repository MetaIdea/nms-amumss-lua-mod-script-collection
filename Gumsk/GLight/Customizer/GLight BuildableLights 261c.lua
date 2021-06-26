function round(num, numDecimalPlaces)
  if numDecimalPlaces and numDecimalPlaces>0 then
    local mult = 10^numDecimalPlaces
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end

--Here be dragons, and rounding functions
--=============================================================================================
--Stay down here, where it's safe

ModifyFov = 		"False"
ModifyFalloff = 	"True"
ModifyIntensity = 	"True"
ModifyRed = 		"False"
ModifyGreen = 		"False"
ModifyBlue = 		"False"

LightSettingsArray = {
	{		"Group",	   "FOV",	"FALLOFF",	"INTENSITY",  "COL_R", 	  "COL_G",	 "COL_B"},
	{"CeilingLight",		360,	"linear",		1.2,		1.0,		0,			0	},
	{"LabLamp",				360,	"linear",		1.2,		0,			1.0,		0	},
	{"LightTable",			360,	"linear",		1.1,		0,			0,			1.0	},
	{"StandingLights",		360,	"linear",		1.9,		1.0,		1.0,		0	},
	{"WallLights",			360,	"linear",		1.2,		1.0,		0,			1.0	},
	{"CandelabraPlant",		360,	"linear",		1.2,		0,			1.0,		1.0	},
	{"SmallLamp",			360,	"linear",		1.1,		1.0,		1.0,		1.0	},
	}

--Stay up here, where it's safe
--=============================================================================================
--Here be dragons











--Really, go back up; the princess is in another castle.
--=============================================================================================
Author = "Gumsk"
ModName = "GLight"
ModNameSub = "BuildableLights"
Description = "light modifications"
GameVersion = "261"
ModVersion = "c"

GroupMbinArray = {}
NMS_MOD_DEFINITION_CONTAINER = {}
Group = ""
Fov = ""
Falloff = ""
Intensity = ""
Col_R = ""
Col_G = ""
Col_B = ""

GroupMbinArray = {

--Ceiling Light
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
	},
--Lab Lamp
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LABLAMP.SCENE.MBIN",
	},	
--Light Table
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
	},	
--Standing Lights
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
	},		
--Wall Lights
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN",
	},
--Candelabra Plant
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WATERGLOWPLANTDECORATION.SCENE.MBIN",
	},
--Small Lamp
	{
	"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",
	},

}

for x = 1,#GroupMbinArray do
--for x = 6,6 do
	ModFilename = ModName.." "..ModNameSub.." "..LightSettingsArray[x+1][1].." "
	
	if ModifyFov == "True" then
		Fov = LightSettingsArray[x+1][2]
		ModFilename = ModFilename.."FOV"..round(Fov).." "
	else
		Fov = "IGNORE"
	end
	
	if ModifyFalloff == "True" then
		if LightSettingsArray[x+1][3] == "linear" then
			ModFilename = ModFilename.."L "
		else
			ModFilename = ModFilename.."Q "
		end
		Falloff = LightSettingsArray[x+1][3]
	else
		Falloff = "IGNORE"
	end
	
	if ModifyIntensity == "True" then
		Intensity = LightSettingsArray[x+1][4]
		ModFilename = ModFilename.."i"..round(Intensity,2).." "
	else
		Intensity = "IGNORE"		
	end
	
	if ModifyRed == "True" then
		Col_R = LightSettingsArray[x+1][5]
		ModFilename = ModFilename.."r"..round(Col_R,2).." "
	else
		Col_R = "IGNORE"
	end
	
	if ModifyGreen == "True" then
		Col_G = LightSettingsArray[x+1][6]
		ModFilename = ModFilename.."g"..round(Col_G,2).." "
	else
		Col_G = "IGNORE"
	end
	
	if ModifyBlue == "True" then
		Col_B = LightSettingsArray[x+1][7]
		ModFilename = ModFilename.."b"..round(Col_B,2).." "
	else
		Col_B = "IGNORE"
	end

	NMS_MOD_DEFINITION_CONTAINER[(#NMS_MOD_DEFINITION_CONTAINER+1)] = {
		["MOD_FILENAME"]		= ModFilename.." "..GameVersion..ModVersion..".pak",
		["MOD_DESCRIPTION"]		= Description,
		["MOD_AUTHOR"]			= Author,
		["NMS_VERSION"]			= GameVersion,
		["MODIFICATIONS"] = {{
			["MBIN_CHANGE_TABLE"] = {{
				["MBIN_FILE_SOURCE"] = GroupMbinArray[x],
				["EXML_CHANGE_TABLE"] = {
					{["SPECIAL_KEY_WORDS"]		= {"Name","FOV"},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"Value",Fov}}},
					{["SPECIAL_KEY_WORDS"] 		= {"Name","FALLOFF"},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"Value",Falloff}}},
					{["SPECIAL_KEY_WORDS"] 		= {"Name","INTENSITY","Value","IGNORE"},
						["MATH_OPERATION"]		= "*",
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"IGNORE",Intensity}}},
					{["SPECIAL_KEY_WORDS"] = {"Name","COL_R"},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"Value",Col_R}}},
					{["SPECIAL_KEY_WORDS"] = {"Name","COL_G"},
						["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"Value",Col_G}}},
					{["SPECIAL_KEY_WORDS"] = {"Name","COL_B"},	
					["REPLACE_TYPE"] 		= "ALL",
						["VALUE_CHANGE_TABLE"]	= {
							{"Value",Col_B}}}
			}}}}}}
end

