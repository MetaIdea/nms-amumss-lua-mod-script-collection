-- Quicksilver Function --
local function Quicksilver(currency, percentage, amount)
return
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..percentage..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..amount[1]..[[" />
              <Property name="AmountMax" value="]]..amount[2]..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..currency..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- Settings Key:
-- Four values can be set.
-- Currency: Specials is the name for quicksilver
-- Percentage: Chance of mission reward being chosen
-- Amount1: Minimum possible amount rewarded
-- Amount2: Maximum possible amount rewarded

-- Mission Board Low --
MB_Low   = Quicksilver("Specials", "10", {"50", "50"}) -- Function(Currency, Percentage, {Amount1, Amount2})

-- Mission Board Med --
MB_Med   = Quicksilver("Specials", "10", {"100", "100"})

-- Mission Board High --
MB_High  = Quicksilver("Specials", "10", {"150", "150"})

-- Mission Board Mega --
MB_Mega  = Quicksilver("Specials", "10", {"200", "200"})

-- Nexus Mission Med --
NMB_Med  = Quicksilver("Specials", "20", {"150", "150"})

-- Nexus Mission Mega --
NMB_Mega = Quicksilver("Specials", "20", {"250", "250"})

-- Outlaw Bounty Master --
BM_Med   = Quicksilver("Specials", "10", {"100", "100"})

-- File Settings --
FileName    = "QS Missions 1.41.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_MB_LOW"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = MB_Low,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_MB_MED"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = MB_Med,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_MB_HIGH"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = MB_High,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_MB_MEGA"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = MB_Mega,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_NEXUS_MED_C"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = NMB_Med,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_NEXUS_MEGA_C"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = NMB_Mega,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "R_PIRATEBOARD_B"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD"] = BM_Med,
						},
					}
				},
			}
		},
	}
}