NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Freighter_Tractor_Beam_Green_Glow.pak",
["MOD_AUTHOR"]				= "Lowkie",
["MOD_DESCRIPTION"]			= "Turns the freighter tractor beam from bight blue to a pale green",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
                {
					["MBIN_FILE_SOURCE"] 	= 
                    {
                        "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEBEAMPARTICLESMAT1.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEMARKERVA_MAT1.MATERIAL.MBIN",  "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\HANGARDOOR_ANIMATED\GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN",                        --"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCESCROLLEFFECTMAT.MATERIAL.MBIN",--Enable for NO beam outside
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