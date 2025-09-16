dofile([[OBE_methods.lua]])

MBIN_CHANGE_TABLE = {}
for _, biomepath in ipairs(getBiomeList()) do
	for _, sectionname in ipairs(getObjectsSectionNames(biomepath)) do
		sortedlist = getObjectsFileList(biomepath,sectionname)
		table.sort(sortedlist)
		--Remove the existing list
		table.insert(MBIN_CHANGE_TABLE,{
			["MBIN_FILE_SOURCE"] = {biomepath},
			["EXML_CHANGE_TABLE"] = {
				{
					["SPECIAL_KEY_WORDS"] = {"Name",sectionname,"Value", "IGNORE"},
					["REPLACE_TYPE"] = "ALL",
					["REMOVE"] = "SECTION",
				}
			}
		})
		--Add the sorted list
		for _, objectsfile in ipairs(sortedlist) do
			table.insert(MBIN_CHANGE_TABLE,{
				["MBIN_FILE_SOURCE"] = {biomepath},
				["EXML_CHANGE_TABLE"] = {
					{
						["SPECIAL_KEY_WORDS"] = {"Name", sectionname},
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

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MOD_DESCRIPTION"] = "Alphabetizes object lists to avoid unnecessary reshuffling.",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}