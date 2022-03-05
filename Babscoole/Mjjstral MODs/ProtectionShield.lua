SHIELD_VARIANT = 1
ENABLE_SHIELD_COLLSION = true
-- SHIELD_VR_ACTIVATION = false

SHIELD_COLLISION_RADIUS = 1.6
SHIELD_COLLISION_THICKNESS = 0.3
SHIELD_VOLUME_TRIGGER_TYPE = "HazardProtection"

-- VolumeTriggerType = 
-- { 
-- "Open", "GenericInterior", "GenericGlassInterior", "Corridor", "SmallRoom", "LargeRoom", "OpenCovered", 
-- "HazardProtection", "FieldBoundary", "Custom_Biodome", "Portal", "VehicleBoost", "NexusPlaza", "NexusCommunityHub", "NexusHangar" 
-- }

SHIELD_SCENE = ""

SHIELD_COLLISION =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="-]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="90" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="90" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="90" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>	
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-]] .. SHIELD_COLLISION_THICKNESS*2 .. [[" />
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
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>	
]]

COLLISION_NODE =
[[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="Data" />
		  <Property name="NameHash" value="2810148397" />
		  <Property name="Type" value="LOCATOR" />
		  <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="3.841552" />
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
			  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="ATTACHMENT" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN" />
			</Property>		
		  </Property>
		  <Property name="Children">
	]] .. SHIELD_COLLISION .. [[
		  </Property>
		</Property> 
]]

if not ENABLE_SHIELD_COLLSION then SHIELD_COLLISION="" 
end

SHIELD_SCENE_1 =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
  <Property name="NameHash" value="0" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BubbleShield" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-3.841552" />
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
]] .. COLLISION_NODE .. [[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT" />
          <Property name="NameHash" value="2239100408" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="3.841552" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-110" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="134.546" />
            <Property name="ScaleY" value="27.05513" />
            <Property name="ScaleZ" value="134.546" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="48" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="173" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="20" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="28" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10844716140363735693" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT1" />
          <Property name="NameHash" value="545251900" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="3.841552" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-110" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="136.7541" />
            <Property name="ScaleY" value="27.05513" />
            <Property name="ScaleZ" value="136.7541" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="708" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="174" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="299" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="28" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="36" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.012946" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7740323338694939477" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape1" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT4" />
          <Property name="NameHash" value="3851709542" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5.875748" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-70" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="87.85722" />
            <Property name="ScaleY" value="25.7019" />
            <Property name="ScaleZ" value="87.85722" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2508" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="552" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="677" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="52" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="60" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14849027546339626418" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape4" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT5" />
          <Property name="NameHash" value="3561474509" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="3.841552" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="65.10058" />
            <Property name="ScaleY" value="21.87296" />
            <Property name="ScaleZ" value="65.10058" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="678" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="803" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="60" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="68" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9337326186219171437" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape5" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT6" />
          <Property name="NameHash" value="3304926008" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5.875748" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-70" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="89.59709" />
            <Property name="ScaleY" value="25.7019" />
            <Property name="ScaleZ" value="89.59709" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3708" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="804" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="929" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="68" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="76" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1450034310958388837" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape6" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT8" />
          <Property name="NameHash" value="2692375091" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="3.841552" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="67.40298" />
            <Property name="ScaleY" value="21.87296" />
            <Property name="ScaleZ" value="67.40298" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4788" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1248" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1373" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="112" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="120" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.089146" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7241311002527658879" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape8" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT11" />
          <Property name="NameHash" value="3788271868" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="6.445271" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-70" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="102.3844" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="102.3844" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1626" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1751" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="136" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="144" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7556605175867877608" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape11" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT12" />
          <Property name="NameHash" value="4278561646" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="6.445271" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-70" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="100.3962" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="100.3962" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7188" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1752" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1877" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="144" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="152" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9698618882227607505" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape12" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT13" />
          <Property name="NameHash" value="4042592077" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="6.004756" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-165" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="102.3844" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="102.3844" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7788" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1878" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="152" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="160" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8516412342901635560" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape13" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT14" />
          <Property name="NameHash" value="2360887005" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="6.004756" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-165" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="100.3962" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="100.3962" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8388" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2004" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2129" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="160" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="168" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="280911061392793323" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape14" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT15" />
          <Property name="NameHash" value="3329014345" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5.52813" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="165" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="102.3844" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="102.3844" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8988" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2130" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2255" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="168" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="15627328071332810176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape15" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="EFFECT16" />
          <Property name="NameHash" value="3090292180" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5.52813" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="165" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="100.3962" />
            <Property name="ScaleY" value="29.37008" />
            <Property name="ScaleZ" value="100.3962" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9588" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2256" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2381" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="600" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="125" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="184" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.034300" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.044846" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.010000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7905532091012061601" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_GENERATORS\GREENSCROLLALPHA_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="EFFECTShape16" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]

SHIELD_SCENE_2 =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
  <Property name="NameHash" value="0" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">  
   <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BubbleShield" />
      <Property name="NameHash" value="2175858882" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="5195" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="27072" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="5195" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="48" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.468001" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.467999" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.468003" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.468001" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.467996" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.468003" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11983898666187494753" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SHIELD_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="BubbleShieldShape" />
        </Property>
      </Property>
      <Property name="Children">
]] .. COLLISION_NODE .. [[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BubbleShield1" />
          <Property name="NameHash" value="1077413731" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="27072" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5196" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7793" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13536" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2597" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="48" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="96" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.467999" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5167344949006180630" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SCANLINES_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="BubbleShield1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BubbleShield2" />
          <Property name="NameHash" value="1322558620" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="42888" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8233" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9530" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6768" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1297" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="144" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6390201444109758130" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\GRAD_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="BubbleShield2Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="110000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.717800" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight2" />
          <Property name="NameHash" value="230242896" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.663226" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.238700" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>	
]]

