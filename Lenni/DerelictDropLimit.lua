--see also StandardSchemeExtended.lua

Replacement = [[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_FREI_TECH" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="FreighterTechHyp" />
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
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="FreighterTechFuel" />
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
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "DerelictUpgradeLimit.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Limits derelict freighter upgrades to hyperdrive and fuel modules",         --optional, for reference
  ["MOD_AUTHOR"]				= "Lenni",         --optional, for reference
  ["NMS_VERSION"]				= "3.53",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
								
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_FREI_TECH"},							
							["LINE_OFFSET"] = "-2",
							["REMOVE"] = "SECTION",
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
								
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_DAILY"},							
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = Replacement,
						},
					},
				},
			}
		}, --32 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE