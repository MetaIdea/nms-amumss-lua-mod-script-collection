ENABLE_SHIELD_COLLSION = true
-- SHIELD_VR_ACTIVATION = false

SHIELD_COLLISION_RADIUS = 1.600000
SHIELD_COLLISION_THICKNESS = 0.300000
SHIELD_VOLUME_TRIGGER_TYPE = "HazardProtection"
SHIELD_SCENE = ""

SHIELD_COLLISION =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="-]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-90.000000" />
            <Property name="RotZ" value="90.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="90.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="TransZ" value="]] .. SHIELD_COLLISION_RADIUS .. [[" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
          <Property name="NameHash" value="3121049417" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-]] .. SHIELD_COLLISION_THICKNESS*2 .. [[" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_THICKNESS .. [[" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="]] .. SHIELD_COLLISION_RADIUS*2 .. [[" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]

COLLISION_NODE =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="Data" />
          <Property name="NameHash" value="2810148397" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="3.871552" />
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
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
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

SHIELD_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD" />
  <Property name="NameHash" value="3121049417" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="BubbleShield" />
      <Property name="NameHash" value="2175858882" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="5195" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="27072" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5195" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="48" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-6.468001" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-6.467999" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-6.468003" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="6.468001" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="6.467996" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="6.468003" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="13535163643597906482" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SHIELD_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BubbleShieldShape" />
        </Property>
      </Property>
      <Property name="Children">
]] .. COLLISION_NODE .. [[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="BubbleShield1" />
          <Property name="NameHash" value="1077413731" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="27072" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="5196" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="7793" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="13536" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="2597" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="48" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="96" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-6.467999" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="7910654785100097477" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SCANLINES_MAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="BubbleShield1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="BubbleShield2" />
          <Property name="NameHash" value="1322558620" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="42888" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="8233" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="9530" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="6768" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="1297" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="144" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="176" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="5515647454882198215" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\GRAD_MAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="BubbleShield2Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="5.000000" />
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
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="110000.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="0.717800" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="pointLight2" />
          <Property name="NameHash" value="230242896" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.663226" />
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
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="40000.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="0.238700" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
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

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Protection Shield",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Protective shield against hazards, bullets ...",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_TURN_L"},
                            ["SEC_SAVE_TO"] = "ADD_ANIM",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ANIM",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anim",     "TOGGLE_SHIELD"},
                                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["SEC_ADD_NAMED"] = "ADD_ANIM",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="false" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="TOGGLE_SHIELD" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="true" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcCameraShakeAction">
                    <Property name="GcCameraShakeAction">
                      <Property name="Shake" value="SLOWRUMBLE" />
                      <Property name="FalloffMin" value="5.000000" />
                      <Property name="FalloffMax" value="15.000000" />
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
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER|collisionCapsule"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFShieldData" />
          <Property name="NameHash" value="781004035" />
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
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_WAVE"},
                            ["SEC_SAVE_TO"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title",               "Shield"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "false"},
                                {"EmoteID",             "TOGGLE_SHIELD"},
                                {"AnimationName",       "TOGGLE_SHIELD"},
                                {"Filename",            "TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS"},
                                {"MoveToCancel",        "true"},
                                {"RidingAnimationName", ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.MXML",
            ["FILE_CONTENT"] = SHIELD_SCENE
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_A.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="TkPhysicsComponentData">
      <Property name="TkPhysicsComponentData">
        <Property name="Data" value="TkPhysicsData">
          <Property name="Mass" value="0.000000" />
          <Property name="Friction" value="0.500000" />
          <Property name="RollingFriction" value="0.200000" />
          <Property name="AngularDamping" value="0.200000" />
          <Property name="LinearDamping" value="0.100000" />
          <Property name="Gravity" value="20.000000" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
          <Property name="InclusionType" value="TkNavMeshInclusionType">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0.000000" />
          <Property name="AreaType" value="TkNavMeshAreaType">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolume" value="false" />
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType">
          <Property name="VolumeTriggerType" value="]] .. SHIELD_VOLUME_TRIGGER_TYPE .. [[" />
        </Property>
        <Property name="SurfaceProperties" value="None" />
        <Property name="ModelOwnership" value="Model" />
        <Property name="Climbable" value="false" />
        <Property name="Walkable" value="true" />
        <Property name="Floor" value="false" />
        <Property name="IgnoreModelOwner" value="true" />
        <Property name="NoVehicleCollide" value="false" />
        <Property name="NoPlayerCollide" value="true" />
        <Property name="NoTerrainCollide" value="false" />
        <Property name="NoFireCollide" value="false" />
        <Property name="NoFallDamage" value="false" />
        <Property name="IgnoreAllCollisions" value="false" />
        <Property name="BlocksInteract" value="true" />
        <Property name="CameraInvisible" value="true" />
        <Property name="InvisibleForInteraction" value="true" />
        <Property name="AllowTeleporter" value="false" />
        <Property name="BlockTeleporter" value="false" />
        <Property name="DisableGravity" value="false" />
        <Property name="SpinOnCreate" value="0.000000" />
        <Property name="ScaleAffectsMass" value="false" />
        <Property name="AllowedDefaultCollision" value="true" />
        <Property name="Animated" value="false" />
        <Property name="UseBasePartOptimisation" value="false" />
        <Property name="IsTransporter" value="false" />
        <Property name="UseSimpleCharacterCollision" value="false" />
        <Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
        <Property name="SimpleCharacterCollisionRadius" value="0.500000" />
        <Property name="SimpleCharacterCollisionHeight" value="2.000000" />
        <Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
        <Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
      </Property>
    </Property>
    <Property name="Components" value="GcShootableComponentData">
      <Property name="GcShootableComponentData">
        <Property name="Health" value="3000" />
        <Property name="LevelledExtraHealth" value="0" />
        <Property name="UseSpaceLevelForExtraHealth" value="false" />
        <Property name="AutoAimTarget" value="false" />
        <Property name="PlayerOnly" value="false" />
        <Property name="IgnorePlayer" value="false" />
        <Property name="ImpactShake" value="false" />
        <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
        <Property name="ForceImpactType" value="GcProjectileImpactType">
          <Property name="Impact" value="Default" />
        </Property>
        <Property name="ImpactOverrideData" value="GcProjectileImpactData">
          <Property name="Effect" value="" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Default" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseWantedThresholdTime" value="0.500000" />
        <Property name="FiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="FiendCrimeModifier" value="1.000000" />
        <Property name="RepairTime" value="8.000000" />
        <Property name="MinDamage" value="0" />
        <Property name="StaticUntilShot" value="false" />
        <Property name="IgnoreHitPush" value="true" />
        <Property name="HitEffectEnabled" value="false" />
        <Property name="HitEffectEntireModel" value="true" />
        <Property name="IsArmoured" value="false" />
        <Property name="CapHealthForMissingArmour" value="1.000000" />
        <Property name="CouldCountAsArmourForParent" value="true" />
        <Property name="IgnoreTerrainEditKills" value="false" />
        <Property name="NameOverride" value="" />
        <Property name="RequiredTech" value="" />
        <Property name="DamageMultiplier" value="OBJECT" />
        <Property name="IsPiercable" value="false" />
        <Property name="IsAffectedByPiercing" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcDestructableComponentData">
      <Property name="GcDestructableComponentData">
        <Property name="Explosion" value="EXPLOSION" />
        <Property name="ExplosionScale" value="1.000000" />
        <Property name="ExplosionScaleToBounds" value="false" />
        <Property name="UnderwaterExplosion" value="" />
        <Property name="UnderwaterExplosionScale" value="1.000000" />
        <Property name="OnlyExplodeSelf" value="false" />
        <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
        <Property name="TriggerAction" value="IDLE" />
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseFiendWanted" value="false" />
        <Property name="IncreaseFiendWantedChance" value="1.000000" />
        <Property name="IncreaseFiendCrime" value="GcFiendCrime">
          <Property name="FiendCrime" value="EggDestroyed" />
        </Property>
        <Property name="NotifyEncounter" value="false" />
        <Property name="DamagesParentWhenDestroyed" value="false" />
        <Property name="LootReward" value="" />
        <Property name="LootRewardAmountMin" value="0" />
        <Property name="LootRewardAmountMax" value="0" />
        <Property name="CanDestroyFromStoredInteraction" value="true" />
        <Property name="GivesSubstances" />
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="GivesReward" value="" />
        <Property name="BlockDestructionIfRewardFails" value="false" />
        <Property name="OverrideChipAmount" value="-1" />
        <Property name="PirateSystemAltReward" value="" />
        <Property name="RewardIfDestroyedByOther" value="false" />
        <Property name="NoConsequencesDuringPirateBattle" value="false" />
        <Property name="HideReward" value="false" />
        <Property name="OverrideRewardLoc" value="" />
        <Property name="RewardOverrideTable" />
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="StandingChangeOnDeath">
          <Property name="Gek" value="0" />
          <Property name="Korvax" value="0" />
          <Property name="Vykeen" value="0" />
          <Property name="TradeGuild" value="0" />
          <Property name="WarriorGuild" value="0" />
          <Property name="ExplorerGuild" value="0" />
          <Property name="Nexus" value="0" />
          <Property name="Pirates" value="0" />
          <Property name="Builders" value="0" />
          <Property name="None" value="0" />
        </Property>
        <Property name="UseSystemColorsForTexture" value="false" />
        <Property name="RemoveModel" value="false" />
        <Property name="HideModel" value="false" />
        <Property name="DestroyedModel" value="TkModelResource">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
        <Property name="DestroyedModelUsesScale" value="true" />
        <Property name="DestroyedModelSpawnNode" value="" />
        <Property name="DestroyedModelCollidesWithEverything" value="false" />
        <Property name="DestroyForce" value="1.000000" />
        <Property name="DestroyForceRadius" value="3.000000" />
        <Property name="DestroyEffect" value="" />
        <Property name="DestroyEffectOnSurface" value="false" />
        <Property name="DestroyEffectPoint" value="SFX" />
        <Property name="DestroyEffectTime" value="2.000000" />
        <Property name="DestroyEffectMatrices" value="false" />
        <Property name="AreaDamage" value="" />
        <Property name="ShowInteract" value="true" />
        <Property name="HideInteractWhenAllArmourDestroyed" value="false" />
        <Property name="ShowInteractRange" value="20.000000" />
        <Property name="HideInteractWhenShielded" value="false" />
        <Property name="GrenadeSingleHit" value="true" />
        <Property name="LootItems" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\ENTITIES\SHIELD_B.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="TkPhysicsComponentData">
      <Property name="TkPhysicsComponentData">
        <Property name="Data" value="TkPhysicsData">
          <Property name="Mass" value="0.000000" />
          <Property name="Friction" value="0.500000" />
          <Property name="RollingFriction" value="0.200000" />
          <Property name="AngularDamping" value="0.200000" />
          <Property name="LinearDamping" value="0.100000" />
          <Property name="Gravity" value="20.000000" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
          <Property name="InclusionType" value="TkNavMeshInclusionType">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0.000000" />
          <Property name="AreaType" value="TkNavMeshAreaType">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolume" value="false" />
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType">
          <Property name="VolumeTriggerType" value="HazardProtection" />
        </Property>
        <Property name="SurfaceProperties" value="None" />
        <Property name="ModelOwnership" value="Model" />
        <Property name="Climbable" value="false" />
        <Property name="Walkable" value="true" />
        <Property name="Floor" value="false" />
        <Property name="IgnoreModelOwner" value="true" />
        <Property name="NoVehicleCollide" value="false" />
        <Property name="NoPlayerCollide" value="true" />
        <Property name="NoTerrainCollide" value="false" />
        <Property name="NoFireCollide" value="false" />
        <Property name="NoFallDamage" value="false" />
        <Property name="IgnoreAllCollisions" value="false" />
        <Property name="BlocksInteract" value="true" />
        <Property name="CameraInvisible" value="true" />
        <Property name="InvisibleForInteraction" value="true" />
        <Property name="AllowTeleporter" value="false" />
        <Property name="BlockTeleporter" value="false" />
        <Property name="DisableGravity" value="false" />
        <Property name="SpinOnCreate" value="0.000000" />
        <Property name="ScaleAffectsMass" value="false" />
        <Property name="AllowedDefaultCollision" value="true" />
        <Property name="Animated" value="false" />
        <Property name="UseBasePartOptimisation" value="false" />
        <Property name="IsTransporter" value="false" />
        <Property name="UseSimpleCharacterCollision" value="false" />
        <Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
        <Property name="SimpleCharacterCollisionRadius" value="0.500000" />
        <Property name="SimpleCharacterCollisionHeight" value="2.000000" />
        <Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
        <Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
      </Property>
    </Property>
    <Property name="Components" value="GcShootableComponentData">
      <Property name="GcShootableComponentData">
        <Property name="Health" value="3000" />
        <Property name="LevelledExtraHealth" value="0" />
        <Property name="UseSpaceLevelForExtraHealth" value="false" />
        <Property name="AutoAimTarget" value="false" />
        <Property name="PlayerOnly" value="false" />
        <Property name="IgnorePlayer" value="false" />
        <Property name="ImpactShake" value="false" />
        <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
        <Property name="ForceImpactType" value="GcProjectileImpactType">
          <Property name="Impact" value="Default" />
        </Property>
        <Property name="ImpactOverrideData" value="GcProjectileImpactData">
          <Property name="Effect" value="" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Default" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseWantedThresholdTime" value="0.500000" />
        <Property name="FiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="FiendCrimeModifier" value="1.000000" />
        <Property name="RepairTime" value="8.000000" />
        <Property name="MinDamage" value="0" />
        <Property name="StaticUntilShot" value="false" />
        <Property name="IgnoreHitPush" value="true" />
        <Property name="HitEffectEnabled" value="false" />
        <Property name="HitEffectEntireModel" value="true" />
        <Property name="IsArmoured" value="false" />
        <Property name="CapHealthForMissingArmour" value="1.000000" />
        <Property name="CouldCountAsArmourForParent" value="true" />
        <Property name="IgnoreTerrainEditKills" value="false" />
        <Property name="NameOverride" value="" />
        <Property name="RequiredTech" value="" />
        <Property name="DamageMultiplier" value="OBJECT" />
        <Property name="IsPiercable" value="false" />
        <Property name="IsAffectedByPiercing" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcDestructableComponentData">
      <Property name="GcDestructableComponentData">
        <Property name="Explosion" value="EXPLOSION" />
        <Property name="ExplosionScale" value="1.000000" />
        <Property name="ExplosionScaleToBounds" value="false" />
        <Property name="UnderwaterExplosion" value="" />
        <Property name="UnderwaterExplosionScale" value="1.000000" />
        <Property name="OnlyExplodeSelf" value="false" />
        <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
        <Property name="TriggerAction" value="IDLE" />
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseFiendWanted" value="false" />
        <Property name="IncreaseFiendWantedChance" value="1.000000" />
        <Property name="IncreaseFiendCrime" value="GcFiendCrime">
          <Property name="FiendCrime" value="EggDestroyed" />
        </Property>
        <Property name="NotifyEncounter" value="false" />
        <Property name="DamagesParentWhenDestroyed" value="false" />
        <Property name="LootReward" value="" />
        <Property name="LootRewardAmountMin" value="0" />
        <Property name="LootRewardAmountMax" value="0" />
        <Property name="CanDestroyFromStoredInteraction" value="true" />
        <Property name="GivesSubstances" />
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="GivesReward" value="" />
        <Property name="BlockDestructionIfRewardFails" value="false" />
        <Property name="OverrideChipAmount" value="-1" />
        <Property name="PirateSystemAltReward" value="" />
        <Property name="RewardIfDestroyedByOther" value="false" />
        <Property name="NoConsequencesDuringPirateBattle" value="false" />
        <Property name="HideReward" value="false" />
        <Property name="OverrideRewardLoc" value="" />
        <Property name="RewardOverrideTable" />
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="StandingChangeOnDeath">
          <Property name="Gek" value="0" />
          <Property name="Korvax" value="0" />
          <Property name="Vykeen" value="0" />
          <Property name="TradeGuild" value="0" />
          <Property name="WarriorGuild" value="0" />
          <Property name="ExplorerGuild" value="0" />
          <Property name="Nexus" value="0" />
          <Property name="Pirates" value="0" />
          <Property name="Builders" value="0" />
          <Property name="None" value="0" />
        </Property>
        <Property name="UseSystemColorsForTexture" value="false" />
        <Property name="RemoveModel" value="false" />
        <Property name="HideModel" value="false" />
        <Property name="DestroyedModel" value="TkModelResource">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
        <Property name="DestroyedModelUsesScale" value="true" />
        <Property name="DestroyedModelSpawnNode" value="" />
        <Property name="DestroyedModelCollidesWithEverything" value="false" />
        <Property name="DestroyForce" value="1.000000" />
        <Property name="DestroyForceRadius" value="3.000000" />
        <Property name="DestroyEffect" value="" />
        <Property name="DestroyEffectOnSurface" value="false" />
        <Property name="DestroyEffectPoint" value="SFX" />
        <Property name="DestroyEffectTime" value="2.000000" />
        <Property name="DestroyEffectMatrices" value="false" />
        <Property name="AreaDamage" value="" />
        <Property name="ShowInteract" value="true" />
        <Property name="HideInteractWhenAllArmourDestroyed" value="false" />
        <Property name="ShowInteractRange" value="20.000000" />
        <Property name="HideInteractWhenShielded" value="false" />
        <Property name="GrenadeSingleHit" value="true" />
        <Property name="LootItems" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        },
    }
}