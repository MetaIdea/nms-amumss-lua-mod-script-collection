DelCreature = {"SPIDER","FLOATSPIDER","ROCKCREATURE","SCUTTLER","CRAB"}  --The creature ID values are specified in the DelCreatures table

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Anti-Arachnophobia.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {

                    },
                },
            },
        },
    },
}

local DelCreatureTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]  --Specified the member of MBIN_CHANGE_TABLE that the changes will be made in

for i=1,#DelCreature do
    local value = DelCreature[i]
    DelCreatureTable[#DelCreatureTable +1] =  --Loops through the DelCreatures table, generating a change section for each creature
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", value},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/GRUNTRIG/GRUNT.SCENE.MBIN"},
                            }
                        }
end