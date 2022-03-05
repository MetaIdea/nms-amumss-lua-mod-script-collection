Mod_version = 1.02

QUICKSILV_XL =
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RS_QUICKSILV_XL" />
            </Property>
]]

QUICKSILV_S =
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RS_QUICKSILV_S" />
            </Property>
]]


REWARD_S = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="25" />
              <Property name="AmountMax" value="25" />
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
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

REWARD_LL = 
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="125" />
              <Property name="AmountMax" value="125" />
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
      <Property name="Id" value="RS_QUICKSILV_XXX" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="5" />
              <Property name="AmountMax" value="5" />
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
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="10" />
              <Property name="AmountMax" value="10" />
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
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="25" />
              <Property name="AmountMax" value="25" />
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
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="250" />
              <Property name="AmountMax" value="250" />
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

REWARD_ITEMS = 
[[
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardMultiSpecificTechRecipes.xml">
              <Property name="TechIds">
                <Property value="NMSString0x10.xml">
                  <Property name="Value" value="UT_JET" />
                </Property>
                <Property value="NMSString0x10.xml">
                  <Property name="Value" value="UT_MIDAIR" />
                </Property>
              </Property>
              <Property name="DisplayTechId" value="UT_JET" />
              <Property name="SetName" value="UI_JETPACK_UPGRADES" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="SCRAP_TECH" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
]]

REWARD_REFINER =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificTech.xml">
              <Property name="TechId" value="SUIT_REFINER" />
              <Property name="AutoPin" value="True" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

Rewards = 
{
  {
    ["REWARD"] = REWARD_S,
    ["IDS"] = {"QUAD_LOOT", "PIRATE_BOUNTY1", "PROC_PROD_BONES", "PROC_PROD_SCRAP", "MB_STAND_LOW"},
  },
  {
    ["REWARD"] = REWARD_M,
    ["IDS"] = {"WALKER_LOOT", "PIRATE_BOUNTY2", "BEGIN_SALVAGE", "PIRATE_REJECT", "MB_STAND_MED"},
  },
  {
    ["REWARD"] = REWARD_L,
    ["IDS"] = {"PIRATE_BOUNTY3", "PROC_PROD_CHEST", "R_SEACHEST", "R_SALVAGE", "R_CRASHSITE_FLY", "MB_STAND_HIGH"},
  },
  {
    ["REWARD"] = REWARD_XL,
    ["IDS"] = {"R_ABAND_END", "R_NEXUS_MEGA_C"},
  },
}

DelCurrency = {"R_MB_LOW", "R_MB_MED", "R_MB_HIGH", "R_MB_MEGA", "R_NEXUS_MED_C", "R_NEXUS_MEGA_C"}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EnjoyableQuicksilver."..Mod_version..".pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "ArtisticMisfit",
["NMS_VERSION"]				= "3.82",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "?FREIGHTER", "Name", "ALL_FREIGHTER_OPT_3"},
              ["PRECEDING_KEY_WORDS"] = "Rewards",
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = QUICKSILV_XL
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "?FREIGHTER_CAP", "Name", "ALL_FREIGHTER_OPT_1"},
              ["PRECEDING_KEY_WORDS"] = "Rewards",
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = QUICKSILV_XL
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLEET_COMM_POST_DEBRIEF", "Name", "ALL_FLEET_COMM_POST_DEBRIEF_OPT"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"KeepOpen", "True"}
              }
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Name", "SECTION_TO_CHANGE"},
              ["PRECEDING_KEY_WORDS"] = "Rewards",
              ["REPLACE_TYPE"] = "ALL",
              ["ADD"] = QUICKSILV_S
						},
  				}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_MONEY_L"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = REWARD_ENTRIES,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S1_S1M0", "ProcTechGroup", "UI_COLD_NAME_CORE_L"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"ProcTechGroup", "UI_HOT_NAME_CORE_L"},
              },
            },
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S1M6", "ProcTechGroup", "UI_UNW_NAME_CORE_L"},
              ["REMOVE"] = "SECTION",
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S1M6", "Id", "STARCHART_D"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"HideInSeasonRewards", "False"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S2M7", "Id", "BUILD_REFINER3"},
              ["SECTION_UP"] = 1,
              ["REMOVE"] = "SECTION",
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S2M7"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD"] = REWARD_REFINER,
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S3M1"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] = REWARD_ITEMS,
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S3_S3M1"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
			  ["SECTION_ACTIVE"] = {1,},
              ["REMOVE"] = "SECTION",
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "RS_S4_S5M3", "Id", "STARCHART_B"},
              ["SECTION_UP"] = 1,
              ["REMOVE"] = "SECTION",
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED_C"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["LINE_OFFSET"] = -1,
              ["ADD"] = REWARD_LL,
						},
  				}
				},
        {
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_RESET_SAL"},
              ["PRECEDING_KEY_WORDS"] = {"List", "List"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["LINE_OFFSET"] = -1,
              ["ADD"] = REWARD_M,
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_POWER_TUT_OBJ1", "Product", "U_BIOGENERATOR"},
			  ["SECTION_ACTIVE"] = {1,},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_GENERATOR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Message", "UI_POWER_TUT_MSG1", "Product", "U_SOLAR_S"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_SILO_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Message", "UI_POWER_TUT_MSG1", "Product", "U_BIOGENERATOR"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_GENERATOR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Message", "UI_POWER_TUT_MSG3", "Product", "U_POWERLINE"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_BIOGENERATOR"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "SURVEY_TUT", "Product", "U_GENERATOR_S"},
			  ["SECTION_ACTIVE"] = {1,},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_SOLAR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "SURVEY_TUT", "Product", "U_EXTRACTOR_S"},
			  ["SECTION_ACTIVE"] = {1,},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "F_RAMP_Q_TOP"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_SURVEY_TUT_OBJ2A", "Product", "U_EXTRACTOR_S"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "F_RAMP_Q_TOP"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_SURVEY_TUT_OBJ2A", "Product", "U_GENERATOR_S"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_SOLAR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_SURVEY_TUT_OBJ2A", "Product", "U_GASEXTRACTOR"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_EXTRACTOR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_SURVEY_TUT_OBJ4", "Product", "U_GASEXTRACTOR"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_EXTRACTOR_S"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"ObjectiveID", "UI_SURVEY_TUT_OBJ4", "Product", "U_EXTRACTOR_S"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "F_RAMP_Q_TOP"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "BAIT_HINT", "Product", "BAIT_BASIC"},
			  ["SECTION_ACTIVE"] = {1,},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_FR_MINE3"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"Message", "UI_BAIT_HINT_MSG", "Product", "BAIT_BASIC"},
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_FR_MINE3"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "BAIT_TIMER", "Product", "BAIT_BASIC"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_FR_MINE3"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "ADV_BAIT_HINT", "Product", "BAIT_BASIC"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_FR_MINE3"},
              },
						},
						{
              ["SPECIAL_KEY_WORDS"] = {"MissionID", "TEACH_BAIT", "Product", "BAIT_BASIC"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] = 
              {
                {"Product", "U_FR_MINE3"},
              },
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
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["LINE_OFFSET"] = -1,
              ["ADD"] = reward["REWARD"],
            }
    Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
  end
end

Currency = {"Units", "Nanites"}
for i=1,#DelCurrency do
  local value = DelCurrency[i]
  for j=1,#Currency do
    local cur_value = Currency[j]
    local temp_table = 
						{
              ["SPECIAL_KEY_WORDS"] = {"Id", value, "Currency", cur_value},
              ["SECTION_UP"] = 2,
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION",
						}
    Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
  end
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE