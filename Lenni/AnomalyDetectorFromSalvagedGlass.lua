Loot = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="5" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="POI_LOCATOR" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
    ]]

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]		= "AnomalyDetectorFromSalvagedGlass.pak",
    ["MOD_DESCRIPTION"]		= "Adds Anomaly Detectors to Salvaged Glass Loot. Also decreases illegal upgrade drop chances.",
    ["MOD_AUTHOR"]			= "Lenni",
    ["NMS_VERSION"]			= "3.99", 
    ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SENT_LOOT", "ID", "U_SENTGUN"},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"PercentageChance", "10"}	--Original: 20
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SENT_LOOT", "ID", "U_SENTSUIT"},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"PercentageChance", "10"}	--Original: 20
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SENT_LOOT", "List","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"]	= "List",
							["ADD_OPTION"]			= "ADDafterLINE",
							["ADD"]					= Loot
						}
                    }
				}
			}
		}
	}
}