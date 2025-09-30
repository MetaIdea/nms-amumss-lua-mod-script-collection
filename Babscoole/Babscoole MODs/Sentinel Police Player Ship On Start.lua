SHIP_SEED = 0x1

function HexToDec(number)
    if type(number) == "number" then return number
    elseif string.find(tostring(number),"0x") then return tonumber(number)
    else return tonumber(number,16)
    end
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sentinel Police Player Ship On Start",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Makes the ship you get on a fresh game start the police ship by default",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CurrentShip", "GcResourceElement"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERPOLICE.SCENE.MBIN"},
                                {"Seed", HexToDec(SHIP_SEED)},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.400000"},
                                {"TransZ", "-1.500000"},
                                {"ScaleX", "1.400000"},
                                {"ScaleY", "1.400000"},
                                {"ScaleZ", "1.400000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackPointLight", "Name", "FALLOFF_RATE"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.DESCRIPTOR.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkModelDescriptorList">
  <Property name="List">
    <Property name="List" value="TkResourceDescriptorList">
      <Property name="TypeId" value="_SHIP_" />
      <Property name="Descriptors">
        <Property name="Descriptors" value="TkResourceDescriptorData">
          <Property name="Id" value="_SHIP_POLICE" />
          <Property name="Name" value="_Ship_Police" />
          <Property name="ReferencePaths">
            <Property name="ReferencePaths" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
          </Property>
          <Property name="Chance" value="0.000000" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD" />
  <Property name="NameHash" value="4182676705" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="0.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="EngineFlare_Distant" />
      <Property name="NameHash" value="3869425187" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.628213" />
        <Property name="TransZ" value="-3.462083" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="20.8902454" />
        <Property name="ScaleY" value="20.8902454" />
        <Property name="ScaleZ" value="20.8902454" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="ProcRoot_StarShip" />
      <Property name="NameHash" value="3871606254" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="_Ship_Police" />
          <Property name="NameHash" value="3628092373" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="Data" />
              <Property name="NameHash" value="2810148397" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="ATTACHMENT" />
                  <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/ENTITIES/COCKPIT_A.ENTITY.MBIN" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACTOrigin" />
                  <Property name="NameHash" value="3066580072" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACT" />
                  <Property name="NameHash" value="3698755080" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CrashEffect" />
                  <Property name="NameHash" value="1244254611" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="2.309226" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot1" />
                  <Property name="NameHash" value="304746222" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="2.185556" />
                    <Property name="TransZ" value="-0.734243" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot0" />
                  <Property name="NameHash" value="1004495448" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="1.328125" />
                    <Property name="TransZ" value="2.983213" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CUSTOM" />
                  <Property name="NameHash" value="2675539979" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.500000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="NAVIGATION" />
                      <Property name="Value" value="FALSE" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Box" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="WIDTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="HEIGHT" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="DEPTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="Cockpit" />
                  <Property name="NameHash" value="876108911" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="CockpitPos" />
                      <Property name="NameHash" value="465567180" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="1.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="Inventory" />
                      <Property name="NameHash" value="1402981485" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ENTITIES/FIGHTERBASE.ENTITY.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
    }
}