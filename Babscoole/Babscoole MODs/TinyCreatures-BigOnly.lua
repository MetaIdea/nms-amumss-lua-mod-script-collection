ShrinkCreature = {"FLYINGSNAKE", "FLYINGLIZARD", "FLYINGBEETLE", "TRICERATOPS", "STRIDER", "TREX", "GRUNT", "BLOB", "SPIDER", "FLOATSPIDER", "SANDWORM", "WALKINGBUILDING"}

DIVISOR = "4"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "TinyCreatures-BigOnly.pak",
["MOD_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.22",
["MOD_DESCRIPTION"]         = "Reduces size for largest creature types by ~75%",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxCreatureSize", "5"},
                                {"MinRideSize",     "1"},
                            }
                        },
                    }
                },
            }
        },
    },
}

local ShrinkCreatureTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i=1,#ShrinkCreature do
    local value = ShrinkCreature[i]
    ShrinkCreatureTable[#ShrinkCreatureTable +1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", value},
            ["MATH_OPERATION"] = "/",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MinScale", DIVISOR},
                {"MaxScale", DIVISOR},
            }
        }
end