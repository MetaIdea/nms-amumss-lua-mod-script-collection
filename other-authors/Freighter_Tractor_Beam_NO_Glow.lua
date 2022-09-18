NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Freighter_Tractor_Beam_NO_Glow.pak",
["MOD_AUTHOR"]				= "Lowkie",
["MOD_DESCRIPTION"]			= "Turns the freighters external tractor beams light off",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
                {
					["MBIN_FILE_SOURCE"] 	= 
                    {
                        "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEBEAMPARTICLESMAT1.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEMARKERVA_MAT1.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCESCROLLEFFECTMAT.MATERIAL.MBIN",  "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\HANGARDOOR_ANIMATED\GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] 	= 
                    {          
                        {
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Map", "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM_OFF.DDS"},
                               
                            }
                        },  
                    }                        
                    
                },
				
            },
        },
    }
}