if SHIELD_VARIANT == 1 then SHIELD_SCENE = SHIELD_SCENE_1 
elseif SHIELD_VARIANT == 2 then SHIELD_SCENE = SHIELD_SCENE_2 
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ProtectionShield.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_MAINTENANCE"]			= "Babscoole",
["NMS_VERSION"]				= "3.84",
["DESCRIPTION"]				= "Protective shield against hazards, bullets ...",
["MODIFICATIONS"] 			= 
	{	
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Anim","JETPACK_CLOSE",},	
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",							
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="TOGGLE_SHIELD" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>	
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/SHIELD/SHIELD.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
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
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>		
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TOGGLE_SHIELD" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcCameraShakeAction.xml">
                  <Property name="Shake" value="SLOWRUMBLE" />
                  <Property name="FalloffMin" value="5" />
                  <Property name="FalloffMax" value="15" />
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
]]

-- removed, goes below GcCameraShakeAction
                -- <Property value="GcParticleAction.xml">
                  -- <Property name="Effect" value="ANOMALYEFFECT" />
                  -- <Property name="Joint" value="NPCHeadLOC" />
                  -- <Property name="Exact" value="True" />
                  -- <Property name="FindRange" value="GcBroadcastLevel.xml">
                    -- <Property name="GalaxyMarkerType" value="Scene" />
                  -- </Property>
                -- </Property>
                -- <Property value="GcParticleAction.xml">
                  -- <Property name="Effect" value="FLASH" />
                  -- <Property name="Joint" value="NPCHeadLOC" />
                  -- <Property name="Exact" value="True" />
                  -- <Property name="FindRange" value="GcBroadcastLevel.xml">
                    -- <Property name="GalaxyMarkerType" value="Scene" />
                  -- </Property>
                -- </Property>	
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Shield" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TOGGLE_SHIELD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Shield" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TOGGLE_SHIELD" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.EXML]],
			["FILE_CONTENT"] 	 = SHIELD_SCENE
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_A.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="]] .. SHIELD_VOLUME_TRIGGER_TYPE .. [[" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="True" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="True" />
      <Property name="CameraInvisible" value="True" />
      <Property name="InvisibleForInteraction" value="True" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>	
]]
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_B.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="]] .. SHIELD_VOLUME_TRIGGER_TYPE .. [[" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="True" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="True" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="True" />
      <Property name="CameraInvisible" value="True" />
      <Property name="InvisibleForInteraction" value="True" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>	
]]
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}

