CREATURE_INTERACT_DISTANCE = 10 --Original 5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CompanionPetUnlocker.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.21+",
["DESCRIPTION"]				= "Enables all creatures to become companion pets",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						[[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_ALIEN.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_DEER.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_WEIRD.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\BEETLERIG\BEETLE\ENTITIES\BEETLEDATA.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLY\ENTITIES\BUTTERFLY.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLY\ENTITIES\JELLYFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\BUTTERFLYRIG\BUTTERFLYFLOCK\ENTITIES\BUTTERFLYFLOCK.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\BUTTERFLYRIG\LARGEBUTTERFLY\ENTITIES\LARGEBUTTERFLYDATA.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\COWRIG\COWSWIM\ENTITIES\_COW_SWIM.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\FISHFIEND\ENTITIES\FISHFIEND.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\FISHFLOCK\ENTITIES\FISHFLOCK.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\FREIGHTERJELLYFISH\ENTITIES\FREIGHTERJELLYFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\JELLYFISH\ENTITIES\JELLYFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\PROC_JELLYFISH\ENTITIES\PROCJELLYFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\SMALLFISH\ENTITIES\BIGFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FISH\SMALLFISH\ENTITIES\SMALLFISH.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FLYINGLIZARDRIG\FLYINGLIZARD\ENTITIES\BODY_LIZARD.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\KITECREATURE.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\FLYINGSNAKE\FLYINGSNAKE\ENTITIES\_BODY_WORM.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\RODENTRIG\RODENTSWIM\ENTITIES\RODENTSWIM.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SANDWORM\SANDWORM\ENTITIES\SANDWORM.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SEASNAKE\SEASNAKE\ENTITIES\SEASNAKE.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SHARKRIG\SHARK\ENTITIES\SHARK1.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SLUG\SLUG\ENTITIES\DATA.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\BIRD.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\SMALLBIRD.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SMALLBIRD\BIRD\ENTITIES\_BODY_BIRD.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SMALLBIRD\BIRDFLOCK\ENTITIES\BIRDFLOCK.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SPIDERRIG\FIEND\ENTITIES\_FIEND_BODY.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SPIDERRIG\FREIGHTERFIEND\ENTITIES\FREIGHTERFIEND.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SPIDERRIG\ROCKCREATURE\ENTITIES\ROCKCREATURE.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SPIDERRIG\ROCKSPIDER\ENTITIES\ROCKSPIDER.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\_ACC1_BULBTOP.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\DIGGER\ENTITIES\DIGGER.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\DRILL\ENTITIES\DRILL.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\FLOATERCREATURE\ENTITIES\_STRANGE_FLOAT.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\GROUNDCREATURE\ENTITIES\WEIRDDIGGER.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\PLOW\ENTITIES\PLOW.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\ROLLERCREATURE\ENTITIES\_STRANGE_ROLL.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\WEIRDBUTTERFLY\ENTITIES\WEIRDBUTTERFLY.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\WEIRDFLOCK\ENTITIES\WEIRDFLOCK.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDCRYSTAL.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDFLOAT.ENTITY.MBIN]],
						[[MODELS\PLANETS\CREATURES\WEIRD\WEIRDRIG\ENTITIES\WEIRDROLL.ENTITY.MBIN]],

						[[MODELS\PLANETS\BIOMES\CAVE\SMALLCREATURE\SUNBEETLE\SUNBEETLE\ENTITIES\SUNBEETLE.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS\ENTITIES\DIPLO.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\FLYINGLIZARD\FLYINGLIZARD\ENTITIES\FLYINGLIZARD.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\FLYINGLIZARD\FLYINGLIZARDPATH\ENTITIES\FLYINGLIZARD.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO02\ENTITIES\_BODY_RHINO.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO\ENTITIES\_BODY_RHINO.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINOSTANDARD\ENTITIES\_BODY_RHINOSTANDARD.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\QUADREPTILE\ENTITIES\_BODY_TRI.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\TRICERATOPS\ENTITIES\_BODY_TRI.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\TRICERATOPSTWOHEADS\ENTITIES\_BODY_TRI.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE\ENTITIES\ANTELOPE3.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPEFAKE\ENTITIES\ANTELOPEFAKE.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\BUTTERFLY\BUTTERFLY\ENTITIES\BUTTERFLY.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\BUTTERFLY\GLOWBUG\ENTITIES\GLOWBUG.ENTITY.MBIN]],
						[[MODELS\PLANETS\BIOMES\RAINFOREST\SMALLCREATURE\RODENT\RODENT\ENTITIES\_BODY_RODENT.ENTITY.MBIN]],

						[[MODELS\COMMON\ROBOTS\FREIGHTERDRONE\ENTITIES\FREIGHTERDRONE.ENTITY.MBIN]],
						[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN]],
						[[MODELS\COMMON\ROBOTS\WALKER\ENTITIES\WALKER.ENTITY.MBIN]],
						
						-- Note: These don't have a GcCreatureComponentData so we don't risk to enable them.
						-- -- [[MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.MBIN]], 
						-- -- [[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.MBIN]], 
						-- -- [[MODELS\COMMON\ROBOTS\DRONEARMOURED\ENTITIES\DRONEARMOURED.ENTITY.MBIN]], 
						
						-- Note: These are already unlocked as companions.
						-- -- [[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_CYBER1.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPE\ENTITIES\_BODY_SKINNY.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPEROBOT\ENTITIES\ANTELOPEROBOT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\ANTELOPERIG\ANTELOPETWOLEGS\ENTITIES\_BODY_TWOLEGDEER1.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\BLOBRIG\BLOB\ENTITIES\_BODY_BLOB.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\CATRIG\BONECAT\ENTITIES\BONECATBODY.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\CATRIG\CAT\ENTITIES\CATHINDLEGS.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\CATRIG\CAT\ENTITIES\CAT_BODY.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\CATRIG\SIXLEGCAT\ENTITIES\_BODY_SIXLEGCAT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\COWRIG\COW\ENTITIES\_BODY_COW.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\COWRIG\COWFLOATING\ENTITIES\_BODY_ROCK.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\COWRIG\COWHINDLEGS\ENTITIES\_BODY_ROCK.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\COWRIG\SIXLEGGEDCOW\ENTITIES\_BODY_6LEGCOW.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\GRUNTRIG\GRUNT\ENTITIES\_BODY_GRUNT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\GRUNTRIG\GRUNT\ENTITIES\_BODY_GRUNTFLOAT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\RODENTRIG\RODENT\ENTITIES\_BODY_RODENT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\SPIDER.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\SPIDERRIG\SPIDER\ENTITIES\SPIDERFLOAT.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\STRIDERRIG\STRIDER\ENTITIES\STRIDERMESH.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\TREXRIG\TREX\ENTITIES\_BODY_TREX.ENTITY.MBIN]],
						-- -- [[MODELS\PLANETS\CREATURES\TRICERATOPSRIG\TRICERATOPS\ENTITIES\_BODY_TRI.ENTITY.MBIN]],
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Components"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcInteractionComponentData.xml">
      <Property name="InteractionAction" value="PressButton" />
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Pet" />
      </Property>
      <Property name="UseIntermediateUI" value="False" />
      <Property name="Renderer" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="1.8" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0.45" />
            <Property name="y" value="0.65" />
            <Property name="z" value="3" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="10" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="True" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="RendererAlt" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="1.5" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="0" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="False" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="AttractDistanceSq" value="100" />
      <Property name="RepeatInteraction" value="False" />
      <Property name="UseInteractCamera" value="False" />
      <Property name="BlendToCameraTime" value="1.5" />
      <Property name="BlendFromCameraTime" value="-1" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="InteractAngle" value="360" />
      <Property name="InteractDistance" value="]] .. CREATURE_INTERACT_DISTANCE .. [[" />
      <Property name="InteractInvertFace" value="True" />
      <Property name="SecondaryInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Creature" />
      </Property>
      <Property name="SecondaryActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="BAIT_BASIC" />
        <Property name="AltIds" />
        <Property name="Cost" value="1" />
        <Property name="Repeat" value="True" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="EventRenderers" />
      <Property name="EventRenderersAlt" />
      <Property name="SecondaryCameraTransitionTime" value="1" />
      <Property name="DepthOfField" value="GcInteractionDof.xml">
        <Property name="IsEnabled" value="True" />
        <Property name="UseGlobals" value="True" />
        <Property name="NearPlaneMin" value="2" />
        <Property name="NearPlaneAdjust" value="1" />
        <Property name="FarPlane" value="3" />
        <Property name="FarFadeDistance" value="2" />
      </Property>
      <Property name="PuzzleMissionOverrideTable" />
      <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride.xml">
        <Property name="Name" value="" />
        <Property name="Reward" value="" />
        <Property name="SpecificRewardOverrideTable" />
      </Property>
      <Property name="OverrideInteriorExteriorMarker" value="No" />
      <Property name="ReseedAfterRewardSuccess" value="False" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="InWorldUIScaler" value="0" />
    </Property>
]]
						}
					}
				}
			}
		}
	}
}