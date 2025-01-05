NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Vehicle Control - P L SemiColon Quote.pak",
["MOD_AUTHOR"]    = "Develin Pixy",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.01.1",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\ENGINESETTINGS\TKGAMESETTINGS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KeyMapping2"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Forward" />
      <Property name="Button" value="KeyP" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Reverse" />
      <Property name="Button" value="Semicolon" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Left" />
      <Property name="Button" value="KeyL" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Right" />
      <Property name="Button" value="Hash" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Forward" />
      <Property name="Button" value="MouseUnbound" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Reverse" />
      <Property name="Button" value="MouseUnbound" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Left" />
      <Property name="Button" value="MouseUnbound" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Right" />
      <Property name="Button" value="MouseUnbound" />
      <Property name="Axis" value="None" />
    </Property>
]]
                        },
                    }
                },
            }
        }
    }
}