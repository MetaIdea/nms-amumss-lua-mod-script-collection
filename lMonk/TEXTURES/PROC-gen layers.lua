---------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
---------------------------------------------------------------------
local mod_desc = [[
  Generate proc texture files & include the relevant dds files
  diff/normal/masks	= true >> add the texture path to layer
  If a source path is present add the files to the pak
]]--------------------------------------------------------------

local GU_ = {--	TextureGameplayUse Enum
	IGR = 'IgnoreName', -- default
	MCT = 'MatchName',
	DNM = 'DoNotMatchName'
}

local proc_texture_files = {
	{--	skiff screen
		label	= 'HOLOGRAMSCROLLS',
		nmspath	= 'TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= 0	-- 0 = layer name is omited
			}
		}
	},
	{--	floating crystal
		label	= 'AIRCRYSTAL',
		nmspath	= 'TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Crystal',
				color	= 'Primary',
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	bioship engine flare line
		label	= 'PULSELINES',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	= {
			{
				name	= 'BASEP',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= 1
			}
		}
	},
	{--	bioship engine flare
		label	= 'PULSELINEENGINE',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	= {
			{
				name	= 'BASE5',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= 1
			}
		}
	},
	{--	ship interior: plastic / sentinel rifle
		label	= 'PLASTICGRAIN',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	ship interior: plastic alt 1
		unused	= true,
		label	= 'PLASTICGRAINALT1',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	ship interior: plastic alt 2
		label	= 'PLASTICGRAINALT2',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	ship decals : logo
		label	= 'LOGO',
		group	= 'DECALLOGO',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/logo/',
		nmspath	= 'TEXTURES/COMMON/DECALS/LOGO/',
		layers	= {
			{
				name	= 'OVERLAY',
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'L15', 'L14', 'L13', 'L12', 'L11', 'L10', 'L9', 'L8', 'L7', 'L6', 'L5', 'L4', 'L3', 'L2', 'L1'},
				diff	= 1
			}
		}
	},
	{--	ship decals : rectangle
		label	= 'RECTANGLE',
		group	= 'DECALRECTANGLE',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/rectangle/',
		nmspath	= 'TEXTURES/COMMON/DECALS/RECTANGLE/',
		layers	= {
			{
				name	= 'OVERLAY',
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'R15', 'R14', 'R13', 'R12', 'R11', 'R10', 'R9', 'R8', 'R7', 'R6', 'R5', 'R4', 'R3', 'R2', 'R1'},
				diff	= 1
			}
		}
	},
	{--	ship decals : smallsign
		label	= 'SMALLSIGN',
		group	= 'DECALSMALLSIGN',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/smallsign/',
		nmspath	= 'TEXTURES/COMMON/DECALS/SMALLSIGN/',
		layers	= {
			{
				name	= 'OVERLAY',
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative3',
				texture	= {'S6', 'S5', 'S4', 'S3', 'S2', 'S1'},
				diff	= 1
			}
		}
	},
	{--	ship decals : number
		label	= 'NUMBER',
		group	= 'DECALNUMBER',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/number/',
		nmspath	= 'TEXTURES/COMMON/DECALS/NUMBER/',
		layers	= {
			{
				name	= 'OVERLAY',
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative1',
				texture	= {'A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'B9', 'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
				diff	= 1
			}
		}
	},
	{--	ship decals : lettering
		label	= 'LETTERING',
		group	= 'DECALLET',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/lettering/',
		nmspath	= 'TEXTURES/COMMON/DECALS/LETTERING/',
		layers	= {
			{
				name	= 'OVERLAY',
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'LT1', 'LT2', 'LT3', 'LT4', 'LT5', 'LT6', 'LT7', 'LT8', 'LT9'},
				diff	= 1
			}
		}
	},
	{--	space station front lettering
		label	= 'LETTERING',
		group	= 'DECALLETTER',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	= {
			{
				name	= 'OVERLAY',
				color	= 'Primary',
				masks	= 1
			},
			{
				name	= 'BASE',
				texture	= {'ST1', 'ST2', 'ST3', 'ST4', 'ST5', 'ST6', 'ST7'},
				diff	= 1
			}
		}
	},
	{--	space station front number
		label	= 'NUMBER',
		group	= 'DECALNUMBER',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	= 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	= {
			{
				name	= 'OVERLAY',
				color	= 'Primary',
				masks	= 1
			},
			{
				name	= 'BASE',
				texture	= {'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
				diff	= 1
			}
		}
	},
	{--	multitool colored strap
		label	= 'STRAP',
		nmspath	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= 1
			}
		}
	},
	{--	multitool glow parts
		label	= 'MULTITOOLGLOW',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Weapon/',
		nmspath	= 'TEXTURES/COMMON/WEAPONS/MULTITOOL/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Crystal',
				color	= 'Primary',
				diff	= 1
			}
		}
	},
	{--	royal ship
		label	= 'ROYALSCLASS_TRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Royal/',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	= {
			{
				name	= 'OVERLAYMETAL',
				texture	= {{n='SILVER', pr=0.7}, {n='GOLD', pr=0.3}},
				diff	= 1
			},
			{
				name	= 'BASE',
				palette = 'SpaceBottom',
				color	= 'Primary',
				diff	= 1,
				normal	= 0,	-- 0 = layer name is omited
				masks	= 0
			}
		}
	},
	{--	mech hardframe
		label	= 'SENTINELTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				diff	= 1
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= 1
			},
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= 1
			},
			{
				name	= 'BASE',
				diff	= 1,
				normal	= 0,	-- 0 = layer name is omited
				masks	= 0
			}
		}
	},
	{--	mech liquidator
		label	= 'ARMYMECH',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= 1,
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= 1,
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1,
			},
			{
				name	= 'BASE',
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	mech liquidator trim
		label	= 'ARMYTRIM',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'OVERLAY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= 1,
			},
			{
				name	= 'BASE',
				diff	= 1,
				normal	= 0,
				masks	= 0
			}
		}
	},
	{--	sentinel ship
		unused	= true,
		label	= 'SENTINELPROC',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/',
		layers	= {
			{
				name	= 'FIXED',
				texture	= {'1', '2'},
				diff	= 1,
				masks	= 1
			},
			{
				name	= 'OVERLAY',
				texture	= {
					-- needs dds flags and alt name for each tex to deal with the unconventional naming
					{n='POLICE',	u=GU_.MCT},
					{n='1',			u=GU_.DNM},
					{n='2',			u=GU_.DNM},
					{n='3',			u=GU_.DNM,	pt='Paint',	ca='None'},
					{n='4',			u=GU_.DNM,	pt='Paint',	ca='Alternative1'}
				},
				diff	= 1,
				normal	= 1,
				masks	= 1
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= 1,
				normal	= 1,
				masks	= 1
			}
		}
	},
	{--	ship: fake light beam & glow parts	!!AFFECTS ship proc-gen texture option
		unused	= true,
		label	= 'RECTWHITELIGHT',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1
			}
		}
	},
	{--	ship: glow rectangle parts			!!AFFECTS ship proc-gen texture option
		unused	= true,
		label	= 'RECTLIGHT',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1
			}
		}
	},
	{--	ship: glow circle parts				!!AFFECTS ship proc-gen texture option
		unused	= true,
		label	= 'CIRCLELIGHT',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1
			}
		}
	},
	{--	ship: headlights					!!AFFECTS ship proc-gen texture option
		unused	= true,
		label	= 'HEADLIGHT',
		source	= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	= 'TEXTURES/COMMON/SPACECRAFT/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= 1
			}
		}
	},
	{--	sentinel square lights !! NOT WORKING
		unused	= true,
		label	= 'LIGHTS',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= 1
			}
		}
	},
	{--	sentinel back lights   !! NOT WORKING
		unused	= true,
		label	= 'LIGHTS',
		nmspath	= 'TEXTURES/COMMON/ROBOTS/SHARED/',
		layers	= {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'2'},
				diff	= 1
			}
		}
	},
}

