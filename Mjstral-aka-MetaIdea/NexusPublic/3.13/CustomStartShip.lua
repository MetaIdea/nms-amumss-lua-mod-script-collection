SHIP_TYPE = "SCIENTIFIC"
SHIP_SEED = "0x140C"

PROC_SCENE_PATH = {
	["FIGHTER"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
	["DROPSHIP"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
	["SCIENTIFIC"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
	["SHUTTLE"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
	["EXOTIC"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN",
	["BIO"]="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",
	["MULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN",
	["POLICESHIP"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN",	
}

function HexToDec(number)
	if type(number) == "number" then return number
	elseif string.find(tostring(number),"0x") then return tonumber(number)
	else return tonumber(number,16) end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CustomStartShip.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "3.13+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATACREATIVE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"CurrentShip"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", PROC_SCENE_PATH[SHIP_TYPE]},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CurrentShip","Seed"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Seed", HexToDec(SHIP_SEED)},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"CurrentShip"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", PROC_SCENE_PATH[SHIP_TYPE]},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CurrentShip","Seed"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Seed", HexToDec(SHIP_SEED)},
							}
						}
					}
				}
			}
		}	
		}
}