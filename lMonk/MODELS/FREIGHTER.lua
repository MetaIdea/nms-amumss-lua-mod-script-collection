-------------------------------------------------------
local desc = [[
  - Hangar & landing pad lights changed to near-white
  - Cranes moved to the back
  - Loitering NPC moved and removed
]]-----------------------------------------------------

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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL ferighter hangar.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|freighter landing pad lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OrangeLights'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				=
					InsertNewLight({name='left', fov=100, tx=16, ty=10, rx=-22, ry=90, f='l', fr=1.2, c='f5f7fa'})
					..
					InsertNewLight({name='right', fov=100, tx=-16, ty=10, rx=-22, ry=-90, f='l', fr=1.2, c='f5f7fa'})
					..
					InsertNewLight({name='ne', i=44000, fov=120, tx=4.8, ty=0.25, tz=4.8, rx=30, ry=45, c='f5f7fa'})
					..
					InsertNewLight({name='nw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=4.8, rx=30, ry=-45, c='f5f7fa'})
					..
					InsertNewLight({name='se', i=44000, fov=120, tx=4.8, ty=0.25, tz=-4.8, rx=30, ry=135, c='f5f7fa'})
					..
					InsertNewLight({name='sw', i=44000, fov=120, tx=-4.8, ty=0.25, tz=-4.8, rx=30, ry=-135, c='f5f7fa'})
			}
		}
	},
	{
	---	|freighter hangar|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_01'},	-- middle chatterer 1
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-9.507},
					{'TransY',		-3.355},
					{'TransZ',		-28.34},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_03'},	-- middle chatterer 3
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-8.337},
					{'TransY',		-3.355},
					{'TransZ',		-28.03},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_06'},	-- middle loiterer
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-21.92},
					{'TransY',		-4.2},
					{'TransZ',		5.5},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_07'},	-- left high loiterer
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-57.8},
					{'TransY',		8.1},
					{'TransZ',		57.14},
					{'RotY',		270},
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'NPC_02'},		-- middle lifted
					{'Name', 'NPC_04'},		-- left middle loiterer
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane2'}, -- right (1)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		61.2},	-- -16.480017
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane'}, -- middle (2)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		60.7},	-- 50.21371
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane1'}, -- left (3)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		60.9},	-- -3.715493
				}
			},
		---	middle orange lighs	
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'lightorange1', 'Name', 'INTENSITY'},
					{'Name', 'pointLight8', 'Name', 'INTENSITY'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		35000}  -- 20000
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'lightorange1', 'Name', 'COL_R'},
					{'Name', 'pointLight8', 'Name', 'COL_R'}
				},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.3}
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'lightorange1', 'Name', 'COL_G'},
					{'Name', 'pointLight8', 'Name', 'COL_G'}
				},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.5}
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'lightorange1', 'Name', 'COL_B'},
					{'Name', 'pointLight8', 'Name', 'COL_B'}
				},
				VALUE_CHANGE_TABLE	= {
					{'Value',		0.6}
				}
			},
		----------------	copied from Relight -------------
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight8'},  -- left stairs light
				REPLACE_TYPE		= 'AddAfterSection',
				ADD					=
				---	left stairs light
					InsertNewLight({name='pointLight125z',tx=-16.66565, ty=14.0848, tz=-30,8617})
					..
					InsertNewLight({name='pointLight125b',tx=-22.66565, ty=11.0848, tz=-25,8617, rx=-135, fov=180, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight125c',tx=-22.66565, ty=8.0848, tz=-20,8617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight125d',tx=-22.66565, ty=5.3848, tz=-15,8617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight125e',tx=-22.66565, ty=2.6848, tz=-10,3617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight125f',tx=-22.66565, ty=0.0, tz=-4,36167, g=0.851, b=0.745})
				---	right stairs light
					..
					InsertNewLight({name='pointLight70z',tx=16.66565, ty=14.0848, tz=-30,8617})
					..
					InsertNewLight({name='pointLight70b',tx=22.66565, ty=11.0848, tz=-25,8617, rx=-135, fov=180, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight70c',tx=22.66565, ty=8.0848, tz=-20,8617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight70d',tx=22.66565, ty=5.3848, tz=-15,8617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight70e',tx=22.66565, ty=2.6848, tz=-10,3617, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight70f',tx=22.66565, ty=0.0, tz=-4,36167, g=0.851, b=0.745})
					..
					InsertNewLight({name='pointLight8b',tx=8.0, ty=12.128, tz=48.882, i=27000, r=0.947, g=0.59, b=0.306})
					..
					InsertNewLight({name='pointLight8b',tx=0.0, ty=12.128, tz=48.882, i=27000, r=0.947, g=0.59, b=0.306})
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'pointLight7501'},	-- middle of left stairs
					{'Name', 'pointLight70'},	-- middle of right stairs
				},
				REMOVE				= 'Section'
			}
		}
	}
}}}}
