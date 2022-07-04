NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "ApexTrueExotic.pak",
  ["MOD_DESCRIPTION"]	= "Only Exotics spawn",
  ["MOD_AUTHOR"]		= "ApexFatality",
  ["LUA_AUTHOR"]		= "Lenni",
  ["NMS_VERSION"]		= "3.93",
  ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
			
				{
                    ["MBIN_FILE_SOURCE"]     = "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray.xml", "Filename","MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"Filename", ""}
								},
                        },
                    },
				},
				{
					["MBIN_FILE_SOURCE"]     = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
							["PRECEDING_KEY_WORDS"] = {"OutpostSpawns", "Count"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"50"},
								{"y",	"100"},	
							},							
                        },
                    },
                },
            }
        }
    }
}