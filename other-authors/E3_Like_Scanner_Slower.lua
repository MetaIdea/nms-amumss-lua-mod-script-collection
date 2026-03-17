NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 	= "E3_Like_Scanner_Slower",
	["MOD_AUTHOR"]		= "Kuborr",
	["LUA_AUTHOR"]		= "Kuborr",
	["NMS_VERSION"]		= "6.24",
	["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				-- =============================================
				-- Multi Tool Scanner Pulse Speed & Range
				-- =============================================
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "TOOL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",	"500"},		-- Original "200"			
								{"PulseTime",	"10"}, 		-- Original "1"		--higher = slower scan effect
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "TOOL_HARD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",	"500"},		-- Original "150"			
								{"PulseTime",	"10"}, 		-- Original "1"			--higher = slower scan effect				
							}
						},
					}
				},
				-- =============================================
				-- Scanner Colours
				-- =============================================
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "ScannerColour1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", 	"1"},		-- Original "0.3"
								{"G", 	"0.8869"},	-- Original "0.9"								
								{"B", 	"0"},		-- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ScannerColour2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"G", 	"0.8869"},	-- Original "0.5"								
								{"B", 	"0"},		-- Original "0.2"
							}
						},
					}
				},
			}
		}
	}	
}