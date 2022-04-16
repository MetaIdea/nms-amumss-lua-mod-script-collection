Author = "Gumsk"
ModName = "Voxel"
ModNameSub = "Test"
BaseDescription = "test"
GameVersion = "313"
ModVersion = "a"
FileSource1 = "GCDEBUGOPTIONS.GLOBAL.MBIN"
FileSource2 = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN"

TerrainType = "MountainRavinesPrime"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
	["MBIN_FILE_SOURCE"] = FileSource1,
	["EXML_CHANGE_TABLE"] = {
		{
			["VALUE_CHANGE_TABLE"] = {
				{"ForceTerrainType","True"},
				{"TerrainSettings",TerrainType},
				{"ForcePrimeTerrain","True"},
		}},
	}
},
-- {
	-- ["MBIN_FILE_SOURCE"] = FileSource2,
	-- ["EXML_CHANGE_TABLE"] = {
		-- {
			-- ["PRECEDING_KEY_WORDS"] = {TerrainType,"Min","Elevation"},
			-- ["VALUE_CHANGE_TABLE"] = {
				-- {"Height","400"},
				-- {"Width","1600"},
		-- }},
		-- {
			-- ["PRECEDING_KEY_WORDS"] = {TerrainType,"Max","Elevation"},
			-- ["VALUE_CHANGE_TABLE"] = {
				-- {"Height","400"},
				-- {"Width","1600"},
		-- }},
		-- -- {
			-- -- ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime","Max"},
			-- -- ["VALUE_CHANGE_TABLE"] = {
				-- -- {"SeaLevel","300"},
		-- -- }},
	-- }
-- },




}},}}