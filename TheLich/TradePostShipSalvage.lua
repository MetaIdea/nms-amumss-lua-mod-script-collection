TP_ADD = [[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RefSalvageTerminal1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="37.3999977" />
        <Property name="TransY" value="16.6126556" />
        <Property name="TransZ" value="1.031249" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.8" />
        <Property name="ScaleY" value="0.8" />
        <Property name="ScaleZ" value="0.8" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "TradePostShipSalvage.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "TheLich",
["NMS_VERSION"]             = "3.75",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.4C482859.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.MBIN",
                                               "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_TRADER.SCENE.MBIN",
                                               "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_WARRIOR.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "Terminal_Tradingpost"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ", -2.031249},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "Terminal_Tradingpost"},
                            ["REPLACE_TYPE"]        = "ADDAFTERSECTION",
                            ["ADD"]                 = TP_ADD
                        },
                    }
                },
            }
        }
    }   
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE