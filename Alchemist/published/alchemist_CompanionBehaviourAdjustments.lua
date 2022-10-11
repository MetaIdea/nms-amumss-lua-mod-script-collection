
Author = "alchemist"
ModName = "CompanionBehaviourAdjustments"
--ModNexus = "https://www.nexusmods.com/nomanssky/mods/1871"
BaseDescription = "Tweaks to pet behavior."
GameVersion = "4-03"
ModVersion = "6"

-- BEGIN CONFIG

GLOBAL_WEIGHT_MODIFIER_USEFUL = 1.0
GLOBAL_WEIGHT_MODIFIER = 1.0
GLOBAL_COOLDOWN_MODIFIER_USEFUL = 1.0
GLOBAL_COOLDOWN_MODIFIER = 1.0

CHAT_CHANCE_LOW = 0.6
CHAT_CHANCE_MID = 0.8
CHAT_CHANCE_HIGH = 1.0

-- END CONFIG

local function Trait(trait, tMin, tMax, wMin, wMax, cMin, cMax)
  return [[
        <Property value="GcPetBehaviourTraitModifier.xml">
          <Property name="Trait" value="GcCreaturePetTraits.xml">
            <Property name="PetTrait" value="]]..trait..[[" />
          </Property>
          <Property name="TraitMin" value="]]..tMin..[[" />
          <Property name="TraitMax" value="]]..tMax..[[" />
          <Property name="WeightModifierMin" value="]]..wMin..[[" />
          <Property name="WeightModifierMax" value="]]..wMax..[[" />
          <Property name="CooldownModifierMin" value="]]..cMin..[[" />
          <Property name="CooldownModifierMax" value="]]..cMax..[[" />
        </Property>
]]
end

local function Mood(mood, mMin, mMax, wMin, wMax, cMin, cMax)
  return [[
        <Property value="GcPetBehaviourMoodModifier.xml">
          <Property name="Mood" value="GcCreaturePetMood.xml">
            <Property name="PetMood" value="]]..mood..[[" />
          </Property>
          <Property name="MoodMin" value="]]..mMin..[[" />
          <Property name="MoodMax" value="]]..mMax..[[" />
          <Property name="WeightModifierMin" value="]]..wMin..[[" />
          <Property name="WeightModifierMax" value="]]..wMax..[[" />
          <Property name="CooldownModifierMin" value="]]..cMin..[[" />
          <Property name="CooldownModifierMax" value="]]..cMax..[[" />
        </Property>
]]
end

local function FollowUp(behavior, traitBased, trait, tMin, tMax, wMin, wMax)
  return [[
        <Property value="GcPetFollowUpBehaviour.xml">
          <Property name="Behaviour" value="GcPetBehaviours.xml">
            <Property name="PetBehaviour" value="]]..behavior..[[" />
          </Property>
          <Property name="TraitBased" value="]]..traitBased..[[" />
          <Property name="Trait" value="GcCreaturePetTraits.xml">
            <Property name="PetTrait" value="]]..trait..[[" />
          </Property>
          <Property name="TraitMin" value="]]..tMin..[[" />
          <Property name="TraitMax" value="]]..tMax..[[" />
          <Property name="WeightMin" value="]]..wMin..[[" />
          <Property name="WeightMax" value="]]..wMax..[[" />
        </Property>
]]
end

local function nms_round(value, places)
  return tonumber(string.format("%."..(places or 0).."f", value))
end

