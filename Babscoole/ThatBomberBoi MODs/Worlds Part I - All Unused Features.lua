NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Unused.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseBuildingCameraMode", "FocusCam"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\PURCHASEABLESPECIALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDendSECTION", 
                            ["ADD"] =
[[
    <Property value="GcPurchaseableSpecial.xml">
      <Property name="ID" value="F_JELLYCHILD" />
      <Property name="ShopNumber" value="1" />
      <Property name="MissionTier" value="1" />
      <Property name="IsConsumable" value="True" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_JELLYBOSS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncrementStat", "JELLYBOSS"},
                                {"AllowInWater",  "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/MANTARAY/MANTARAY.SCENE.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLYINGLIZARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/FLYINGLIZARDRIG/FLYINGLIZARDGLOW.SCENE.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"BuildingFiles", "Traders",   "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Traders",   "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                                {"BuildingFiles", "Warriors",  "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Warriors",  "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                                {"BuildingFiles", "Explorers", "BuildingFiles", "Beacon", "Scene", "Normal"},
                                {"BuildingFiles", "Explorers", "BuildingFiles", "Beacon", "Scene", "AbandonedSystem"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS/PLANETS/COMMON/WRECKS/IRONGIANT.SCENE.MBIN"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeFiles", "Lush", "FileOptions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Shell" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RUINS/RUINSBIOME.MBIN" />
          <Property name="Weight" value="1" />
          <Property name="PurpleSystemWeight" value="0.5" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeFiles", "Barren", "FileOptions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="Worlds" />
          </Property>
          <Property name="Filename" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DESOLATE/DESOLATEBIOME.MBIN" />
          <Property name="Weight" value="1" />
          <Property name="PurpleSystemWeight" value="0.5" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERWATER"},
                            ["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERTOWERS.MBIN" />
        </Property>
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCREEPY.MBIN" />
        </Property>
        <Property value="VariableSizeString.xml">
          <Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERFOREST.MBIN" />
        </Property>
]]
                        },
                    }
                },
            }
        }
    }
}