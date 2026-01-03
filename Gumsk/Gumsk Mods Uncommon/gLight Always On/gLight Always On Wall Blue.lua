Author = "Gumsk"
ModName = "gLight Always On"
GameVersion = "6.1.8.0"
ModVersion = "a"
ModNameSub = "Wall Blue"
BaseDescription = "Makes Wall Light Blue work without power and improves lighting."

EntityText = [[   <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="GUMSK/GLIGHTALWAYSON.ENTITY.MBIN" />
        </Property>]]

FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
MOD_DESCRIPTION = BaseDescription,
MOD_AUTHOR    = Author,
NMS_VERSION   = GameVersion,
ADD_FILES = {
  {
    FILE_DESTINATION    = "GUMSK/GLIGHTALWAYSON.ENTITY.EXML",
    FILE_CONTENT   = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcTriggerActionComponentData" _index="0">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState" _index="0">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger" _index="0">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction" _index="0">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Activate" />
                      <Property name="Name" value="ConOn1_" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="false" />
                      <Property name="IncludeChildPhysics" value="false" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="false" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" _index="0" />
    <Property name="LodDistances" value="50.000000" _index="1" />
    <Property name="LodDistances" value="80.000000" _index="2" />
    <Property name="LodDistances" value="150.000000" _index="3" />
    <Property name="LodDistances" value="500.000000" _index="4" />
  </Property>
</Data>]],
  },
},
MODIFICATIONS = {{
MBIN_CHANGE_TABLE = {
{
  MBIN_FILE_SOURCE = FileSource1,
  MXML_CHANGE_TABLE = {

  {SPECIAL_KEY_WORDS = {"Name","LightMesh"},
    PRECEDING_KEY_WORDS = {"Attributes"},
    ADD_OPTION = "ADDendSECTION",
    ADD = EntityText,
  },
  {SPECIAL_KEY_WORDS = {"Name","FALLOFF"},
    VALUE_CHANGE_TABLE = {
      {"Value","linear"},
    },
  },
  -- {SPECIAL_KEY_WORDS = {"Name","INTENSITY"},
    -- VALUE_CHANGE_TABLE = {
      -- {"Value","25000"},
    -- },
  -- },
}},

}},}}