local MBIN_CHANGE_TABLE = {
	{["EXT_FUNC"] = {"decompileFrozenTextureMBINs"}},
	{["EXT_FUNC"] = {"createUnFrozenTextures"}},
}

local the_data
local CT_offset

function initAMUMSSFunction(TheDATA)
	CT_offset = 0
	the_data = TheDATA
end

function queueChangeTable(new_CT)
	CT_offset = CT_offset + 1
	local MBIN_CT_offset = the_data["MBIN_CT_Index"]
	table.insert(the_data["MBIN_CT"], MBIN_CT_offset + CT_offset, new_CT)
end

function getRawFile(file_path)
    local exml_table = the_data["ModdedEXMLs"][NormalizePath(file_path, true)]
    if exml_table == nil then
        print("Error: exml_table is nil for file_path " .. file_path)
        return nil
    end
    return table.concat(exml_table, "\n")
end

local frozen_texture_mbins = {
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/BARKSNOWDECAL.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/FROSTLEAF.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/HANGINGICICLES.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/ICEROCK.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/ICETILING.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/PINELEAF.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/ROCKTILING.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SMOOTHROCKTILING.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWBILLLEAF.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWFROND.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWJOINTCOREGLOW.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWTILING.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWTREEBASE2.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/TILINGROCKA.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/LARGEPROPS/TREEBASE.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/FROZENLEAF_1.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMROCK_1.TEXTURE.MBIN",
"TEXTURES/PLANETS/BIOMES/FROZEN/SMALLPROPS/ICEFORMATION.TEXTURE.MBIN",
}

decompileFrozenTextureMBINs= nil
function decompileFrozenTextureMBINs(TheDATA)
	initAMUMSSFunction(TheDATA)
	
	local new_CT = {
		["MBIN_FILE_SOURCE"] = frozen_texture_mbins
	}
	queueChangeTable(new_CT)
	
	return {true}
end

createUnFrozenTextures = nil
function createUnFrozenTextures(TheDATA)
	initAMUMSSFunction(TheDATA)
	
	for _, texture_mbin in ipairs(frozen_texture_mbins) do
		local raw = getRawFile(texture_mbin)
		
		local has_snow_layer = false
		if string.find(raw, '"Name" value="SNOW"') then
			has_snow_layer = true
		end
		
		if has_snow_layer then
			local new_texture_mbin = texture_mbin:gsub('/FROZEN/','/UNFROZEN/')
			
			--create new MBIN
			local new_CT = {
				["MBIN_FILE_SOURCE"] = {{texture_mbin, new_texture_mbin}}
			}
			queueChangeTable(new_CT)
			
			--Remove the snow
			local new_CT = {
				["MBIN_FILE_SOURCE"] = new_texture_mbin,
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name", "SNOW"},
						["VALUE_CHANGE_TABLE"] = {
							{"Probability", 0}
						}
					}
				}
			}
			queueChangeTable(new_CT)
			
			--[[
			--This is where I would like to be able to use ADD_FILES. I want to create DDS files for each texture MBIN created.
			local old_dds = texture_mbin:gsub('.TEXTURE.MBIN','.DDS')
			local new_dds = new_texture_mbin:gsub('.TEXTURE.MBIN','.DDS')
			
			--Adding this to ADD_FILES:
			{
				["INTERNAL_FILE_SOURCE"] = old_dds,
				["FILE_DESTINATION"] = new_dds
			}
			]]
		end
	end
	
	return {true}
end

NMS_MOD_DEFINITION_CONTAINER =
{
	{
		["MOD_FILENAME"]	= 'FrozenTexturesTest.pak',
		["MOD_BATCHNAME"]	= 'FrozenTexturesTest.pak',
		["MOD_AUTHOR"]		= 'CodenameAwesome',
		["MOD_DESCRIPTION"]	= "",
		["MODIFICATIONS"]	= {
			{
				["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
			},
		},
	},
}