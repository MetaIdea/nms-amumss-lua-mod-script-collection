
COLOUR = {
StartR = "0.975",
StartG = "0.372",
StartB = "0.065",
StartA = "0.436",
MiddleR = "0.936",
MiddleG = "0.594",
MiddleB = "0.037",
MiddleA = "0.518",
EndR = "0.936",
EndG = "0.58",
EndB = "0.084",};


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "True Blood 1.7 - Orange.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This mod changes creature blood color",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\EFFECTS\BLOOD\BLOODDEATH\EMITTERS\BLOODCHUNKS.PARTICLE.MBIN",
										       "MODELS\EFFECTS\BLOOD\BLOODDEATH\EMITTERS\BLOODSPLATEMITTER.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\BLOODLOOP\EMITTERS\BLOODSPLATEMITTER.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\BLOODSPLAT\EMITTERS\BLOODFOCUSEMITTER.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\BLOODSPLAT\EMITTERS\BLOODSPLATEMITTER.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\BLOODSPLAT\EMITTERS\BLOODSPLATGLOWEMITTER.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\FIENDDEATH\EMITTERS\FBLOODCHUNKS.PARTICLE.MBIN",
											   "MODELS\EFFECTS\BLOOD\FIENDDEATH\EMITTERS\FBLOODSPLATEMITTER.PARTICLE.MBIN",
											   },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourStart"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"R", COLOUR.StartR}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourStart"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"G", COLOUR.StartG}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourStart"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"B", COLOUR.StartB}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourStart"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"A", COLOUR.StartA}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"R", COLOUR.MiddleR}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"G", COLOUR.MiddleG}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"B", COLOUR.MiddleB}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"A", COLOUR.MiddleA}}
						},
						--[[   unused as alpha is always 0
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourEnd"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"R", COLOUR.EndR}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourEnd"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"G", COLOUR.EndG}}
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"ColourEnd"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= {{"B", COLOUR.EndB}}
						}, --]]
					}
				}	
			}
		}
	}	
}