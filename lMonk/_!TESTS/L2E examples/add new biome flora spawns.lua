----------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/biome_spawn_entry.lua')
----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_TEST L2E add new biome spawn.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPOBJECTSFULL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Landmarks',
				ADD					= ToExml(
					ObjectSpawnEntry({
						type					= 'Instanced',		-- default value (can be skipped)
						filename				= 'MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN',
						texturesamplers			= {					-- optional
							{
								{
									layer		= 'OVERLAY',
									group		= 'BARKO',
									palette		= 'Rock',
									colouralt	= 'Primary',
									override	= true,				-- default value (can be skipped)
									color		= {1, 0.673, 0.641, 0.567},
									optionname	= 'GRASS'
								},
								{
									layer		= 'BASE',
									group		= 'BARK',
									palette		= 'Wood',
									colouralt	= 'Primary',
									override	= true,
									color		= {1, 0.93, 0.891, 0.838},
									optionname	= 3
								},
								{
									layer		= 'BASE',
									palette		= 'Plant',
									colouralt	= 'Primary',
									override	= true,
									color		= {1, 0.164, 0.509, 0.63},
									optionname	= 2
								},
								{
									layer		= 'BASE',
									group		= 'LEAF',
									palette		= 'Leaf',
									colouralt	= 'Primary',
									override	= true,
									color		= {1, 0.923, 0.484, 0.046},
									optionname	= 1
								},
							},
							{
								{
									layer		= 'COLOUR',
									group		= 'BARKC',
									palette		= 'Plant',
									colouralt	= 'Primary',
									override	= false,
									color		= {1, 0.164, 0.509, 0.63}
								},
								{
									layer		= 'BASE',
									group		= 'BARKB',
									palette		= 'Grass',
									colouralt	= 'Primary',
									override	= false,
									color		= {1, 0.542, 0.67, 0.333},
									optionname	= 1
								}
							}
						},
						placement				= 'FOREST',
						priority				= 'High',
						largeobject				= 'DoNotPlaceClose',
						overlap					= 'SameSeed',
						minheight				= -1,				-- default value (can be skipped)
						maxheight				= 128,				-- default value (can be skipped)
						relativetosea			= true,				-- default value (can be skipped)
						minangle				= 0,				-- default value (can be skipped)
						maxangle				= 35,
						matchground				= false,			-- default value (can be skipped)
						groundcolour			= 'Auto',			-- default value (can be skipped)
						swap1stfor2nd			= false,			-- default value (can be skipped)
						swap1stforRand			= false,			-- default value (can be skipped)
						aligntonormal			= false,			-- default value (can be skipped)
						minscale				= 1.7,
						maxscale				= 2.4,
						minscaley				= 1,
						maxscaley				= 1,
						slopescaling			= 1,
						edgescaling				= 0,				-- default value (can be skipped)
						maxxzrotation			= 5,
						autocollision			= false,			-- default value (can be skipped)
						collidewithplayer		= true,
						collidewithvehicle		= true,				-- default value (can be skipped)
						destroyedbyvehicle		= true,				-- default value (can be skipped)
						destroyedbyship			= true,				-- default value (can be skipped)
						destroyedbyterrainedit	= true,				-- default value (can be skipped)
						invisibletocamera		= true,				-- default value (can be skipped)
						creaturescaneat			= false,			-- default value (can be skipped)
						shearwind				= 0,				-- default value (can be skipped)
						scantoreveal			= false,			-- default value (can be skipped)
						vehicleeffect			= 'VEHICLECRASH',	-- default value (can be skipped)
						qualityvariants			= {
							{
								coverage		= 0.15,
								flatdensity		= 0.003,
								slopedensity	= 0.001,
								slopemultiplier	= 1,
								maxregion		= 10,
								maximposter		= 99,
								fadeoutstart	= 9999,
								fadeoutend		= 9999,
								fadeoutoffset	= 0,			-- default value (can be skipped)
								lod				= { 40, 80, 240, 800 }
							}
						}
					})
				)
			}
		}
	}
}}}}
