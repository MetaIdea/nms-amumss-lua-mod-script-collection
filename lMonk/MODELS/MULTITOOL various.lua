--------------------------------------
local desc = [[
  - remove laser horizontal flare
  - Add the weapons upgrade menu to the base weapons master terminal
   copied from: MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/ ..
   WEAPONSHOP/ENTITIES/WEAPONSUPGRADETERMINAL.ENTITY.MBIN
  - avoid unwanted parts from multitool
]]------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL multitool various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|no tool muzzle flare|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/LASERMUZZLE.SCENE.MBIN',
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/BLASTOVERLOADMUZZLE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Flare'},
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|tool upgrade|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= [[
					<Property value="TkPhysicsComponentData.xml">
						<Property name="Data" value="TkPhysicsData.xml">
							<Property name="Mass" value="0"/>
							<Property name="Friction" value="0.5"/>
							<Property name="RollingFriction" value="0.2"/>
							<Property name="AngularDamping" value="0.2"/>
							<Property name="LinearDamping" value="0.1"/>
							<Property name="Gravity" value="20"/>
						</Property>
						<Property name="TriggerVolumeType" value="TkVolumeTriggerType.xml">
							<Property name="VolumeTriggerType" value="Open"/>
						</Property>
					</Property>
					<Property value="GcInteractionComponentData.xml">
						<Property name="InteractionAction" value="PressButton"/>
						<Property name="InteractionType" value="GcInteractionType.xml">
							<Property name="InteractionType" value="WeaponUpgrade"/>
						</Property>
						<Property name="AttractDistanceSq" value="9"/>
						<Property name="BlendToCameraTime" value="0.5"/>
						<Property name="BlendFromCameraTime" value="-1"/>
						<Property name="TriggerAction" value="INACTIVE"/>
						<Property name="InteractAngle" value="360"/>
						<Property name="InteractDistance" value="3"/>
						<Property name="SecondaryCameraTransitionTime" value="1"/>
						<Property name="DepthOfField" value="GcInteractionDof.xml">
							<Property name="IsEnabled" value="True"/>
							<Property name="UseGlobals" value="True"/>
							<Property name="NearPlaneMin" value="2"/>
							<Property name="NearPlaneAdjust" value="1"/>
							<Property name="FarPlane" value="3"/>
							<Property name="FarFadeDistance" value="2"/>
						</Property>
						<Property name="OverrideInteriorExteriorMarker" value="No"/>
					</Property>]]
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Mag1Clip_1'}, -- no magazine
				REMOVE				= 'Section'
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_LSAcc3_1'}, -- ?
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_LSideAcc_6'}, -- ?
				-- REMOVE				= 'Section'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Screen_1'}, -- 1=tilted 2=flap 3=rounded
				REMOVE				= 'Section'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_1'}, -- none (or a metal clasp)
			-- 	REMOVE				= 'Section'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_2'}, -- solid long narrow square stock
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_3'}, -- cylinder or small half disk
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_4'}, -- rectangular stock
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_5'}, -- square block
				REMOVE				= 'Section'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_6'}, -- half circle curve
			-- 	REMOVE				= 'Section'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_G1Acc_1'}, -- grip 1 strap
				REMOVE				= 'Section'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS1A_2'}, -- stock 1 strap
			-- 	REMOVE				= 'Section'
			-- },
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS2Acc_1'}, -- stock 2 strap
			-- 	REMOVE				= 'Section'
			-- },
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS4A_4'}, -- stock 4 strap
			-- 	REMOVE				= 'Section'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_TS6A_2'}, -- stock 6 strap
				REMOVE				= 'Section'
			},
		}
	}
}}}}
