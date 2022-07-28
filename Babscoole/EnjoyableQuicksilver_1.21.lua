Mod_version = "1.21"

QUICKSILV_S =
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RS_QUICKSILV_S" />
            </Property>
]]

REWARD_T = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="10" />
              <Property name="AmountMax" value="10" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_S = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="25" />
              <Property name="AmountMax" value="25" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_M = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="50" />
              <Property name="AmountMax" value="50" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_MM = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="75" />
              <Property name="AmountMax" value="75" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]


REWARD_L = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="100" />
              <Property name="AmountMax" value="100" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_XL =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="250" />
              <Property name="AmountMax" value="250" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_ENTRIES = 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="RS_QUICKSILV_XSS" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="5" />
              <Property name="AmountMax" value="5" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="RS_QUICKSILV_XXS" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="10" />
              <Property name="AmountMax" value="10" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="RS_QUICKSILV_XS" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="25" />
              <Property name="AmountMax" value="25" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
	<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="RS_QUICKSILV_ML" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
		<Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="125" />
              <Property name="AmountMax" value="125" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="RS_QUICKSILV_XL" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
		<Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="250" />
              <Property name="AmountMax" value="250" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]

MISSIONS_QS =
[[
              <Property value="GcGenericMissionStage.xml">
				<Property name="Stage" value="GcMissionSequenceReward.xml">
                  <Property name="Message" value="UI_REWARD_FAILED_MSG" />
                  <Property name="Reward" value="RS_QUICKSILV_ML" />
				  <Property name="CanOverride" value="False" />
				  <Property name="Silent" value="False" />
				  <Property name="RewardInventoryOverride" value="None" />
				  <Property name="DebugText" value="Giving QS reward" />
                </Property>
              </Property>
]]

Rewards = 
{
  {
    ["REWARD"] = REWARD_T,
	["IDS"] = {"DRONE_LOOT"},
  },
  {
    ["REWARD"] = REWARD_S,
    ["IDS"] = {"QUAD_LOOT", "PIRATE_BOUNTY1", "PROC_PROD_BONES", "PROC_PROD_SCRAP"},
  },
  {
    ["REWARD"] = REWARD_M,
    ["IDS"] = {"PIRATE_BOUNTY2", "BEGIN_SALVAGE", "PIRATE_REJECT", "MECH_LOOT", "R_SENTINELS_OFF"},
  },
  {
    ["REWARD"] = REWARD_MM,
    ["IDS"] = {"WALKER_LOOT"},
  },  
  {
    ["REWARD"] = REWARD_L,
    ["IDS"] = {"PIRATE_BOUNTY3", "PROC_PROD_CHEST", "R_SEACHEST", "R_SALVAGE", "R_CRASHSITE_FLY"},
  },
  {
    ["REWARD"] = REWARD_XL,
	["IDS"] = {"R_ABAND_END", "R_NEXUS_MEGA_C"},
  },
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EnjoyableQuicksilver."..Mod_version..".pak",
["MOD_DESCRIPTION"]			= "Allows the player to grind Quicksilver through a wide variety of different ways",
["MOD_AUTHOR"]				= "ArtisticMisfit",
["LUA_AUTHOR"]				= "TheLich, Babscoole, ArtisticMisfit",
["NMS_VERSION"]				= "3.97",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
					["REGEXBEFORE"] =
						{
							{[[(.*)(".*_CRA_OPT_A_.*")]],[[\1"SECTION_TO_CHANGE" oldvalue=\2]]},
							{[[(.*)(".*_ABAN_OPT_A_.*")]],[[\1"SECTION_TO_CHANGE" oldvalue=\2]]},
						},
					["REGEXAFTER"] =
						{
							{[[(.*)("SECTION_TO_CHANGE").*(".*")]],[[\1\3]]},
						},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SECTION_TO_CHANGE"},
							["PRECEDING_KEY_WORDS"] = "Rewards",
							["REPLACE_TYPE"] = "ALL",
							["ADD"] = QUICKSILV_S
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{													
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "RS_MONEY_L"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = REWARD_ENTRIES,
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_RESET_SAL"},
							["PRECEDING_KEY_WORDS"] = {"List", "List"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["LINE_OFFSET"] = -1,
							["ADD"] = REWARD_M,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_RETURN_MISSION_OBJ1_MSG"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["ADD_OPTION"] = "ADDafterSECTION",
							["LINE_OFFSET"] = -1,
							["ADD"] = MISSIONS_QS,	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/PIRATEMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_RETURN_PIRATE_MSG"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["ADD_OPTION"] = "ADDafterSECTION",
							["LINE_OFFSET"] = -1,
							["ADD"] = MISSIONS_QS,	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/MULTIPLAYERMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message","UI_RETURN_MPMISSION_OBJ1_MSG"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["ADD_OPTION"] = "ADDafterSECTION",
							["LINE_OFFSET"] = -1,
							["ADD"] = MISSIONS_QS,	
						},
					}
				},
			}
		}
	}	
}

--Let us create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i=1,#Rewards do
  local reward = Rewards[i]
  for j=1,#reward["IDS"] do
    local value = reward["IDS"][j]
    local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", value},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
			  ["ADD_OPTION"] 	= "ADDafterLINE",
              -- ["ADD_OPTION"] = "ADDafterSECTION",
              -- ["LINE_OFFSET"] = -1,
              ["ADD"] = reward["REWARD"],
            }
    Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
  end
end