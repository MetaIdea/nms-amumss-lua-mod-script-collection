NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]             = "NoCargoPods.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]        = "Disables small cargo ships",         --optional, for reference
  ["MOD_AUTHOR"]                = "Lenni",         --optional, for reference
  ["NMS_VERSION"]                = "3.75",     --optional, for reference
  ["MODIFICATIONS"]         =             --REQUIRED SECTION
    {
        {
            ["MBIN_CHANGE_TABLE"] = {

				{
                    ["MBIN_FILE_SOURCE"]     = {"METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"},
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC.SCENE.MBIN"},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
						},
				--[[	{
							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/COMBATFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},

							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
						},
						{
							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/SCIENCEFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
						},
						{

							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/INDUSTRIALFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},

                        },
						{
							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/DIPLOMATICFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},

                        },
						{
							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/SUPPORTFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
                        },
						{
							["PRECEDING_FIRST"]    = "TRUE",
							["SPECIAL_KEY_WORDS"]    = {"Filename", "MODELS/COMMON/SPACECRAFT/FRIGATES/NORMANDYFRIGATE.SCENE.MBIN",},
							["PRECEDING_KEY_WORDS"] = {"SystemSpaceships", "Civilian",},
							["VALUE_CHANGE_TABLE"] =
								{
									{"Filename", ""}
								},
                        },
						]]--
                    },
				},
            }
        }
    }
}