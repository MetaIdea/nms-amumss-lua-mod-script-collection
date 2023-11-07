print("Starting color generation...")
--Decide how much the root color (SkyColour) is going to increment per loop. The smaller the increment, the more colors it will generate. Be warned, they increase exponentially so if you make it to small the program will take forever.
Hue_Increment = 4
Saturation_Increment = 4
Value_Increment = 4

SkyColour_H_Min = 0
SkyColour_H_Max = 360
SkyColour_S_Min = 21
SkyColour_S_Max = 81
SkyColour_V_Min = 93
SkyColour_V_Max = 100
SkyUpperColour_Offset_H_Min = -7
SkyUpperColour_Offset_H_Max = 138
SkyUpperColour_Offset_S_Min = -27
SkyUpperColour_Offset_S_Max = 52
SkyUpperColour_Offset_V_Min = -22
SkyUpperColour_Offset_V_Max = 0
SkySolarColour_Offset_H_Min = -82
SkySolarColour_Offset_H_Max = 0
SkySolarColour_Offset_S_Min = -32
SkySolarColour_Offset_S_Max = 6
SkySolarColour_Offset_V_Min = 0
SkySolarColour_Offset_V_Max = 0
HorizonColour_Offset_H_Min = -146
HorizonColour_Offset_H_Max = 82
HorizonColour_Offset_S_Min = -66
HorizonColour_Offset_S_Max = 12
HorizonColour_Offset_V_Min = -1
HorizonColour_Offset_V_Max = 7
SunColour_H_Min = 61
SunColour_H_Max = 64
SunColour_S = 17
SunColour_V = 100
FogColour_Offset_H_Min = -159
FogColour_Offset_H_Max = 180
FogColour_Offset_S_Min = -24
FogColour_Offset_S_Max = 45
FogColour_Offset_V_Min = -50
FogColour_Offset_V_Max = -21
HeightFogColour_Offset_H_Min = -172
HeightFogColour_Offset_H_Max = 110
HeightFogColour_Offset_S_Min = -40
HeightFogColour_Offset_S_Max = 43
HeightFogColour_Offset_V_Min = -14
HeightFogColour_Offset_V_Max = 5
SkyGradientSpeed_X_Min = 1
SkyGradientSpeed_X_Max = 2
SkyGradientSpeed_Y_Min = 1
SkyGradientSpeed_Y_Max = 2
SkyGradientSpeed_Z_Min = 1
SkyGradientSpeed_Z_Max = 2
LightColour_H = 60
LightColour_S = 9
LightColour_V = 100
CloudColour1_H_Min = 136
CloudColour1_H_Max = 228
CloudColour1_S = 4
CloudColour1_V_Min = 95
CloudColour1_V_Max = 98
CloudColour2_Offset_H_Min = -298
CloudColour2_Offset_H_Max = 277
CloudColour2_Offset_S_Min = -80
CloudColour2_Offset_S_Max = -17
CloudColour2_Offset_V_Min = -6
CloudColour2_Offset_V_Max = -2

Total_Colors_Generated = 0
all_string = ""
all_stringTable = {}

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

