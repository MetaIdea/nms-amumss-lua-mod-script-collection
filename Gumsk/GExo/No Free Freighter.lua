Author = "Exosolar"
ModName = "GExos Challenge"
ModNameSub = "Exos No Free Freighter"
BaseDescription = "No free first freighter"
GameVersion = "385"
ModVersion = "a"

FreighterPuzzleReplace = [[		<Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_FREIGHTER_OPT_4" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="EXOFREIGHTERLOOT" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Positive" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="False" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="?FREIGHTER_ALT_END" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="WordCategory" value="MISC" />
          </Property>
        </Property>]]

FreighterRewardReplace = [[		<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="FREIGHT_REWARD" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="25" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
																			   
              </Property>
              <Property name="Id" value="FRIG_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="ForceSpecialMessage" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="75" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="Id" value="BP_SALVAGE" />
              <Property name="AmountMin" value="2" />
              <Property name="AmountMax" value="3" />
              <Property name="ForceSpecialMessage" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>]]

FreighterExoLoot = [[		<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="EXOFREIGHTERLOOT" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="Id" value="FRIG_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="ForceSpecialMessage" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="Id" value="BP_SALVAGE" />
              <Property name="AmountMin" value="4" />
              <Property name="AmountMax" value="7" />
              <Property name="ForceSpecialMessage" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {

		{
			["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
			["EXML_CHANGE_TABLE"]	= {
				{
					["SPECIAL_KEY_WORDS"] = {"TextAlien","WAR_FREIGHT_LANG_1","Value","FREIGHT_REWARD"},
					["SECTION_UP"] = 2,
					["ADD"] = FreighterPuzzleReplace,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"TextAlien","TRA_FREIGHT_LANG_1","Value","FREIGHT_REWARD"},
					["SECTION_UP"] = 2,
					["ADD"] = FreighterPuzzleReplace,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"TextAlien","EXP_FREIGHT_LANG_1","Value","FREIGHT_REWARD"},
					["SECTION_UP"] = 2,
					["ADD"] = FreighterPuzzleReplace,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Value", "FREIGHT_REWARD"},
					["SECTION_UP"] = 2,
					["REMOVE"] = "SECTION",
					["REPLACE_TYPE"] = "ALL",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Name","ALL_FREIGHTER_OPT_1","Value","FREIGHTERLOOT"},
					["SECTION_UP"] = 2,
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Name","ALL_FREIGHTER_OPT_3"},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"NextInteraction","?FREIGHTER"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"NextInteraction","?FREIGHTER_ALT_END"},
					}
				},
			}
		},

		{
			["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
			["EXML_CHANGE_TABLE"]	= {
				{
					["SPECIAL_KEY_WORDS"] = {"Id","FREIGHT_REWARD"},
					["ADD"] = FreighterRewardReplace,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_REWARD","PercentageChance","100"},
					["SECTION_UP"] = 3,
					["REMOVE"] = "SECTION",
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLOOT"},
					["ADD"] = FreighterExoLoot,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
				},
			}
		},
		
	}
}}}