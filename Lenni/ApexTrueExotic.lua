NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]             = "ApexTrueExotic.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]        = "Only Exotics spawn",         --optional, for reference
  ["MOD_AUTHOR"]                = "ApexFatality",         --optional, for reference
  ["NMS_VERSION"]                = "3.53",     --optional, for reference
  ["MODIFICATIONS"]         =             --REQUIRED SECTION
    {
        {
            ["MBIN_CHANGE_TABLE"] = { 
			
				{
                    ["MBIN_FILE_SOURCE"]     = {"METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"},
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File","MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"File", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"File","MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"File", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"File","MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"File", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"File","MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"File", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"File","MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"File", ""}
								},

                        },
                    },
				},
				{
					["MBIN_FILE_SOURCE"]     = {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
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