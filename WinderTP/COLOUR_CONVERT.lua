NEW_COLOURS_HEX =
-- Hex colour values without the hashtag
{	"03fc56",
	"fc0317",
}

RGB = {"R", "G", "B"}

DEBUG_TEXT = false
-- prints debug related variables in text

function trunc(x)
	return math.modf(x*1000)/1000
end

function GetColour4f(COUNTER, R, G, B)
return[[
  <Property name="Colour_]] .. COUNTER .. [[" value="Colour.xml">
    <Property name="R" value="]] .. R .. [[" />
    <Property name="G" value="]] .. G .. [[" />
    <Property name="B" value="]] .. B .. [[" />
    <Property name="A" value="1" />
  </Property>
]]
end

NEW_COLOURS = {}
-- RGB in Vector3f format, truncated to 3 decimal places
for i,j in pairs(NEW_COLOURS_HEX) do
	NEW_COLOUR_TEMP = {}
	for k,l in pairs(RGB) do
	-- Converting 2 digits of the hex colour into decimal, dividing by 255 and truncating to 3 d.p
	NEW_COLOUR_TEMP[l] = trunc(tonumber(string.sub(j,((k-1)*2)+1,((k-1)*2)+2),16)/255)
	end
	table.insert(NEW_COLOURS,NEW_COLOUR_TEMP)
end

COLOURS_EXPORT = {}
for i,j in pairs(NEW_COLOURS) do
	table.insert(COLOURS_EXPORT,GetColour4f(i, j["R"], j["G"], j["B"]))
end

OUTPUT_TEXT = table.concat(COLOURS_EXPORT)

if DEBUG_TEXT then 
	for i,j in pairs(NEW_COLOURS) do
		print(OUTPUT_TEXT)
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ColourHelper.pak",
["MOD_AUTHOR"]				= "WinderTP",
["MODIFICATIONS"] 			= {},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = "COLOUR_HELPER.EXML",
			["FILE_CONTENT"] 	 = 	OUTPUT_TEXT
		},
	}	
}