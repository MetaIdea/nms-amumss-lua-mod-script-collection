Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "This removes speed lines at cruising speeds and lessens them the rest of the time."
FileSource01 = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN"
FileSource02 = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN"
FileSource03 = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN"
FileSource04 = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN"
FileSource05 = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN"
-- Original credit to Clean Space Origins [Speed Lines Reduced] --

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##



NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 		= ModName..".pak",
	["MOD_AUTHOR"]			= Author,
	["MOD_DESCRIPTION"]		= ModDescription,
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				
				{
					["MBIN_FILE_SOURCE"] = FileSource01,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",400},		-- Vanilla 1000, mod default 400
								{"Alpha",0.2},					-- Vanilla 0.5, mod default 0.2
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource02,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",800},		-- Vanilla 2000, mod default 800
								{"Alpha",0.2},					-- Vanilla 0.5, mod default 0.2
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource03,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",500},		-- Vanilla 5000, mod default 500
								{"RemoveCylinderRadius",50},	-- Vanilla 0, mod default 50
								{"MinVisibleSpeed",50},			-- Vanilla 0, mod default 50
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource04,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"NumberOfParticles",1000},		-- Vanilla 4000, mod default 1000
								{"RemoveCylinderRadius",50},	-- Vanilla 5, mod default 50
								{"MinVisibleSpeed",20},			-- Vanilla 0, mod default 20
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource05,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"RemoveCylinderRadius",50},	-- Vanilla 10, mod default 50
								{"MinVisibleSpeed",23},			-- Vanilla 15, mod default 23
							},

						},
					},
				},
				
			},
		},
	},
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE