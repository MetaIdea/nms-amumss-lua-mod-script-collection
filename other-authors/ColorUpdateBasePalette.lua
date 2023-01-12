Apply_Paint_To =
{--just comment out any you do not want to change the color for
    "Paint", 
    "BioShip_Body", 
    "BioShip_Underbelly", 
    "BioShip_Cockpit",
    "Freighter", 
    "FreighterPaint"
}

New_color_values =
{ 
    --R, G, B
    {"1", "1", "1"}, 
    {"0.7", "0.7", "0.7"}, 
    {"0.5", "0.5", "0.5"}, 
    {"0.997", "0.997", "0.997"}, 
    {"1", "1", "1"}, 
    {"1", "1", "1"}, 
    {"0.999", "0.999", "0.999"}, 
    {"-0.999", "-0.999", "-0.999"}, 
    {"0.3", "0.3", "0.3"}, 
    {"0.998", "0.998", "0.998"}, 
    {"-1", "-1", "-1"}, 
    {"0", "-0.998", "-0.998"}, 
    {"0.15", "0.15", "0.15"}, 
    {"0", "0", "0"}, 
    {"-0.1", "-0.1", "-0.1"}, 
    {"-0.997", "-0.997", "-0.997"}, 
    {"0.847", "0.451", "0.167"}, 
    {"1", "0.98", "0.259"}, 
    {"0.925", "0.831", "0.035"}, 
    {"0.827", "0.49", "0.122"}, 
    {"0.855", "0.682", "0.012"}, 
    {"0.969", "1", "0.4"}, 
    {"0.757", "0.412", "0.067"}, 
    {"0.678", "0.259", "0.106"}, 
    {"0.6", "0.098", "0.098"}, 
    {"0.498", "0.082", "0.129"}, 
    {"0.498", "0.043", "0.067"}, 
    {"0.388", "0", "0.043"}, 
    {"0.353", "0.043", "0.071"}, 
    {"0.286", "0.035", "0.063"}, 
    {"0.3", "0", "0.03"}, 
    {"0.29", "0.086", "0.424"}, 
    {"0.192", "0.059", "0.31"}, 
    {"0.788", "0.467", "0.718"}, 
    {"0.529", "0.325", "0.702"}, 
    {"0.565", "0.275", "0.514"}, 
    {"0", "0.063", "0.298"}, 
    {"0.02", "0.09", "0.4"}, 
    {"0", "0.122", "0.541"}, 
    {"0.031", "0.224", "0.502"}, 
    {"0.173", "0.51", "0.827"}, 
    {"0.106", "0.408", "0.561"}, 
    {"0.367", "0.722", "0.898"}, 
    {"0.149", "0.569", "0.776"}, 
    {"0.302", "0.729", "0.694"}, 
    {"0", "1", "0.953"}, 
    {"0", "0.537", "0.796"}, 
    {"0.106", "0.369", "0.714"}, 
    {"0.063", "0.192", "0.584"}, 
    {"0.09", "0.275", "0.627"}, 
    {"0.09", "0.251", "0.675"}, 
    {"0.082", "0.314", "0.431"}, 
    {"0", "0.812", "0.553"}, 
    {"0.647", "0.867", "0.223"}, 
    {"0", "0.6", "0.098"}, 
    {"0", "0.055", "0.133"}, 
    {"0.094", "0.443", "0.239"}, 
    {"0.09", "0.404", "0.38"}, 
    {"0.334", "0.334", "0.334"}, 
    {"0.333", "0.333", "0.333"}, 
    {"0.306", "0.584", "0.165"}, 
    {"0.133", "0.635", "0.318"}, 
    {"0.075", "0.357", "0.192"}, 
    {"0.118", "0.553", "0.278"}, 
}  

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ColorChangeBase.pak",
["MOD_AUTHOR"]				= "",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] 	= 
                    {
                    },
                },
            },
        },
    }
}

--Create a shortcut to the EXML_CHANGE_TABLE table that is inside the NMS_MOD_DEFINITION_CONTAINER
local Array_Of_Change_Tables = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for v = 1, #Apply_Paint_To, 1 do
OFFSET = 0
    for i = 1,#New_color_values, 1 do
        local temp_table =
        {
            ["SPECIAL_KEY_WORDS"] = {Apply_Paint_To[v],"GcPaletteData.xml"},
            ["PRECEDING_KEY_WORDS"] = {"Colours"},  
            ["INTEGER_TO_FLOAT"] = "FORCE",
            ["LINE_OFFSET"] = OFFSET,       
            ["VALUE_CHANGE_TABLE"]  =   
            {
                {"R", New_color_values[i][1]},
                {"G", New_color_values[i][2]},
                {"B", New_color_values[i][3]}
            },  
        }

        Array_Of_Change_Tables[#Array_Of_Change_Tables + 1] = temp_table
        OFFSET = OFFSET + 6
    end  
end