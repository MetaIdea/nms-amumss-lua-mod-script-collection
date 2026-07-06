ShrinkCreature = {"FLYINGSNAKE", "FLYINGLIZARD", "FLYINGBEETLE", "TRICERATOPS", "STRIDER", "TREX", "GRUNT", "BLOB", "SPIDER", "FLOATSPIDER", "SANDWORM", "WALKINGBUILDING"}

DIVISOR = "4"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Tiny Creatures-BigOnly",
["MOD_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.40",
["MOD_DESCRIPTION"]         = "Reduces size for largest creature types by ~75%",
["MODIFICATIONS"]           =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
          },
        },
        {
          ["MBIN_FILE_SOURCE"]  = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinRideSize",     "1.000000"},
                {"MaxCreatureSize", "5.000000"},
              }
            },
          }
        },
      }
    },
  },
}

local ShrinkCreatureTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i=1,#ShrinkCreature do
  local value = ShrinkCreature[i]
  ShrinkCreatureTable[#ShrinkCreatureTable +1] =
    {
      ["SPECIAL_KEY_WORDS"] = {"ID", value},
      ["VALUE_CHANGE_TABLE"] =
      {
        {"MinScale", "@/"..DIVISOR},
        {"MaxScale", "@/"..DIVISOR},
      }
    }
end