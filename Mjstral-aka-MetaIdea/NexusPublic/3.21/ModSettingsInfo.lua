NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ModSettingsInfo.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "3.21+",
["DESCRIPTION"]				= "Example usage of ModSettingsInfo game component",
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[METADATA\GAMESTATE\GCMODSETTINGS.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="GcModSettings">
  <Property name="Data">
	<Property value="GcModSettingsInfo">
	  <Property name="Name" value="TestMod" />
	  <Property name="ID" value="777" />
	  <Property name="LoadOrder" value="0" />
	  <Property name="Enabled" value="True" />
	  <Property name="EnabledVR" value="True" />
	</Property>
  </Property>
</Data>
]]			
		}
	}
}