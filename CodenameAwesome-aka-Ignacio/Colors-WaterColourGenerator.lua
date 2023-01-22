math.randomseed(5813983)

hue_increment = 1
saturation_increment = 3
value_increment = 3

Saturation_Multiplier = 1

--Unless otherwise stated, all "Offset" variables are offset from the WaterColourBase values.
WaterColourBase_H_Min = 0
WaterColourBase_H_Max = 360
WaterColourBase_V_Min = 21
WaterColourBase_V_Max = 37
WaterColourBase_OffsetFromOwnV_S_Min = 33
WaterColourBase_OffsetFromOwnV_S_Max = 62

WaterFogColourNear_Offset_H_Min = -7
WaterFogColourNear_Offset_H_Max = 8
WaterFogColourNear_Offset_V_Min = 20
WaterFogColourNear_Offset_V_Max = 30
WaterFogColourNear_OffsetFromOwnV_S_Min = -13
WaterFogColourNear_OffsetFromOwnV_S_Max = 18

WaterFogColourFar_Offset_H_Min = -10
WaterFogColourFar_Offset_H_Max = 3
WaterFogColourFar_Offset_V_Min = 37
WaterFogColourFar_Offset_V_Max = 52
WaterFogColourFar_OffsetFromOwnV_S_Min = -41
WaterFogColourFar_OffsetFromOwnV_S_Max = 9

WaterColourAdd_Offset_H_Min = -127
WaterColourAdd_Offset_H_Max = 7
WaterColourAdd_Offset_V_Min = 54
WaterColourAdd_Offset_V_Max = 79
WaterColourAdd_OffsetFromOwnV_S_Min = -57
WaterColourAdd_OffsetFromOwnV_S_Max = -34

FoamColour_Offset_H_Min = -19
FoamColour_Offset_H_Max = 9
FoamColour_V_Min = 91
FoamColour_V_Max = 100
FoamColour_OffsetFromOwnV_S_Min = -85
FoamColour_OffsetFromOwnV_S_Max = -61

num_colours_generated = 0
all_string = ""
all_stringTable = {}

num_generating = ((WaterColourBase_H_Max-WaterColourBase_H_Min)/hue_increment) * ((WaterColourBase_OffsetFromOwnV_S_Max-WaterColourBase_OffsetFromOwnV_S_Min)/saturation_increment) * ((WaterColourBase_V_Max-WaterColourBase_V_Min)/value_increment)
print("Generating roughly "..num_generating.." Colours")

--HSV to RGB converter
--Taken from StackOverflow https://stackoverflow.com/questions/10393134/converting-hsl-to-rgb
function HSL(hue, saturation, lightness, alpha)
	lightness = lightness / 100 --I'm adding this line here because I made my Value/Lightness variables a percent out of 100 rather than a decimal between 0 and 1.
	saturation = (saturation / 100) * Saturation_Multiplier--I'm adding this line here because I made my Saturation variables a percent out of 100 rather than a decimal between 0 and 1.

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


