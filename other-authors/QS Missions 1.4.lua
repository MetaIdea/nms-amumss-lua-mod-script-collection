-- MB = Mission Board, QS = Quicksilver.
-- NMB = Nexus Mission Board
-- BM = Bounty Master
-- QS Amount = the amount of quicksilver for the mission reward.
-- If you change the percent chance I recommend balancing the changes to add up: QS + Units + Nanites = 100%.
-- Rare Unit rewards are added to the balancing on Nexus Missions: QS + Units + Rare Units + Nanites = 100%
-- If Min Amount is lower than Max Amount it will make the rewards rng between those amounts.
-- Percent Chance = how often that mission reward will be chosen for that mission level type (Low, Med, High, Mega)

-- Mission Board Low --
MB_Low_QS_Min_Amount = "50" -- 50 - Numbers on the right side are the original game values (original mod values for quicksilver)
MB_Low_QS_Max_Amount = "50" -- 50
MB_Low_QS_Percent_Chance = "10" -- 10

MB_Low_Units_Min_Amount = "25000" -- 25000
MB_Low_Units_Max_Amount = "50000" -- 50000
MB_Low_Units_Percent_Chance = "50" -- 30

MB_Low_Nanites_Min_Amount = "100" -- 100
MB_Low_Nanites_Max_Amount = "150" -- 150
MB_Low_Nanites_Percent_Chance = "40" -- 29

-- Mission Board Med --
MB_Med_QS_Min_Amount = "100" -- 100
MB_Med_QS_Max_Amount = "100" -- 100
MB_Med_QS_Percent_Chance = "10" -- 10

MB_Med_Units_Min_Amount = "70000" -- 70000
MB_Med_Units_Max_Amount = "120000" -- 120000
MB_Med_Units_Percent_Chance = "50" -- 30

MB_Med_Nanites_Min_Amount = "150" -- 150
MB_Med_Nanites_Max_Amount = "250" -- 250
MB_Med_Nanites_Percent_Chance = "40" -- 29

-- Mission Board High --
MB_High_QS_Min_Amount = "150" -- 150
MB_High_QS_Max_Amount = "150" -- 150
MB_High_QS_Percent_Chance = "10" -- 10

MB_High_Units_Min_Amount = "300000" -- 300000
MB_High_Units_Max_Amount = "500000" -- 500000
MB_High_Units_Percent_Chance = "50" -- 30

MB_High_Nanites_Min_Amount = "250" -- 250
MB_High_Nanites_Max_Amount = "350" -- 350
MB_High_Nanites_Percent_Chance = "40" -- 29

-- Mission Board Mega --
MB_Mega_QS_Min_Amount = "200" -- 200
MB_Mega_QS_Max_Amount = "200" -- 200
MB_Mega_QS_Percent_Chance = "10" -- 10

MB_Mega_Units_Min_Amount = "400000" -- 400000
MB_Mega_Units_Max_Amount = "750000" -- 750000
MB_Mega_Units_Percent_Chance = "50" -- 32

MB_Mega_Nanites_Min_Amount = "250" -- 250
MB_Mega_Nanites_Max_Amount = "400" -- 400
MB_Mega_Nanites_Percent_Chance = "40" -- 29

-- Nexus Mission Med --
NMB_Med_QS_Min_Amount = "150" -- 150
NMB_Med_QS_Max_Amount = "150" -- 150
NMB_Med_QS_Percent_Chance = "20" -- 20

NMB_Med_Units_Min_Amount = "400000" -- 400000
NMB_Med_Units_Max_Amount = "500000" -- 500000
NMB_Med_Units_Percent_Chance = "40" -- 50

NMB_Med_Rare_Units_Min_Amount = "200000" -- 200000
NMB_Med_Rare_Units_Max_Amount = "900000" -- 900000
NMB_Med_Rare_Units_Percent_Chance = "5" -- 5

NMB_Med_Nanites_Min_Amount = "300" -- 300
NMB_Med_Nanites_Max_Amount = "350" -- 350
NMB_Med_Nanites_Percent_Chance = "35" -- 45

-- Nexus Mission Mega --
NMB_Mega_QS_Min_Amount = "250" -- 250
NMB_Mega_QS_Max_Amount = "250" -- 250
NMB_Mega_QS_Percent_Chance = "20" -- 20

NMB_Mega_Units_Min_Amount = "650000" -- 650000
NMB_Mega_Units_Max_Amount = "750000" -- 750000
NMB_Mega_Units_Percent_Chance = "40" -- 50

NMB_Mega_Rare_Units_Min_Amount = "500000" -- 500000
NMB_Mega_Rare_Units_Max_Amount = "1500000" -- 1500000
NMB_Mega_Rare_Units_Percent_Chance = "5" -- 5

NMB_Mega_Nanites_Min_Amount = "400" -- 400
NMB_Mega_Nanites_Max_Amount = "550" -- 550
NMB_Mega_Nanites_Percent_Chance = "35" -- 45

-- Outlaw Bounty Master --
Outlaw_BM_QS_Min_Amount = "100" -- 100
Outlaw_BM_QS_Max_Amount = "100" -- 100
Outlaw_BM_QS_Percent_Chance = "10" -- 10

Outlaw_BM_Units_Min_Amount = "250000" -- 250000
Outlaw_BM_Units_Max_Amount = "500000" -- 500000
Outlaw_BM_Units_Percent_Chance = "50" -- 100

Outlaw_BM_Nanites_Min_Amount = "250" -- 250
Outlaw_BM_Nanites_Max_Amount = "400" -- 400
Outlaw_BM_Nanites_Percent_Chance = "40" -- 100

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

-- File Settings --
FileName = "QS Missions 1.4.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

-- Quicksilver Section --
Quicksilver =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
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

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= FileName,
  ["MOD_AUTHOR"]				= ModAuthor,
  ["LUA_AUTHOR"]				= LuaAuthor,
  ["NMS_VERSION"]				= NMS_Version,
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {FileSource1},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_LOW","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Low_Units_Percent_Chance},
								{"AmountMin", MB_Low_Units_Min_Amount},
								{"AmountMax", MB_Low_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MED","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Med_Units_Percent_Chance},
								{"AmountMin", MB_Med_Units_Min_Amount},
								{"AmountMax", MB_Med_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_HIGH","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_High_Units_Percent_Chance},
								{"AmountMin", MB_High_Units_Min_Amount},
								{"AmountMax", MB_High_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MEGA","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Mega_Units_Percent_Chance},
								{"AmountMin", MB_Mega_Units_Min_Amount},
								{"AmountMax", MB_Mega_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MED_C","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Med_Units_Percent_Chance},
								{"AmountMin", NMB_Med_Units_Min_Amount},
								{"AmountMax", NMB_Med_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MED_C","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Med_Rare_Units_Percent_Chance},
								{"AmountMin", NMB_Med_Rare_Units_Min_Amount},
								{"AmountMax", NMB_Med_Rare_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MEGA_C","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Mega_Units_Percent_Chance},
								{"AmountMin", NMB_Mega_Units_Min_Amount},
								{"AmountMax", NMB_Mega_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MEGA_C","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Mega_Rare_Units_Percent_Chance},
								{"AmountMin", NMB_Mega_Rare_Units_Min_Amount},
								{"AmountMax", NMB_Mega_Rare_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_PIRATEBOARD_B","Currency","Units"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", Outlaw_BM_Units_Percent_Chance},
								{"AmountMin", Outlaw_BM_Units_Min_Amount},
								{"AmountMax", Outlaw_BM_Units_Max_Amount},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_LOW","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Low_Nanites_Percent_Chance},
								{"AmountMin", MB_Low_Nanites_Min_Amount},
								{"AmountMax", MB_Low_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MED","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Med_Nanites_Percent_Chance},
								{"AmountMin", MB_Med_Nanites_Min_Amount},
								{"AmountMax", MB_Med_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_HIGH","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_High_Nanites_Percent_Chance},
								{"AmountMin", MB_High_Nanites_Min_Amount},
								{"AmountMax", MB_High_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MEGA","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Mega_Nanites_Percent_Chance},
								{"AmountMin", MB_Mega_Nanites_Min_Amount},
								{"AmountMax", MB_Mega_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MED_C","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Med_Nanites_Percent_Chance},
								{"AmountMin", NMB_Med_Nanites_Min_Amount},
								{"AmountMax", NMB_Med_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MEGA_C","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Mega_Nanites_Percent_Chance},
								{"AmountMin", NMB_Mega_Nanites_Min_Amount},
								{"AmountMax", NMB_Mega_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_PIRATEBOARD_B","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", Outlaw_BM_Nanites_Percent_Chance},
								{"AmountMin", Outlaw_BM_Nanites_Min_Amount},
								{"AmountMax", Outlaw_BM_Nanites_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_LOW","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MED","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_HIGH","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MEGA","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MED_C","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MEGA_C","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_PIRATEBOARD_B","Currency","Nanites"},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Quicksilver,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_LOW","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Low_QS_Percent_Chance},
								{"AmountMin", MB_Low_QS_Min_Amount},
								{"AmountMax", MB_Low_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MED","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Med_QS_Percent_Chance},
								{"AmountMin", MB_Med_QS_Min_Amount},
								{"AmountMax", MB_Med_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_HIGH","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_High_QS_Percent_Chance},
								{"AmountMin", MB_High_QS_Min_Amount},
								{"AmountMax", MB_High_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MEGA","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", MB_Mega_QS_Percent_Chance},
								{"AmountMin", MB_Mega_QS_Min_Amount},
								{"AmountMax", MB_Mega_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MED_C","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Med_QS_Percent_Chance},
								{"AmountMin", NMB_Med_QS_Min_Amount},
								{"AmountMax", NMB_Med_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_MEGA_C","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", NMB_Mega_QS_Percent_Chance},
								{"AmountMin", NMB_Mega_QS_Min_Amount},
								{"AmountMax", NMB_Mega_QS_Max_Amount},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_PIRATEBOARD_B","Currency","Specials"},
							["SECTION_UP_SPECIAL"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", Outlaw_BM_QS_Percent_Chance},
								{"AmountMin", Outlaw_BM_QS_Min_Amount},
								{"AmountMax", Outlaw_BM_QS_Max_Amount},
							},
						},
					}
				},
			}
		},
	}
}