NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Aurfram's Livingship and Interceptor.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Alien", "100"},
                                {"Robot", "100"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/COMMON/SPACECRAFT/INDUSTRIAL/PIRATECRUISER.SCENE.MBIN"},
                            ["SECTION_ACTIVE"] = {2,3},
                            ["ADD_OPTION"] = "ADDafterSECTION", 
                            ["ADD"] =
[[
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Robot" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Alien" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
]]
                        },
                    }
                },
            }
        },
    }
}