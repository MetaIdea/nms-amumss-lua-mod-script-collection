dofile([[OBE_methods.lua]])

SOURCE_BIOME = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MBIN"
ADD_TO = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MBIN"
NEW_MODEL_DIR = [[CUSTOMMODELS/CODENAMEAWESOME/PLANETS/BIOMES/UNFROZEN/]]

MBIN_CHANGE_TABLE = {}

SECTIONS = {"MAIN_LMK","MAIN_OBJ"}
for _, section_name in ipairs(SECTIONS) do
	objects_files = getObjectsFileList(SOURCE_BIOME,section_name)
	for _, objects_file in ipairs(objects_files) do
		new_objects_file = objects_file:gsub([[/BIOMES/FROZEN/]],[[/BIOMES/LUSH/]]):gsub([[FROZEN]],[[ALPINE]])
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {{objects_file,new_objects_file}}
		})
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {new_objects_file},
			["EXML_CHANGE_TABLE"] = {
				{
					["REPLACE_TYPE"] = "RAW",
					["VALUE_CHANGE_TABLE"] = {
						{[[MODELS/PLANETS/BIOMES/FROZEN/]],NEW_MODEL_DIR}
					}
				}
			}
		})
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {ADD_TO},
			["EXML_CHANGE_TABLE"] = {
				{
					["SPECIAL_KEY_WORDS"] = {"Name",section_name},
					["PRECEDING_KEY_WORDS"] = {"Options"},
				["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]]..new_objects_file..[[" />
        </Property>]]
				}
			}
		})
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =  MBIN_CHANGE_TABLE
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE