OBJECT = "MODELS/SPACE/ATLASSTATION/MODULARPARTS/ATLASCORE/ATLASCORE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PlaceMarkerObjectSpawner.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "Spawn Objects when placing the location marker in your visor",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\PLAYEREFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "PLACEMARKER"},
							--["PRECEDING_KEY_WORDS"] = { "Debris" },
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="]] .. OBJECT .. [[" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="10" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="1" />
            <Property name="UseSeedValue" value="True" />
          </Property>
        </Property>
      </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"]	= { "Id", "PLACEMARKER"},
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{[[      <Property name="Debris" />]], ""},
							}							
						}
					}
				}
			}
		}
	}	
}