ReplaceCreature = {"BUTTERFLY","BUTTERFLOCK","LARGEBUTTERFLY","FLYINGBEETLE","SPIDER","FLOATSPIDER","WEIRDBUTTERFLY","ARTHROPOD","BUGFIEND","BUGQUEEN"}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Anti-Entomophobia",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Removes insect like creatures",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {

                    },
                },
            },
        },
    },
}

local ReplaceCreatureTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i=1,#ReplaceCreature do
    local value = ReplaceCreature[i]
    ReplaceCreatureTable[#ReplaceCreatureTable +1] =
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", value},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/GRUNTRIG/GRUNT.SCENE.MBIN"},
                            }
                        }
end