-- VR_ACTIVATOR =
-- {
	-- ["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_VR_ACTIVATOR.ENTITY.EXML]],
	-- ["FILE_CONTENT"] 	 = 
-- [[
-- <?xml version="1.0" encoding="utf-8"?>
-- <Data template="TkAttachmentData">
  -- <Property name="Components">
    -- <Property value="GcSimpleInteractionComponentData.xml">
      -- <Property name="SimpleInteractionType" value="Interact" />
      -- <Property name="InteractDistance" value="0" />
      -- <Property name="Id" value="" />
      -- <Property name="Rarity" value="GcRarity.xml">
        -- <Property name="Rarity" value="Common" />
      -- </Property>
      -- <Property name="Size" value="GcSizeIndicator.xml">
        -- <Property name="SizeIndicator" value="Small" />
      -- </Property>
      -- <Property name="TriggerAction" value="TOGGLE_SHIELD_VR" />
      -- <Property name="TriggerActionToggle" value="" />
      -- <Property name="BroadcastTriggerAction" value="True" />
      -- <Property name="Delay" value="0" />
      -- <Property name="HideContents" value="True" />
      -- <Property name="InteractIsCrime" value="False" />
      -- <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        -- <Property name="FiendCrime" value="None" />
      -- </Property>
      -- <Property name="InteractCrimeLevel" value="0" />
      -- <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        -- <Property name="SubstanceId" value="" />
        -- <Property name="AltIds" />
        -- <Property name="Cost" value="0" />
        -- <Property name="Repeat" value="False" />
        -- <Property name="RequiredTech" value="" />
      -- </Property>
      -- <Property name="StatToTrack" value="GcStatsEnum.xml">
        -- <Property name="Stat" value="None" />
      -- </Property>
      -- <Property name="StartsBuried" value="False" />
      -- <Property name="MustBeVisibleToInteract" value="False" />
      -- <Property name="NeedsStorm" value="False" />
      -- <Property name="Name" value="" />
      -- <Property name="VRInteractMessage" value="" />
      -- <Property name="TerminalMessage" value="" />
      -- <Property name="ScanType" value="BINOC_INTERACTABLE" />
      -- <Property name="ScanData" value="" />
      -- <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        -- <Property name="DiscoveryType" value="Unknown" />
      -- </Property>
      -- <Property name="ActivateLocatorsFromRarity" value="False" />
      -- <Property name="RarityLocators">
        -- <Property value="NMSString0x10.xml">
          -- <Property name="Value" value="" />
        -- </Property>
        -- <Property value="NMSString0x10.xml">
          -- <Property name="Value" value="" />
        -- </Property>
        -- <Property value="NMSString0x10.xml">
          -- <Property name="Value" value="" />
        -- </Property>
      -- </Property>
      -- <Property name="BaseBuildingTriggerActions" />
      -- <Property name="RewardOverrideTable" />
      -- <Property name="UsePersonalPersistentBuffer" value="False" />
      -- <Property name="ReseedOnRewardSuccess" value="False" />
    -- </Property>
    -- <Property value="GcTriggerActionComponentData.xml">
      -- <Property name="HideModel" value="False" />
      -- <Property name="StartInactive" value="False" />
      -- <Property name="States">
        -- <Property value="GcActionTriggerState.xml">
          -- <Property name="StateID" value="BOOT" />
          -- <Property name="Triggers" />
        -- </Property>
        -- <Property value="GcActionTriggerState.xml">
          -- <Property name="StateID" value="TOGGLE_SHIELD_VR" />
          -- <Property name="Triggers">
            -- <Property value="GcActionTrigger.xml">
              -- <Property name="Trigger" value="GcStateTimeEvent.xml">
                -- <Property name="Seconds" value="0" />
                -- <Property name="RandomSeconds" value="0" />
              -- </Property>	
              -- <Property name="Action">
                -- <Property value="GcPlayAnimAction.xml">
                  -- <Property name="Anim" value="TOGGLE_BACKPACK" />
                -- </Property>
                -- <Property value="GcGoToStateAction.xml">
                  -- <Property name="State" value="BOOT" />
                  -- <Property name="Broadcast" value="False" />
                  -- <Property name="BroadcastLevel" value="Local" />
                -- </Property>					
              -- </Property>
            -- </Property>
          -- </Property>
        -- </Property>
      -- </Property>
      -- <Property name="Persistent" value="False" />
      -- <Property name="PersistentState" value="" />
      -- <Property name="ResetShotTimeOnStateChange" value="False" />
      -- <Property name="LinkStateToBaseGrid" value="False" />
    -- </Property>		
  -- </Property>
  -- <Property name="LodDistances">
    -- <Property value="0" />
    -- <Property value="50" />
    -- <Property value="80" />
    -- <Property value="150" />
    -- <Property value="500" />
  -- </Property>
-- </Data>
-- ]]
-- }

-- if SHIELD_VR_ACTIVATION then
-- table.insert(NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"], VR_ACTIVATOR)
-- NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"][2]["ADD"] = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"][2]["ADD"] .. [[
    -- <Property value="TkReferenceComponentData.xml">
      -- <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/SHIELD/ENTITIES/SHIELD_VR_ACTIVATOR.ENTITY.MBIN" />
      -- <Property name="LSystem" value="" />
    -- </Property>
-- ]]
-- end
