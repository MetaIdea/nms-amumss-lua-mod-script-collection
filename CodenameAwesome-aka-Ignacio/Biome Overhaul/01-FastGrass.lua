dofile([[OBE_methods.lua]])

MBIN_CHANGE_TABLE = {
	{
		["MBIN_FILE_SOURCE"] = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"ObjectSpawnDetailRadius",1}
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MBIN"},
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"Value", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/DETAILOBJECTS/LUSHOBJECTSDEAD.MBIN"},
				["REMOVE"] = "SECTION",
			}
		}
	}
}

grassmodels = {
	"MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN",
	"MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN",
}

function grass_exml_changes(grass_model_path)
	stretch_amount = 1.5
	exml_changes = {
		{--Slope grass
			["SPECIAL_KEY_WORDS"] = {"Filename",grass_model_path},
			["SECTION_UP"] = 1,
			["INTEGER_TO_FLOAT"] = "FORCE",
			["REPLACE_TYPE"] = "ALL",
			["MATH_OPERATION"] = "*FB:FlatDensity",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"SlopeDensity",	1.1},
			}
		},
		{--Stretch Optimizations
			["REPLACE_TYPE"] = "ALL",
			["SPECIAL_KEY_WORDS"] = {"Filename",grass_model_path},
			["INTEGER_TO_FLOAT"] = "FORCE",
			["MATH_OPERATION"] = "*",
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
				{"MinScale", stretch_amount},
				{"MaxScale", stretch_amount},
				{"MinScaleY", 1/stretch_amount},
				{"MaxScaleY", 1/stretch_amount},
				{"FlatDensity", 1/stretch_amount},
				{"SlopeDensity", 1/stretch_amount},
			}
		},
		{
			["SPECIAL_KEY_WORDS"] = {"Filename",grass_model_path},
			["REPLACE_TYPE"] = "RAW",
			["SECTION_UP"] = 1,
			["VALUE_CHANGE_TABLE"] = {
				{[[<Property name="ExtraTileTypes" />]],[[<Property name="ExtraTileTypes">
         <Property value="GcTerrainTileType.xml">
            <Property name="TileType" value="Mountain" />
          </Property>
        </Property>]]}
			}
		},
	}
	return exml_changes
end

DONE_FILES = {}--To avoid making changes multiple times

for _, biomepath in ipairs(getBiomeList()) do
	for _, objectsfile in pairs(getObjectsFileList(biomepath,"MAIN_DTL")) do
		if DONE_FILES[objectsfile] == nil then
			objectsfile_raw = io.open("../MODBUILDER/MOD/"..(objectsfile:gsub(".MBIN",".EXML"))):read("*a")
			for _, modelname in ipairs(grassmodels) do
				if string.find(objectsfile_raw,modelname) then
					table.insert(MBIN_CHANGE_TABLE,{
						["MBIN_FILE_SOURCE"] = objectsfile,
						["EXML_CHANGE_TABLE"] = grass_exml_changes(modelname)
					})
				end
			end
		end
		DONE_FILES[objectsfile] = true
	end
end


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "FarGrass.pak",
  ["MOD_DESCRIPTION"]		= "Optimizes and doubles grass render distance",
  ["MOD_AUTHOR"]				= "",
  ["NMS_VERSION"]				= "4.45",
  ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}