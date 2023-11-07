function removeStringFromArray(arr, str)
    for i = #arr, 1, -1 do
        if arr[i] == str then
            table.remove(arr, i)
        end
    end
end

function split(str,sep)
str = str..sep
if sep == nil then
    words = {}
    for word in str:gmatch("%w+") do table.insert(words, word) end
    return words
end
return {str:match((str:gsub("[^"..sep.."]*"..sep, "([^"..sep.."]*)"..sep)))}
end

function hue_cycler(section_name)
	VANILLA_SETTINGS = io.open("../TOOLS/SavedSections/"..section_name..".xml"):read("*a")
	separator = [[Colour.xml]]
	VANILLA_SETTINGS = VANILLA_SETTINGS..separator
	
	new_colors = {}

	for hue_shift = 1, 360 do
		shifted_rgb_table = {}
		for rgb_value in VANILLA_SETTINGS:gmatch("(.-)"..separator) do
			if string.find(rgb_value,'"R".-"G".-"B"') then
				R = rgb_value:match('"R" value="(.-)"')
				G = rgb_value:match('"G" value="(.-)"')
				B = rgb_value:match('"B" value="(.-)"')
				
				H, S, V = rgb_to_hsv(R,G,B)
				
				H = H + hue_shift
				
				if H > 360 then --Hue loops around
					H = H - 360
				end
				
				R, G, B = hsv_to_rgb(H, S, V)
				rgb_value:gsub('"R" value=".-"','"R" value="'..R..'"')
				rgb_value:gsub('"G" value=".-"','"G" value="'..G..'"')
				rgb_value:gsub('"B" value=".-"','"B" value="'..B..'"')
			end
			table.insert(shifted_rgb_table,rgb_value)
		end
		table.insert(new_colors, table.concat(shifted_rgb_table,separator))
	end
	new_colors = table.concat(new_colors,"\n")
	return new_colors
end

function rgb_to_hsv(r, g, b)
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local chroma = max - min
    local h, s, v

    -- Calculate hue
    if chroma == 0 then
        h = 0
    elseif max == r then
        h = (60 * ((g - b) / chroma)) % 360
    elseif max == g then
        h = (60 * ((b - r) / chroma) + 120) % 360
    elseif max == b then
        h = (60 * ((r - g) / chroma) + 240) % 360
    end

    -- Calculate value
    v = max

    -- Calculate saturation
    if max == 0 then
        s = 0
    else
        s = chroma / max
    end

    return h, s, v
end

function hsv_to_rgb(h, s, v)
    local c = v * s
    local x = c * (1 - math.abs((h / 60) % 2 - 1))
    local m = v - c

    local r, g, b

    if h >= 0 and h < 60 then
        r, g, b = c, x, 0
    elseif h >= 60 and h < 120 then
        r, g, b = x, c, 0
    elseif h >= 120 and h < 180 then
        r, g, b = 0, c, x
    elseif h >= 180 and h < 240 then
        r, g, b = 0, x, c
    elseif h >= 240 and h < 300 then
        r, g, b = x, 0, c
    else
        r, g, b = c, 0, x
    end

    return (r + m), (g + m), (b + m)
end


function deduplicateArray(arr)
    local seen = {}
    local deduplicatedArray = {}

    for _, value in ipairs(arr) do
        if not seen[value] then
            table.insert(deduplicatedArray, value)
            seen[value] = true
        end
    end

    return deduplicatedArray
end

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

function biomeHasSection(biomepath,sectionname)
	biomefile_raw = io.open("../MODBUILDER/MOD/"..(biomepath:gsub(".MBIN",".EXML"))):read("*a")
	if string.find(biomefile_raw,'<Property value="GcExternalObjectListOptions%.xml">.-<Property name="Name" value="'..sectionname..'" />') then
		return true
	else
		return false
	end
end

