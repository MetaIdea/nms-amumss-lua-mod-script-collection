---------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
---------------------------------------------------------------------
local mod_desc = [[
  Generate proc texture files & include the relevant dds files
  diff/normal/masks	= true >> add the texture path to layer
  If a source path is present add the files to the pak
]]--------------------------------------------------------------

--	TextureGameplayUseEnum
local GU_ = {IGR='IgnoreName', MCT='MatchName', DNM='DoNotMatchName'}

local proc_texture_files = {
	{--	floating crystal
		label	 = 'AIRCRYSTAL',
		nmspath	 = 'TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Crystal',
				color	= 'Primary',
				diff	= true,
				normal	= true,
				masks	= true
			}
		}
	},
	{--	bioship engine flare line
		label	 = 'PULSELINES',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	 = {
			{
				name	= 'BASEP',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= true
			}
		}
	},
	{--	bioship engine flare
		label	 = 'PULSELINEENGINE',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	 = {
			{
				name	= 'BASE5',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= true
			}
		}
	},
	{--	ship interior: plastic / sentinel rifle
		label	 = 'PLASTICGRAIN',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Custom_Head',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	ship decals : logo
		label	 = 'LOGO',
		group	 = 'DECALLOGO',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/logo/',
		nmspath	 = 'TEXTURES/COMMON/DECALS/LOGO/',
		layers	 = {
			{
				name	= 'OVERLAY',
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'L15', 'L14', 'L13', 'L12', 'L11', 'L10', 'L9', 'L8', 'L7', 'L6', 'L5', 'L4', 'L3', 'L2', 'L1'},
				diff	= true
			}
		}
	},
	{--	ship decals : rectangle
		label	 = 'RECTANGLE',
		group	 = 'DECALRECTANGLE',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/rectangle/',
		nmspath	 = 'TEXTURES/COMMON/DECALS/RECTANGLE/',
		layers	 = {
			{
				name	= 'OVERLAY',
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'R15', 'R14', 'R13', 'R12', 'R11', 'R10', 'R9', 'R8', 'R7', 'R6', 'R5', 'R4', 'R3', 'R2', 'R1'},
				diff	= true
			}
		}
	},
	{--	ship decals : smallsign
		label	 = 'SMALLSIGN',
		group	 = 'DECALSMALLSIGN',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/smallsign/',
		nmspath	 = 'TEXTURES/COMMON/DECALS/SMALLSIGN/',
		layers	 = {
			{
				name	= 'OVERLAY',
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative3',
				texture	= {'S6', 'S5', 'S4', 'S3', 'S2', 'S1'},
				diff	= true
			}
		}
	},
	{--	ship decals : number
		label	 = 'NUMBER',
		group	 = 'DECALNUMBER',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/number/',
		nmspath	 = 'TEXTURES/COMMON/DECALS/NUMBER/',
		layers	 = {
			{
				name	= 'OVERLAY',
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative1',
				texture	= {'A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'B8', 'B9', 'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
				diff	= true
			}
		}
	},
	{--	ship decals : lettering
		label	 = 'LETTERING',
		group	 = 'DECALLET',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/ship/lettering/',
		nmspath	 = 'TEXTURES/COMMON/DECALS/LETTERING/',
		layers	 = {
			{
				name	= 'OVERLAY',
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				texture	= {'LT1', 'LT2', 'LT3', 'LT4', 'LT5', 'LT6', 'LT7', 'LT8', 'LT9'},
				diff	= true
			}
		}
	},
	{--	space station front lettering
		label	 = 'LETTERING',
		group	 = 'DECALLETTER',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	 = 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	 = {
			{
				name	= 'OVERLAY',
				color	= 'Primary',
				masks	= true
			},
			{
				name	= 'BASE',
				texture	= {'ST1', 'ST2', 'ST3', 'ST4', 'ST5', 'ST6', 'ST7'},
				diff	= true
			}
		}
	},
	{--	space station front number
		label	 = 'NUMBER',
		group	 = 'DECALNUMBER',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Decals/station/',
		nmspath	 = 'TEXTURES/SPACE/SPACESTATION/DECALS/',
		layers	 = {
			{
				name	= 'OVERLAY',
				color	= 'Primary',
				masks	= true
			},
			{
				name	= 'BASE',
				texture	= {'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9'},
				diff	= true
			}
		}
	},
	{--	multitool colored strap
		label	 = 'STRAP',
		nmspath	 = 'TEXTURES/COMMON/WEAPONS/MULTITOOL/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= true
			}
		}
	},
	{--	multitool glow parts
		label	 = 'MULTITOOLGLOW',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Weapon/',
		nmspath	 = 'TEXTURES/COMMON/WEAPONS/MULTITOOL/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Crystal',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	royal ship
		label	 = 'ROYALSCLASS_TRIM',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Ship/Royal/',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/S-CLASS/',
		layers	 = {
			{
				name	= 'OVERLAYMETAL',
				texture	= {{n='SILVER', pr=0.7}, {n='GOLD', pr=0.3}},
				diff	= true
			},
			{
				name	= 'BASE',
				palette = 'SpaceBottom',
				color	= 'Primary',
				diff	= true,
				normal	= true,
				masks	= true
			}
		}
	},
	{--	mech hardframe
		label	 = 'SENTINELTRIM',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/FriendlyRobot/',
		nmspath	 = 'TEXTURES/COMMON/ROBOTS/',
		layers	 = {
			{
				name	= 'OVERLAY',
				diff	= true,
			},
			{
				name	= 'PRIMARY',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true,
			},
			{
				name	= 'SECONDARY',
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= true,
			},
			{
				name	= 'TERTIARY',
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= true,
			},
			{
				name	= 'BASE',
				diff	= true,
				normal	= true,
				masks	= true
			}
		}
	},
	{--	sentinel ship
		disabled = true,
		label	 = 'SENTINELPROC',
		nmspath	 = 'TEXTURES/COMMON/ROBOTS/',
		layers	 = {
			{
				name	= 'FIXED',
				texture	= {'1', '2'},
				diff	= true,
				masks	= true
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
				diff	= true,
				normal	= true,
				masks	= true
			},
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= true,
				normal	= true,
				masks	= true
			}
		}
	},
	{--	ship: fake light beam & glow parts !!AFFECTS ship pro-gen PAINTED/PANELS!!
		disabled = true,
		label	 = 'RECTWHITELIGHT',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	ship: glow rectangle parts !!AFFECTS ship pro-gen PAINTED/PANELS!!
		disabled = true,
		label	 = 'RECTLIGHT',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	ship: glow circle parts !!AFFECTS ship proc-gen PAINTED/PANELS!!
		disabled = true,
		label	 = 'CIRCLELIGHT',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	ship: headlights !!AFFECTS ship proc-gen PAINTED/PANELS!!
		disabled = true,
		label	 = 'HEADLIGHT',
		source	 = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/_Publish/',
		nmspath	 = 'TEXTURES/COMMON/SPACECRAFT/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				diff	= true
			}
		}
	},
	{--	sentinel square lights !! NOT WORKING
		disabled = true,
		label	 = 'LIGHTS',
		nmspath	 = 'TEXTURES/COMMON/ROBOTS/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'1'},
				diff	= true
			}
		}
	},
	{--	sentinel back lights   !! NOT WORKING
		disabled = true,
		label	 = 'LIGHTS',
		nmspath	 = 'TEXTURES/COMMON/ROBOTS/SHARED/',
		layers	 = {
			{
				name	= 'BASE',
				palette = 'Paint',
				color	= 'Primary',
				texture	= {'2'},
				diff	= true
			}
		}
	},
}

