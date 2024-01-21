dofile([[OBE_methods.lua]])

SECTIONS_TO_RESTRUCTURE = {
"MAIN",
"UNDERWATER",
"UNDERGROUND",
}

MBIN_CHANGE_TABLE = {}

biomelist = getBiomeList()
table.insert(biomelist,"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN")
for _, biomepath in ipairs(biomelist) do
	for _, sectionname in ipairs(SECTIONS_TO_RESTRUCTURE) do
		for _, objectsfilepath in ipairs(getObjectsFileList(biomepath,sectionname)) do
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {objectsfilepath},
				["EXML_CHANGE_TABLE"] = {
					{
						["MATH_OPERATION"] = "*",
						["VALUE_CHANGE_TABLE"] = {
							{"MinScale",1}--To prevent warning
						},
					}
				}
			})
		end
	end
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