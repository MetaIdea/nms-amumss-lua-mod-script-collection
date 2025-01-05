NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Vehicle Control - Arrow Keys.pak",
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
      <Property name="Button" value="Up" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Reverse" />
      <Property name="Button" value="Down" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Left" />
      <Property name="Button" value="Left" />
      <Property name="Axis" value="None" />
    </Property>
    <Property value="GcInputActionMapping2.xml">
      <Property name="ActionSet" value="VehicleMode" />
      <Property name="Action" value="Vehicle_Right" />
      <Property name="Button" value="Right" />
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