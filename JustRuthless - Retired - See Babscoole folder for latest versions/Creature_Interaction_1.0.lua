Mod_Version = "1.0"

-- File Settings --
FileName    = "Creature Interaction "..Mod_Version..".pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "GCCREATUREGLOBALS.MBIN"
FileSource2 = "GCCAMERAGLOBALS.GLOBAL.MBIN"
FileSource3 = "MODELS/PLANETS/CREATURES/BUTTERFLYRIG/LARGEBUTTERFLY/ENTITIES/LARGEBUTTERFLYDATA.ENTITY.MBIN"
FileSource4 = "MODELS/PLANETS/CREATURES/FLYINGLIZARDRIG/FLYINGLIZARD/ENTITIES/BODY_LIZARD.ENTITY.MBIN"
FileSource5 = "MODELS/PLANETS/CREATURES/FLYINGSNAKE/FLYINGSNAKE/ENTITIES/KITECREATURE.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        { -- Creature Interaction Range Global Changes
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["INTEGER_TO_FLOAT"] = "FORCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureInteractionRangeBoostHuge", "1.5"}, -- 1.5
                {"CreatureInteractionRangeBoostLarge", "1.2"}, -- 1.2
                {"CreatureInteractionRangeBoostMedium", "1.1"}, -- 1.1
                {"CreatureInteractionRangeBoostSmall", "1"}, -- 1
                {"CreatureInteractionRangeBoostRun", "2"}, -- 2
                {"CreatureInteractionRangeBoostSprint", "3.5"}, -- 3.5
                {"CreatureInteractionRangeReducePredator", "0.3"}, -- 0.3
                {"CreatureInteractBaseRange", "5"}, -- 5
                {"PetInteractBaseRange", "8"}, -- 8
              },
            },
          }
        },
        { -- Creature Interaction Camera Global Changes
          ["MBIN_FILE_SOURCE"]  = FileSource2,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureInteractionInterpolateDuringHold", "True"}, -- True
                {"CreatureInteractionMinDist", "4"}, -- 4
                {"CreatureInteractionPushCameraDownForCreatureBiggerThan", "2"}, -- 2
                {"CreatureInteractionPushCameraDownAmount", "12"}, -- 12
                {"CreatureInteractionDistMulMin", "0.8"}, -- 0.8
                {"CreatureInteractionDistMulMax", "1.5"}, -- 1.5
                {"CreatureInteractionYawMin", "10"}, -- 10
                {"CreatureInteractionYawMax", "30"}, -- 30
                {"CreatureInteractionPitchSplit", "-1"}, -- -1
                {"CreatureInteractionPitchMin", "-35"}, -- -35
                {"CreatureInteractionPitchMax", "34"}, -- 34
                {"CreatureInteractionMaxDownhillPitchAroundPlayer", "5"}, -- 5
                {"CreatureInteractionDownhillPitchTransfer", "0.6"}, -- 0.6
                {"CreatureInteractionMaxUphillPitchAroundPlayer", "15"}, -- 15
                {"CreatureInteractionUphillPitchTransfer", "0.7"}, -- 0.7
                {"CreatureInteractionFoVSplitSize", "1"}, -- 1
                {"CreatureInteractionFoVMin", "1"}, -- 1
                {"CreatureInteractionFoVMax", "1"}, -- 1
                {"CreatureInteractionCamSpring", "1.5"}, -- 1.5
                {"CreatureInteractionHeadHeightSpring", "1"}, -- 1
              },
            },
          }
        },
        { -- Large Butterfly Interact Distance
          ["MBIN_FILE_SOURCE"]  = FileSource3,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InteractDistance", "5"}, -- 5
              },
            },
          }
        },
        { -- Flying Lizard Interact Distance
          ["MBIN_FILE_SOURCE"]  = FileSource4,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InteractDistance", "5"}, -- 5
              },
            },
          }
        },
        { -- Flying Snake Interact Distance
          ["MBIN_FILE_SOURCE"]  = FileSource5,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InteractDistance", "5"}, -- 5
              },
            },
          }
        },
      }
    },
  }
}
