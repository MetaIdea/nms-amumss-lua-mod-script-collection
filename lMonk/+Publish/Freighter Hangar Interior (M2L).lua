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
---	MXML 2 LUA ... by lMonk ... version: 1.0.01
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate unrelated (instead of nested) mxml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
local function ProcessOnenAll(items, acton)
	-- first key = 1 means multiple entries
	if next(items) == 1 then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

--	=> Build a single -or list of TkSceneNodeData classes
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  ntype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  pxlud = [optional] PlatformExclusion
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
local function ScNode(nodes)
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
			meta	= {name='Children', value='TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {name='Transform', value='TkTransformData'},
			TransX	= (props.form.tx or props.form[1]) or nil,
			TransY	= (props.form.ty or props.form[2]) or nil,
			TransZ	= (props.form.tz or props.form[3]) or nil,
			RotX	= (props.form.rx or props.form[4]) or nil,
			RotY	= (props.form.ry or props.form[5]) or nil,
			RotZ	= (props.form.rz or props.form[6]) or nil,
			ScaleX	= (props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sy or props.form[8]) or 1,
			ScaleZ	= (props.form.sz or props.form[9]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attribute to scenegraph
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = 'TRUE'
			end
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= val
				}
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			local cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end
---------------------------------------------------------------------------------

local mx_ct = { {SKW={}, REMOVE='Section'} }
for node, form in pairs({
	NPC_01				= {tx=-9.507,	ty=-3.35,	tz=-28.34},
	NPC_02				= {tx=-56,		ty=-7.34,	tz=62.5,	ry=-150},
	NPC_03				= {tx=-8.337,	ty=-3.35,	tz=-28.03},
	NPC_04				= {tx=38.4,		ty=-7.34,	tz=69.35,	ry=35},
	NPC_06				= {tx=-21.92,	ty=-4.18,	tz=5.5},
	NPC_07				= {tx=-57.8,	ty=8.12,	tz=57.14,	ry=270},
	RefHangarCrane2		= {tx=41.88,				tz=61.2},
	RefHangarCrane		= {tx=-3.43,				tz=59.5},
	RefHangarCrane1		= {tx=-41.96,				tz=60.9},
	MonitorDesk			= {tx=-55.5,	ty=-7.35,	tz=63.2,	ry=305},
	RefFuelTank2		= {tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	RefLargeCrate103	= {tx=-22.65,	ty=-4.31,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt entrance gap R
	RefLargeCrate113	= {tx=22.65,	ty=-4.315,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt entrance gap L
	RefLargeCrate10		= {tx=7,		ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- crossing gap M
	RefLargeCrate6		= {tx=-52.35,	ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- crossing gap R
	RefPallet30			= {tx=7.79,		ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,	sz=2.8},
	MidCeiling201		= {							tz=33.2,								sz=1.25},
	RefBiggsTeleporter	= {del=true},
	RefBiggsTeleporter1	= {del=true}
}) do
	if form.del then
		mx_ct[1].SKW[#mx_ct[1].SKW+1] = {'Name', node}
	else
		mx_ct[#mx_ct+1] = {
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
end
mx_ct[#mx_ct+1] = {
	PRECEDING_KEY_WORDS = 'Children',
	ADD					= ToMxml( ScNode({
		{
			name	= '1RefBarrelBaz1',
			ntype	= 'REFERENCE',
			form	= {tx=8.18, ty=-7.02, tz=66.4, rx=270, sx=0.9, sy=1.4, sz=0.9},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/BARREL1.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrossingB1',
			ntype	= 'REFERENCE',
			form	= {tx=-45.35, ty=-7.341775, tz=66.73, ry=180},
			attr	= {
				SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrossingB2',
			ntype	= 'REFERENCE',
			form	= {tx=0, ty=-7.341775, tz=66.73},
			attr	= {
				SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrossingB3',
			ntype	= 'REFERENCE',
			form	= {tx=45.35, ty=-7.341775, tz=66.73, ry=180},
			attr	= {
				SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateMilk01',
			ntype	= 'REFERENCE',
			form	= {tx=5.06, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateHazBig1',
			ntype	= 'REFERENCE',
			form	= {tx=6.74, ty=-7.34, tz=66.5, ry=90, sx=1.7, sy=1.4, sz=1.6},
			attr	= {
				SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateTypeb1',
			ntype	= 'REFERENCE',
			form	= {tx=5.06, ty=-7.33, tz=67.1, ry=3, sx=0.9, sy=0.9, sz=0.9},
			attr	= {
				SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateTypeb2',
			ntype	= 'REFERENCE',
			form	= {tx=5.2, ty=-7.33, tz=68.2, ry=87, sx=0.9, sy=0.9, sz=0.9},
			attr	= {
				SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateHazBig2',
			ntype	= 'REFERENCE',
			form	= {tx=-53.3, ty=-6.67, tz=64.1, ry=13, rz=90, sx=0.57, sy=0.9, sz=0.9},
			attr	= {
				SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'
			}
		},
		{
			name	= '1RefScreenSilo',
			ntype	= 'REFERENCE',
			form	= {tx=-55.32, ty=-5.82, tz=63.46, ry=35.1, sx=0.36, sy=0.6, sz=0.4},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCoveredSilos',
			ntype	= 'REFERENCE',
			form	= {tx=-54, ty=-7.33, tz=66.8, ry=-90, sx=0.75, sy=0.75, sz=0.75},
			attr	= {
				SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/COVEREDSILOS.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateMould01',
			ntype	= 'REFERENCE',
			form	= {tx=-52.8, ty=-3.65, tz=65.65, rx=10, ry=-85, rz=180, sx=1.4},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'
			}
		},
		{
			name	= '1RefCrateMould02',
			ntype	= 'REFERENCE',
			form	= {tx=-52.7, ty=-3.6, tz=67.7, rx=-10, ry=85, rz=175, sx=1.4},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'
			}
		},
		{
			name	= '1RefBuilderHand',
			ntype	= 'REFERENCE',
			form	= {tx=-39.85, ty=-7.64, tz=-22.3, rx=-2, ry=-65, rz=180, sx=1.4, sy=1.4, sz=1.4},
			attr	= {
				SCENEGRAPH = 'MODELS/COMMON/ROBOTS/ROBOTHAND.SCENE.MBIN'
			}
		},
		{
			name	= '1RefBuilderHead',
			ntype	= 'REFERENCE',
			form	= {tx=-39.8, ty=-7.64, tz=-21.6, rx=50, ry=160, rz=0, sx=1.1, sy=1.1, sz=1.1},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BUILDERHEAD.SCENE.MBIN'
			}
		},
		{
			name	= '1RefGeometPlant01',
			ntype	= 'REFERENCE',
			form	= {tx=37, ty=-7.72, tz=68.3, ry=-20, rz=20, sx=0.24, sy=0.24, sz=0.24},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN'
			}
		},
		{
			name	= '1RefMetalStruct01',
			ntype	= 'REFERENCE',
			form	= {tx=11.8, ty=9.5, tz=22.7, sx=0.3, sy=0.3, sz=0.3},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN'
			}
		},
		{
			name	= '1RefWirecell01',
			ntype	= 'REFERENCE',
			form	= {tx=-67, ty=14, tz=-18.2, sx=0.6, sy=0.6, sz=0.6},
			attr	= {
				SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN'
			}
		}
	}) )
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Freighter Hangar Changes.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '6.05',
	MOD_DESCRIPTION			= mod_desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		MXML_CHANGE_TABLE	= mx_ct
	},
	{--	add |hangar ship outfitting|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefWallMonitor'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToMxml( ScNode({
					{--	add ship outfitting
						name	= '1RefMonitorShip',
						ntype	= 'REFERENCE',
						form	= {tx=2.55, ty=0.12, tz=5.4, ry=135, rz=180, sx=0.55, sy=0.55, sz=0.55},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'
						},
						child	= {
							name	= 'ColShipSalvage1',
							ntype	= 'COLLISION',
							form	= {ty=-3},
							attr	= {
								TYPE	= 'Sphere',
								RADIUS	= 0.2
							},
							child	= {
								name	= 'LocShipSalvage1',
								ntype	= 'LOCATOR',
								attr	= {
									ATTACHMENT = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'
								}
							}
						}
					},
					{--	corvette beam trigger
						name	= '1LocCorvTeleport',
						ntype	= 'LOCATOR',
						form	= {tx=-1.97, ty=1.38, tz=4.55},
						attr	= {
							ATTACHMENT = 'MODELS/COMMON/SPACECRAFT/BIGGS/BIGGSTELEPORTER_FREIGHTERS/ENTITIES/BIGGSTELEPORTER_FREIGHTERS.ENTITY.MBIN'
						},
						child	= {
							{
								name	= 'ColCorvTeleport',
								ntype	= 'COLLISION',
								form	= {ry=180},
								attr	= {
									TYPE		= 'Sphere',
									RADIUS		= 0.4,
									NAVIGATION = 'FALSE'
								}
							},
						}
					},
					{--	corvette beam button
						name	= 'RefCorvButton',
						ntype	= 'REFERENCE',
						form	= {tx=-1.97, ty=1.38, tz=4.55, ry=180, sx=0.77, sy=0.77, sz=0.77},
						attr	= {
							SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/BIGGS/TELECONTROL.SCENE.MBIN'
						}
					},
					{--	corvette beam button base
						name	= '1RefCorvSign',
						ntype	= 'REFERENCE',
						form	= {tx=-1.97, ty=1.38, tz=4.49, rx=90, rz=-90, sx=0.7, sy=0.7, sz=0.6},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ABANDONED/WARNINGSIGN_1.SCENE.MBIN'
						}
					}
				}))
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
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'},
				},
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
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'},
					{'Name', 'SUB1HangarFloorSectionA'},
					{'Name', 'SUB2HangarFloorSectionA'},
					{'Name', 'SUB3HangarFloorSectionA'},
				},
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
		MXML_CHANGE_TABLE	= {
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
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'CuboidSmallLOD0', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE	= {
					{'value', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT/ENTITIES/SHAPE1FLOAT.ENTITY.MBIN'}
				}
			}
		}
	}
}}},
	ADD_FILES	= (
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures_mod_source/textures/space/spacestation/PIRATES/'
			if lfs.attributes(tex_path) then
				return {{
					EXTERNAL_FILE_SOURCE = tex_path..'*.DDS',
					FILE_DESTINATION	 = 'TEXTURES/SPACE/SPACESTATION/PIRATES/*.DDS'
				}}
			end
			return nil
		end
	)()
}