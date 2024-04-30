ADD =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="ASDAWDWA" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardFactionStanding.xml">
              <Property name="Faction" value="GcMissionFaction.xml">
                <Property name="MissionFaction" value="None" />
              </Property>
              <Property name="AmountMin" value="0" />
              <Property name="AmountMax" value="0" />
              <Property name="SetToMinBeforeAdd" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
-- File Settings --
FileName    = "Testing Remove and Add.pak"
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
							["SPECIAL_KEY_WORDS"]  = {"Id", "MB_STAND_NEG"},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = ADD,
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		},
	} --1 global replacements
}