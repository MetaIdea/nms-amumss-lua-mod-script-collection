NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Traveller_Eyes_Fix_Fixed.pak",
["MOD_AUTHOR"]				= "WinderTP",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"GroupID", "FOURTH_HEAD_1"},
							["PRECEDING_KEY_WORDS"] = {"Descriptors"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= [[
        <Property value="NMSString0x20.xml">
          <Property name="Value" value="_EYES_DEFAULT1" />
        </Property>
		<!--TRAVELLER EYE FIX "FIXED"-->]]
						},
					} 
				},
			}
		},
	}	
}