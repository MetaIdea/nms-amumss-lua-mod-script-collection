-------------------------------------------------------------------------
local mod_desc = [[
  - Leaves tex overlay for all HQFORNDs
  - removes orange and purple overlays - painted sentinels only
  - customization robot head lights alt3 instead of alt2 color
]]-----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEXTURE various.pak',
	MOD_AUTHOR			= 'lMonk',
	MOD_BATCHNAME		= '_TEXTURES ~@~collection.pak',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|painted sentinels| only (removes orange and purple)
		MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/ROBOTS/SENTINELPROC.TEXTURE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OVERLAY', 'Name', '1'},
				VALUE_CHANGE_TABLE 	= {
					{'Diffuse',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.2.DDS'},
					{'Normal',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.2.NORMAL.DDS'},
					{'Mask',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.2.MASKS.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OVERLAY', 'Name', '4'},
				VALUE_CHANGE_TABLE 	= {
					{'Diffuse',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.3.DDS'},
					{'Normal',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.3.NORMAL.DDS'},
					{'Mask',	'TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.3.MASKS.DDS'}
				}
			}
		}
	},
	{--	|construct head lights3| alt3 instead of alt2 color
		MBIN_FILE_SOURCE	= 'TEXTURES/COMMON/ROBOTS/BUILDERLIGHTS.TEXTURE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'ColourAlt', 'Alternative3'}
				}
			}
		}
	}
	-- {--	overlay for all HQFORNDs
		-- MBIN_FILE_SOURCE	= {'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/FRONDS/FROND.TEXTURE.MBIN'},
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'OVERLAY'},
				-- SEC_COPY			= 'proc_texture_layer'
			-- },
			-- {
				-- SEC_EDIT			= 'proc_texture_layer',
				-- INTEGER_TO_FLOAT	= 'FORCE',
				-- VALUE_CHANGE_TABLE	= {
					-- {'Probability',	0.6}
				-- }
			-- }
		-- }
	-- },
	-- {--	overlay for all HQFORNDs
		-- MBIN_FILE_SOURCE 	= {
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND1.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND3.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND4.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND5.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND6.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND7.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND8.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND9.TEXTURE.MBIN',
			-- 'TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/HQLEAVES/HQFROND10.TEXTURE.MBIN',
		-- },
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- PRECEDING_KEY_WORDS	= 'TkProceduralTextureLayer.xml',
				-- SECTION_ACTIVE		= 'LAST',
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'Layers',
				-- SEC_ADD_NAMED		= 'proc_texture_layer'
			-- }
		-- }
	-- },
}}}}