local function GetProcTextures(path, layer)
	local function TexPath(b, prts)
		if not b then return nil end
		local pth = ''
		for _,p in ipairs(prts) do
			if p and #p > 0 then
				pth = pth..p..'.'
			end
		end
		return pth..'DDS'
	end
	local T = {META = {'name', 'Textures'}}

	-- handles 3 options:
	-- * An array of names
	-- * An array of tables of the following - non-essential - properties:
	--   {n='name', pr=0.3, u=GU_.DNM,	pt='palette', ca='colouralt'} >> u=TextureGameplayUseEnum
	-- * None, in which case all default values apply
	for _,ptex in ipairs(layer.texture and layer.texture or {{n=''}}) do
		if type(ptex) == 'string' then ptex = {n=ptex} end
		T[#T+1] = {
			META	= {'value', 'TkProceduralTexture.xml'},
			Name				= ptex.n,
			Probability			= ptex.pr or 1,
			TextureGameplayUse	= ptex.u,
			Diffuse				= TexPath(layer.diff,   {path, layer.name, ptex.n}),
			Normal				= TexPath(layer.normal, {path, layer.name, 'NORMAL'}),
			Mask				= TexPath(layer.masks,  {path, layer.name, 'MASKS'}),
			Palette				= {
				META	= {'Palette', 'TkPaletteTexture.xml'},
				Palette		= ptex.pt or (layer.palette	or 'Rock'),
				ColourAlt	= ptex.ca or (layer.color	or 'None')
			}
		}
	end
	return T
end

local function BuildProcTexListMbin(proc_tex_list)
	-- Assign the exml table with its designated meta
	local T = { META = {'name', 'Layers'} }
	for _,ly in ipairs(proc_tex_list.layers) do
		T[#T+1] = {
			META	= {'value', 'TkProceduralTextureLayer.xml'},
			Name		= ly.name,
			Probability	= proc_tex_list.ly_prob	or 1,
			Group		= proc_tex_list.group,
			Textures	= GetProcTextures(proc_tex_list.nmspath..proc_tex_list.label, ly)
		}
	end
	-- complete to the fixed length (8) array
	for _=1, (8 - #proc_tex_list.layers) do
		T[#T+1] = {value = 'TkProceduralTextureLayer.xml'}
	end
	-- new mbin
	return FileWrapping(T, 'TkProceduralTextureList')
end

-- io.open('e:/_dump/15.TEXTURE.EXML', 'w'):write(BuildProcTexListMbin(proc_texture_files[15]))

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE build proc-gen layers.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= (
		function()
			local T = {}
			for _,ptf in ipairs(proc_texture_files) do
				if not ptf.disabled then
					T[#T+1] = {
						FILE_CONTENT		= BuildProcTexListMbin(ptf),
						FILE_DESTINATION	= ptf.nmspath..ptf.label..'.TEXTURE.EXML'
					}
					if ptf.source then
						T[#T+1] = {
							EXTERNAL_FILE_SOURCE= ptf.source..ptf.label..'*.DDS',
							FILE_DESTINATION	= ptf.nmspath..'*.DDS'
						}
					end
				end
			end
			return T
		end
	)()
}
