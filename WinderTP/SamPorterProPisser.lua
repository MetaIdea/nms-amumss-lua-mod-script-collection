MOD_FILENAME	= "Winder_SamPorterProPisser.pak"
MOD_AUTHOR		= "Winder with block pieces from Mjjstral"
MOD_DESCRIPTION	= "You take a piss on the floor, possibly while walking"
NMS_VERSION		= "3.21+"

--override created material with existing mat
OVER_MAT_PATH = [[MODELS\EFFECTS\BLOOD\FIENDDEATH\EMITTERS\FBLOODSPLATEMITTER.MATERIAL.MBIN]]
OVERRIDE_MAT = true

--override created animation with existing anim
--if NOT overriding, uncomment the block in ADD_FILES section
OVER_ANIM = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTION/GENERAL/0H_INTER_NEUTRAL_03.ANIM.MBIN]]
OVERRIDE_ANIM = true

--config var going into exmls
ROOT_PATH = [[CUSTOMMODELS/WINDER/PISS/]]
EMOTE_ACTION =	{	["NAME"] 		= "Urinate",
					["ICON"] 		= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/SPACEGUNK.1.DDS",
					["CHAT_MSG"] 	= "%NAME% is relieving themselves",
					["CHAT_NAME"] 	= "False",
				}
PISS_ACTION = "PISS"
PISS_PARTICLE = {	{	["EMIT_RATE"]			=	"100",
						["EMIT_LIFE"]			=	"2",
						["EMIT_MIDLIFE"]		=	"0.7",
						["EMIT_SPREAD"]			=	"7",
						["EMIT_S_MIN"]			=	"0",
						["EMIT_DIRECTION_X"]	=	"0",
						["EMIT_DIRECTION_Y"]	=	"12",
						["EMIT_DIRECTION_Z"]	=	"0.4",
						["EMIT_GRAVITY"]		=	"-100",
						["EMIT_DAMPING"]		=	"0.5",
						["PART_MAX_NO"]			=	"2500",
						["PART_LIFE"]			=	"1.5",
						["PART_ROTATION"]		=	"360",
						["PART_VELOCITY"]		=	"0",
						["PART_SIZE_A"]			=	"0.5",
						["PART_SIZE_B"]			=	"0.5",
						["PART_SIZE_C"]			=	"0.3",
						["PART_COLOUR_R"]		=	"0.825",
						["PART_COLOUR_G"]		=	"0.77",
						["PART_COLOUR_B"]		=	"0.055",
						["PART_ALPHA"]			=	"0.7",
						["PART_H"]				=	"0.0075",
						["PART_S"]				=	"0.005",
						["PART_V"]				=	"0.07",
					},
					{	["EMIT_RATE"]			=	"30",
						["EMIT_LIFE"]			=	"2",
						["EMIT_MIDLIFE"]		=	"0.7",
						["EMIT_SPREAD"]			=	"25",
						["EMIT_S_MIN"]			=	"7.5",
						["EMIT_DIRECTION_X"]	=	"0",
						["EMIT_DIRECTION_Y"]	=	"12",
						["EMIT_DIRECTION_Z"]	=	"0.4",
						["EMIT_GRAVITY"]		=	"-100",
						["EMIT_DAMPING"]		=	"0.5",
						["PART_MAX_NO"]			=	"500",
						["PART_LIFE"]			=	"1",
						["PART_ROTATION"]		=	"360",
						["PART_VELOCITY"]		=	"0",
						["PART_SIZE_A"]			=	"0.3",
						["PART_SIZE_B"]			=	"0.3",
						["PART_SIZE_C"]			=	"0.3",
						["PART_COLOUR_R"]		=	"0.825",
						["PART_COLOUR_G"]		=	"0.77",
						["PART_COLOUR_B"]		=	"0.055",
						["PART_ALPHA"]			=	"0.3",
						["PART_H"]				=	"0.0075",
						["PART_S"]				=	"0.005",
						["PART_V"]				=	"0.07",
					}
				}
PISS_EFFECT = 	{	["ID"]				=	"PISS",
					["MODEL"]			=	"PISS_STREAM.SCENE",
					["AUDIO"]			=	"INVALID_EVENT",
					["LIFE"]			=	"50",
					["SCALE"]			=	"0.3",
					["DIST_SCALE"]		=	"0",
					["DIST_SCALE_MAX"]	=	"50",
					["MAX_SPAWN"]		=	"20",
				}	
PENIS_JOINT = "player01_ROOTSHJnt"
REWARD_ID = "DE_FOOD_ENERGY1"
TEXTURE_PATH =	{	["LOCATION"]	= "",
					["NAME"]		= "SPLASH.DDS",
				}		
PARTICLE_PATH = {	{	["EXML"]	= "PISS_MAIN.PARTICLE",
						["MXML"]	= "",
						["MBIN"]	= "",
					},
					{	["EXML"]	= "PISS_SIDE.PARTICLE",
						["MXML"]	= "",
						["MBIN"]	= "",
					}
				}	
MATERIAL_PATH = {	["EXML"]	= "PISS.MATERIAL",
					["MBIN"]	= "",
				}				
PISS_MODEL = 	{	["EXML"]	= "",
					["MBIN"]	= "",
				}
				
--making file paths
				
TEXTURE_PATH["LOCATION"] = ROOT_PATH .. [[TEXTURE/]]
PISS_MODEL["EXML"] = ROOT_PATH .. PISS_EFFECT["MODEL"] .. ".EXML"
PISS_MODEL["MBIN"] = ROOT_PATH .. PISS_EFFECT["MODEL"] .. ".MBIN"
MATERIAL_PATH["MBIN"] = ROOT_PATH .. MATERIAL_PATH["EXML"] .. ".MBIN"
MATERIAL_PATH["EXML"] = ROOT_PATH .. MATERIAL_PATH["EXML"] .. ".EXML"
for i=1, #PARTICLE_PATH, 1 do
PARTICLE_PATH[i]["MBIN"] = ROOT_PATH .. PARTICLE_PATH[i]["EXML"] .. ".MBIN"
PARTICLE_PATH[i]["MXML"] = ROOT_PATH .. PARTICLE_PATH[i]["EXML"] .. ".MXML"
PARTICLE_PATH[i]["EXML"] = ROOT_PATH .. PARTICLE_PATH[i]["EXML"] .. ".EXML"
end

print ([[ROOT_PATH:  ]] .. ROOT_PATH .. "\n" ..
[[TEXTURE_PATH"LOCATION":  ]] .. TEXTURE_PATH["LOCATION"] .. "\n")
for i=1, #PARTICLE_PATH, 1 do
print ([[PARTICLE_PATH(]] .. i .. [[)"EXML":  ]] .. PARTICLE_PATH[i]["EXML"] .. "\n" ..
[[PARTICLE_PATH(]] .. i .. [[)"MXML":  ]] .. PARTICLE_PATH[i]["MXML"] .. "\n" ..
[[PARTICLE_PATH(]] .. i .. [[)"MBIN":  ]] .. PARTICLE_PATH[i]["MBIN"].. "\n")
end
print ([[MATERIAL_PATH"MBIN":  ]] .. MATERIAL_PATH["MBIN"] .. "\n" ..
[[MATERIAL_PATH"EXML":  ]] .. MATERIAL_PATH["EXML"] .. "\n" ..
[[PISS_MODEL"EXML":  ]] .. PISS_MODEL["EXML"] .. "\n" ..
[[PISS_MODEL"MBIN":  ]] .. PISS_MODEL["MBIN"])


function GetQuickAction(TITLE, ANIM, ICON, UNDERWATER, CHATTEXT, CHATPREFIX)
return [[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. TITLE .. [[" />
      <Property name="ChatText" value="]] .. CHATTEXT .. [[" />
      <Property name="ChatUsesPrefix" value="]] .. CHATPREFIX .. [[" />
      <Property name="AnimationName" value="]] .. ANIM .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="True" />
      <Property name="MoveToCancel" value="True" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="]] .. UNDERWATER .. [[" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
end

function GetTriggerAnim(ANIM, FILEPATH)
return [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM .. [[" />
          <Property name="Filename" value="]] .. FILEPATH .. [[" />
          <Property name="AnimType" value="Loop" />
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
            <Property name="BlockPlayerMovement" value="True" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
end

function GetTriggerAction(ANIM, EFFECT, EFF_POINT, REWARD)
return [[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcParticleAction.xml">
                  <Property name="Effect" value="]] .. EFFECT .. [[" />
                  <Property name="Joint" value="]] .. EFF_POINT .. [[" />
                  <Property name="Exact" value="True" />
                  <Property name="FindRange" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
                <Property value="GcScareCreaturesAction.xml">
                  <Property name="HearRadius" value="5" />
                  <Property name="FleeRadius" value="3" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
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
end

function GetParticleFile(E_RATE, E_LIFE, E_MID, E_SPREAD, E_SPREAD_MIN, E_D_X, E_D_Y, E_D_Z, E_GRAV, E_DAMP, P_MAX, P_LIFE, P_ROTA, P_VELO, P_SIZE_A, P_SIZE_B, P_SIZE_C, P_R, P_G, P_B, P_A, P_H, P_S, P_V)
return [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkParticleData">
  <Property name="StartEnabled" value="True" />
  <Property name="Oneshot" value="False" />
  <Property name="MaxCount" value="]] .. P_MAX .. [[" />
  <Property name="Burst" value="0" />
  <Property name="EmissionRate" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_RATE .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="Delay" value="0" />
  <Property name="EmitFromParticleInfo" value="TkEmitFromParticleInfo.xml">
    <Property name="OtherEmitterIndex" value="-1" />
    <Property name="EmissionRateType" value="PerParticle" />
  </Property>
  <Property name="ParticleLife" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. P_LIFE .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="EmitterLife" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_LIFE .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="EmitterMidLifeRatio" value="]] .. E_MID .. [[" />
  <Property name="EmitterLifeCurve1" value="TkCurveType.xml">
    <Property name="Curve" value="Linear" />
  </Property>
  <Property name="EmitterLifeCurve2" value="TkCurveType.xml">
    <Property name="Curve" value="Linear" />
  </Property>
  <Property name="EmitterSpreadAngle" value="]] .. E_SPREAD .. [[" />
  <Property name="EmitterSpreadAngleMin" value="]] .. E_SPREAD_MIN .. [[" />
  <Property name="EmitterDirection" value="Vector3f.xml">
    <Property name="x" value="]] .. E_D_X .. [[" />
    <Property name="y" value="]] .. E_D_Y .. [[" />
    <Property name="z" value="]] .. E_D_Z .. [[" />
  </Property>
  <Property name="ParticleSpeedMultiplier" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="RandomRangeFloat" />
    <Property name="FixedValue" value="1" />
    <Property name="MinRandomValue" value="1" />
    <Property name="MaxRandomValue" value="2" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleGravity" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_GRAV .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleDamping" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_DAMP .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleDrag" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="DragType" value="IgnoreGravity" />
  <Property name="Variation" value="1" />
  <Property name="StartOffset" value="0" />
  <Property name="SpawnOffsetType" value="Sphere" />
  <Property name="SpawnOffsetParams" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="ParticleSize" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="Curves" />
    <Property name="FixedValue" value="1" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="1" />
    <Property name="CurveStartValue" value="]] .. P_SIZE_A .. [[" />
    <Property name="CurveMidValue" value="]] .. P_SIZE_B .. [[" />
    <Property name="CurveEndValue" value="]] .. P_SIZE_C .. [[" />
    <Property name="CurveBlendMidpoint" value="0.45" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleSizeY" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="StartRotationVariation" value="360" />
  <Property name="Rotation" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="RandomRangeFloat" />
    <Property name="FixedValue" value="]] .. P_ROTA .. [[" />
    <Property name="MinRandomValue" value="-180" />
    <Property name="MaxRandomValue" value="180" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="Alignment" value="Rotation" />
  <Property name="BillboardAlignment" value="Screen" />
  <Property name="RotationPivot" value="Vector3f.xml">
    <Property name="x" value="0.5" />
    <Property name="y" value="0.5" />
    <Property name="z" value="0" />
  </Property>
  <Property name="UCoordinate" value="TkCoordinateOrientation.xml">
    <Property name="CoordinateOrientation" value="None" />
  </Property>
  <Property name="VCoordinate" value="TkCoordinateOrientation.xml">
    <Property name="CoordinateOrientation" value="None" />
  </Property>
  <Property name="VelocityInheritance" value="]] .. P_VELO .. [[" />
  <Property name="TrackEmitterPosition" value="0" />
  <Property name="RotateAroundEmitter" value="0" />
  <Property name="RotateAroundEmitterAxis" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="FlipbookPlaybackRate" value="Absolute" />
  <Property name="HueVariance" value="]] .. P_H .. [[" />
  <Property name="SaturationVariance" value="]] .. P_S .. [[" />
  <Property name="LightnessVariance" value="]] .. P_V .. [[" />
  <Property name="AlphaVariance" value="0" />
  <Property name="ColourStart" value="Colour.xml">
    <Property name="R" value="]] .. P_R .. [[" />
    <Property name="G" value="]] .. P_G .. [[" />
    <Property name="B" value="]] .. P_B .. [[" />
    <Property name="A" value="]] .. P_A .. [[" />
  </Property>
  <Property name="ColourMiddle" value="Colour.xml">
    <Property name="R" value="]] .. P_R .. [[" />
    <Property name="G" value="]] .. P_G .. [[" />
    <Property name="B" value="]] .. P_B .. [[" />
    <Property name="A" value="]] .. P_A .. [[" />
  </Property>
  <Property name="ColourEnd" value="Colour.xml">
    <Property name="R" value="]] .. P_R .. [[" />
    <Property name="G" value="]] .. P_G .. [[" />
    <Property name="B" value="]] .. P_B .. [[" />
    <Property name="A" value="]] .. P_A .. [[" />
  </Property>
  <Property name="AlphaThreshold" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="UserColour" value="" />
  <Property name="MaxRenderDistance" value="0" />
  <Property name="MaxSpawnDistance" value="0" />
  <Property name="SoftFadeStrength" value="5" />
  <Property name="CameraDistanceFade" value="TkFloatRange.xml">
    <Property name="Minimum" value="0" />
    <Property name="Maximum" value="0" />
  </Property>
</Data>
]]
end

function GetMaterialFile(FILEPATH, FILENAME)
return [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkMaterialData">
  <Property name="Name" value="TrailParticleMatt" />
  <Property name="Metamaterial" value="Models/Common/Projectiles/EnergyBall/Materials/TrailParticleMatt.metamaterial.mXml" />
  <Property name="Class" value="Translucent" />
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="True" />
  <Property name="DisableZTest" value="False" />
  <Property name="CreateFur" value="False" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/PARTICLE.SHADER.BIN" />
  <Property name="Flags">
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F07_UNLIT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F09_TRANSPARENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
  </Property>
  <Property name="Uniforms">
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialColourVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="1" />
        <Property name="z" value="1" />
        <Property name="t" value="1" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialParamsVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0.9" />
        <Property name="y" value="0.5" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialSFXVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gMaterialSFXColVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Samplers">
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="]] .. FILEPATH .. FILENAME .. [[" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]]
end

function GetSceneFile(PARTICLE_A, PARTICLE_B, MATERIAL)
return [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="PISS" />
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
  <Property name="Attributes" />
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]] .. PARTICLE_A .. [[" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="EMITTER" />
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
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. MATERIAL .. [[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. PARTICLE_A .. [[" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]] .. PARTICLE_B .. [[" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="EMITTER" />
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
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. MATERIAL .. [[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. PARTICLE_B .. [[" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
end

function GetExplosion(ID, MODEL, AUDIO, LIFETIME, SCALE, DISTANCE_SCALE, DISTANCE_SCALE_MAX, MAX_SPAWN_DISTANCE)
return [[
    <Property value="GcExplosionData.xml">
      <Property name="Id" value="]] .. ID .. [[" />
      <Property name="Model" value="TkModelResource.xml">
        <Property name="Filename" value="]] .. MODEL .. [[" />
      </Property>
      <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="]] .. AUDIO .. [[" />
      </Property>
      <Property name="Debris" />
      <Property name="Life" value="]] .. LIFETIME .. [[" />
      <Property name="Scale" value="]] .. SCALE .. [[" />
      <Property name="DistanceScale" value="]] .. DISTANCE_SCALE .. [[" />
      <Property name="DistanceScaleMax" value="]] .. DISTANCE_SCALE_MAX .. [[" />
      <Property name="CamShake" value="True" />
      <Property name="CamShakeSpaceScale" value="False" />
      <Property name="AllowTriggerActionOnDebris" value="False" />
      <Property name="AllowShootableDebris" value="False" />
      <Property name="AllowDestructableDebris" value="False" />
      <Property name="MaxSpawnDistance" value="]] .. MAX_SPAWN_DISTANCE .. [[" />
    </Property>
]]
end


--make files with functions
ACTIVATE_ACTION = GetQuickAction(EMOTE_ACTION["NAME"], PISS_ACTION, EMOTE_ACTION["ICON"], "False", EMOTE_ACTION["CHAT_MSG"], EMOTE_ACTION["CHAT_NAME"])


-- if OVERRIDE_MAT then use override material in scene, else use new mat and create mat file
ANIM_OUTPUT = ""
if OVERRIDE_ANIM then
ANIM_OUTPUT = OVER_ANIM
else ANIM_OUTPUT = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN]]
end
TRIGGER_ANIM = GetTriggerAnim(PISS_ACTION, ANIM_OUTPUT)


TRIGGER_ACTION = GetTriggerAction(PISS_ACTION, PISS_EFFECT["ID"], PENIS_JOINT, REWARD_ID)
EXPLOD_EFFECT = GetExplosion(PISS_EFFECT["ID"],PISS_MODEL["MBIN"],PISS_EFFECT["AUDIO"],PISS_EFFECT["LIFE"],PISS_EFFECT["SCALE"],PISS_EFFECT["DIST_SCALE"],PISS_EFFECT["DIST_SCALE_MAX"],PISS_EFFECT["MAX_SPAWN"])
PISS_EMITTER_FILE = {}
for i=1, #PISS_PARTICLE, 1 do
	PISS_EMITTER_FILE[i] = GetParticleFile(PISS_PARTICLE[i]["EMIT_RATE"], PISS_PARTICLE[i]["EMIT_LIFE"], PISS_PARTICLE[i]["EMIT_MIDLIFE"], PISS_PARTICLE[i]["EMIT_SPREAD"], PISS_PARTICLE[i]["EMIT_S_MIN"], PISS_PARTICLE[i]["EMIT_DIRECTION_X"], PISS_PARTICLE[i]["EMIT_DIRECTION_Y"], PISS_PARTICLE[i]["EMIT_DIRECTION_Z"], PISS_PARTICLE[i]["EMIT_GRAVITY"], PISS_PARTICLE[i]["EMIT_DAMPING"], PISS_PARTICLE[i]["PART_MAX_NO"], PISS_PARTICLE[i]["PART_LIFE"], PISS_PARTICLE[i]["PART_ROTATION"], PISS_PARTICLE[i]["PART_VELOCITY"], PISS_PARTICLE[i]["PART_SIZE_A"], PISS_PARTICLE[i]["PART_SIZE_B"], PISS_PARTICLE[i]["PART_SIZE_C"], PISS_PARTICLE[i]["PART_COLOUR_R"], PISS_PARTICLE[i]["PART_COLOUR_G"], PISS_PARTICLE[i]["PART_COLOUR_B"], PISS_PARTICLE[i]["PART_ALPHA"], PISS_PARTICLE[i]["PART_H"], PISS_PARTICLE[i]["PART_S"], PISS_PARTICLE[i]["PART_V"])
end


-- if OVERRIDE_MAT then use override material in scene, else use new mat and create mat file
MAT_OUTPUT = ""
if OVERRIDE_MAT then
MAT_OUTPUT = OVER_MAT_PATH
else MAT_OUTPUT = MATERIAL_PATH["MBIN"]
MATERIAL_FILE = GetMaterialFile(TEXTURE_PATH["LOCATION"],TEXTURE_PATH["NAME"])
end


-- making scene with material path decided above
SCENE_FILE = GetSceneFile(PARTICLE_PATH[1]["MXML"],PARTICLE_PATH[2]["MXML"],MAT_OUTPUT)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Winder_SamPorterProPisser.pak",
["MOD_AUTHOR"]				= "Winder with block pieces from Mjjstral",
["MOD_DESCRIPTION"]			= "You take a piss on the floor, possibly while walking",
["NMS_VERSION"]				= "3.21+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Trees"},  
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ANIM
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ACTION
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PetCommandTitle", "UI_EMOTE_OVER_HERE_PET"}, 
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= ACTIVATE_ACTION
						},
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/EFFECTS/PLANETEFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= EXPLOD_EFFECT
						}
					}
				}
			}
		}
},
["ADD_FILES"] = 
	{
		-- {
			-- ["FILE_DESTINATION"] = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.EXML]],
			-- ["FILE_CONTENT"] 	 = 
-- [[
-- <?xml version="1.0" encoding="utf-8"?>
-- <Data template="TkAnimMetadata">
  -- <Property name="FrameCount" value="10" />
  -- <Property name="NodeCount" value="0" />
  -- <Property name="NodeData" /> 
  -- <Property name="AnimFrameData">
    -- <Property value="TkAnimNodeFrameData.xml">
    -- <Property name="Rotations" />  
	-- <Property name="Translations" /> 
	-- <Property name="Scales" />
    -- </Property>  
  -- </Property>	
  -- <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    -- <Property name="Rotations" />  
	-- <Property name="Translations" /> 
	-- <Property name="Scales" />	  
 -- </Property>
-- </Data>	
-- ]]			
		-- },
		{
			["FILE_DESTINATION"] = PARTICLE_PATH[1]["EXML"],
			["FILE_CONTENT"] 	 = 	PISS_EMITTER_FILE[1]
		},
		{
			["FILE_DESTINATION"] = PARTICLE_PATH[2]["EXML"],
			["FILE_CONTENT"] 	 = 	PISS_EMITTER_FILE[2]
		},
--		{
--			["FILE_DESTINATION"] = MATERIAL_PATH["EXML"],
--			["FILE_CONTENT"] 	 = MATERIAL_FILE
--		},
		{
			["FILE_DESTINATION"] = PISS_MODEL["EXML"],
			["FILE_CONTENT"] 	 = SCENE_FILE
		},
--		{	
--			["FILE_DESTINATION"] = TEXTURE_PATH["LOCATION"],
--			["EXTERNAL_FILE_SOURCE"] = TEXTURE_PATH["NAME"]
--		}
	}
}