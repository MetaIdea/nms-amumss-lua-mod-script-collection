Author = "WinderTP,Kibbles,Gumsk"
ModName = "gShip"
ModNameSub = "Custom Ships Test"
BaseDescription = "Adds new ship models"
GameVersion = "393"
ModVersion = "a"

ShipInfo = 	{
				{["NAME"] = "GOLDENVECTOR",		["ORDER"] = "22",	["COCKPITX"] = "0",	["COCKPITY"] = "0",		["COCKPITZ"] = "0",		["SCENE"] = "GOLDENVECTOR"},
				{["NAME"] = "SERENITY",			["ORDER"] = "4",	["COCKPITX"] = "0",	["COCKPITY"] = "2.3",	["COCKPITZ"] = "0.788",	["SCENE"] = "SERENITY"},
			}
NewScenes = [[<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD" />
  <Property name="NameHash" value="4182676705" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData.xml">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="Attributes">
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="EngineFlare_Distant" />
      <Property name="NameHash" value="3869425187" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.628213" />
        <Property name="TransZ" value="-3.462083" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="20.8902454" />
        <Property name="ScaleY" value="20.8902454" />
        <Property name="ScaleZ" value="20.8902454" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ProcRoot_StarShip" />
      <Property name="NameHash" value="3871606254" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children">
]]
NewDescriptors = [[<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_SHIP_" />
      <Property name="Descriptors">
]]

for i = 1,#ShipInfo do
	for j = 1,#ShipInfo do
		if ShipInfo[j]["ORDER"] == tostring(i)
		then
			NewDescriptors = NewDescriptors..[[

        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_SHIP_]]..ShipInfo[j]["NAME"]:upper()..[[" />
          <Property name="Name" value="_Ship_]]..ShipInfo[j]["NAME"]:sub(1,1):upper()..ShipInfo[j]["NAME"]:sub(2):lower()..[[" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="CUSTOMMODELS/]]..ShipInfo[j]["NAME"]..[[/]]..ShipInfo[j]["SCENE"]..[[.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
]]
			if ShipInfo[j]["NAME"] == "GOLDENVECTOR"
			then
				NewScenes = NewScenes..[[

        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Ship_Goldenvector" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="CUSTOMMODELS/GOLDENVECTOR/GOLDENVECTOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
				]]
			else
				NewScenes = NewScenes..[[

        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Ship_]]..ShipInfo[j]["NAME"]:sub(1,1):upper()..ShipInfo[j]["NAME"]:sub(2):lower()..[[" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="CUSTOMMODELS/]]..ShipInfo[j]["NAME"]:upper()..[[/]]..ShipInfo[j]["SCENE"]:upper()..[[.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Data" />
              <Property name="NameHash" value="2810148397" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="ATTACHMENT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/ENTITIES/COCKPIT_A.ENTITY.MBIN" />
                </Property>
              </Property>
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="INTERACTOrigin" />
                  <Property name="NameHash" value="3066580072" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="1.8" />
                    <Property name="TransZ" value="0.7" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="INTERACT" />
                  <Property name="NameHash" value="3698755080" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="1.8" />
                    <Property name="TransZ" value="0.7" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="CrashEffect" />
                  <Property name="NameHash" value="1244254611" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="2.309226" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="MaintenanceSlot1" />
                  <Property name="NameHash" value="304746222" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="2.185556" />
                    <Property name="TransZ" value="-0.734243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="MaintenanceSlot0" />
                  <Property name="NameHash" value="1004495448" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="1.328125" />
                    <Property name="TransZ" value="2.983213" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="CUSTOM" />
                  <Property name="NameHash" value="2675539979" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="1.5" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="TYPE" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="Box" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="WIDTH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HEIGHT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="DEPTH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Cockpit" />
                  <Property name="NameHash" value="876108911" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="]]..ShipInfo[j]["COCKPITX"]..[[" />
                    <Property name="TransY" value="]]..ShipInfo[j]["COCKPITY"]..[[" />
                    <Property name="TransZ" value="]]..ShipInfo[j]["COCKPITZ"]..[[" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="CockpitPos" />
                      <Property name="NameHash" value="465567180" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="]]..ShipInfo[j]["COCKPITX"]..[[" />
                        <Property name="TransY" value="]]..ShipInfo[j]["COCKPITY"]..[[" />
                        <Property name="TransZ" value="]]..ShipInfo[j]["COCKPITZ"]..[[" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="0" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="Inventory" />
                      <Property name="NameHash" value="1402981485" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="0" />
                        <Property name="TransY" value="0" />
                        <Property name="TransZ" value="0" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="0" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="AltID" value="" />
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
]]
			end
		end
	end
end

NewScenes = NewScenes..[[

      </Property>
    </Property>
  </Property>
</Data>]]

NewDescriptors = NewDescriptors..[[

      </Property>
    </Property>
  </Property>
</Data>]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {},
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] = [[MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.EXML]],
			["FILE_CONTENT"] 	 = NewScenes	
		},
		{
			["FILE_DESTINATION"] = [[MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.DESCRIPTOR.EXML]],
			["FILE_CONTENT"] 	 = 	NewDescriptors
		}
	}
}