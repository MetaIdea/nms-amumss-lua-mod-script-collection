
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Advanced Mining is known"
BaseDescription = "Advanced Mining Laser (STRONGLASER) is known from the start; required for farming Di-Hydrogen (LAUNCHSUB)"
GameVersion = "420"
ModVersion = "a"
FileSource1 = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"

TEXT_TO_ADD =
[[
        <Property value="NMSString0x10.xml">
			<Property name="Value" value="STRONGLASER" />
		</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				
				{
					["SPECIAL_KEY_WORDS"] = {"Value","SCANBINOC1"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = TEXT_TO_ADD, 
				},
			}
		},
	}
},
}}



