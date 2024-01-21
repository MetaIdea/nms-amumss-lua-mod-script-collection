dofile([[OBE_methods.lua]])

TEST_BIOME = nil

SECTIONS_TO_RESTRUCTURE = {
"MAIN",
"UNDERWATER",
"UNDERGROUND",
}

LAYERS = {
	["DistantObjects"] = "_DST",
	["Landmarks"] = "_LMK",
	["Objects"] = "_OBJ",
	["DetailObjects"] = "_DTL",
}

MBIN_CHANGE_TABLE = {
	{
		["MBIN_FILE_SOURCE"] = {
			{"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NULL.MBIN"}
		},
	},
	{
		["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NULL.MBIN"},
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
				["REPLACE_TYPE"] = "ALL",
				["REMOVE"] = "SECTION"
			}
		}
	},
}

NEW_BIOME_STRUCTURE = {}
DONE_FILES = {} -- files that have already been created
biomelist = getBiomeList()
table.insert(biomelist,"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN")
for _, biomepath in ipairs(biomelist) do
	NEW_BIOME_STRUCTURE[biomepath] = {}
	for _, sectionname in ipairs(SECTIONS_TO_RESTRUCTURE) do
		sectiontiletype = getSectionTileType(biomepath,sectionname)
		if biomeHasSection(biomepath,sectionname) then
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {biomepath},
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name",sectionname},
						["REMOVE"] = "SECTION",
					}
				}
			})
			
			for layer, layersuffix in pairs(LAYERS) do
				newsectionname = sectionname..layersuffix
				NEW_BIOME_STRUCTURE[biomepath][newsectionname] = {
					["TILETYPE"] = sectiontiletype,
					["OPTIONS"] = {},
				}
				for _, objectsfile in ipairs(getObjectsFileList(biomepath,sectionname)) do
					if objectsFileHasLayer(objectsfile,layer) then
						newobjectsfile = objectsfile:gsub("(.*)/", "%1/"..string.upper(layer).."/")
						table.insert(NEW_BIOME_STRUCTURE[biomepath][newsectionname]["OPTIONS"],newobjectsfile)
						
						if not DONE_FILES[newobjectsfile] then
							table.insert(MBIN_CHANGE_TABLE,{
								["MBIN_FILE_SOURCE"] = {{objectsfile,newobjectsfile}},
							})
							
							for otherlayer, _ in pairs(LAYERS) do
								if layer ~= otherlayer and objectsFileHasLayer(objectsfile,otherlayer) then
									table.insert(MBIN_CHANGE_TABLE,{
										["MBIN_FILE_SOURCE"] = {newobjectsfile},
										["EXML_CHANGE_TABLE"] = {
											{
												["PRECEDING_KEY_WORDS"] = {"Objects",otherlayer},
												["REPLACE_TYPE"] = "ADDAFTERSECTION",
												["ADD"] = [[    <Property name="]]..otherlayer..[[" />]],
											}
										},
									})
									table.insert(MBIN_CHANGE_TABLE,{
										["MBIN_FILE_SOURCE"] = {newobjectsfile},
										["EXML_CHANGE_TABLE"] = {
											{
												["PRECEDING_KEY_WORDS"] = {"Objects",otherlayer},
												["REMOVE"] = "SECTION",
											}
										},
									})
								end
							end
							DONE_FILES[newobjectsfile] = true
						end
					end
				end
			end
		end		
	end
end

--Restructure
for biomepath, _ in pairs(NEW_BIOME_STRUCTURE) do
	
	sectionnames = {}
	for sectionname, _ in pairs(NEW_BIOME_STRUCTURE[biomepath]) do
		table.insert(sectionnames,sectionname)
	end
	table.sort(sectionnames)--This is done so that the sections are always added in the same order every time.
	
	for _, sectionname in ipairs(sectionnames) do
		where_to_add = "ExternalObjectLists"
		if biomepath == "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN" then
			where_to_add = "CommonExternalObjectLists"
		end		
		
		probability = 1
		if #NEW_BIOME_STRUCTURE[biomepath][sectionname]["OPTIONS"] == 0 then
			table.insert(NEW_BIOME_STRUCTURE[biomepath][sectionname]["OPTIONS"],"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NULL.MBIN")
			probability = 0.1
		end
		
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {biomepath},
			["EXML_CHANGE_TABLE"] = {
				{
					["PRECEDING_KEY_WORDS"] = {where_to_add},
					["ADD"] = [[    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="]]..sectionname..[[" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="]]..probability..[[" />
      <Property name="SeasonalProbabilityOverride" value="]]..probability..[[" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="]]..NEW_BIOME_STRUCTURE[biomepath][sectionname]["TILETYPE"]..[[" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
      </Property>
    </Property>]]
				}
			}
		})
		
		for _, objectsfile in ipairs(NEW_BIOME_STRUCTURE[biomepath][sectionname]["OPTIONS"]) do
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {biomepath},
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name",sectionname},
						["PRECEDING_KEY_WORDS"] = {"Options"},
						["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]]..objectsfile..[[" />
        </Property>]]
					}
				}
			})
		end
	end
end

if TEST_BIOME ~= nil then
	table.insert(MBIN_CHANGE_TABLE,{
		["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
		["EXML_CHANGE_TABLE"] = {
			{
				["REPLACE_TYPE"] = "ALL",
				["PRECEDING_KEY_WORDS"] = {"BiomeFiles"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",TEST_BIOME},
				}
			}
		}
	})
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}