POSSIBLE_UPGRADES =
{
"FreighterTechHyp",
"FreighterTechFuel",
-- "FreighterTechSpeed",
-- "FreighterTechTrade",
-- "FreighterTechCombat",
-- "FreighterTechMine",
-- "FreighterTechExp",
}

--Loot part not functional!
--[[OVERWRITE_LOOT =
{
"R_ABAND_CRATE",
"R_ABAND_CASE",
"R_ABAND_CAPS",
"R_ABAND_LOCK",
"R_ABAND_AMMO",
"R_ABAND_GIFT",
"R_FREI_TECH",
}--]]


function GetUpgrade(Upgrade)
UPGRADES_ADDING =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="]]..Upgrade..[[" />
              </Property>
              <Property name="OSDMessage" value="" />
              <Property name="SubIfPlayerAlreadyHasOne" value="False" />
              <Property name="OverrideRarity" value="False" />
              <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Common" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
return UPGRADES_ADDING
end


--[[function GetLoot(Loot)
	return {
			["SPECIAL_KEY_WORDS"] = {"Id", Loot, "List","GcRewardTableItemList.xml",},
			["PRECEDING_KEY_WORDS"] = {"List",},
			["REMOVE"] = "SECTION",
		},
		{
			["SPECIAL_KEY_WORDS"] = {"Id", Loot},
			["VALUE_CHANGE_TABLE"]	=
			{
				{"RewardChoice", "SelectAlways"},
			},
		},
		{
			["SPECIAL_KEY_WORDS"] = {"Id", Loot ,"UseInventoryChoiceOverride","IGNORE",},
			["ADD_OPTION"]     = "ADDafterLINE",
			["ADD"] = Ugrades,
	},
end]]--

UPGRADES_ADDING_ALL = {}
--LOOT_ADDING_ALL = {}

for i=1,#POSSIBLE_UPGRADES,1 do
	table.insert(UPGRADES_ADDING_ALL,GetUpgrade(POSSIBLE_UPGRADES[i]))
end

--[[for i=1,#OVERWRITE_LOOT,1 do
	table.insert(LOOT_ADDING_ALL,GetLoot(OVERWRITE_LOOT[i]))
end]]--


top = [[
<Property name="List">
]]
bottom = "</Property>"

Ugrades = top..table.concat(UPGRADES_ADDING_ALL)..bottom
--Loot = "{"..table.concat(LOOT_ADDING_ALL).."},"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]			= "Derelict_Freighter_Specific_Upgrades.pak",
  ["MOD_DESCRIPTION"]		= "Limits derelict freighter loot to hyperdrive and fuel modules",
  ["MOD_AUTHOR"]			= "Lenni",
  ["NMS_VERSION"]			= "3.91", 
  ["MODIFICATIONS"]			=
    {
        {
            ["MBIN_CHANGE_TABLE"] = { 
			
				{
                    ["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
						--R_ABAND_CRATE
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
                            ["REMOVE"] = "SECTION",
						},	
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE","UseInventoryChoiceOverride","IGNORE",},
							["ADD_OPTION"] 	= "ADDafterLINE",
                            ["ADD"] = Ugrades,
                        },
						
						--R_ABAND_CASE
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE","UseInventoryChoiceOverride","IGNORE",},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Ugrades,
                        },
						
						--R_ABAND_CAPS
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},						
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS","UseInventoryChoiceOverride","IGNORE",},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Ugrades,
                        },
						
						--R_ABAND_LOCK
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK","UseInventoryChoiceOverride","IGNORE",},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Ugrades,
                        },
						
						--R_ABAND_AMMO
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_AMMO","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_AMMO"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_AMMO","UseInventoryChoiceOverride","IGNORE"},
							["ADD_OPTION"] 	= "ADDafterLINE",								
                            ["ADD"] = Ugrades,
                        },
						
						--R_ABAND_GIFT
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_GIFT","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_GIFT"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_GIFT","UseInventoryChoiceOverride","IGNORE"},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Ugrades,
                        },
						
						--R_FREI_TECH
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH","List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},							
                            ["REMOVE"] = "SECTION",
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"RewardChoice", "SelectAlways"},
							},
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH","UseInventoryChoiceOverride","IGNORE"},
							["ADD_OPTION"] 	= "ADDafterLINE",							
                            ["ADD"] = Ugrades,
                        },
					},
                },
            }
        },
    }
}