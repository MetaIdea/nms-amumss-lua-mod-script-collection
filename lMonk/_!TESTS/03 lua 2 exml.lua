-----------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/scene_tools.lua')
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_lua_2_exml.lua')
-----------------------------------------------------------------------------------------

section_08 = {
	ScLight({
		{name='pointLight125d',	c='FFFACFA8',	tx=-22.666,	ty=5.3848,	tz=-15,8617, g=0.851, b=0.745},
		{name='pointLight125e',	c='FFFACFA8',	tx=-22.666,	ty=2.6848,	tz=-10,3617, g=0.851, b=0.745},
	}),
	ScNode({

		name	= 'LocFishBottle',
		ntype	= 'LOCATOR',
		form	= {tx=-0.72, ty=0.785, tz=0.62, sx=0.8, sy=0.8, sz=0.8},
		attr	= {
			{'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/FISHINGPLATFORM/ENTITIES/FISHCASES.ENTITY.MBIN'}
		},
		child	= {
			{
				name	= 'FishBottleCollision',
				ntype	= 'COLLISION',
				form	= {ty=0.2},
				attr	= {
					{'TYPE',	'Sphere'},
					{'RADIUS',	0.26}
				}
			},
			{
				name	= 'RefFishBottle',
				ntype	= 'REFERENCE',
				attr	= {
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKBOTTLE.SCENE.MBIN'}
				}
			}
		}
	})
}

-- local a = ToLua(section_08)

local tbl_08 = 'exml_source'

local w_src = io.open('d:/_dump/'..tbl_08..'.exml', 'w')

w_src:write(ToExml(section_08))
w_src:close()
print('saved '..tbl_08..' LUA to _dump')
