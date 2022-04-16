TEXT_TO_ADD =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SpacestationPortal" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-7.5" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="200" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.75" />
        <Property name="ScaleY" value="0.75" />
        <Property name="ScaleZ" value="0.75" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "PortalOnSpacestation.pak",
  ["MOD_AUTHOR"]				= "Mjjstral",
  ["NMS_VERSION"]				= "2.0",
  ["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
            {
              "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN",		
            },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"Name", "ExteriorTrigger"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},				
					} --1 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE