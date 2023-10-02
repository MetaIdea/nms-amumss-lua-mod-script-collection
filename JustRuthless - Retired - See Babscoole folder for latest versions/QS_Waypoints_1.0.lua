-- Reward Settings --
Quicksilver = "100" -- variables that are used to change the AmountMin and AmountMax values below in the VALUE_CHANGE_TABLE and the Function
Nanites = "100"
Nav_Data = "2"
---------------------

-- New Currency Function --
local function NewCurrency(currency, min, max, chance) -- changes the section between the [[ ]] with the values marked chance, min, max, currency.
return
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..min..[[" />
              <Property name="AmountMax" value="]]..max..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..currency..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- File Settings --
FileName    = "QS Waypoints 1.0.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

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
        {
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"Id", "R_WAYPOINT", "ID", "NAV_DATA"}, -- special key words that point to the NAV_DATA sub-section of R_WAYPOINT
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"AmountMin", Nav_Data},
                {"AmountMax", Nav_Data},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"Id", "R_WAYPOINT", "Currency", "Nanites"},
              ["SECTION_UP_SPECIAL"] = 1, -- goes 1 level up because "Currency" "Nanites" keywords were in a sub-section where AmountMin and AmountMax isnt.
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"AmountMin", Nanites},
                {"AmountMax", Nanites},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"]   = {"Id", "R_WAYPOINT"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD"] = NewCurrency("Specials", Quicksilver, Quicksilver, 100), -- Function(currency, min, max, chance)
            },
          }
        },
      }
    },
  }
}