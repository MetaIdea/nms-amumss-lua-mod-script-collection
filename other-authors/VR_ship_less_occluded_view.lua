NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = "VR_ship_less_occluded_view",
  ["MOD_AUTHOR"]      = "Demonessa",
  ["LUA_AUTHOR"]      = "Demonessa",
  ["MOD_MAINTENANCE"] = "Demonessa",
  ["MOD_DESCRIPTION"] = "AMUMSS script to remove/change some parts of ship interior",
  ["NMS_VERSION"]     = "4.37",
  ["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
				{
					{
						["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN",
						["EXML_CHANGE_TABLE"] 	= 
						{
				--Ceiling
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "SUB1CeilingTop"},			--central round ceiling light pathways
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "SUB2CeilingTop"},			--central round wavy green ceiling
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "CeilingTop"},				--central round ceiling part, contains both SUB1CeilingTop and SUB2CeilingTop
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "SUB2CeilingTop"}, 	--changing ceiling texture to transparent one, so that "SUB1CeilingTop" and "SUB2CeilingTop" could stay
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPINSIDEMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "RightCeilingFront"},		--right front wavy green ceiling part, obscuring view
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "RightCeilingFront"},	--changing texture to transparent one
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "LeftCeilingFront"},		--left front wavy green ceiling part, obscuring view
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "LeftCeilingFront"},	--changing texture to transparent one
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
				--Floor
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "SUB1Floor"},				--floor light pathways
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "Floor"},			--floor, contains also SUB1Floor
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "Floor"}, --changing floor texture to transparent one, so that "SUB1Floor" could stay
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPINSIDEMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
				--Dashboards
							--{
							--	["SPECIAL_KEY_WORDS"] = {"Name", "CenterShape"},	--central dashboard
							--	["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPINSIDEMAT.MATERIAL.MBIN"}},	
							--	["VALUE_CHANGE_TABLE"] =
							--	{
							--		{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
							--	}
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "RightDash"},		--green/white-ish dash, housing 2 displays and exit handle
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "RightDash"},
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "LeftDash"},		--green/white-ish dash, housing 2 displays and exit handle
							--	["REMOVE"] = "SECTION",
							--},
							{
								["SPECIAL_KEY_WORDS"] = {"Name", "LeftDash"},
								["WHERE_IN_SUBSECTION"] = {{"Value","MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPMAT.MATERIAL.MBIN"}},	
								["VALUE_CHANGE_TABLE"] =
								{
									{"Value", "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\BIOSHIPFLASHINNERMAT.MATERIAL.MBIN"} --
								}
							},
				--side glass
							{	
								["SPECIAL_KEY_WORDS"] = {"Name", "pCube9"},		--side glass with flowing red mist
								["REMOVE"] = "SECTION",
							},
							{	
								["SPECIAL_KEY_WORDS"] = {"Name", "pCube10"},	--side glass with flowing red mist
								["REMOVE"] = "SECTION",
							},
				--
							{	
								["SPECIAL_KEY_WORDS"] = {"Name", "NostrilsVFXref"},	--nostrils  on sides of chair, that breathe mist out
								["REMOVE"] = "SECTION",
							},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "Membrane"},	--seen only when entering the ship, when it opens like an eye
							--	["REMOVE"] = "SECTION",
							--},
				--Back
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "SUB2CeilingBack"},		--wavy green back ceiling
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "SUB1CeilingBack"},		--back ceiling light pathways
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "CeilingBack"},			--both previous: light pathways and green wavy back ceiling 
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "BackRight"},		--green surrounding of nostrils. right from chair and around it from behind
							--	["REMOVE"] = "SECTION",
							--},
							--{	
							--	["SPECIAL_KEY_WORDS"] = {"Name", "BackLeft"},		--green surrounding of nostrils. left from chair and around it from behind
							--	["REMOVE"] = "SECTION",
							--},
				--Planet Flight flame effects
							{	
								["SPECIAL_KEY_WORDS"] = {"Name", "AtmosphereEffect"},		--lower half  flames when entering atmosphere
								["REMOVE"] = "SECTION",
							},
							{	
								["SPECIAL_KEY_WORDS"] = {"Name", "AtmosphereEffectTop"},		--
								["REMOVE"] = "SECTION",
							},
							--	pSphere16	light bulb over player's head
							--	pSphere18	light bulb
							--	pSphere19	light bulb
							--	pSphere20	light bulb
							--	pSphere21	light bulb
							--	pSphere16_2	light bulb
							--	pSphere18_2	light bulb
							--	pSphere19_2	light bulb
							--	pSphere20_2	light bulb
							--	pSphere21_2	light bulb
							--	FrontShell 	central dashboard orb and central screen display effect
							--	polySurface67	black "tree" pattern on glass
							--	polySurface68	black "tree" pattern on glass
						},	
					},	
				},
		},
	},
}