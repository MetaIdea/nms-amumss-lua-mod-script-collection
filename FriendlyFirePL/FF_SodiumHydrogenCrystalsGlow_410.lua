
-- mod description
METADATA_MOD_NAME       = "FF_SodiumHydrogenCrystalsGlow.pak"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL, Babscoole, Lenni"
METADATA_NMS_VERSION    = "4.1"
METADATA_MOD_DESC       = "This mod adds glow effect to large Sodium and Di-hydrogen crystals found on planets, similar to the glow found on large Condensed Carbon crystals."

----------------------------------------------------------------------------------------------------

-- light intensity for all crystals; default value: 20000.000000
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

-- files to be modified 
PATH_CRYSTAL_RED    = "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE.SCENE.MBIN"
PATH_CRYSTAL_BLUE   = "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN"
PATH_CRYSTAL_YELLOW = "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN"

-- key words to search sections
SEARCH_BLUE_YELLOW = {"Children"}
SEARCH_RED = {"Name","INTENSITY","Value","IGNORE",}

----------------------------------------------------------------------------------------------------

-- function to generate a node for light property
-- inputs:  light intensity I, light color compontents R,G,B
-- output:  string of light property node
function LightNode (I, R, G, B)
  return
[[
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
        <Property name="Value" value="]]..I..[[" />
      </Property>
      <Property value="TkSceneNodeAttributeData.xml">
        <Property name="Name" value="COL_R" />
        <Property name="AltID" value="" />
        <Property name="Value" value="]]..R..[[" />
      </Property>
      <Property value="TkSceneNodeAttributeData.xml">
        <Property name="Name" value="COL_G" />
        <Property name="AltID" value="" />
        <Property name="Value" value="]]..G..[[" />
      </Property>
      <Property value="TkSceneNodeAttributeData.xml">
        <Property name="Name" value="COL_B" />
        <Property name="AltID" value="" />
        <Property name="Value" value="]]..B..[[" />
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
end

----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = METADATA_MOD_NAME, 
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                  -- modify the file for red crystals
                  ["MBIN_FILE_SOURCE"] = PATH_CRYSTAL_RED,
                  ["EXML_CHANGE_TABLE"] =
                  {
                    {
                      ["SKW"] = SEARCH_RED,
                      ["VCT"] = {{"Value",LIGHT_INTENSITY,},},
                    },
                  }
                },

                {
                    -- modify the file for blue crystals
                    ["MBIN_FILE_SOURCE"] = PATH_CRYSTAL_BLUE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add section with light component to CHILDREN node
                            ["PKW"] = SEARCH_BLUE_YELLOW,
                            ["ADD"] = LightNode(LIGHT_INTENSITY,LIGHT_BLUE_COLOR_R,LIGHT_BLUE_COLOR_G,LIGHT_BLUE_COLOR_B),  
                        },
                    }
                },

                {
                    -- modify the file for yellow crystals
                    ["MBIN_FILE_SOURCE"] = PATH_CRYSTAL_YELLOW,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add section with light component to CHILDREN node
                            ["PKW"] = SEARCH_BLUE_YELLOW,
                            ["ADD"] = LightNode(LIGHT_INTENSITY,LIGHT_YELLOW_COLOR_R,LIGHT_YELLOW_COLOR_G,LIGHT_YELLOW_COLOR_B),  
                        },
                    }
                }
            }
        }
    }
}