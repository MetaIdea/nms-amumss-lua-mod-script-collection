-------------------------------------------------------------------------------
---	Build GcObjectSpawnData entries (VERSION: 0.3) ... by lMonk
---	* Requires _lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

function ObjectSpawnEntry(osd)
	return {
		META	= {'value','GcObjectSpawnData.xml'},
		Type		= osd.type or 'Instanced',								-- Enum
		Resource	= {
			META	= {'Resource','GcResourceElement.xml'},
			Filename	= osd.filename,										-- s
			Seed		= {
				META = {'Seed','GcSeed.xml'},
				Seed			= osd.resourceseed,							-- i
				UseSeedValue	= osd.resourceseed ~= nil
			},
			ProceduralTexture	= (
			function()
				if not osd.texturesamplers then return nil end
				local T = {
					META = {'ProceduralTexture','TkProceduralTextureChosenOptionList.xml'},
					Samplers = { META = {'name','Samplers'} }
				}
				for _,ptco in ipairs(osd.texturesamplers) do
					local tsam = {
						META = {'value','TkProceduralTextureChosenOptionSampler.xml'},
						Options = { META = {'name','Options'} }
					}
					for _, opt in ipairs(ptco) do
						tsam.Options[#tsam.Options+1] = {
							META = {'value','TkProceduralTextureChosenOption.xml'},
							Layer			= opt.layer,						-- s
							Group			= opt.group,						-- s
							Palette			= {
								META = {'Palette','TkPaletteTexture.xml'},
								Palette		= opt.palette or 'Rock',			-- Enum
								ColourAlt	= opt.colouralt or 'None'			-- Enum
							},
							OverrideColour	= opt.override or true,				-- b
							Colour			= ColorData(opt.color, 'Colour'),	-- rgb/hex
							OptionName		= opt.optionname					-- s
						}
					end
					T.Samplers[#T.Samplers+1] = tsam
				end
				return T
			end
			)()
		},
		Placement					= osd.placement,						-- s
		Seed = {
			META = {'Seed','GcSeed.xml'},
			Seed			= osd.spawnseed,								-- i
			UseSeedValue	= osd.spawnseed ~= nil
		},
		PlacementPriority			= osd.priority or 'Normal',				-- Enum
		LargeObjectCoverage			= osd.largeobject or 'AlwaysPlace',		-- Enum
		OverlapStyle				= osd.overlap or 'None',				-- Enum
		MinHeight					= osd.minheight or -1,					-- f
		MaxHeight					= osd.maxheight or 128,					-- f
		RelativeToSeaLevel			= osd.relativetosea or true,			-- b
		MinAngle					= osd.minangle,							-- f
		MaxAngle					= osd.maxangle,							-- f
		MatchGroundColour			= osd.matchground,						-- b
		GroundColourIndex			= osd.groundcolour or 'Auto',			-- Enum
		SwapPrimaryForSecondaryColour=osd.swap1stfor2nd,					-- b
		SwapPrimaryForRandomColour	= osd.swap1stforRand,					-- b
		AlignToNormal				= osd.aligntonormal,					-- b
		MinScale					= osd.minscale,							-- f
		MaxScale					= osd.maxscale,							-- f
		MinScaleY					= osd.minscaley,						-- f
		MaxScaleY					= osd.maxscaley,						-- f
		SlopeScaling				= osd.slopescaling,						-- f
		PatchEdgeScaling			= osd.edgescaling,						-- f
		MaxXZRotation				= osd.maxxzrotation,					-- f
		AutoCollision				= osd.autocollision,					-- b
		CollideWithPlayer			= osd.collidewithplayer,				-- b
		CollideWithPlayerVehicle	= osd.collidewithvehicle or true,		-- b
		DestroyedByPlayerVehicle	= osd.destroyedbyvehicle or true,		-- b
		DestroyedByPlayerShip		= osd.destroyedbyship or true,			-- b
		DestroyedByTerrainEdit		= osd.destroyedbyterrainedit or true,	-- b
		InvisibleToCamera			= osd.invisibletocamera or true,		-- b
		CreaturesCanEat				= osd.creaturescaneat,					-- b
		ShearWindStrength			= osd.shearwind,						-- f
		SupportsScanToReveal		= osd.scantoreveal,						-- b
		DestroyedByVehicleEffect	= osd.vehicleeffect or 'VEHICLECRASH',	-- s
		-- QualityVariantData (not needed)
		QualityVariants = (													-- list
		function()
			local T = {META = {'name','QualityVariants'}}
			for i, osdv in ipairs(osd.qualityvariants) do
				T[#T+1] = {
					META	= {'value','GcObjectSpawnDataVariant.xml'},
					ID						= i == 1 and 'STANDARD' or 'ULTRA',
					Coverage				= osdv.coverage,				-- f
					FlatDensity				= osdv.flatdensity,				-- f
					SlopeDensity			= osdv.slopedensity,			-- f
					SlopeMultiplier			= osdv.slopemultiplier,			-- f
					MaxRegionRadius			= osdv.maxregion or 10,			-- i
					MaxImposterRadius		= osdv.maximposter or 88,		-- i
					FadeOutStartDistance	= osdv.fadeoutstart or 9999,	-- f
					FadeOutEndDistance		= osdv.fadeoutend or 9999,		-- f
					FadeOutOffsetDistance	= osdv.fadeoutoffset or 0,		-- f
					LodDistances	= {										-- list
						META = {'name','LodDistances'},
						{value	= 0},
						{value	= osdv.lod and osdv.lod[1] or 20},	-- f
						{value	= osdv.lod and osdv.lod[2] or 60},	-- f
						{value	= osdv.lod and osdv.lod[3] or 150},	-- f
						{value	= osdv.lod and osdv.lod[4] or 500}	-- f
					}
				}
			end
			return T
		end
		)()
	}
end