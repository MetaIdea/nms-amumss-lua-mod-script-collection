NewRequirements = [[
      <Property name="Requirements">
		<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="TRA_COMPONENT2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="COMPUTER" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "ProductTable Test 303a.pak",
["MOD_DESCRIPTION"]	= "test",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "303",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
["EXML_CHANGE_TABLE"] = {

	{["SPECIAL_KEY_WORDS"] = {"Id","QUAD_PROD"},
	["PRECEDING_KEY_WORDS"] = {"Cost"},
	["LINE_OFFSET"] = "-2",
	["REMOVE"] = "LINE",
	},
	
	{["SPECIAL_KEY_WORDS"] = {"Id","QUAD_PROD"},
	["PRECEDING_KEY_WORDS"] = {"Cost"},
	["LINE_OFFSET"] = "-2",
--	["REPLACE_TYPE"] = "ADDAFTERSECTION",
	["ADD"] = NewRequirements
	},
	
	
}},}},}}