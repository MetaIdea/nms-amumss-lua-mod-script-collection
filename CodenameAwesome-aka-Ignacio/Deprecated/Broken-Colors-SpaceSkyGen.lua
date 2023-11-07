h_increment = 1
s_increment = 5
v_increment = 5

TopColour_H_Min = 0
TopColour_H_Max = 360
TopColour_V_Min = 0 --Originally 29
TopColour_V_Max = 100
TopColour_OffsetFromOwnV_S_Min = -3
TopColour_OffsetFromOwnV_S_Max = 53

MidColour_Offset_H_Min = 3
MidColour_Offset_H_Max = 50
MidColour_Offset_V_Min = -81
MidColour_Offset_V_Max = 23
MidColour_OffsetFromOwnV_S_Min = 27
MidColour_OffsetFromOwnV_S_Max = 72

BottomColour_OffsetFromMidColour_H_Min = -62
BottomColour_OffsetFromMidColour_H_Max = 14
BottomColour_OffsetFromMidColour_V_Min = -13
BottomColour_OffsetFromMidColour_V_Max = 64
BottomColour_OffsetFromOwnV_S_Min = 23
BottomColour_OffsetFromOwnV_S_Max = 62

CloudColour_Offset_H_Min = -13
CloudColour_Offset_H_Max = 49
CloudColour_Offset_V_Min = -11
CloudColour_Offset_V_Max = 26
CloudColour_OffsetFromOwnV_S_Min = -7
CloudColour_OffsetFromOwnV_S_Max = 47

LightColour_Offset_H_Min = -51
LightColour_Offset_H_Max = 26
LightColour_V_Min = 56
LightColour_V_Max = 100
LightColour_OffsetFromOwnV_S_Min = -86
LightColour_OffsetFromOwnV_S_Max = 13

NebulaColour1_Offset_H_Min = -44
NebulaColour1_Offset_H_Max = 24
NebulaColour1_Offset_V_Min = -28
NebulaColour1_Offset_V_Max = 43
NebulaColour1_OffsetFromOwnV_S_Min = 13
NebulaColour1_OffsetFromOwnV_S_Max = 42

NebulaColour2_OffsetFromNebulaColour1_H_Min = -1
NebulaColour2_OffsetFromNebulaColour1_H_Max = 1
NebulaColour2_OffsetFromNebulaColour1_V_Min = 16
NebulaColour2_OffsetFromNebulaColour1_V_Max = 26
NebulaColour2_OffsetFromOwnV_S_Min = -39
NebulaColour2_OffsetFromOwnV_S_Max = 11

NebulaColour3_OffsetFromNebulaColour2_H_Min = 0
NebulaColour3_OffsetFromNebulaColour2_H_Max = 1
NebulaColour3_OffsetFromNebulaColour2_V_Min = -42
NebulaColour3_OffsetFromNebulaColour2_V_Max = -26
NebulaColour3_OffsetFromOwnV_S_Min = 3
NebulaColour3_OffsetFromOwnV_S_Max = 26

math.randomseed(6703183)

all_string = ""
all_stringTable = {}
num_generated = 0
num_generated_blep = 0


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

num_generating = (((TopColour_H_Max - TopColour_H_Min)/h_increment)+1) * (((TopColour_OffsetFromOwnV_S_Max - TopColour_OffsetFromOwnV_S_Min)/s_increment)+1) * (((TopColour_V_Max - TopColour_V_Min)/v_increment)+1)
print("Generating approximately "..num_generating.." colours.")
print("This script is an especially weird one so that estimate might be super off. Take it as an upper limit.")
for TopColour_H = TopColour_H_Min, TopColour_H_Max, h_increment
	do
		for TopColour_V = TopColour_V_Min, TopColour_V_Max, v_increment
			do
				for TopColour_S = TopColour_V+TopColour_OffsetFromOwnV_S_Min, TopColour_V+TopColour_OffsetFromOwnV_S_Max, s_increment
					do

						num_generated = num_generated + 1
						num_generated_blep = num_generated_blep + 1

						if num_generated_blep == 10000 then
							print("Sky Color "..num_generated.." / "..num_generating)
							num_generated_blep = 0
						end

						MidColour_H = TopColour_H + math.random(MidColour_Offset_H_Min,MidColour_Offset_H_Max)
						MidColour_V = TopColour_V + math.random(MidColour_Offset_V_Min,MidColour_Offset_V_Max)
						MidColour_S = MidColour_V + math.random(MidColour_OffsetFromOwnV_S_Min,MidColour_OffsetFromOwnV_S_Max)

						BottomColour_H = MidColour_H + math.random(BottomColour_OffsetFromMidColour_H_Min,BottomColour_OffsetFromMidColour_H_Max)
						BottomColour_V = MidColour_V + math.random(BottomColour_OffsetFromMidColour_V_Min,BottomColour_OffsetFromMidColour_V_Max)
						BottomColour_S = BottomColour_V + math.random(BottomColour_OffsetFromOwnV_S_Min,BottomColour_OffsetFromOwnV_S_Max)

						CloudColour_H = TopColour_H + math.random(CloudColour_Offset_H_Min,CloudColour_Offset_H_Max)
						CloudColour_V = TopColour_V + math.random(CloudColour_Offset_V_Min,CloudColour_Offset_V_Max)
						CloudColour_S = TopColour_V + math.random(CloudColour_OffsetFromOwnV_S_Min,CloudColour_OffsetFromOwnV_S_Max)

						LightColour_H = TopColour_H + math.random(LightColour_Offset_H_Min,LightColour_Offset_H_Max)
						LightColour_V = math.random(LightColour_V_Min,LightColour_V_Max)
						LightColour_S = LightColour_V + math.random(LightColour_OffsetFromOwnV_S_Min,LightColour_OffsetFromOwnV_S_Max)

						NebulaColour1_H = TopColour_H + math.random(NebulaColour1_Offset_H_Min,NebulaColour1_Offset_H_Max)
						NebulaColour1_V = TopColour_V + math.random(NebulaColour1_Offset_V_Min,NebulaColour1_Offset_V_Max)
						NebulaColour1_S = NebulaColour1_V + math.random(NebulaColour1_OffsetFromOwnV_S_Min,NebulaColour1_OffsetFromOwnV_S_Max)

						NebulaColour2_H = NebulaColour1_H + math.random(NebulaColour2_OffsetFromNebulaColour1_H_Min,NebulaColour2_OffsetFromNebulaColour1_H_Max)
						NebulaColour2_V = NebulaColour1_V + math.random(NebulaColour2_OffsetFromNebulaColour1_V_Min,NebulaColour2_OffsetFromNebulaColour1_V_Max)
						NebulaColour2_S = NebulaColour2_V + math.random(NebulaColour2_OffsetFromOwnV_S_Min,NebulaColour2_OffsetFromOwnV_S_Max)

						NebulaColour3_H = NebulaColour2_H + math.random(NebulaColour3_OffsetFromNebulaColour2_H_Min,NebulaColour3_OffsetFromNebulaColour2_H_Max)
						NebulaColour3_V = NebulaColour2_V + math.random(NebulaColour3_OffsetFromNebulaColour2_V_Min,NebulaColour3_OffsetFromNebulaColour2_V_Max)
						NebulaColour3_S = NebulaColour3_V + math.random(NebulaColour3_OffsetFromOwnV_S_Min,NebulaColour3_OffsetFromOwnV_S_Max)

						--Convert to RGB
						TopColour_R,TopColour_G,TopColour_B = HSL(TopColour_H,TopColour_S,TopColour_V)
						MidColour_R,MidColour_G,MidColour_B = HSL(MidColour_H,MidColour_S,MidColour_V)
						BottomColour_R,BottomColour_G,BottomColour_B = HSL(BottomColour_H,BottomColour_S,BottomColour_V)
							--IGNORING THESE AND JUST COPYING THE VALUES
								--TopColourPlanet_R,TopColourPlanet_G,TopColourPlanet_B = HSL(TopColourPlanet_H,TopColourPlanet_S,TopColourPlanet_V)
								--MidColourPlanet_R,MidColourPlanet_G,MidColourPlanet_B = HSL(MidColourPlanet_H,MidColourPlanet_S,MidColourPlanet_V)
								--BottomColourPlanet_R,BottomColourPlanet_G,BottomColourPlanet_B = HSL(BottomColourPlanet_H,BottomColourPlanet_S,BottomColourPlanet_V)
						CloudColour_R,CloudColour_G,CloudColour_B = HSL(CloudColour_H,CloudColour_S,CloudColour_V)
						LightColour_R,LightColour_G,LightColour_B = HSL(LightColour_H,LightColour_S,LightColour_V)
						NebulaColour1_R,NebulaColour1_G,NebulaColour1_B = HSL(NebulaColour1_H,NebulaColour1_S,NebulaColour1_H)
						NebulaColour2_R,NebulaColour2_G,NebulaColour2_B = HSL(NebulaColour2_H,NebulaColour2_S,NebulaColour2_H)
						NebulaColour3_R,NebulaColour3_G,NebulaColour3_B = HSL(NebulaColour3_H,NebulaColour3_S,NebulaColour3_H)
						--FogColour_R,FogColour_G,FogColour_B = HSL(FogColour_H,FogColour_S,FogColour_V)

						table.insert(all_stringTable,[[
    <Property value="GcSolarSystemSkyColourData.xml">
      <Property name="TopColour" value="Colour.xml">
        <Property name="R" value="]]..TopColour_R..[[" />
        <Property name="G" value="]]..TopColour_G..[[" />
        <Property name="B" value="]]..TopColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="MidColour" value="Colour.xml">
        <Property name="R" value="]]..MidColour_R..[[" />
        <Property name="G" value="]]..MidColour_G..[[" />
        <Property name="B" value="]]..MidColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BottomColour" value="Colour.xml">
        <Property name="R" value="]]..BottomColour_R..[[" />
        <Property name="G" value="]]..BottomColour_G..[[" />
        <Property name="B" value="]]..BottomColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="TopColourPlanet" value="Colour.xml">
        <Property name="R" value="]]..TopColour_R..[[" />
        <Property name="G" value="]]..TopColour_G..[[" />
        <Property name="B" value="]]..TopColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="MidColourPlanet" value="Colour.xml">
        <Property name="R" value="]]..MidColour_R..[[" />
        <Property name="G" value="]]..MidColour_G..[[" />
        <Property name="B" value="]]..MidColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BottomColourPlanet" value="Colour.xml">
        <Property name="R" value="]]..BottomColour_R..[[" />
        <Property name="G" value="]]..BottomColour_G..[[" />
        <Property name="B" value="]]..BottomColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="CloudColour" value="Colour.xml">
        <Property name="R" value="]]..CloudColour_R..[[" />
        <Property name="G" value="]]..CloudColour_G..[[" />
        <Property name="B" value="]]..CloudColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LightColour" value="Colour.xml">
        <Property name="R" value="]]..LightColour_R..[[" />
        <Property name="G" value="]]..LightColour_G..[[" />
        <Property name="B" value="]]..LightColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour1" value="Colour.xml">
        <Property name="R" value="]]..NebulaColour1_R..[[" />
        <Property name="G" value="]]..NebulaColour1_G..[[" />
        <Property name="B" value="]]..NebulaColour1_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour2" value="Colour.xml">
        <Property name="R" value="]]..NebulaColour2_R..[[" />
        <Property name="G" value="]]..NebulaColour2_G..[[" />
        <Property name="B" value="]]..NebulaColour2_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="NebulaColour3" value="Colour.xml">
        <Property name="R" value="]]..NebulaColour3_R..[[" />
        <Property name="G" value="]]..NebulaColour3_G..[[" />
        <Property name="B" value="]]..NebulaColour3_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="FogColour" value="Colour.xml">
        <Property name="R" value="]]..BottomColour_R..[[" />
        <Property name="G" value="]]..BottomColour_G..[[" />
        <Property name="B" value="]]..BottomColour_B..[[" />
      </Property>
      <Property name="FogColour2" value="Colour.xml">
        <Property name="R" value="]]..BottomColour_R..[[" />
        <Property name="G" value="]]..BottomColour_G..[[" />
        <Property name="B" value="]]..BottomColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
    </Property>]])
					end
			end
	end

print("Concatenating string...")
all_string = table.concat(all_stringTable)

	--see also StandardSchemeExtended.lua
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.SpaceSkyColours.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Generates tons of Space Sky colors and adds them to the game.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcSolarSystemSkyColourData.xml"},
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Settings"},
							["ADD"] = all_string,
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE

print(num_generated.." Space Sky Options Added to the Game")
print("Color generation ended.")