function objectsFileHasLayer(objectspath,layername)
	objectsfile_raw = io.open("../MODBUILDER/MOD/"..(objectspath:gsub(".MBIN",".EXML"))):read("*a")
	if string.find(objectsfile_raw,'<Property name="'..layername..'">') then
		return true
	else
		return false
	end
end

function getSectionTileType(biomepath,sectionname)
	biomefile_raw = io.open("../MODBUILDER/MOD/"..(biomepath:gsub(".MBIN",".EXML"))):read("*a")
	return string.match(biomefile_raw,'<Property value="GcExternalObjectListOptions.xml">.-<Property name="Name" value="'..sectionname..'" />.-<Property name="TileType" value="GcTerrainTileType.xml">.-<Property name="TileType" value="(.-)"')
end

function getObjectsSectionNames(biomepath)
	biomefile_raw = io.open("../MODBUILDER/MOD/"..(biomepath:gsub(".MBIN",".EXML"))):read("*a")
	sectionnames = {}
	for sectionname in string.gmatch(biomefile_raw,'<Property value="GcExternalObjectListOptions%.xml">.-<Property name="Name" value="(.-)"') do
		table.insert(sectionnames,sectionname)
	end
	return sectionnames
end

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function create_model_swap_table(SETTINGS)
	MBIN_CHANGE_TABLE = {}
	DONE_FILES = {}
	for _, biome in ipairs(getBiomeList()) do
		for _, section_name in ipairs(SETTINGS["SECTIONS"]) do
			for _, objects_file in ipairs(getObjectsFileList(biome,section_name)) do
				for _, replacement_setting in ipairs(SETTINGS["REPLACEMENTS"]) do
					new_objects_file = objects_file:gsub("(.*)/", "%1/"..SETTINGS["PREFIX"])
					objects_file_raw = io.open("../MODBUILDER/MOD/"..(objects_file:gsub(".MBIN",".EXML"))):read("*a")
					if string.find(objects_file_raw,replacement_setting["OLD_MODEL"]) then
						if DONE_FILES[objects_file] == nil then
						table.insert(MBIN_CHANGE_TABLE,{
							["MBIN_FILE_SOURCE"] = {{objects_file,new_objects_file}},
						})
						
						replace_type =  "ALL"
						if replacement_setting["FIRST_ONLY"] then
							replace_type = "ONCE"
						end
						
						table.insert(MBIN_CHANGE_TABLE,{
							["MBIN_FILE_SOURCE"] = {new_objects_file},
							["EXML_CHANGE_TABLE"] = {
								{
									["SPECIAL_KEY_WORDS"] = {"Filename",replacement_setting["OLD_MODEL"]},
									["REPLACE_TYPE"] = replace_type,
									["VALUE_CHANGE_TABLE"] = {
										{"Filename",replacement_setting["NEW_MODEL"]},
									}
								},
							}
						})
						
						if replacement_setting["MULTIPLIERS"] ~= nil then
							for k, v in pairs(replacement_setting["MULTIPLIERS"]) do
								if k == "LodDistances" then
								
								elseif v ~= 1 then
									table.insert(MBIN_CHANGE_TABLE,{
										["MBIN_FILE_SOURCE"] = {new_objects_file},
										["EXML_CHANGE_TABLE"] = {
											{
												["SPECIAL_KEY_WORDS"] = {"Filename",replacement_setting["NEW_MODEL"]},
												["SECTION_UP"] = 1,
												["MATH_OPERATION"] = "*",
												["INTEGER_TO_FLOAT"] = "FORCE",
												["REPLACE_TYPE"] = replace_type,
												["VALUE_CHANGE_TABLE"] = {
													{k,v},
												}
											},
										}
									})
								end
							end
						end
						
						table.insert(MBIN_CHANGE_TABLE,{
							["MBIN_FILE_SOURCE"] = {biome},
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
				end
			end
		end
	end
	return MBIN_CHANGE_TABLE
end