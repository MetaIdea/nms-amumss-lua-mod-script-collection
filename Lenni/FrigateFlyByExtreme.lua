frigate = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardFrigateFlyby.xml">
              <Property name="FlybyType" value="GcFrigateFlybyType.xml">
                <Property name="FrigateFlybyType" value="AmbientGroup" />
              </Property>
              <Property name="AppearanceDelay" value="1" />
              <Property name="CameraShake" value="FRG_FLYBY_PREP" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		=	"FrigateFlyByExtreme.pak",
  ["MOD_DESCRIPTION"]	=	"Frigates, frigates everywhere!",
  ["MOD_AUTHOR"]		=	"Lenni",
  ["NMS_VERSION"]		=	"3.90",
  ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = { 
			
				{
                    ["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
                    {
                        {
                            ["PRECEDING_KEY_WORDS"]	= "GcRewardTableItem.xml",
							["REPLACE_TYPE"]		= "ALL",
							["ADD_OPTION"]			= "ADDafterSECTION",
							["ADD"]					= frigate,
						},
					},
				},
            }
        }
    }
}