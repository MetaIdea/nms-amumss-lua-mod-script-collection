--------------------------------------------------------------------------------
local mod_desc = [[
  Freighter hangar interior changes and additions.
  - Gantry cranes moved to the back to make them less obtrusive.
  - Restored missing floor sections at the back (with some strategically-placed
   clutter to hide the open floor).
  - Loitering NPCs repositioned.
  - Starship outfitting consoles added near the teleport entrances.

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]------------------------------------------------------------------------------

-------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.83.2) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
-------------------------------------------------------------------------------
--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end

	--	get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'meta' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.meta then
					local att, val = cls['meta'][1], cls['meta'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
				else
					-- add normal property
					if type(cls) == 'table' then
						key, cls = next(cls)
					end
					if key == 'name' or key == 'value' then
						exml:add({key, '="', bool(cls), '"/>'})
					else
						exml:add({'name="', key, '" value="', bool(cls), '"/>'})
					end
				end
			end
		end
		return table.concat(exml)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].meta then
		return exml_r(class)
	elseif class.meta and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

--	Build a single -or list of scene nodes
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  stype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
function ScNode(nodes)
	--	Builds a TkTransformData class
	local function scTransform(T)
		T = T or {}
		return {
			meta	= {'Transform', 'TkTransformData.xml'},
			TransX	= (T.tx or T[1]) or 0,
			TransY	= (T.ty or T[2]) or 0,
			TransZ	= (T.tz or T[3]) or 0,
			RotX	= (T.rx or T[4]) or 0,
			RotY	= (T.ry or T[5]) or 0,
			RotZ	= (T.rz or T[6]) or 0,
			ScaleX	= (T.sx or T[7]) or 1,
			ScaleY	= (T.sy or T[8]) or 1,
			ScaleZ	= (T.sz or T[9]) or 1
		}
	end
	--	Builds a scene node attributes array
	local function scAttributes(T)
		local atr = {meta = {'name', 'Attributes'}}
		for _,at in ipairs(T) do
			atr[#atr+1] = {
				meta	= {'value', 'TkSceneNodeAttributeData.xml'},
				Name	= at[1],
				Value	= at[2]
			}
		end
		return atr
	end
	--	returns a jenkins hash from a string (by lyravega)
	local function jenkinsHash(input)
		local hash = 0
		local t_chars = {string.byte(input:upper(), 1, #input)}

		for i = 1, #input do
			hash = (hash + t_chars[i]) & 0xffffffff
			hash = (hash + (hash << 10)) & 0xffffffff
			hash = (hash ~ (hash >> 6)) & 0xffffffff
		end
		hash = (hash + (hash << 3)) & 0xffffffff
		hash = (hash ~ (hash >> 11)) & 0xffffffff
		hash = (hash + (hash << 15)) & 0xffffffff
		return tostring(hash)
	end
	--	Build a TkSceneNodeData class
	local function sceneNode(props)
		local T	= {
			meta	= {'value', 'TkSceneNodeData.xml'},
			Name 		= props.name,
			NameHash	= jenkinsHash(props.name),
			Type		= props.stype
		}
		T[#T+1]		= scTransform(props.form or {})
		if props.attr then
			T[#T+1] = scAttributes(props.attr)
		end
		if props.child then
			local tc = { meta = {'name', 'Children'} }
			for _,pc in ipairs(props.child) do tc[#tc+1] = pc end
			T[#T+1]	= tc
		end
		return T
	end
	-----------------------------------------------------------------
	local k,_ = next(nodes)
	if k == 1 then
		-- k=1 means the first of a list of tables
		local T = {}
		for _,nd in pairs(nodes) do
				T[#T+1] = sceneNode(nd)
		end
		return T
	end
	return sceneNode(nodes)
end

local ECT = {}
for node, form in pairs({
	NPC_01			= {tx=-9.507,	ty=-3.35,	tz=-28.34},
	NPC_02			= {tx=-56,		ty=-7.34,	tz=62.5,	ry=-150},
	NPC_03			= {tx=-8.337,	ty=-3.35,	tz=-28.03},
	NPC_04			= {tx=38.4,		ty=-7.34,	tz=69.35,	ry=35},
	NPC_06			= {tx=-21.92,	ty=-4.18,	tz=5.5},
	NPC_07			= {tx=-57.8,	ty=8.12,	tz=57.14,	ry=270},
	RefHangarCrane2	= {tx=41.88,				tz=61.2},
	RefHangarCrane	= {tx=-3.43,				tz=59.5},
	RefHangarCrane1	= {tx=-41.96,				tz=60.9},
	MonitorDesk		= {tx=-55.5,	ty=-7.35,	tz=63.2,	ry=305},
	RefFuelTank2	= {tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	RefLargeCrate103= {tx=-22.65,	ty=-4.31,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt R
	RefLargeCrate113= {tx=22.65,	ty=-4.315,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt L
	RefLargeCrate10	= {tx=7,		ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- cross gap M
	RefLargeCrate6	= {tx=-52.35,	ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- cross gap R
	RefPallet30		= {tx=7.79,		ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,	sz=2.8},
	MidCeiling201	= {							tz=33.2,								sz=1.25},
}) do
	ECT[#ECT+1] = {
		SPECIAL_KEY_WORDS	= {'Name', node},
		VALUE_CHANGE_TABLE	= {
			{'TransX',	form.tx or 'IGNORE'},
			{'TransY',	form.ty or 'IGNORE'},
			{'TransZ',	form.tz or 'IGNORE'},
			{'RotX',	form.rx or 'IGNORE'},
			{'RotY',	form.ry or 'IGNORE'},
			{'RotZ',	form.rz or 'IGNORE'},
			{'ScaleX',	form.sx or 'IGNORE'},
			{'ScaleY',	form.sy or 'IGNORE'},
			{'ScaleZ',	form.sz or 'IGNORE'}
		}
	}
end
ECT[#ECT+1] = {
	PRECEDING_KEY_WORDS = 'Children',
	ADD					= ToExml( ScNode({
		{
			name	= '1RefBarrelBaz1',
			stype	= 'REFERENCE',
			form	= {tx=8.18, ty=-7.02, tz=66.4, rx=270, sx=0.9, sy=1.4, sz=0.9},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/BARREL1.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrossingB1',
			stype	= 'REFERENCE',
			form	= {tx=-45.35, ty=-7.341775, tz=66.73, ry=180},
			attr	= {
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrossingB2',
			stype	= 'REFERENCE',
			form	= {tx=0, ty=-7.341775, tz=66.73},
			attr	= {
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrossingB3',
			stype	= 'REFERENCE',
			form	= {tx=45.35, ty=-7.341775, tz=66.73, ry=180},
			attr	= {
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateMilk01',
			stype	= 'REFERENCE',
			form	= {tx=5.06, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateHazBig1',
			stype	= 'REFERENCE',
			form	= {tx=6.74, ty=-7.34, tz=66.5, ry=90, sx=1.7, sy=1.4, sz=1.6},
			attr	= {
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateTypeb1',
			stype	= 'REFERENCE',
			form	= {tx=5.06, ty=-7.33, tz=67.1, ry=3, sx=0.9, sy=0.9, sz=0.9},
			attr	= {
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateTypeb2',
			stype	= 'REFERENCE',
			form	= {tx=5.2, ty=-7.33, tz=68.2, ry=87, sx=0.9, sy=0.9, sz=0.9},
			attr	= {
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateHazBig2',
			stype	= 'REFERENCE',
			form	= {tx=-53.3, ty=-6.67, tz=64.1, ry=13, rz=90, sx=0.57, sy=0.9, sz=0.9},
			attr	= {
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefScreenSilo',
			stype	= 'REFERENCE',
			form	= {tx=-55.32, ty=-5.82, tz=63.46, ry=35.1, sx=0.36, sy=0.6, sz=0.4},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCoveredSilos',
			stype	= 'REFERENCE',
			form	= {tx=-54, ty=-7.33, tz=66.8, ry=-90, sx=0.75, sy=0.75, sz=0.75},
			attr	= {
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/COVEREDSILOS.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateMould01',
			stype	= 'REFERENCE',
			form	= {tx=-52.8, ty=-3.65, tz=65.65, rx=10, ry=-85, rz=180, sx=1.4},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefCrateMould02',
			stype	= 'REFERENCE',
			form	= {tx=-52.7, ty=-3.6, tz=67.7, rx=-10, ry=85, rz=175, sx=1.4},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefBuilderHand',
			stype	= 'REFERENCE',
			form	= {tx=-39.85, ty=-7.64, tz=-22.3, rx=-2, ry=-65, rz=180, sx=1.4, sy=1.4, sz=1.4},
			attr	= {
				{'SCENEGRAPH', 'MODELS/COMMON/ROBOTS/ROBOTHAND.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefBuilderHead',
			stype	= 'REFERENCE',
			form	= {tx=-39.8, ty=-7.64, tz=-21.6, rx=50, ry=160, rz=0, sx=1.1, sy=1.1, sz=1.1},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BUILDERHEAD.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefGeometPlant01',
			stype	= 'REFERENCE',
			form	= {tx=37, ty=-7.72, tz=68.3, ry=-20, rz=20, sx=0.24, sy=0.24, sz=0.24},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefMetalStruct01',
			stype	= 'REFERENCE',
			form	= {tx=11.8, ty=9.5, tz=22.7, sx=0.3, sy=0.3, sz=0.3},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN'}
			}
		},
		{
			name	= '1RefWirecell01',
			stype	= 'REFERENCE',
			form	= {tx=-67, ty=14, tz=-18.2, sx=0.6, sy=0.6, sz=0.6},
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN'}
			}
		}
	}) )
}

local function AddPrx(prx, T)
	for i=1, #T do T[i] = {prx, T[i]} end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Freighter Hangar Changes.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.11',
	MOD_DESCRIPTION			= mod_desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	},
	{--	add |hangar ship outfitting|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefWallMonitor'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml( ScNode({
					name	= '1RefMonitorShip',
					stype	= 'REFERENCE',
					form	= {tx=2.55, ty=0.12, tz=5.4, ry=135, rz=180, sx=0.55, sy=0.55, sz=0.55},
					attr	= {
						{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
					},
					child	= {
						ScNode({
							name	= 'ColShipSalvage1',
							stype	= 'COLLISION',
							form	= {ty=-3},
							attr	= {
								{'TYPE',	'Sphere'},
								{'RADIUS',	0.2}
							},
							child	= {
								ScNode({
									name	= 'LocShipSalvage1',
									stype	= 'LOCATOR',
									attr	= {
										{'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
									}
								})
							}
						})
					}
				}) )
			}
		}
	},
	{--	floor section 1
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
			}
		}
	},
	{--	floor section 1 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Name', {
					'RefBarrier',
					'RefBarrier1',
					'RefBarrier2'
				}),
				REMOVE				= 'Section'
			}
		}
	},
	{--	floor section 2
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	floor section 2 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Name', {
					'RefBarrier',
					'RefBarrier1',
					'RefBarrier2',
					'SUB1HangarFloorSectionA',
					'SUB2HangarFloorSectionA',
					'SUB3HangarFloorSectionA'
				}),
				REMOVE				= 'Section'
			}
		}
	},
	{--	geometric plant
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEOMETRIC.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive geometric plant
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'ATTACHMENT'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	wirecell cube
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive wirecell cube
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'CuboidSmallLOD0', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE	= {
					{'value', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT/ENTITIES/SHAPE1FLOAT.ENTITY.MBIN'}
				}
			}
		}
	}
}}},
	ADD_FILES	= {(
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Building/PirateStation/'
			if lfs.attributes(tex_path) then
				return {
					EXTERNAL_FILE_SOURCE = tex_path..'*.DDS',
					FILE_DESTINATION	 = 'TEXTURES/SPACE/SPACESTATION/PIRATES/*.DDS'
				}
			end
			return nil
		end
	)()}
}