for WaterColourBase_H = WaterColourBase_H_Min, WaterColourBase_H_Max, hue_increment
	do
		for WaterColourBase_V = WaterColourBase_V_Min, WaterColourBase_V_Max, value_increment
			do
				for WaterColourBase_S = WaterColourBase_V+WaterColourBase_OffsetFromOwnV_S_Min, WaterColourBase_V+WaterColourBase_OffsetFromOwnV_S_Max, saturation_increment
					do
						num_colours_generated = num_colours_generated + 1

						WaterFogColourNear_H = WaterColourBase_H + math.random(WaterFogColourNear_Offset_H_Min,WaterFogColourNear_Offset_H_Max)
						WaterFogColourNear_V = WaterColourBase_V + math.random(WaterFogColourNear_Offset_V_Min,WaterFogColourNear_Offset_V_Max)
						WaterFogColourNear_S = WaterColourBase_V + math.random(WaterFogColourNear_OffsetFromOwnV_S_Min,WaterFogColourNear_OffsetFromOwnV_S_Max)

						WaterFogColourFar_H = WaterFogColourNear_H + math.random(WaterFogColourFar_Offset_H_Min,WaterFogColourFar_Offset_H_Max)
						WaterFogColourFar_V = WaterFogColourNear_V + math.random(WaterFogColourFar_Offset_V_Min,WaterFogColourFar_Offset_V_Max)
						WaterFogColourFar_S = WaterFogColourNear_V + math.random(WaterFogColourFar_OffsetFromOwnV_S_Min,WaterFogColourFar_OffsetFromOwnV_S_Max)

						WaterColourAdd_H = WaterColourBase_H + math.random(WaterColourAdd_Offset_H_Min,WaterColourAdd_Offset_H_Max)
						WaterColourAdd_V = WaterColourBase_V + math.random(WaterColourAdd_Offset_V_Min,WaterColourAdd_Offset_V_Max)
						WaterColourAdd_S = WaterColourBase_S + math.random(WaterColourAdd_OffsetFromOwnV_S_Min,WaterColourAdd_OffsetFromOwnV_S_Max)

						FoamColour_H = WaterColourBase_H + math.random(FoamColour_Offset_H_Min,FoamColour_Offset_H_Max)
						FoamColour_V = math.random(FoamColour_V_Min,FoamColour_V_Max)
						FoamColour_S = FoamColour_V + math.random(FoamColour_OffsetFromOwnV_S_Min,FoamColour_OffsetFromOwnV_S_Max)

						--Convert to RGB
						local WaterColourBase_R,WaterColourBase_G,WaterColourBase_B = HSL(WaterColourBase_H,WaterColourBase_S,WaterColourBase_V)
						local WaterFogColourNear_R,WaterFogColourNear_G,WaterFogColourNear_B = HSL(WaterFogColourNear_H,WaterFogColourNear_S,WaterFogColourNear_V)
						local WaterFogColourFar_R,WaterFogColourFar_G,WaterFogColourFar_B = HSL(WaterFogColourFar_H,WaterFogColourFar_S,WaterFogColourFar_V)
						local WaterColourAdd_R,WaterColourAdd_G,WaterColourAdd_B = HSL(WaterColourAdd_H,WaterColourAdd_S,WaterColourAdd_V)
						local WaterFogColourNear_R,WaterFogColourNear_G,WaterFogColourNear_B = HSL(WaterFogColourNear_H,WaterFogColourNear_S,WaterFogColourNear_V)
						local FoamColour_R,FoamColour_G,FoamColour_B = HSL(FoamColour_H,FoamColour_S,FoamColour_V)

						table.insert(all_stringTable,[[
    <Property value="GcPlanetWaterColourData.xml">
      <Property name="WaterFogColourNear" value="Colour.xml">
        <Property name="R" value="]]..WaterFogColourNear_R..[[" />
        <Property name="G" value="]]..WaterFogColourNear_G..[[" />
        <Property name="B" value="]]..WaterFogColourNear_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="WaterFogColourFar" value="Colour.xml">
        <Property name="R" value="]]..WaterFogColourFar_R..[[" />
        <Property name="G" value="]]..WaterFogColourFar_G..[[" />
        <Property name="B" value="]]..WaterFogColourFar_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="WaterColourBase" value="Colour.xml">
        <Property name="R" value="]]..WaterColourBase_R..[[" />
        <Property name="G" value="]]..WaterColourBase_G..[[" />
        <Property name="B" value="]]..WaterColourBase_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="WaterColourAdd" value="Colour.xml">
        <Property name="R" value="]]..WaterColourAdd_R..[[" />
        <Property name="G" value="]]..WaterColourAdd_G..[[" />
        <Property name="B" value="]]..WaterColourAdd_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="FoamColour" value="Colour.xml">
        <Property name="R" value="]]..FoamColour_R..[[" />
        <Property name="G" value="]]..FoamColour_G..[[" />
        <Property name="B" value="]]..FoamColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
    </Property>]])
					end
			end
	end

all_string = table.concat(all_stringTable)

print("Color generation done. Generated "..num_colours_generated.." colours.")

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.WaterColors.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Generates tons of water colors and adds them to the game.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\COLOURS\WATERCOLOURS.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Settings","GcPlanetWaterColourData.xml"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Settings"},
							["ADD"] = all_string,
						}
					}
				},
			}
		},
	}
}
