math.randomseed(6703183)

num_palettes = 10

h_increment = 3
s_increment = 3
v_increment = 3

Grass_H_Min = 0
Grass_H_Max = 360
Grass_V_Min = 19
Grass_V_Max = 42
Grass_OffsetFromV_S_Min = -3
Grass_OffsetFromV_S_Max = 68

Leaf_H_Min = 0
Leaf_H_Max = 360
Leaf_V_Min = 45
Leaf_V_Max = 71
Leaf_OffsetFromV_S_Min = -14
Leaf_OffsetFromV_S_Max = 38

num_generating = (Grass_H_Max - Grass_H_Min)/h_increment + 1 + (Grass_V_Max - Grass_V_Min)/v_increment + 1 + (Grass_OffsetFromV_S_Max - Grass_OffsetFromV_S_Min)/s_increment

print("Generating approximately "..num_generating.." colours.")

--HSV to RGB converter
--Taken from StackOverflow https://stackoverflow.com/questions/10393134/converting-hsl-to-rgb
function HSL(hue, saturation, lightness, alpha)
	lightness = lightness / 100 --I'm adding this line here because I made my Value/Lightness variables a percent out of 100 rather than a decimal between 0 and 1.
	saturation = saturation / 100 --I'm adding this line here because I made my Saturation variables a percent out of 100 rather than a decimal between 0 and 1.
	if hue > 360 then hue = hue - 360 end--Adding this to make the hue value "wrap around" the color wheel
	if hue < 0 then hue = hue + 360 end--Adding this to make the hue value "wrap around" the color wheel

	if hue < 0 or hue > 360 then
        return 0, 0, 0, alpha
    end
    if saturation < 0 or saturation > 1 then
        return 0, 0, 0, alpha
    end
    if lightness < 0 or lightness > 1 then
        return 0, 0, 0, alpha
    end
    local chroma = (1 - math.abs(2 * lightness - 1)) * saturation
    local h = hue/60
    local x =(1 - math.abs(h % 2 - 1)) * chroma
    local r, g, b = 0, 0, 0
    if h < 1 then
        r,g,b=chroma,x,0
    elseif h < 2 then
        r,b,g=x,chroma,0
    elseif h < 3 then
        r,g,b=0,chroma,x
    elseif h < 4 then
        r,g,b=0,x,chroma
    elseif h < 5 then
        r,g,b=x,0,chroma
    else
        r,g,b=chroma,0,x
    end
    local m = lightness - chroma/2
    return r+m,g+m,b+m,alpha
end

function round(x)
	x = x + 0.5 - (x + 0.5) % 1
	return x
end

grass_array = {}

for i = 1, num_palettes, 1
	do

		grass_array[i] = [[      <Property name="Colours">]]
		for j = 1, 64, 1
			do
				Grass_H = math.random(Grass_H_Min,Grass_H_Max)
				Grass_V = math.random(Grass_V_Min,Grass_V_Max)
				Grass_S = Grass_V + math.random(Grass_OffsetFromV_S_Min,Grass_OffsetFromV_S_Max)

				Grass_R,Grass_G,Grass_B = HSL(Grass_H,Grass_S,Grass_V)

				grass_array[i] = grass_array[i]..[[
		<Property value="Colour.xml">
          <Property name="R" value="]]..Grass_R..[[" />
          <Property name="G" value="]]..Grass_G..[[" />
          <Property name="B" value="]]..Grass_B..[[" />
          <Property name="A" value="1" />
        </Property>]]
			end
		grass_array[i] = grass_array[i]..[[
      </Property>]]

		--print("Palette "..i)
		--print(grass_array[i])

	end

leaf_array = {}

for i = 1, num_palettes, 1
	do

		leaf_array[i] = ""

		for j = 1, 64, 1
			do

				Leaf_H = math.random(Leaf_H_Min,Leaf_H_Max)
				Leaf_V = math.random(Leaf_V_Min,Leaf_V_Max)
				Leaf_S = Leaf_V + math.random(Leaf_OffsetFromV_S_Min,Leaf_OffsetFromV_S_Max)

				Leaf_R,Leaf_G,Leaf_B = HSL(Leaf_H,Leaf_S,Leaf_V)

				leaf_array[i] = leaf_array[i]..[[
		<Property value="Colour.xml">
          <Property name="R" value="]]..Leaf_R..[[" />
          <Property name="G" value="]]..Leaf_G..[[" />
          <Property name="B" value="]]..Leaf_B..[[" />
          <Property name="A" value="1" />
        </Property>]]
			end

		--print("Palette "..i)
		--print(leaf_array[i])

	end

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.LushColours.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Generates grass colors. Currently not implemented in the game.",         --optional, for reference
  ["MOD_AUTHOR"]			= "CodenameAwesome",         --optional, for reference
  ["NMS_VERSION"]			= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{--Create files
					["MBIN_FILE_SOURCE"] =
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-01.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-02.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-03.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-04.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-05.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-06.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-07.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-08.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-09.MBIN"},
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN","METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-10.MBIN","REMOVE"}
					},
				},
				{--Remove exiting colors
					["MBIN_FILE_SOURCE"] = {
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-01.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-02.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-03.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-04.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-05.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-06.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-07.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-08.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-09.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-10.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Grass","Colours"},
							["REMOVE"] = "SECTION"
						},
						{--Activate this Palette (setting NumColours to Inactive makes the game default to the Base palette)
							["PRECEDING_KEY_WORDS"] = {"Grass"},
							["VALUE_CHANGE_TABLE"] = {
								{"NumColours", "All"}
							}
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-01.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[1],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-02.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[2],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-03.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[3],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-04.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[4],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-05.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[5],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-06.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[6],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-07.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[7],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-08.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[8],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-09.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},

							["ADD"] = grass_array[9],
							["LINE_OFFSET"] = "1"
						}
					}
				},
				{--Add new colors
					["MBIN_FILE_SOURCE"] = {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES-CUSTOM-10.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Palettes","Grass",},
							["ADD"] = grass_array[10],
							["LINE_OFFSET"] = "1"
						}
					}
				}
			}
		}
	}
}
