-- Clean Space Origins [Speed Lines Reduced] --


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v3.60 [Speed Lines Reduced].pak",
	["MOD_DESCRIPTION"]	= "No speed lines at cruise speed, less at boost/pulse speed.",
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "2.61.1",		-- NMS version when first scripted
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",400},		-- Vanilla 2000, mod default 400
								{"Alpha",0.2},					-- Vanilla 0.5, mod default 0.2
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",800},		-- Vanilla 4000, mod default 800
								{"Alpha",0.2},					-- Vanilla 0.5, mod default 0.2
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",500},		-- Vanilla 5000, mod default 500
								{"RemoveCylinderRadius",50},	-- Vanilla 0, mod default 50
								{"MinVisibleSpeed",15},			-- Vanilla 0, mod default 15
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",1000},		-- Vanilla 4000, mod default 1000
								{"RemoveCylinderRadius",45},	-- Vanilla 5, mod default 45
								{"MinVisibleSpeed",20},			-- Vanilla 0, mod default 20
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"RemoveCylinderRadius",40},	-- Vanilla 10, mod default 40
								{"MinVisibleSpeed",23},			-- Vanilla 15, mod default 23
							},

						},
					},
				},
				
			},
		},
	},
}