--Calculate how many colours are being generated.
Num_Colours_Generating = ((SkyColour_H_Max - SkyColour_H_Min + Hue_Increment)/Hue_Increment) * ((SkyColour_S_Max - SkyColour_S_Min + Saturation_Increment)/Saturation_Increment) * ((SkyColour_V_Max - SkyColour_V_Min + Value_Increment)/Value_Increment)
--Set Seed
math.randomseed(6703183)
--The first color is handled in a for loop so that the results are evenly distributed (So you don't end up with too much of one color or not enough of the other). The rest of it is handled randomly.
for SkyColour_H = SkyColour_H_Min,SkyColour_H_Max, Hue_Increment
do
   for SkyColour_S = SkyColour_S_Min,SkyColour_S_Max, Saturation_Increment
	do
	   for SkyColour_V = SkyColour_V_Min,SkyColour_V_Max, Value_Increment
		do

			Total_Colors_Generated = Total_Colors_Generated+1

			SkyUpperColour_H = SkyColour_H + math.random(SkyUpperColour_Offset_H_Min,SkyUpperColour_Offset_H_Max)
			SkyUpperColour_S = math.random(SkyUpperColour_Offset_S_Min,SkyUpperColour_Offset_S_Max)
			SkyUpperColour_V = SkyColour_V + math.random(SkyUpperColour_Offset_V_Min,SkyUpperColour_Offset_V_Max)

			SkySolarColour_H = SkyColour_H + math.random(SkySolarColour_Offset_H_Min,SkySolarColour_Offset_H_Max)
			SkySolarColour_S = SkyColour_S + math.random(SkySolarColour_Offset_S_Min,SkySolarColour_Offset_S_Max)
			SkySolarColour_V = SkyColour_V + math.random(SkySolarColour_Offset_V_Min,SkySolarColour_Offset_V_Max)

			HorizonColour_H = SkyColour_H + math.random(HorizonColour_Offset_H_Min,HorizonColour_Offset_H_Max)
			HorizonColour_S = SkyColour_S + math.random(HorizonColour_Offset_S_Min,HorizonColour_Offset_S_Max)
			HorizonColour_V = SkyColour_V + math.random(HorizonColour_Offset_V_Min,HorizonColour_Offset_V_Max)

			SunColour_H = SkyColour_H + math.random(SunColour_H_Min,SunColour_H_Max)
			SunColour_S = SunColour_S
			SunColour_V = SunColour_V

			FogColour_H = SkyColour_H + math.random(FogColour_Offset_H_Min,FogColour_Offset_H_Max)
			FogColour_S = SkyColour_S + math.random(FogColour_Offset_S_Min,FogColour_Offset_S_Max)
			FogColour_V = SkyColour_V + math.random(FogColour_Offset_V_Min,FogColour_Offset_V_Max)

			HeightFogColour_H = SkyColour_H + math.random(HeightFogColour_Offset_H_Min,HeightFogColour_Offset_H_Max)
			HeightFogColour_S = SkyColour_S + math.random(HeightFogColour_Offset_S_Min,HeightFogColour_Offset_S_Max)
			HeightFogColour_V = SkyColour_V + math.random(HeightFogColour_Offset_V_Min,HeightFogColour_Offset_V_Max)

			SkyGradientSpeed_X = math.random(SkyGradientSpeed_X_Min,SkyGradientSpeed_X_Max)
			SkyGradientSpeed_Y = math.random(SkyGradientSpeed_Y_Min,SkyGradientSpeed_Y_Max)
			SkyGradientSpeed_Z = math.random(SkyGradientSpeed_Z_Min,SkyGradientSpeed_Z_Max)

			LightColour_H = LightColour_H
			LightColour_S = LightColour_S
			LightColour_V = LightColour_V

			CloudColour1_H = math.random(CloudColour1_H_Min,CloudColour1_H_Max)
			CloudColour1_S = CloudColour1_S
			CloudColour1_V = math.random(CloudColour1_V_Min,CloudColour1_V_Max)

			CloudColour2_H = CloudColour1_H + math.random(CloudColour2_Offset_H_Min,CloudColour2_Offset_H_Max)
			CloudColour2_S = CloudColour1_S + math.random(CloudColour2_Offset_S_Min,CloudColour2_Offset_S_Max)
			CloudColour2_V = CloudColour1_V + math.random(CloudColour2_Offset_V_Min,CloudColour2_Offset_V_Max)

			Percent_Done = math.floor((Total_Colors_Generated/Num_Colours_Generating)*100)

			--Apparently printing to the console adds a TON of time to the process so I'm keeping this commented outcomes
			--[[
			print("Colour #"..Total_Colors_Generated.." out of "..Num_Colours_Generating..", "..Percent_Done.."% done")
			print("	Generating HSV values:")
			print("	SkyColour H:"..tostring(SkyColour_H).." S:"..tostring(SkyColour_S).." V:"..tostring(SkyColour_V))
			print("	SkyUpperColour H:"..tostring(SkyUpperColour_H).." S:"..tostring(SkyUpperColour_S).." V:"..tostring(SkyUpperColour_V))
			print("	SkySolarColour H:"..tostring(SkySolarColour_H).." S:"..tostring(SkySolarColour_S).." V:"..tostring(SkySolarColour_V))
			print("	HorizonColour H:"..tostring(HorizonColour_H).." S:"..tostring(HorizonColour_S).." V:"..tostring(HorizonColour_V))
			print("	FogColour H:"..tostring(FogColour_H).." S:"..tostring(FogColour_S).." V:"..tostring(FogColour_V))
			print("	HeightFogColour H:"..tostring(HeightFogColour_H).." S:"..tostring(HeightFogColour_S).." V:"..tostring(HeightFogColour_V))
			print("	SkyGradientSpeed X:"..tostring(SkyGradientSpeed_Z).." Y:"..tostring(SkyGradientSpeed_Y).." Z:"..tostring(SkyGradientSpeed_Z))
			print("	LightColour H:"..tostring(LightColour_H).." S:"..tostring(LightColour_S).." V:"..tostring(LightColour_V))
			print("	CloudColour1 H:"..tostring(CloudColour1_H).." S:"..tostring(CloudColour1_S).." V:"..tostring(CloudColour1_V))
			print("	CloudColour2 H:"..tostring(CloudColour2_H).." S:"..tostring(CloudColour2_S).." V:"..tostring(CloudColour2_V))]]

			--Convert to RGB
			SkyColour_R,SkyColour_G,SkyColour_B = HSL(SkyColour_H,SkyColour_S,SkyColour_V)
			SkyUpperColour_R,SkyUpperColour_G,SkyUpperColour_B = HSL(SkyUpperColour_H,SkyUpperColour_S,SkyUpperColour_V)
			SkySolarColour_R,SkySolarColour_G,SkySolarColour_B = HSL(SkySolarColour_H,SkySolarColour_S,SkySolarColour_V)
			HorizonColour_R,HorizonColour_G,HorizonColour_B = HSL(HorizonColour_H,HorizonColour_S,HorizonColour_V)
			SunColour_R,SunColour_G,SunColour_B = HSL(SunColour_H,SunColour_S,SunColour_V)
			FogColour_R,FogColour_G,FogColour_B = HSL(FogColour_H,FogColour_S,FogColour_V)
			HeightFogColour_R,HeightFogColour_G,HeightFogColour_B = HSL(HeightFogColour_H,HeightFogColour_S,HeightFogColour_V)
			LightColour_R,LightColour_G,LightColour_B = HSL(LightColour_H,LightColour_S,LightColour_V)
			CloudColour1_R,CloudColour1_G,CloudColour1_B,a = HSL(CloudColour1_H,CloudColour1_S,CloudColour1_V)
			CloudColour2_R,CloudColour2_G,CloudColour2_B,a = HSL(CloudColour2_H,CloudColour2_S,CloudColour2_V)
			--[[print("	Converting to RGB values done.")]]

			--CloudColour2 sucks right now so I'm just going to reuse the SkyUpperColour
			CloudColour2_R = SkyUpperColour_R*0.5
			CloudColour2_G = SkyUpperColour_G*0.5
			CloudColour2_B = SkyUpperColour_B*0.5

			table.insert(all_stringTable,[[
    <Property value="GcPlanetWeatherColourData.xml">
      <Property name="SkyColour" value="Colour.xml">
        <Property name="R" value="]]..SkyColour_R..[[" />
        <Property name="G" value="]]..SkyColour_G..[[" />
        <Property name="B" value="]]..SkyColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SkyUpperColour" value="Colour.xml">
        <Property name="R" value="]]..SkyUpperColour_R..[[" />
        <Property name="G" value="]]..SkyUpperColour_G..[[" />
        <Property name="B" value="]]..SkyUpperColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SkySolarColour" value="Colour.xml">
        <Property name="R" value="]]..SkySolarColour_R..[[" />
        <Property name="G" value="]]..SkySolarColour_G..[[" />
        <Property name="B" value="]]..SkySolarColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="HorizonColour" value="Colour.xml">
        <Property name="R" value="]]..HorizonColour_R..[[" />
        <Property name="G" value="]]..HorizonColour_G..[[" />
        <Property name="B" value="]]..HorizonColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SunColour" value="Colour.xml">
        <Property name="R" value="]]..SunColour_R..[[" />
        <Property name="G" value="]]..SunColour_G..[[" />
        <Property name="B" value="]]..SunColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="FogColour" value="Colour.xml">
        <Property name="R" value="]]..FogColour_R..[[" />
        <Property name="G" value="]]..FogColour_G..[[" />
        <Property name="B" value="]]..FogColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="HeightFogColour" value="Colour.xml">
        <Property name="R" value="]]..HeightFogColour_R..[[" />
        <Property name="G" value="]]..HeightFogColour_G..[[" />
        <Property name="B" value="]]..HeightFogColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="SkyGradientSpeed" value="Vector4f.xml">
        <Property name="x" value="]]..SkyGradientSpeed_X..[[" />
        <Property name="y" value="]]..SkyGradientSpeed_Y..[[" />
        <Property name="z" value="]]..SkyGradientSpeed_Z..[[" />
        <Property name="t" value="0" />
      </Property>
      <Property name="LightColour" value="Colour.xml">
        <Property name="R" value="]]..LightColour_R..[[" />
        <Property name="G" value="]]..LightColour_G..[[" />
        <Property name="B" value="]]..LightColour_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="CloudColour1" value="Colour.xml">
        <Property name="R" value="]]..CloudColour1_R..[[" />
        <Property name="G" value="]]..CloudColour1_G..[[" />
        <Property name="B" value="]]..CloudColour1_B..[[" />
        <Property name="A" value="1" />
      </Property>
      <Property name="CloudColour2" value="Colour.xml">
        <Property name="R" value="]]..CloudColour2_R..[[" />
        <Property name="G" value="]]..CloudColour2_G..[[" />
        <Property name="B" value="]]..CloudColour2_B..[[" />
        <Property name="A" value="1" />
      </Property>
    </Property>]])

		end
	end
end

all_string = table.concat(all_stringTable)

print("If it stops slightly before or after 100%, don't worry about it. It's working fine. My math is just a little bit off and it varies based on Increment size.")

--see also StandardSchemeExtended.lua
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.NightSkyColors.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Generates tons of Night Sky colors and adds them to the game.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Settings","GcPlanetWeatherColourData.xml"},
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

print(Total_Colors_Generated.." Night Sky Options Added to the Game")
print("Color generation ended.")
