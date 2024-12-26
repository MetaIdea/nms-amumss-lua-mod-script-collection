-------------------------------------------------------------------------------
---	Build GcObjectSpawnData entries (VERSION: 0.50) ... by lMonk
---	* Requires _lua_2_exml.lua !
---	* This script should be in [AMUMSS folder]\ModScript\ModHelperScripts\LIB
-------------------------------------------------------------------------------

function ObjectSpawnEntry(items)
	local function spawnEntry(osd)
		return {
			meta	= {'value','GcObjectSpawnData.xml'},
			Type		= osd.type or 'Instanced',								-- Enum
			Resource	= {
				meta	= {'Resource','GcResourceElement.xml'},
				Filename	= osd.filename,										-- s
				Seed		= {
					meta = {'Seed','GcSeed.xml'},
					Seed			= osd.resourceseed,							-- i
					UseSeedValue	= osd.resourceseed ~= nil
				},
				ProceduralTexture	= osd.texturesamplers and {
					meta = {'ProceduralTexture','TkProceduralTextureChosenOptionList.xml'},
					Samplers = (
						function()
							local T = { meta = {'name','Samplers'} }
							for _,ptco in ipairs(osd.texturesamplers) do
								local tsam = {
									meta = {'value','TkProceduralTextureChosenOptionSampler.xml'},
									Options = { meta = {'name','Options'} }
								}
								for _, opt in ipairs(ptco) do
									tsam.Options[#tsam.Options+1] = {
										meta = {'value','TkProceduralTextureChosenOption.xml'},
										Layer			= opt.layer,						-- s
										Group			= opt.group,						-- s
										Palette			= {
											meta = {'Palette','TkPaletteTexture.xml'},
											Palette		= opt.palette	or 'Rock',			-- Enum
											ColourAlt	= opt.colouralt	or 'None'			-- Enum
										},
										OverrideColour	= opt.override	or true,			-- b
										Colour			= ColorData(opt.color, 'Colour'),	-- rgb/hex
										OptionName		= opt.optionname					-- s
									}
								end
								T[#T+1] = tsam
							end
							return T
						end
					)()
				} or nil
			},
			Placement					= osd.placement,						-- s
			Seed = {
				meta = {'Seed','GcSeed.xml'},
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
			IsFloatingIsland			= osd.isfloatingisland,					-- b
			InvisibleToCamera			= osd.invisibletocamera or true,		-- b
			CreaturesCanEat				= osd.creaturescaneat,					-- b
			ShearWindStrength			= osd.shearwind,						-- f
			SupportsScanToReveal		= osd.scantoreveal,						-- b
			DestroyedByVehicleEffect	= osd.vehicleeffect or 'VEHICLECRASH',	-- s
			QualityVariants = (													-- list
				function()
					local T = {meta = {'name','QualityVariants'}}
					for i, osdv in ipairs(osd.qualityvariants) do
						T[#T+1] = {
							meta	= {'value','GcObjectSpawnDataVariant.xml'},
							ID						= i == 1 and 'STANDARD' or 'ULTRA',
							Coverage				= osdv.coverage,			-- f
							FlatDensity				= osdv.flatdensity,			-- f
							SlopeDensity			= osdv.slopedensity,		-- f
							SlopeMultiplier			= osdv.slopemultiplier,		-- f
							MaxRegionRadius			= osdv.maxregion or 10,		-- i
							MaxImposterRadius		= osdv.maximposter or 88,	-- i
							FadeOutStartDistance	= osdv.fadeoutstart or 9999,-- f
							FadeOutEndDistance		= osdv.fadeoutend or 9999,	-- f
							FadeOutOffsetDistance	= osdv.fadeoutoffset or nil,-- f
							LodDistances	= {									-- list
								meta = {'name','LodDistances'},
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
	return processOnenAll(items, spawnEntry)
end