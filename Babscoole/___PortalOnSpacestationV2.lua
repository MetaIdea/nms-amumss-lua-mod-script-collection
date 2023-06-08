TEXT_TO_ADD =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="SpacestationPortal" />
              <Property name="NameHash" value="3101089239" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-32" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="160" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="90" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="0.50" />
                <Property name="ScaleY" value="0.50" />
                <Property name="ScaleZ" value="0.50" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "___PortalOnSpacestationV2.pak",
["MOD_AUTHOR"]              = "Mjjstral and Babscoole",
["NMS_VERSION"]             = "4.30",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN]], [[CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN]], "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MainHallModule"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] = TEXT_TO_ADD,
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "CUSTOMFOLDER\PORTAL\PORTAL.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PortalStructure"},
                            ["VCT"] =
                            {
                                {"ScaleY", "0.3"},
                                {"ScaleZ", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Base"},
                            ["VCT"] =
                            {
                                {"ScaleX", "0.5"},
                                {"ScaleY", "0.5"},
                                {"ScaleZ", "0.5"},
                            }
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTALMEMBRANE.SCENE.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Name", "Pillar"},
                            -- --["REMOVE"] = "SECTION",
                            -- ["VCT"] =
                            -- {
                                -- {"TransY", "3.4"},
                                -- {"ScaleY", "0.3"},
                            -- }
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\WHEELEFFECTSA.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\WHEELEFFECTSB.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTALPILLARS\ENTITIES\PORTALPILLARS.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTALTERMINAL\ENTITIES\PORTALTERMINAL.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Distance", "10"},
                            ["VCT"] =
                            {
                                {"Distance", "300"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Distance", "15"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] =
                            {
                                {"Distance", "450"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]     = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\BUTTON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                          ["PRECEDING_KEY_WORDS"] = "GcMaintenanceComponentData.xml",
                          ["REMOVE"] = "SECTION",
                        }
                    }
                },
            }
        },
    }
}