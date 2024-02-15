-- Clean Space Origins [Darker Space] --


-- You can edit modified values here :
---------------------------------------------
---------------------------------------------

-- Modifiers below must be >= 0 and < 1, if not the script will ignore the values and won't modify them.
-- 0.75 = 75% color intensity // 0.5 = 50% // 0.25 = 25% // Etc...

SPACE_SKY_COLOR_INTENSITY 			= 0.4		-- Vanilla = 1 // Mod default = 0.4 // Multiplies the color intensity of the sky in space by this amount
PLANET_NIGHT_SKY_COLOR_INTENSITY 	= 0.4		-- Vanilla = 1 // Mod default = 0.4 // Multiplies the color intensity of the sky on planets at night by this amount
SPACE_CLOUDS_COLOR_INTENSITY 		= 0.5		-- Vanilla = 1 // Mod default = 0.6 // Multiplies the color intensity of "space clouds" (around nebulas) by this amount
STAR_LIGHT_COLOR_INTENSITY 			= 1			-- Vanilla = 1 // Mod default = 1 // Multiplies the color intensity of the light of the star by this amount
NEBULA_COLOR_INTENSITY 				= 0.6		-- Vanilla = 1 // Mod default = 0.6 // Multiplies the color intensity of nebulas by this amount
SPACE_FOG_COLOR_INTENSITY 			= 1			-- Vanilla = 1 // Mod default = 1 // Multiplies the color intensity of space fog by this amount

---------------------------------------------
---------------------------------------------










COLOR_MODIFICATIONS_TABLE =
{-- {Color intensity multiplier,		{Matching keywords table}										},
	{SPACE_SKY_COLOR_INTENSITY,			{"TopColour", "MidColour", "BottomColour"}						},	-- Sky in space: around the star / mid range of the star /  at the opposite of the star
	{PLANET_NIGHT_SKY_COLOR_INTENSITY,	{"TopColourPlanet", "MidColourPlanet", "BottomColourPlanet"}	},	-- Sky on planet at night: around the star / mid range of the star / at the opposite of the star
	{SPACE_CLOUDS_COLOR_INTENSITY,		{"CloudColour"}													},	-- Space clouds color	
	{STAR_LIGHT_COLOR_INTENSITY,		{"LightColour"}													},	-- Light color of the star
	{NEBULA_COLOR_INTENSITY,			{"NebulaColour1", "NebulaColour2", "NebulaColour3"}				},	-- Nebulas colors
	{SPACE_FOG_COLOR_INTENSITY,			{"FogColour", "FogColour2"}										}	-- Space fog colors
}


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [Darker Space].pak", 
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "3.03",		-- NMS version when first scripted
	["MOD_DESCRIPTION"]	= "This mod keeps the original space color palette but makes it darker.",
	["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
					
					},
				},
			},
		},
	},	
}


--Create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]


for i = 1, #COLOR_MODIFICATIONS_TABLE do

	if COLOR_MODIFICATIONS_TABLE[i][1] >= 0 and COLOR_MODIFICATIONS_TABLE[i][1] < 1 then

		for j = 1, #COLOR_MODIFICATIONS_TABLE[i][2] do
		
			local temp_table =
			{
				["PRECEDING_KEY_WORDS"] = {COLOR_MODIFICATIONS_TABLE[i][2][j]},
				["MATH_OPERATION"] = "*",
				["REPLACE_TYPE"] = "ALL",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] = 
				{ 
					{"R",COLOR_MODIFICATIONS_TABLE[i][1]},
					{"G",COLOR_MODIFICATIONS_TABLE[i][1]},
					{"B",COLOR_MODIFICATIONS_TABLE[i][1]},
				}, 
			}
			Change_Table_Array[#Change_Table_Array + 1] = temp_table
			
		end
		
	end
	
end