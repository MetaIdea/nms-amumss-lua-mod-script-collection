function getBiomeList() --Returns all the GcBiomeFileListOption filenames in BIOMEFILENAMES.MBIN
	biomelist_raw = io.open("../MODBUILDER/MOD/METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.EXML"):read("*a")
	biomelist = {}
	for biomepath in string.gmatch(biomelist_raw,'<Property value="GcBiomeFileListOption%.xml">.-<Property name="Filename" value="(.-)"') do
		biomepathstring = biomepath:gsub(".MXML",".MBIN")
		table.insert(biomelist, biomepathstring)
	end
	biomelist_deduped = {}
	seen = {}
	for _, biomepath in ipairs(biomelist) do
		if seen[biomepath] == nil then
			table.insert(biomelist_deduped, biomepath)
			seen[biomepath] = true
		end
	end
	return biomelist_deduped
end

function getObjectsSectionNames(biomepath)
	biomefile_raw = io.open("../MODBUILDER/MOD/"..(biomepath:gsub(".MBIN",".EXML"))):read("*a")
	sectionnames = {}
	for sectionname in string.gmatch(biomefile_raw,'<Property value="GcExternalObjectListOptions%.xml">.-<Property name="Name" value="(.-)"') do
		table.insert(sectionnames,sectionname)
	end
	return sectionnames
end

function getObjectsFileList(biomepath,sectionname) --Returns the list of values from the specified objects section of a biome file.
	biomefile_raw = io.open("../MODBUILDER/MOD/"..(biomepath:gsub(".MBIN",".EXML"))):read("*a")
	options_raw = string.match(biomefile_raw,'<Property value="GcExternalObjectListOptions%.xml">.-<Property name="Name" value="'..sectionname..'" />.-<Property name="Options">(.-)<Property value="Gc')--Very dicey way of doing this. Will be improved when AMUMSS supports saving sections better.
	objectsfilepaths = {}
	if options_raw ~= nil then
		for objectsfilepath in string.gmatch(options_raw,'<Property name="Value" value="(.-)"') do
			table.insert(objectsfilepaths,objectsfilepath)
		end
	end
	return objectsfilepaths
end

function has_value (tab, val)
    for _, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

MBIN_CHANGE_TABLE = {}

sharedfiles = {}
for _, biomepath in ipairs(getBiomeList()) do
	nonhqbiome = string.gsub(biomepath,"HQ","")
	sharedfiles[biomepath] = {}
	if string.find(biomepath,"HQ") and has_value(getBiomeList(), nonhqbiome) then
		for _, biometocopy in ipairs({biomepath,nonhqbiome}) do
			for _, sectionname in ipairs(getObjectsSectionNames(biometocopy)) do
				if sharedfiles[biomepath][sectionname] == nil then
					sharedfiles[biomepath][sectionname] = {}
				end
				
				for _, objectsfile in pairs(getObjectsFileList(biometocopy,sectionname)) do
					sharedfiles[biomepath][sectionname][objectsfile] = true
				end
			end
		end
	end
end

for _, biomepath in ipairs(getBiomeList()) do
	nonhqbiome = string.gsub(biomepath,"HQ","")
	if string.find(biomepath,"HQ") and has_value(getBiomeList(), nonhqbiome) then
		for _, biometocopy in ipairs({biomepath,nonhqbiome}) do
			for _, sectionname in ipairs(getObjectsSectionNames(biometocopy)) do
				table.insert(MBIN_CHANGE_TABLE,{
					["MBIN_FILE_SOURCE"] = {biomepath},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name", sectionname},
							["PRECEDING_KEY_WORDS"] = {"NMSString0x80.xml"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION",
						}	
					}
				})
				
				for objectsfile, _ in pairs(sharedfiles[biomepath][sectionname]) do
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
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MOD_DESCRIPTION"] = "Combines the objects lists of HQ biomes and their non-HQ biome counterparts.",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}