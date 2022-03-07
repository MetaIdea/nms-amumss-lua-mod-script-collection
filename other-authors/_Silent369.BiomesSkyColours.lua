local modfilename = "_BiomesSkyColours"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "3.8"
local description = "Changes Sky Colours based on incremental values."

-- Incremental 12 matches the line count (4147) for the DAYSKYCOLORS.EXML
-- Therefore, you will generate similar, but less obnoxious sky colors.
--
-- You can, of course, create more colours. As you lower the Incremental
-- the generated colours will lean more towards the Sky Base Colour (blue).
-- (Not accounting for the several palettes of the Lava or Swamp biomes)

-- Set Incremental lower to generate colours, leaning towards blue skies.
-- Incrementals below the value of 1 may cause issues with generation!

Incremental = 12

----------------------------------------------------------------------------------------------------
--------------------------- SHOULD LEAVE THESE VALUES ALONE - PROBABLY!  ---------------------------
----------------------------------------------------------------------------------------------------

SkyBase_Colour_RMin = 120
SkyBase_Colour_RMax = 130
SkyBase_Colour_GMin = 200
SkyBase_Colour_GMax = 210
SkyBase_Colour_BMin = 245
SkyBase_Colour_BMax = 255

local all_string = ""
local all_StringTable = {}

local function round(number, precision)
    local fmtStr = string.format('%%0.%sf',precision)
    number = string.format(fmtStr,number)
    return number
end

function RGBA(r, g, b, a)
    local rC, gC, bC = r/255, g/255, b/255
    rC, gC, bC = math.floor(rC*1000)/1000,
				 math.floor(gC*1000)/1000,
				 math.floor(bC*1000)/1000
    if a == nil then
        return rC, gC, bC
    elseif a > 1 then
        a = a/100
    end
    return round(rC,3), round(gC,3), round(bC,3), a
end

--Set Seed
math.randomseed(tonumber(tostring(os.time()):reverse():sub(1,6)))

--First color is handled in a for loop so the results are evenly distributed
for SkyBase_Colour_R = SkyBase_Colour_RMin,SkyBase_Colour_RMax, Incremental
do
	for SkyBase_Colour_G = SkyBase_Colour_GMin,SkyBase_Colour_GMax, Incremental
	do
		for SkyBase_Colour_B = SkyBase_Colour_BMin,SkyBase_Colour_BMax, Incremental
		do

            --Using math.random to clamp the colour ranges between the two values
            --allows for variances in the colour generation for each RGB component.

			Sky_UpperColour_R = round(math.random(120,135),3)
			Sky_UpperColour_G = round(math.random(165,167),3)
			Sky_UpperColour_B = round(math.random(230,235),3)

			Sky_SolarColour_R = round(math.random(190,210),3)
			Sky_SolarColour_G = round(math.random(210,220),3)
			Sky_SolarColour_B = round(math.random(226,235),3)

			Horizon_Colour_R = round(math.random(190,200),3)
			Horizon_Colour_G = round(math.random(215,220),3)
			Horizon_Colour_B = round(math.random(230,236),3)

			Sun_BaseColour_R = round(math.random(250,254),3)
			Sun_BaseColour_G = round(math.random(253,255),3)
			Sun_BaseColour_B = round(math.random(209,212),3)

			Fog_BaseColour_R = round(math.random(90,93),3)
			Fog_BaseColour_G = round(math.random(113,116),3)
			Fog_BaseColour_B = round(math.random(152,156),3)

			HeightF_Colour_R = round(math.random(234,238),3)
			HeightF_Colour_G = round(math.random(244,247),3)
			HeightF_Colour_B = round(math.random(246,250),3)

			SkyGradientSpd_X = math.random(1,1)
			SkyGradientSpd_Y = math.random(1,1)
			SkyGradientSpd_Z = math.random(1,1)

			SunLightColour_R = round(math.random(254,255),3)
			SunLightColour_G = round(math.random(254,255),3)
			SunLightColour_B = round(math.random(229,232),3)

			Cloud_Colour_1_R = round(math.random(229,232),3)
			Cloud_Colour_1_G = round(math.random(239,242),3)
			Cloud_Colour_1_B = round(math.random(244,248),3)

			Cloud_Colour_2_R = round(math.random(30,45),3)
			Cloud_Colour_2_G = round(math.random(65,77),3)
			Cloud_Colour_2_B = round(math.random(130,135),3)

			--Convert to RGB
			SkyColour_R,SkyColour_G,SkyColour_B = RGBA(SkyBase_Colour_R,SkyBase_Colour_G,SkyBase_Colour_B)
			SkyUpperColour_R,SkyUpperColour_G,SkyUpperColour_B = RGBA(Sky_UpperColour_R,Sky_UpperColour_G,Sky_UpperColour_B)
			SkySolarColour_R,SkySolarColour_G,SkySolarColour_B = RGBA(Sky_SolarColour_R,Sky_SolarColour_G,Sky_SolarColour_B)
			HorizonColour_R,HorizonColour_G,HorizonColour_B = RGBA(Horizon_Colour_R,Horizon_Colour_G,Horizon_Colour_B)
			SunColour_R,SunColour_G,SunColour_B = RGBA(Sun_BaseColour_R,Sun_BaseColour_G,Sun_BaseColour_B)
			FogColour_R,FogColour_G,FogColour_B = RGBA(Fog_BaseColour_R,Fog_BaseColour_G,Fog_BaseColour_B)
			HeightFogColour_R,HeightFogColour_G,HeightFogColour_B = RGBA(HeightF_Colour_R,HeightF_Colour_G,HeightF_Colour_B)
			LightColour_R,LightColour_G,LightColour_B = RGBA(SunLightColour_R,SunLightColour_G,SunLightColour_B)
			CloudColour1_R,CloudColour1_G,CloudColour1_B = RGBA(Cloud_Colour_1_R,Cloud_Colour_1_G,Cloud_Colour_1_B)
			CloudColour2_R,CloudColour2_G,CloudColour2_B = RGBA(Cloud_Colour_2_R,Cloud_Colour_2_G,Cloud_Colour_2_B)

			table.insert(all_StringTable,
[[
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
        <Property name="SkyGradientSpeed" value="Vector3f.xml">
          <Property name="x" value="]]..SkyGradientSpd_X..[[" />
          <Property name="y" value="]]..SkyGradientSpd_Y..[[" />
          <Property name="z" value="]]..SkyGradientSpd_Z..[[" />
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
	  </Property>
]])

		end
	end
end

all_string = table.concat(all_StringTable)

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 		 = modfilename..lua_version..".pak",
	["LUA_AUTHOR"]			 = lua_author,
	["MOD_AUTHOR"]			 = mod_author,
	["NMS_VERSION"]			 = nms_version,
	["MOD_DESCRIPTION"]		 = description,
	["MODIFICATIONS"] 		 =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DAYSKYCOLOURS.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Settings", "GcPlanetWeatherColourData.xml"},
							["REMOVE"] 				= "SECTION"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings", "Settings"},
							["SECTION_UP"] 			= 1,
							["ADD"] 				= all_string
						}
					},
				}
			}
		},
	}
}