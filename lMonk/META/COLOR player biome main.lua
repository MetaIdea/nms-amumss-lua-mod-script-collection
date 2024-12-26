----------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------------
local mod_desc = [[
  true black for ships & customizing palettes
  procedural royal ship palette
  copy base snow palette to frozen palette
  * hex color is in ARGB format
]]--------------------------------------------------

local base_colors = {
	Undercoat = {-- colors enum
		num_colors	= 'All',
		transpose	= true,
		palette		= {
		--	GREY1		GREY2		GREY-GREEN	CYAN-GREEN	YELLOW3		BLUE2		BLUE1		GREY-BLUE
			'FFA2A2A5',	'FFC3C5C5',	'FF98A39F',	'FFADB6B0',	'FFA6A79A',	'FFBABEC5',	'FFA2A3AE',	'FF989DA3',
			'FF949497',	'FFB5B7B7',	'FF8D9994',	'FF9DA7A0',	'FF98998D',	'FFACB1B8',	'FF93949F',	'FF8D9299',
			'FF87878A',	'FFA7A9A9',	'FF828E8A',	'FF8E9891',	'FF8B8C80',	'FF9FA4AC',	'FF858690',	'FF82888E',
			'FF7A7A7D',	'FF999C9C',	'FF788480',	'FF7E8982',	'FF7E7F73',	'FF9198A0',	'FF777882',	'FF787D84',
			'FF6D6D70',	'FF8C8E8E',	'FF6D7A76',	'FF6F7A73',	'FF717266',	'FF848B94',	'FF696A73',	'FF6D737A',
			'FF606062',	'FF7E8181',	'FF62706B',	'FF606C63',	'FF636459',	'FF777E88',	'FF5A5C64',	'FF626970',
			'FF535355',	'FF7E8181',	'FF586661',	'FF505D54',	'FF56574C',	'FF69727C',	'FF4C4E56',	'FF585E66',
			'FF464648',	'FF636666',	'FF4D5C57',	'FF414E45',	'FF494A3F',	'FF5C6570',	'FF3E4047',	'FF4D545C'
		}
	},
	Paint = {
		num_colors	= 'All',
		palette		= {
			'FFD6D6D6',	'FFFFFFFF',	'FF555555',	'FFC7C7C7',	'FFFFFFFF',	'FF676767',	'EBEBEBFF',	000,
			000,		'FFB3B3B3',	'FF808080',	'FF4D4D4D',	'FF262626',	000,		'FF181818',	'FF060606',
			'FF490910',	'FF5A0B12',	'FF7F1521',	'FF991924',	'FF4D0008',	'FF63000B',	'FF7F0B11',	'FF991919',
			'FFAD421B',	'FFC1551F',	'FFD8732B',	'FFC16911',	'FFD37D1F',	'FFDAAE03',	'FFECD409',	'FFFFF319',
			'FFFFFA42',	'FFF7FF66',	'FFA5DD39',	'FF7CC731',	'FF4E952A',	'FF104C29',	'FF135B31',	'FF18713D',
			'FF1E8D47',	'FF22A251',	'FF176761',	'FF1F8A81',	'FF4DBAB1',	'FF15506E',	'FF1B688F',	'FF2691C6',
			'FF5EB8E5',	'FF89CBE5',	'FF083980',	'FF1746A0',	'FF1B5EB6',	'FF2C82D3',	'FF051766',	'FF0E227A',
			'FF103195',	'FF1740AC',	'FF310F4F',	'FF4A166C',	'FF804DB5',	'FFCF8DCE',	'FFC977B7',	'FF904683'
		}
	},
	SpaceBottom = {-- used for the royal ships
		num_colors	= 'All',
		palette		= {
			'FF4356FF',	'FFC67608',	'FFB2AB00',	'FF9ADB05',	'FFD3B916',	'FF03FFC7',	'FF848E9A',	'FF06B4FF',
			'FF16B9FF',	'FF08AAF6',	'FF961AFF',	'FF770348',	'FFAF0549',	'FF380202',	'FFAD5151',	'FFFF795C',
			'FFA0B483',	'FF3C8690',	'FF264669',	'FF6171FF',	'FFC444AA',	'FF0B9648',	'FF3E5D7F',	'FF771D60',
			'FF823737',	'FF2D0C0C',	'FF885B29',	'FF0E442D',	'FF0D1923',	'FF381F36',	'FFA51F02',	'FF0B808A',
			'FF480D67',	'FF637805',	'FF4199EA',	'FF6392FF',	'FF5F8E53',	'FF733233',	'FF2C4F8F',	'FFB5842D',
			'FF824965',	'FFA72727',	'FF5E397B',	'FF741142',	'FF106345',	'FF866B6B',	'FF81362F',	'FF0B0942',
			'FF74C9BA',	'FF3C90DE',	'FFAD86CF',	'FFE584C2',	'FFFFFFFF',	'FF4C4C4C',	'FF8C3737',	'FF8A5E47',
			'FFC09D70',	'FF3E7A57',	'FF3E6F70',	'FF3B4A67',	'FF5E4770',	'FF8F556C',	'FFAAAAAA',	000
		}
	},
	BioShip_Body = {
		unused		= true,
		num_colors	= '_16',
		palette		= {
			'FFFFFFFF',	'FFFFFFFF',	'FF737373',	'FF737373',	000,		000,		'FF1D120D',	'FF1D120D',
			'FFFFFFFF',	'FFFFFFFF',	'FF737373',	'FF737373',	000,		000,		'FF1D120D',	'FF1D120D',
			'FF630005',	'FF630005',	'FFAD421B',	'FFAD421B',	'FFC16911',	'FFC16911',	'FFDAAE03',	'FFDAAE03',
			'FF630005',	'FF630005',	'FFAD421B',	'FFAD421B',	'FFC16911',	'FFC16911',	'FFDAAE03',	'FFDAAE03',
			'FFF2E81B',	'FFF2E81B',	'FF6EB527',	'FF6EB527',	'FF094C25',	'FF094C25',	'FF139099',	'FF139099',
			'FFF2E81B',	'FFF2E81B',	'FF6EB527',	'FF6EB527',	'FF094C25',	'FF094C25',	'FF139099',	'FF139099',
			'FF2B76C1',	'FF2B76C1',	'FF0B2072',	'FF0B2072',	'FF3D0B5B',	'FF3D0B5B',	'FF7E3A72',	'FF7E3A72',
			'FF2B76C1',	'FF2B76C1',	'FF0B2072',	'FF0B2072',	'FF3D0B5B',	'FF3D0B5B',	'FF7E3A72',	'FF7E3A72'
		}
	},
	BioShip_Underbelly = {
		unused		= true,
		num_colors	= '_16',
		palette		= {
			'FFFFFFFF',	'F5FFF5F5',	'FFFFFFFF',	'F3FFEDF2',	'FFC0A58F',	'FFC0A58F',	'FFA7886E',	'FFA7886E',
			'FFFFFFFF',	'FFFFFFFF',	'FFFFFFFF',	'FFFFFFFF',	'FFC0A58F',	'FFC0A58F',	'FFA7886E',	'FFA7886E',
			'FFDA837D',	'FFDA837D',	'FFF6A980',	'FFF6A980',	'FFFECE8B',	'FFFECE8B',	'FFFFEC8F',	'FFFFEC8F',
			'FFDA837D',	'FFDA837D',	'FFF6A980',	'FFF6A980',	'FFFECE8B',	'FFFECE8B',	'FFFFEC8F',	'FFFFEC8F',
			'FFFFFF92',	'FFFFFF92',	'FFD7F699',	'FFD7F699',	'FFB7EFA4',	'FFB7EFA4',	'FFA5EDD5',	'FFA5EDD5',
			'FFFFFF92',	'FFFFFF92',	'FFD7F699',	'FFD7F699',	'FFB7EFA4',	'FFB7EFA4',	'FFA5EDD5',	'FFA5EDD5',
			'FFA7E2FB',	'FFA7E2FB',	'FF96B9FE',	'FF96B9FE',	'FFC2ADED',	'FFC2ADED',	'FFF4CEF8',	'FFF4CEF8',
			'FFA7E2FB',	'FFA7E2FB',	'FF96B9FE',	'FF96B9FE',	'FFC2ADED',	'FFC2ADED',	'FFF4CEF8',	'FFF4CEF8'
		}
	},
	SpaceStationLights = {
		num_colors	= 'All',
		palette		= {
			'FFCC8482', 'FFC4C4C4', 'FFA37C62', 'FFB6B6B6', 'FFC29266', 'FFDDDDDD', 'FFEFDFC9', 'FFD5D5D5',
			'FFD6A5A2', 'FFCE9895', 'FFBE9E88', 'FF86B6BE', 'FFC0A892', 'FFB8A18C', 'FFBDAF9C', 'FF7F9AC4',
			'FFF27FBE', 'FFD6D6D6', 'FFF3B2D1', 'FFAFAFAF', 'FF8E87CE', 'FFC2C2C2', 'FFA881F1', 'FFB3B3B3',
			'FFB6869D', 'FFAA8798', 'FFB692A3', 'FFB897A7', 'FFBBA7C9', 'FFB4A1C0', 'FF9688AF', 'FF84779B',
			'FF5C68CC', 'FFD4D4D4', 'FF87D17D', 'FFEBEBEB', 'FFBAF4F7', 'FFC7C7C7', 'FFD8F1F3', 'FFCCCCCC',
			'FF98A1B6', 'FFA0ABC5', 'FFA8B5C0', 'FFA7B1BB', 'FF97C6C9', 'FF92C1C4', 'FFB3C7C9', 'FFAFC5C7',
			'FF6DE0E7', 'FFD6D6D6', 'FF7CF0B7', 'FFC2C2C2', 'FF65B7BB', 'FF5874BD', 'FF865756', 'FFE2A277',
			'FF7FC7CC', 'FF7FC7CC', 'FF99C5B0', 'FF8DBBA5', 'FF887992', 'FF56ECC7', 'FFCAA17B', 'FFFF86C8'
		}
	}
}

