---------------------------------------------------------------------
local desc = [[
  rebuild procedual texture layers for ship and space station decals
]]-------------------------------------------------------------------

local Decals = {
	logo = {
		group  = 'DECALLOGO',
		path   = 'TEXTURES/COMMON/DECALS/LOGO/LOGO',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				normal	= true,
				mask	= true
			},
			BASE = {
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= {{'L', 15}}
			}
		}
	},
	recatangle = {
		group  = 'DECALRECTANGLE',
		path   = 'TEXTURES/COMMON/DECALS/RECTANGLE/RECTANGLE',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				normal	= true,
				mask	= true
			},
			BASE = {
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= {{'R', 15}}
			}
		}
	},
	smallsign = {
		group  = 'DECALSMALLSIGN',
		path   = 'TEXTURES/COMMON/DECALS/SMALLSIGN/SMALLSIGN',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				normal	= true,
				mask	= true
			},
			BASE = {
				palette = 'Paint',
				color	= 'Alternative3',
				diff	= {{'S', 6}}
			}
		}
	},
	number = {
		group  = 'DECALNUMBER',
		path   = 'TEXTURES/COMMON/DECALS/NUMBER/NUMBER',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				normal	= true,
				mask	= true
			},
			BASE = {
				palette = 'Paint',
				color	= 'Alternative1',
				diff	= {{'A', 9}, {'B', 9}, {'C', 9}},
				asc		= 1
			}
		}
	},
	lettering = {
		group  = 'DECALLET',
		path   = 'TEXTURES/COMMON/DECALS/LETTERING/LETTERING',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				normal	= true,
				mask	= true
			},
			BASE = {
				palette = 'Paint',
				color	= 'Alternative2',
				diff	= {{'LT', 9}}
			}
		}
	},
	spaceletter = {
		group  = 'DECALLETTER',
		path   = 'TEXTURES/SPACE/SPACESTATION/DECALS/LETTERING',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				mask	= true
			},
			BASE = {
				palette = 'Rock',
				color	= 'None',
				diff	= {{'LETTER', 7}}
			}
		}
	},
	spacenumber = {
		group  = 'DECALNUMBER',
		path   = 'TEXTURES/SPACE/SPACESTATION/DECALS/NUMBER',
		layer = {
			OVERLAY = {
				palette = 'Rock',
				color	= 'Primary',
				mask	= true
			},
			BASE = {
				palette = 'Rock',
				color	= 'None',
				diff	= {{'C', 9}},
				asc		= 1
			}
		}
	},
}

local function GetProceduralTexture(path, layer, dif)
	local function diff_path(full)
		if layer.diff then
			if full then
				return path..'.BASE.'..dif..'.DDS'
			else
				return dif
			end
		else
			return ''
		end
	end
	local function norm_path()
		if layer.normal then
			return path..'.OVERLAY.NORMAL.DDS'
		else
			return ''
		end
	end
	local function mask_path()
		if layer.mask then
			return path..'.OVERLAY.MASKS.DDS'
		else
			return ''
		end
	end
	return [[
		<Property value="TkProceduralTexture.xml">
			<Property name="Name" value="]]..diff_path(false)..[["/>
			<Property name="Palette" value="TkPaletteTexture.xml">
				<Property name="Palette" value="]]..layer.palette..[["/>
				<Property name="ColourAlt" value="]]..layer.color..[["/>
			</Property>
			<Property name="Probability" value="1"/>
			<Property name="TextureGameplayUse" value="IgnoreName"/>
			<Property name="OverrideAverageColour" value="False"/>
			<Property name="AverageColour" value="Colour.xml">
				<Property name="R" value="0"/>
				<Property name="G" value="0"/>
				<Property name="B" value="0"/>
				<Property name="A" value="0"/>
			</Property>
			<Property name="Diffuse" value="]]..diff_path(true)..[["/>
			<Property name="Normal" value="]]..norm_path()..[["/>
			<Property name="Mask" value="]]..mask_path()..[["/>
		</Property>
	]]
end

local function GetProceduralTextureLayer(name, group, textures)
	if textures then
		textures = '<Property name="Textures">'..textures..'</Property>'
	else
		textures = '<Property name="Textures" />'
	end
	return [[
		<Property value="TkProceduralTextureLayer.xml">
			<Property name="Name" value="]]..(name or '')..[["/>
			<Property name="Probability" value="1"/>
			<Property name="Group" value="]]..(group or '')..[["/>
			<Property name="SelectToMatchBase" value="False"/>
			]]..textures..[[
		</Property>
	]]
end

local function BuildProcTextureLayers(decal)
	local function getBase(base, idx)
		local exml = {}
		for i=base.diff[idx][2], 1, -1 do
			table.insert(exml, GetProceduralTexture(decal.path, base, base.diff[idx][1]..i))
		end
		return table.concat(exml)
	end
	local exml = {
		GetProceduralTextureLayer(
			'OVERLAY',
			decal.group,
			GetProceduralTexture(decal.path, decal.layer.OVERLAY, nil)
		)
	}
	local procbase = {}
	for i=1, #decal.layer.BASE.diff do
		table.insert(procbase, getBase(decal.layer.BASE, i))
	end
	table.insert(exml,
		GetProceduralTextureLayer(
			'BASE',
			decal.group,
			table.concat(procbase)
		)
	)
	-- silly fixed length array
	for _=1, 6 do table.insert(exml, GetProceduralTextureLayer()) end
	return [[<?xml version="1.0" encoding="utf-8"?>
		<Data template="TkProceduralTextureList">
		<Property name="Layers">]]..table.concat(exml)..[[</Property></Data>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE rebuild proc decals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS		= {},
	ADD_FILES			= {
		{
			FILE_DESTINATION = Decals.logo.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.logo)
		},
		{
			FILE_DESTINATION = Decals.recatangle.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.recatangle)
		},
		{
			FILE_DESTINATION = Decals.smallsign.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.smallsign)
		},
		{
			FILE_DESTINATION = Decals.lettering.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.lettering)
		},
		{
			FILE_DESTINATION = Decals.number.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.number)
		},
		{
			FILE_DESTINATION = Decals.spaceletter.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.spaceletter)
		},
		{
			FILE_DESTINATION = Decals.spacenumber.path..'.TEXTURE.EXML',
			FILE_CONTENT	 = BuildProcTextureLayers(Decals.spacenumber)
		}
	}
}
