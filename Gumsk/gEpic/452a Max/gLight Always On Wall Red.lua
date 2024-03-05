Author = "Gumsk"
ModName = "gLight Always On"
GameVersion = "452"
ModVersion = "a"
ModNameSub = "Wall Red"
BaseDescription = "Makes Wall Light Red work without power and improves lighting."

EntityText = [[		<Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="GUMSK/GLIGHTALWAYSON.ENTITY.MBIN" />
        </Property>]]

FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["ADD_FILES"] = {
	{
		["FILE_DESTINATION"] 		= "GUMSK/GLIGHTALWAYSON.ENTITY.EXML",
		["FILE_CONTENT"] 	= [[<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
	  	 <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="ConOn1_" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>]],
	},
},
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
	["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {
	
	{["SPECIAL_KEY_WORDS"] = {"Name","LightMesh"},
		["LINE_OFFSET"] = "-4",
		["ADD"] = EntityText,
	},
	{["SPECIAL_KEY_WORDS"] = {"Name","FALLOFF"},
		["VALUE_CHANGE_TABLE"] = {
			{"Value","linear"},
		},
	},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","INTENSITY"},
		-- ["VALUE_CHANGE_TABLE"] = {
			-- {"Value","25000"},
		-- },
	-- },
}},

}},}}