local function RebuildPaletteColors(gc_data)
	local function asc2prc(as)
		for i=1, #as do
			as[i] = math.floor(as[i] / 255 * 1000) / 1000
		end
		return as
	end
	local function Convert2Rgb(color)
		if type(color) == 'table' and (color[1] > 1 or color[2] > 1 or color[3] > 1) then
			return asc2prc(color)
		end
		return color
	end
	local T = {}
	if gc_data.transpose then
		for i=1, 64, 8 do
			for j=0, 7 do
				T[#T+1] = ColorData(Convert2Rgb(gc_data.palette[i+j]))
			end
		end
	else
		for _,col in ipairs(gc_data.palette) do
			T[#T+1] = ColorData(Convert2Rgb(col))
		end
	end

	-- exml meta for the color palette array
	T.meta = {'name', 'Colours'}
	return ToExml(T)
end

-- base=true for BASECOLOURPALETTE
local function EditSingle(name, i, rgb, base)
	return {
		SPECIAL_KEY_WORDS	= base and {name, 'GcPaletteData.xml'} or {'ID', name},
		PRECEDING_KEY_WORDS = 'Colour.xml',
		SECTION_ACTIVE		= -i,
		VALUE_CHANGE_TABLE 	= Hex2VCT(rgb)
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__META player biome main.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.29',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {
					{
						SKW		= {},
						PKW		= 'Colours',
						REMOVE	= 'Section'
					},
					-- {
					-- -- pull snow palette for copying to frozen palette
						-- SPECIAL_KEY_WORDS	= {'Snow', 'GcPaletteData.xml'},
						-- SEC_SAVE_TO			= 'gc_palette_data',
					-- },
				}
				-- dimmer sailship gray sail
				for i=2, 58, 8 do
					T[#T+1] = EditSingle('SailShip_Sails', i, 0, true)
				end
				for palette, gc_data in pairs(base_colors) do
					if not gc_data.unused then
						T[1].SKW[#T[1].SKW + 1] = {palette, 'GcPaletteData.xml'}
						T[#T+1] = {
							PRECEDING_KEY_WORDS = palette,
							VALUE_CHANGE_TABLE 	= {
								{'NumColours',	gc_data.num_colors}
							}
						}
						T[#T+1] = {
							PRECEDING_KEY_WORDS = palette,
							ADD 				= RebuildPaletteColors(gc_data)
						}
					end
				end
				return T
			end
		)()
	},
	{
	--	|true black| in customizing palettes
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CUSTOMISATIONCOLOURPALETTES.MBIN',
		EXML_CHANGE_TABLE	= {
			EditSingle('PLAYER',		20, 0),
			EditSingle('FREIGHTER',		20, 0),
			EditSingle('VEHICLE',		20, 0),
			EditSingle('BIKE',			20, 0),
			EditSingle('TRUCK',			20, 0),
			EditSingle('WHEELEDBIKE',	20, 0),
			EditSingle('SUBMARINE',		20, 0),
			EditSingle('MECH',			20, 0),
			EditSingle('SHIP',			20, 0),
			EditSingle('SHIP_METALLIC',	20, 0),
		}
	},
	-- {
	-- --	replace frozen snow palette with base
		-- MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENCOLOURPALETTES.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Snow', 'GcPaletteData.xml'},
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Undercoat', 'GcPaletteData.xml'},
				-- ADD_OPTION			= 'AddAfterSection',
				-- SEC_ADD_NAMED		= 'gc_palette_data'
			-- },
		-- }
	-- }
}}}}
