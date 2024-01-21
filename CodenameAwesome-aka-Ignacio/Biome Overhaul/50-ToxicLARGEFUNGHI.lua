dofile([[OBE_methods.lua]])

PREFIX = "FNG"
MODEL_TO_REPLACE = "MODELS/PLANETS/BIOMES/TOXIC/MEDIUM/MEDIUMPLANT.SCENE.MBIN"
NEW_MODEL = "MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN"
SCALE_MULTIPLIER = 0.25

MBIN_CHANGE_TABLE = {}

DONE_FILES = {} --files that have already been checked, to avoid duplicates
for _, biomepath in ipairs(getBiomeList()) do
	for _, objectsfile in ipairs(getObjectsFileList(biomepath,"MAIN_OBJ")) do
		newobjectsfile = objectsfile:gsub("(.*)/", "%1/"..PREFIX)
		objectsfile_raw = io.open("../MODBUILDER/MOD/"..(objectsfile:gsub(".MBIN",".EXML"))):read("*a")
		if string.find(objectsfile_raw,MODEL_TO_REPLACE) then
			if DONE_FILES[objectsfile] == nil then
				table.insert(MBIN_CHANGE_TABLE,{
					["MBIN_FILE_SOURCE"] = {{objectsfile,newobjectsfile}},
				})
				
				if SCALE_MULTIPLIER ~= 1 then
					table.insert(MBIN_CHANGE_TABLE,{
						["MBIN_FILE_SOURCE"] = {newobjectsfile},
						["EXML_CHANGE_TABLE"] = {
							{
								["SPECIAL_KEY_WORDS"] = {"Filename",MODEL_TO_REPLACE},
								["SECTION_UP"] = 1,
								["MATH_OPERATION"] = "*",
								["INTEGER_TO_FLOAT"] = "FORCE",
								["REPLACE_TYPE"] = "ALL",
								["VALUE_CHANGE_TABLE"] = {
									{"MinScale",SCALE_MULTIPLIER},
									{"MaxScale",SCALE_MULTIPLIER},
								}
							},
						}
					})
				end
				
				table.insert(MBIN_CHANGE_TABLE,{
					["MBIN_FILE_SOURCE"] = {newobjectsfile},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename",MODEL_TO_REPLACE},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Filename",NEW_MODEL},
							}
						},
					}
				})
			end
			
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {biomepath},
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name","MAIN_LMK"},
						["PRECEDING_KEY_WORDS"] = {"Options"},
					["ADD"] = [[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]]..newobjectsfile..[[" />
        </Property>]]
					}
				}
			})
		end
		DONE_FILES[objectsfile] = true
		
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
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}