BEHAVIOR_TABLE = {

  --[[

  ::::WARNINGS:::

  Including a behavior in this table will forcefully wipe that
  behaviors trait AND mood definitions to make room for the new ones. So always
  specify all traits and moods for a given behavior.

  Follow Up behaviors will be wiped only if ["FollowUp"] is specified. Does NOT
  support adding follow ups where they did not exist before (yet - see HadMoods).

  If the moods were originally empty be sure to set "HadMoods" to false or else
  things will end up in the wrong place, or worse.

  --]]

  {"ScanForResource", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER, 2)},
      {"CooldownTime", nms_round(90 * GLOBAL_COOLDOWN_MODIFIER)},
      {"UsefulBehaviour", "False"},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 0, 1, 4, 0.5),
      Trait("Independence", -1, 1, 0.5, 1, 2, 1),
    },
    ["Moods"] = {
      Mood("Hungry", 0, 1, 0.5, 1, 1, 1)
    }
  }},

  {"FindResource", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER, 2)},
      {"CooldownTime", nms_round(60 * GLOBAL_COOLDOWN_MODIFIER)},
      {"ChatChance", CHAT_CHANCE_LOW},
      {"UsefulBehaviour", "False"},
      {"LabelText", "UI_PET_LABEL_EXPLORE"},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 1, 0.5, 1, 2),
      Trait("Independence", -1, 1, 0, 1, 4, 0.5),
    },
    ["Moods"] = {
      Mood("Hungry", 0.5, 0.75, 1, 0, 1, 2),
    }
  }},

  {"FindHazards", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(180 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_MID},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 1, 2, 2, 1),
      Trait("Aggression", -1, 1, 0, 3, 1, 0.25),
      Trait("Independence", -1, 1, 1, 2, 4, 0.5),
    },
    ["Moods"] = {
      Mood("Hungry", 0.5, 0.75, 1, 0, 1, 1.5),
    },
    ["FollowUp"] = {
      FollowUp("Idle", "True", "Aggression", -1, 1, 0.5, 0),
      FollowUp("AttackHazard", "True", "Helpfulness", -1, 1, 0, 1),
      FollowUp("AttackHazard", "True", "Aggression", -1, 1, 0.5, 2),
    }
  }},

  {"FindBuilding", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(45 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_HIGH},
      {"SearchDist", 30},
      {"LabelText", "UI_PET_LABEL_EXPLORE"},
    },
    ["Traits"] = {
      Trait("Independence", -1, 1, 0.5, 2, 2, 1),
    },
    ["HadMoods"] = false,
    ["Moods"] = {},
  }},

  {"Explore", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(45 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_HIGH},
      {"UsefulBehaviour", "False"},
      {"MinPerformTime", 15},
      {"MaxPerformTime", 20},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 0, 1, 3, 0.5),
      Trait("Independence", -1, 1, 1, 2, 2, 1),
    },
    ["HadMoods"] = false,
    ["Moods"] = {}
  }},

  {"Emote", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2.5 * GLOBAL_WEIGHT_MODIFIER, 2)},
      {"CooldownTime", nms_round(90 * GLOBAL_COOLDOWN_MODIFIER)},
      {"ChatChance", CHAT_CHANCE_HIGH},
      {"UsefulBehaviour", "False"},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 2, 0.5, 1, 2),
      Trait("Independence", -1, 1, 2, 0.5, 1, 2),
    },
    ["Moods"] = {
      Mood("Hungry", 0.5, 0.75, 1, 10, 1, 0.75),
      Mood("Lonely", 0.5, 0.75, 1, 10, 1, 0.75),
    },
  }},

  {"Mine", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(240 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_HIGH},
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 0.25, 2, 4, 1),
    },
    ["Moods"] = {
      Mood("Hungry", 0.4, 0.6, 1, 0, 1, 1),
    },
    ["MoodModifyOnComplete"] = {
      {"Hungry", 0.1},
    }
  }},

  {"Attack", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(2.5 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(120 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_HIGH},
      {"UsefulBehaviour", "True"},
      --{"MinPerformTime", 30},
      --{"MaxPerformTime", 30},
      --{"SearchDist", 60},
    },
    ["Traits"] = {
      Trait("Aggression", 0, 1, 0.5, 3, 2, 1),
      Trait("Independence", -1, 1, 1, 2, 2, 1),
    },
    ["Moods"] = {
      Mood("Hungry", 0.25, 0.5, 0.5, 2, 2, 1),
    },
    ["FollowUp"] = {
      -- FollowUp("Eat", "False", "Helpfulness", 0, 1, 1, 1),
      FollowUp("FollowPlayer", "False", "Helpfulness", 0, 1, 1, 1),
    },
    ["MoodModifyOnComplete"] = {
      {"Hungry", -0.30},
    }
  }},

  {"Greet", {
    ["VALUE_CHANGE_TABLE"] = {
      {"Weight", nms_round(3 * GLOBAL_WEIGHT_MODIFIER_USEFUL, 2)},
      {"CooldownTime", nms_round(120 * GLOBAL_COOLDOWN_MODIFIER_USEFUL)},
      {"ChatChance", CHAT_CHANCE_HIGH},
      {"UsefulBehaviour", "True"},
      {"LabelText", "UI_PET_LABEL_BUILDING"}, -- "Tracking a lifeform"
    },
    ["Traits"] = {
      Trait("Helpfulness", -1, 1, 2, 1, 1, 2),
      Trait("Aggression", -1, 1, 3, 0, 0.5, 4),
      Trait("Independence", -1, 1, 0.5, 3, 2, 1),
    },
    ["Moods"] = {
      Mood("Hungry", 0.4, 0.75, 1, 0, 1, 1),
      Mood("Lonely", 0, 1, 1, 2, 1, 1),
    },
    ["MoodModifyOnComplete"] = {
      {"Lonely", -0.15},
    }
  }},
}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = "METADATA\\SIMULATION\\ECOSYSTEM\\CREATUREPETBEHAVIOURTABLE.MBIN",
["EXML_CHANGE_TABLE"] = {

  -- Globals
  {["VALUE_CHANGE_TABLE"] = {
    --{"GlobalCooldownModifier", 0.5}, -- original: 1
    {"UsefulBehaviourLinkedCooldownAmount", 0.4},
  }},

  -- Disable Rest
  {["PRECEDING_KEY_WORDS"] = {
    "Rest"
  },
  ["INTEGER_TO_FLOAT"] = "FORCE",
  ["VALUE_CHANGE_TABLE"] = {
    {"Weight", 0},
    {"CooldownTime", 90},
  }},

  -- Rewards
  {["PRECEDING_KEY_WORDS"] = {
    "RewardMoodModifier",
    "Tickle",
    "MoodModifiers"
  },
  ["INTEGER_TO_FLOAT"] = "FORCE",
  ["VALUE_CHANGE_TABLE"] = {
    {"Lonely", -0.3},
  }},

  {["PRECEDING_KEY_WORDS"] = {
    "RewardMoodModifier",
    "Treat",
    "MoodModifiers"
  },
  ["INTEGER_TO_FLOAT"] = "FORCE",
  ["VALUE_CHANGE_TABLE"] = {
    {"Hungry", -0.3},
    {"Lonely", -0.1},
  }},

  {["PRECEDING_KEY_WORDS"] = {
    "RewardMoodModifier",
    "Ride",
    "MoodModifiers"
  },
  ["INTEGER_TO_FLOAT"] = "FORCE",
  ["VALUE_CHANGE_TABLE"] = {
    {"Hungry", 0.05},
    {"Lonely", -0.1},
  }},

  {["PRECEDING_KEY_WORDS"] = {
    "RewardMoodModifier",
    "Customise",
    "MoodModifiers"
  },
  ["INTEGER_TO_FLOAT"] = "FORCE",
  ["VALUE_CHANGE_TABLE"] = {
    {"Hungry", 0},
    {"Lonely", -0.3},
  }},

}},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #BEHAVIOR_TABLE do
  local id = BEHAVIOR_TABLE[i][1]
  local ai = BEHAVIOR_TABLE[i][2]

  -- blast away the mood matrix
  if ai["HadMoods"] == nil or ai["HadMoods"] == true then
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {id, "MoodBehaviourModifiers"},
      ["REMOVE"] = "SECTION"
    }
  elseif ai["HadMoods"] == false and #ai["Moods"] > 0 then
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {id},
      ["REPLACE_TYPE"] = "RAW",
      ["VALUE_CHANGE_TABLE"] = {
        {
          [[<Property name="MoodBehaviourModifiers" />]],
          [[]]
        }
      }
    }
  end

  -- blast away the trait matrix
  Ref[#Ref + 1] = {
    ["PRECEDING_KEY_WORDS"] = {id, "TraitBehaviourModifiers"},
    ["REMOVE"] = "SECTION"
  }

end

for i = 1, #BEHAVIOR_TABLE do
  local id = BEHAVIOR_TABLE[i][1]
  local ai = BEHAVIOR_TABLE[i][2]

  -- invoke change table if we have it
  if ai["VALUE_CHANGE_TABLE"] ~= nil then
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {"Behaviours", id},
      ["INTEGER_TO_FLOAT"] = "FORCE",
      ["VALUE_CHANGE_TABLE"] = ai["VALUE_CHANGE_TABLE"]
    }
  end

  -- invoke on complete if we have it. seperate for cleaner api
  if ai["MoodModifyOnComplete"] ~= nil then
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {"Behaviours", id, "MoodModifyOnComplete"},
      ["INTEGER_TO_FLOAT"] = "FORCE",
      ["VALUE_CHANGE_TABLE"] = ai["MoodModifyOnComplete"]
    }
  end

  -- handle followup behaviors first to preserve clean diffing
  -- don't blast follow ups unless their are new ones
  if ai["FollowUp"] ~= nil then

    -- blast await follow ups
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {id, "FollowUpBehaviours"},
      ["REMOVE"] = "SECTION"
    }

    -- start with empty
    local followStr = [[
      <Property name="FollowUpBehaviours" />]]

    -- concat new ones if we got them
    if #ai["FollowUp"] > 0 then
      followStr = [[
      <Property name="FollowUpBehaviours">
]]..table.concat(ai["FollowUp"], string.char(10))..[[
      </Property>]]
    end

    -- add right before on complete mood modifiers
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {id, "MoodModifyOnComplete"},
      ["LINE_OFFSET"] = -1,
      ["ADD"] = followStr
    }
  end

  -- handle building out new trait matrix
  local traitStr = [[
      <Property name="TraitBehaviourModifiers" />]]

  if ai["Traits"] ~= nil then
    traitStr = [[
      <Property name="TraitBehaviourModifiers">
]]..table.concat(ai["Traits"], string.char(10))..[[
      </Property>]]
  end

  -- add before mode modifiers
  Ref[#Ref + 1] = {
    ["PRECEDING_KEY_WORDS"] = {id, "MoodModifyOnComplete"},
    ["LINE_OFFSET"] = -1,
    ["ADD"] = traitStr
  }

  -- new mood matrix
  local moodStr = [[
      <Property name="MoodBehaviourModifiers" />]]

  if ai["Moods"] ~= nil and #ai["Moods"] > 0 then
    moodStr = [[
      <Property name="MoodBehaviourModifiers">
]]..table.concat(ai["Moods"], string.char(10))..[[
      </Property>]]
  end

  -- and add it in
  if #ai["Moods"] > 0 then
    Ref[#Ref + 1] = {
      ["PRECEDING_KEY_WORDS"] = {id, "MoodModifyOnComplete"},
      ["LINE_OFFSET"] = -1,
      ["ADD"] = moodStr
    }
  end

end