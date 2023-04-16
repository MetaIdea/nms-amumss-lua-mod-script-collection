
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Additional starting resources for Advanced Mining Laser"
BaseDescription = "Additional starting resources for Advanced Mining Laser"
GameVersion = "420"
ModVersion = "a"
FileSource1 = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"

TEXT_TO_ADD =
[[
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="CARBON_SEAL" />
          <Property name="Amount" value="1" />
          <Property name="MaxAmount" value="100" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
		<Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="TECH_COMP" />
          <Property name="Amount" value="2" />
          <Property name="MaxAmount" value="100" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
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
					["SPECIAL_KEY_WORDS"] = {"Id","ROCKETSUB"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = TEXT_TO_ADD, 
				},
			}
		},
	}
},
}}




