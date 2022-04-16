
--[[ Summery Description:
Increases asteroid mining by a factor of 10. No longer will you have to GRIND asteroids for a bit of fuel or the like,
Now you can sit back and enjoy the life of being utterly rich in mere minutes.
]]--

Muultiplier = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]	= "Better_Asteroid_Mining.pak",
    ["MOD_AUTHOR"]		= "Gumsk",
    ["NMS_VERSION"]		= 300,
    ["MODIFICATIONS"]	= {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["MATH_OPERATION"] 		= "*",
                            ["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CommonAsteroidMinResources", Muultiplier},
                                {"CommonAsteroidMaxResources", Muultiplier},
                                {"RareAsteroidMinResources", Muultiplier},
                                {"RareAsteroidMaxResources", Muultiplier},
                            },
                        },
                    }
                }
            }
        }
    }
}