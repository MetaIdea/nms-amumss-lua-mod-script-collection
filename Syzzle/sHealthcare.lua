Author = "Syzzle"
ModName = "sHealthcare"
GameVersion = "6.17"
Description = "Makes the Health Station recover both your HP and your Life Support meter."

OXYGEN  = [[
  <Property name="List" value="GcRewardTableItem">
    <Property name="PercentageChance" value="100.000000" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardEnergy">
      <Property name="GcRewardEnergy">
        <Property name="Amount" value="100" />
      </Property>
    </Property>
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","HEALTHFULL","List","GcRewardTableItem",},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] = OXYGEN
            },
          }
        },
      }
    }
  }
}