
-- mod description
METADATA_MODNAME    = "_FF_SodiumHydrogenCrystalsGlow.pak"
METADATA_AUTHOR     = "FriendlyFirePL"
METADATA_VERSION    = "4.08"
METADATA_DESC       = "This mods adds glow effect to large Sodium Nitrate and Di-Hydrogen crystals found on planets, similar to large Condensed Carbon crystals."

----------------------------------------------------------------------------------------------------

-- light intensity for all crystals
LIGHT_INTENSITY = 30000.000000

-- blue crystal light color components
LIGHT_BLUE_COLOR_R = 0.000000
LIGHT_BLUE_COLOR_G = 0.607843
LIGHT_BLUE_COLOR_B = 0.929411

-- yellow crystal light color components
LIGHT_YELLOW_COLOR_R = 1.000000
LIGHT_YELLOW_COLOR_G = 0.913725
LIGHT_YELLOW_COLOR_B = 0.000000

----------------------------------------------------------------------------------------------------

-- files of both crystal types to be modified
PATH_CRYSTAL_BLUE   = "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN"
PATH_CRYSTAL_YELLOW = "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN"

-- key words to search section
SEARCH_SECTION = {"Children"}

-- blocks of code to stitch together
CODE_LIGHT_I = [[
  <Property value="TkSceneNodeData.xml">
  <Property name="Name" value="pointLight1" />
  <Property name="NameHash" value="4219409884" />
  <Property name="Type" value="LIGHT" />
  <Property name="Transform" value="TkTransformData.xml">
    <Property name="TransX" value="0.083422" />
    <Property name="TransY" value="0.6" />
    <Property name="TransZ" value="-0.040795" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="FOV" />
      <Property name="AltID" value="" />
      <Property name="Value" value="360.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="FALLOFF" />
      <Property name="AltID" value="" />
      <Property name="Value" value="quadratic" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="FALLOFF_RATE" />
      <Property name="AltID" value="" />
      <Property name="Value" value="2.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="INTENSITY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="]]

CODE_LIGHT_R =
[["/>
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="COL_R" />
    <Property name="AltID" value="" />
    <Property name="Value" value="]]

CODE_LIGHT_G =
[["/>
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="COL_G" />
    <Property name="AltID" value="" />
    <Property name="Value" value="]]

CODE_LIGHT_B =
[["/>
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="COL_B" />
    <Property name="AltID" value="" />
    <Property name="Value" value="]]

CODE_LIGHT_E =
[["/>
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="COOKIE_IDX" />
    <Property name="AltID" value="" />
    <Property name="Value" value="-1" />
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="VOLUMETRIC" />
    <Property name="AltID" value="" />
    <Property name="Value" value="0.000000" />
  </Property>
  <Property value="TkSceneNodeAttributeData.xml">
    <Property name="Name" value="MATERIAL" />
    <Property name="AltID" value="" />
    <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
  </Property>
</Property>
<Property name="Children" />
</Property>
]]

-- build the light components
COMPONENT_LIGHT_BLUE = CODE_LIGHT_I .. LIGHT_INTENSITY .. CODE_LIGHT_R .. LIGHT_BLUE_COLOR_R .. CODE_LIGHT_G .. LIGHT_BLUE_COLOR_G .. CODE_LIGHT_B .. LIGHT_BLUE_COLOR_B .. CODE_LIGHT_E
COMPONENT_LIGHT_YELLOW = CODE_LIGHT_I .. LIGHT_INTENSITY .. CODE_LIGHT_R .. LIGHT_YELLOW_COLOR_R .. CODE_LIGHT_G .. LIGHT_YELLOW_COLOR_G .. CODE_LIGHT_B .. LIGHT_YELLOW_COLOR_B .. CODE_LIGHT_E

----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = METADATA_MODNAME, 
    ["MOD_AUTHOR"]		    = METADATA_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    -- modify the file for blue crystals
                    ["MBIN_FILE_SOURCE"] = PATH_CRYSTAL_BLUE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add section with light component as a child to CHILDREN node
                            ["PKW"] = SEARCH_SECTION,
                            ["ADD"] = COMPONENT_LIGHT_BLUE,  
                        },
                    }
                },

                {
                    -- modify the file for yellow crystals
                    ["MBIN_FILE_SOURCE"] = PATH_CRYSTAL_YELLOW,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add section with light component as a child to CHILDREN node
                            ["PKW"] = SEARCH_SECTION,
                            ["ADD"] = COMPONENT_LIGHT_YELLOW,  
                        },
                    }
                }
            }
        }
    }
}