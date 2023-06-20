NMS_MOD_DEFINITION_CONTAINER = 
{
	MOD_AUTHOR = [[lyravega/Wbertro]],
	MOD_DESCRIPTION = [[Test HOES with SEC_ADD_NAMED]],
	LUA_AUTHOR = [[lyravega/Wbertro]],
	MOD_FILENAME = [[Test_HOES_SEC_ADD_NAMED.pak]],
	NMS_VERSION = [[0.0]],
	MODIFICATIONS = 
  {
		{  
			MBIN_CT = 
      {
        {  
          MBIN_FS = [[MODELS\COMMON\WEAPONS\LASER\LASERBEAM.SCENE.MBIN]],
          EXML_CT = 
          {
            {  
              SKW = {[[Name]],[[Beam]],},
              SEC_SAVE_TO = [[lyr_tempSection]],
            }, 
            
            {  
              VCT = {
              {  
                [[Name]],
                [[Beam2]],
              }, 
                }, 
              SEC_EDIT = [[lyr_tempSection]],
            }, 

            {  -- using a SEC_ADD_NAMED internal string
              SKW = {[[Name]],[[Beam]],},
-- Here PKW last entry is found and changed from a HOES (Head Of Empty Section) to a HOS (Head Of Section)
              PKW = [[Children]],
              CREATE_HOS = "TRUE",
              SEC_ADD_NAMED = [[lyr_tempSection]],
            }, 
            
          }, 
        }, 
      }, 
		}, 
	}, --3 global replacements
}