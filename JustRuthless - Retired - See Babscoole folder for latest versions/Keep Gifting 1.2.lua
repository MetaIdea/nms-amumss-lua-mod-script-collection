-- Custom Gift Option Settings --
Gifts_C      = "5" -- amount of gift items needed
Gifts_R      = "5" -- amount of rep rewarded
RemoveOption = "True" -- True / False - removes option if cant afford
KeepOpen     = "True" -- True / False - keeps the dialogue open after selecting the option

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

-- File Settings --
FileName    = "Keep Gifting 1.2.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor   = "JustRuthless" -- only for reference
LuaAuthor   = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/COSTTABLE.MBIN"
FileSource2 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
FileSource3 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

-- Added Sections --
GekCost =
[[
		<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="GEKGIFTCUSTOM" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="TRA_CURIO1" />
        <Property name="Amount" value="1" />
      </Property>
    </Property>
]]

KorvaxCost =
[[
		<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="KORVAXGIFTCUSTOM" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="EXP_CURIO1" />
        <Property name="Amount" value="1" />
      </Property>
    </Property>
]]

VykeenCost =
[[
		<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="VYKEENGIFTCUSTOM" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="WAR_CURIO1" />
        <Property name="Amount" value="1" />
      </Property>
    </Property>
]]

GekReward =
[[
		<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="SEC_CUSTOM_TRA" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]

KorvaxReward =
[[
		<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="SEC_CUSTOM_EXP" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]

VykeenReward =
[[
		<Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="SEC_CUSTOM_WAR" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]

GekOption =
[[
				<Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_REQUEST_STD_LOW" />
          <Property name="Text" value="ALL_REPLY_STANDING" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="GEKGIFTCUSTOM" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="SEC_CUSTOM_TRA" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Positive" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]

KorvaxOption =
[[
				<Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_REQUEST_STD_LOW" />
          <Property name="Text" value="ALL_REPLY_STANDING" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="KORVAXGIFTCUSTOM" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="SEC_CUSTOM_EXP" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Positive" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]

VykeenOption =
[[
				<Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="ALL_REQUEST_STD_LOW" />
          <Property name="Text" value="ALL_REPLY_STANDING" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="VYKEENGIFTCUSTOM" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="SEC_CUSTOM_WAR" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Positive" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]

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
					["MBIN_FILE_SOURCE"] 	= FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{ -- Adding custom gift cost
							["SPECIAL_KEY_WORDS"] = {"Id", "GEKGIFT1"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = GekCost,
						},
						{ -- Changing custom gift cost amount and removes option if cant afford
							["SPECIAL_KEY_WORDS"]  = {"Id", "GEKGIFTCUSTOM"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", Gifts_C},
								{"RemoveOptionIfCantAfford", RemoveOption},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "KORVAXGIFT1"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = KorvaxCost,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "KORVAXGIFTCUSTOM"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", Gifts_C},
								{"RemoveOptionIfCantAfford", RemoveOption},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "VYKGIFT1"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = VykeenCost,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "VYKEENGIFTCUSTOM"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", Gifts_C},
								{"RemoveOptionIfCantAfford", RemoveOption},
							},
						},
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{ -- Adding custom rep reward section
							["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDLOW_TRA"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = GekReward,
						},
						{ -- Changing custom rep reward amount
							["SPECIAL_KEY_WORDS"]  = {"Id", "SEC_CUSTOM_TRA"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", Gifts_R},
								{"AmountMax", Gifts_R},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDLOW_EXP"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = KorvaxReward,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "SEC_CUSTOM_EXP"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", Gifts_R},
								{"AmountMax", Gifts_R},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SEC_STDLOW_WAR"},
							["ADD_OPTION"]        = "ADDafterSECTION",
							["ADD"]               = VykeenReward,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "SEC_CUSTOM_WAR"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", Gifts_R},
								{"AmountMax", Gifts_R},
							},
						},
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "?TRA_NPC_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = GekOption,
						},
						{ -- Adding custom gek space stations/trading post npcs option
							["SPECIAL_KEY_WORDS"]  = {"Id", "TRA_NPC_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = GekOption,
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Id", "EXP_NPC_SECONDARY", "Cost", "KORVAXGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = KorvaxOption,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "WAR_NPC_SECONDARY", "Cost", "VYKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = VykeenOption,
						},
						{ -- Adding custom gek outlaw station npc option
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = GekOption,
						},
						{ 
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "KORVAXGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = KorvaxOption,
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "VYKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["ADD_OPTION"]         = "ADDafterSECTION",
							["ADD"]                = VykeenOption,
						},
						{ -- Changing custom gek option, keep open setting
							["SPECIAL_KEY_WORDS"]  = {"Cost", "GEKGIFTCUSTOM"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", KeepOpen},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Cost", "KORVAXGIFTCUSTOM"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", KeepOpen},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Cost", "VYKEENGIFTCUSTOM"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", KeepOpen},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "?TRA_NPC_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", "True"},
							},
						},
						{ -- Changing gek space station/trader post npc gift option, keep open setting to true
							["SPECIAL_KEY_WORDS"]  = {"Id", "TRA_NPC_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL", -- replaces all values that are found
							["VALUE_CHANGE_TABLE"] = 
							{ -- KeepOpen = True will keep the dialog window open after option is selected
								{"KeepOpen", "True"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "EXP_NPC_SECONDARY", "Cost", "KORVAXGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", "True"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "WAR_NPC_SECONDARY", "Cost", "VYKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"KeepOpen", "True"},
							},
						},
						{ -- Changing gek outlaw station npc gift option, keep open setting to true
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "GEKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"KeepOpen", "True"}, 
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "KORVAXGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"KeepOpen", "True"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "OUTLAW_SECONDARY", "Cost", "VYKGIFT1"},
							["REPLACE_TYPE"]       = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"KeepOpen", "True"},
							},
						},
					}
				}
			}
		},
	}
}


