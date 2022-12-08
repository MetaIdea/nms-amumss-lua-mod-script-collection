-----------------------------------------------------------------------------------------
local desc = [[
  - Add the weapons upgrade menu to the base weapons master terminal
   copied from: MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/ ..
   WEAPONSHOP/ENTITIES/WEAPONSUPGRADETERMINAL.ENTITY.MBIN
  - Add the ship upgrade menu to Monitor Station (MONITORDESK) & nexus orb stand
  - Add hazard protection and a small light to beacon, cooker and signal booster (cheat)
  - Increase freighter extractor storage capacity  
]]---------------------------------------------------------------------------------------

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

local function InsertNewLight(newlight)
	local function Hex2Pr(h)
	-- translates a 2^16 hex string to 0-100% percentage
		return tonumber(h, 16) * 0.00392
	end
	local function NodeAtt(name, val)
		return [[
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="]]..name..[["/>
				<Property name="Value" value="]]..val..[["/>
			</Property>]]
	end
	local light = {
		name= 'n9',	fov= 360,
		i=	30000,	f=	'q',	fr=	2,
		r=	1,		g=	1,		b=	1,
		tx=	0,		ty=	0,		tz=	0,
		rx=	0,		ry=	0,		rz=	0,
		sx=	1,		sy=	1,		sz=	1
	}
	for k, v in pairs(newlight or {}) do light[k] = v end
	-- c = color as hex string. overwrites rgb if present.
	if light.c then
		light.r = Hex2Pr(light.c:sub(1, 2)) 
		light.g = Hex2Pr(light.c:sub(3, 4)) 
		light.b = Hex2Pr(light.c:sub(5, 6)) 
	end
	return [[
		<Property value="TkSceneNodeData.xml">
			<Property name="Name" value="]]..light.name..[["/>
			<Property name="Type" value="LIGHT"/>
			<Property name="Transform" value="TkTransformData.xml">
				<Property name="TransX" value="]]..light.tx..[["/>
				<Property name="TransY" value="]]..light.ty..[["/>
				<Property name="TransZ" value="]]..light.tz..[["/>
				<Property name="RotX" value="]]..light.rx..[["/>
				<Property name="RotY" value="]]..light.ry..[["/>
				<Property name="RotZ" value="]]..light.rz..[["/>
				<Property name="ScaleX" value="]]..light.sx..[["/>
				<Property name="ScaleY" value="]]..light.sy..[["/>
				<Property name="ScaleZ" value="]]..light.sz..[["/>
			</Property>
			<Property name="Attributes">]]..
				NodeAtt('FOV',		 	light.fov)..
				NodeAtt('FALLOFF',	 	(light.f:sub(1,1) == 'q' and 'quadratic' or 'linear'))..
				NodeAtt('FALLOFF_RATE',	light.fr)..
				NodeAtt('INTENSITY',	light.i)..
				NodeAtt('COL_R',		light.r)..
				NodeAtt('COL_G',		light.g)..
				NodeAtt('COL_B',		light.b)..
				NodeAtt('VOLUMETRIC',	0)..
				NodeAtt('COOKIE_IDX',	-1)..
				NodeAtt('MATERIAL',		'MATERIALS/LIGHT.MATERIAL.MBIN')..
			[[</Property>
		</Property>
	]]
end

local function AddEntityInteraction(action_type)
	return [[
		<Property value="GcInteractionComponentData.xml">
			<Property name="InteractionAction" value="PressButton"/>
			<Property name="InteractionType" value="GcInteractionType.xml">
				<Property name="InteractionType" value="]]..action_type..[["/>
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
		</Property>
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
		</Property>]]
end

local function AddModelNodeShieldSphere(entity, radius)
	local function NodeAtt(name, val)
		return [[
			<Property value="TkSceneNodeAttributeData.xml">
				<Property name="Name" value="]]..name..[["/>
				<Property name="Value" value="]]..val..[["/>
			</Property>
		]]
	end
	local transform_data = [[
		<Property name="Transform" value="TkTransformData.xml">
			<Property name="ScaleX" value="1"/>
			<Property name="ScaleY" value="1"/>
			<Property name="ScaleZ" value="1"/>
		</Property>
	]]
	return [[
		<Property value="TkSceneNodeData.xml">
			<Property name="Name" value="ShieldSphere"/>
			<Property name="Type" value="LOCATOR"/>
			]]..transform_data..[[
			<Property name="Attributes">]]..
				NodeAtt('ATTACHMENT', entity)..[[
			</Property>
			<Property name="Children">
				<Property value="TkSceneNodeData.xml">
					<Property name="Name" value="HeaterCollision"/>
					<Property name="Type" value="COLLISION"/>
					]]..transform_data..[[
					<Property name="Attributes">]]..
						NodeAtt('TYPE', 'Sphere')..
						NodeAtt('RADIUS', radius)..[[
					</Property>
				</Property>
			</Property>
		</Property>
	]]
end

local heater_entity = build_parts..'TECH/BEACON/ENTITIES/HEATER.ENTITY.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL tech additions.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	-- {
	-- ---	|upgrade freighter teleporter|
		-- MBIN_FILE_SOURCE	= build_parts..'FREIGHTERBASE/ROOMS/TELEPOROOM/ENTITIES/TELEPORTERINTERACTION.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_MATCH			= 'Teleporter_Base',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'InteractionType', 'Teleporter_Nexus'} -- Teleporter_Base
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = 'GcInteractionComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'UseInteractCamera', false}
				-- }
			-- }
		-- }
	-- },
	{
	---	|multitool upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= AddEntityInteraction('WeaponUpgrade')
			}
		}
	},
	{
	---	|ship upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'DATA'},
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',	build_parts..'TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			build_parts..'TECH/BEACON.SCENE.MBIN',
			build_parts..'TECH/COOKER.SCENE.MBIN',
			build_parts..'TECH/SIGNALSCANNER.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= 1,
				ADD 				=
					InsertNewLight({name='redlight', ty=1.8, i=20000, c='C73347', fr=3.8})
					..
					AddModelNodeShieldSphere(heater_entity, 8)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				build_parts..'SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/HEATER.ENTITY.MBIN',
				heater_entity,
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= heater_entity,
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'VolumeTriggerType', 'HazardProtection'}
				}
			}
		}
	},
	{
	---	|freighter extractor| capacity
		MBIN_FILE_SOURCE	= build_parts..'FREIGHTERBASE/ROOMS/EXTRROOM/PARTS/FLOOR0/ENTITIES/EXTRACTORTERMINAL.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				VALUE_MATCH_TYPE	= 'Number',
				VALUE_MATCH_OPTIONS = '>',
				VALUE_CHANGE_TABLE 	= {
					{'MaxCapacity',	10000}
				}
			}
		}
	}
}}}}