local function GetProcTextures(path, layer)
	local function TexPath(f, suffix)
		if not layer[f] then return nil end
		local parts = { path, layer[f] ~= 0 and layer.name or '', suffix, 'DDS' }
		for i = #parts, 2, -1 do
			if #parts[i] > 0 then
				table.insert(parts, i, '.')
			end
		end
		return table.concat(parts)
	end
	local T = { meta = {'name', 'Textures'} }
	--	handles 3 options:
	--	* An array of names
	--	* An array of tables of the following - non-essential - properties:
	--	  {n='name', pr=0.3, u=GU_.DNM,	pt='palette', ca='colouralt'} >> u=TextureGameplayUseEnum
	--	* None, in which case all default values apply
	for _,ptex in ipairs(layer.texture or {{n=''}}) do
		if type(ptex) == 'string' then ptex = {n=ptex} end
		T[#T+1] = {
			meta	= {'value', 'TkProceduralTexture.xml'},
			Name				= ptex.n,
			Probability			= ptex.pr or 1,
			TextureGameplayUse	= ptex.u,
			Diffuse				= TexPath('diff',	ptex.n),
			Normal				= TexPath('normal',	'NORMAL'),
			Mask				= TexPath('masks',	'MASKS'),
			Parallax			= TexPath('prlx',	'PARALLAX'),
			Palette				= {
				meta	= {'Palette', 'TkPaletteTexture.xml'},
				Palette		= ptex.pt or (layer.palette	or 'Rock'),
				ColourAlt	= ptex.ca or (layer.color	or 'None')
			}
		}
	end
	return T
end

local function BuildProcTexListMbin(proc_tex_list)
	-- Assign the exml table with its designated meta
	local T = { meta = {'name', 'Layers'} }
	for _,layr in ipairs(proc_tex_list.layers) do
		T[#T+1] = {
			meta	= {'value', 'TkProceduralTextureLayer.xml'},
			Name				= layr.name,
			Probability			= proc_tex_list.ly_prob	or 1,
			Group				= proc_tex_list.group,
			SelectToMatchBase	= layr.matchbase,
			Textures			= GetProcTextures(proc_tex_list.nmspath..proc_tex_list.label, layr)
		}
	end
	-- complete to the fixed length (8) array
	for _=1, (8 - #proc_tex_list.layers) do
		T[#T+1] = {value = 'TkProceduralTextureLayer.xml'}
	end
	-- new mbin
	return FileWrapping(T, 'TkProceduralTextureList')
end

-- io.open('D:/_dump/15.TEXTURE.EXML', 'w'):write(BuildProcTexListMbin(proc_texture_files[15]))

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE build proc-gen layers.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {}
			for _,ptf in ipairs(proc_texture_files) do
				if not ptf.unused then
					T[#T+1] = {
						FILE_CONTENT	 = BuildProcTexListMbin(ptf),
						FILE_DESTINATION = ptf.nmspath..ptf.label..'.TEXTURE.EXML'
					}
					if ptf.source then
						T[#T+1] = {
							EXTERNAL_FILE_SOURCE = ptf.source..ptf.label..'*.DDS',
							FILE_DESTINATION	 = ptf.nmspath..'*.DDS'
						}
					end
				end
			end
			return T
		end
	)()
}
