SHIP_TYPE = "POLICESHIP"
SHIP_SEED = 0x0

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
	else return tonumber(number,16) 
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "PoliceShipOnStart.pak", 
["MOD_AUTHOR"]      = "Mjjstral",
["MOD_MAINTENANCE"] = "Babscoole",
["NMS_VERSION"]     = "4.00",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
					["EXML_CHANGE_TABLE"] = 
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
		},
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = 
					{ 
						{ 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
						}, 
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]       = "RAW",
							["VALUE_CHANGE_TABLE"] = 
							{
								{
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP" />]],
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIPBACKUP" />]]
								},
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] = 
					{
						"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN"
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]        = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP\ENTITIES\POLICESHIP.ENTITY.MBIN]], 
									[[MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN]] 
								},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name","PoliceShip",},
							["INTEGER_TO_FLOAT"]   = "FORCE",		
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "0.6"},
							}							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = 
					{
						"METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]       = "RAW",
							["VALUE_CHANGE_TABLE"] = 
							{
								{
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
								},
							}
						}
					}
				}
			}
		}
	}
}