QS_Mission_Board_Low =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
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

QS_Mission_Board_Med =
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

QS_Mission_Board_High =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="150" />
              <Property name="AmountMax" value="150" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

QS_Mission_Board_Mega =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="10" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="200" />
              <Property name="AmountMax" value="200" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

QS_Nexus_Med =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="150" />
              <Property name="AmountMax" value="150" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

QS_Nexus_Mega =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
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

QS_Outlaws_Bounty_Master_Med =
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
  ["MOD_FILENAME"] 			= "QS Missions 1.2.pak",
  ["MOD_AUTHOR"]				= "JustRuthless",
  ["NMS_VERSION"]				= "3.89",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_LOW","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"25",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_LOW","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"24",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_LOW","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Mission_Board_Low,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MED","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"25",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MED","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"24",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MED","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Mission_Board_Med,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_HIGH","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"25",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_HIGH","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"24",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_HIGH","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Mission_Board_High,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MEGA","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"27",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MEGA","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"24",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_MB_MEGA","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Mission_Board_Mega,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MED_C","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"40",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MED_C","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"35",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MED_C","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Nexus_Med,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MEGA_C","Currency","Units",},
							["SECTION_UP_SPECIAL"] = 2,
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"40",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MEGA_C","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentageChance",	"35",},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_MEGA_C","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Nexus_Mega,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_PIRATEBOARD_B","Currency","Nanites",},
							["SECTION_UP_SPECIAL"] = 2,
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = QS_Outlaws_Bounty_Master_Med,
						},
					}
				},
			},
		}
	},
}


