------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/exml_2_lua.lua')
------------------------------
local mod_desc = [[
  ALL random color palettes
]]----------------------------

local ADF = {}
for _,src in ipairs({
	'METADATA/SIMULATION/SOLARSYSTEM/COLOURS/BASECOLOURPALETTES.MBIN',							--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCOLOURPALETTES.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQCOLOURPALETTES.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADCOLOURPALETTES.MBIN',						--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENCOLOURPALETTES.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQCOLOURPALETTES.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVACOLOURPALETTES.MBIN',						--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLESCOLOURPALETTE.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHCOLOURPALETTES.MBIN',						--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQCOLOURPALETTE.MBIN',						--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMACOLOURPALETTE.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBCOLOURPALETTE.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHULTRACOLOURPALETTES.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCOLOURPALETTES.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPCOLOURPALETTES.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICCOLOURPALETTES.MBIN',					--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSCOLOURPALETTES.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESCOLOURPALETTES.MBIN',				--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESCOLOURPALETTES.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSCOLOURPALETTES.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIRECOLOURPALETTES.MBIN',		--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOURCOLOURPALETTES.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLECOLOURPALETTES.MBIN',		--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBECOLOURPALETTES.MBIN',	--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONCOLOURPALETTES.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HOUDINIPROPS/HOUDINIPROPSCOLOURPALETTES.MBIN',--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENCOLOURPALETTES.MBIN',	--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSCOLOURPALETTES.MBIN',	--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTCOLOURPALETTES.MBIN',		--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSCOLOURPALETTES.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSCOLOURPALETTES.MBIN',		--<<preload_source_discard
}) do
	local palettes_file	= LoadRuntimeMbin(src)
	for _,pal in ipairs(palettes_file.template.Palettes) do
		for i=1, 64 do
			pal.Colours[i] = ColorData({1, math.random(), math.random(), math.random()})
		end
	end
	ADF[#ADF+1] = {
		FILE_CONTENT	 = FileWrapping(palettes_file),
		FILE_DESTINATION = src:gsub('.MBIN$', '.EXML')
	}
end

for _,src in ipairs({
	'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN',		--<<preload_source_discard
}) do
	local palettes_file	= LoadRuntimeMbin(src)
	for _,sky in ipairs(palettes_file.template.Settings) do
		for color_name,_ in pairs(sky) do
			if color_name ~= 'META' then
				sky[color_name] = ColorData({1, math.random(), math.random(), math.random()}, color_name)
			end
		end
	end
	ADF[#ADF+1] = {
		FILE_CONTENT	 = FileWrapping(palettes_file),
		FILE_DESTINATION = src:gsub('.MBIN$', '.EXML')
	}
end

for _,src in ipairs({
	'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/DAYSKYCOLOURS.MBIN',			--<<preload_source_discard
	'METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/NIGHTSKYCOLOURS.MBIN',			--<<preload_source_discard
}) do
	local palettes_file	= LoadRuntimeMbin(src)
	for _,section in ipairs({
		palettes_file.template.GenericSettings,
		palettes_file.template.PerBiomeSettings[13],
		palettes_file.template.PerBiomeSettings[14]
	}) do
		for _,weather in ipairs(section.Settings) do
			for color_name,_ in pairs(weather) do
				if color_name ~= 'META' and color_name ~= 'SkyGradientSpeed' then
					weather[color_name] = ColorData({1, math.random(), math.random(), math.random()}, color_name)
				end
			end
		end
	end
	ADF[#ADF+1] = {
		FILE_CONTENT	 = FileWrapping(palettes_file),
		FILE_DESTINATION = src:gsub('.MBIN$', '.EXML')
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___ALL random palettes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES			= ADF
}
