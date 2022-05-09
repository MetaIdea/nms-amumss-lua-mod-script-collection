--[[┎──────────────────────────────────────────────────────────────
	┃ Reduce turret scale for the Nomad exocraft (BIKE)
	┃ Rescale engine nozzle, re-position the engine bloom glow (by LazMonk)
	
	-- also, remove those silly "wheels" so that the thing looks more like a super cool hover-bike (by Moach)
────┸──────────────────────────────────────────────────────────--]]

REF_TO_REMOVE = {
	"RL_SwingArmJNT", "FL_SwingArmJNT", "FR_SwingArmJNT", "RR_SwingArmJNT"
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.nomad turret and engine scaled.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_DESCRIPTION		= [[Reduce turret scale for the Nomad exocraft (BIKE)
							Rescale engine nozzle, re-position the engine bloom glow ]],
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'Gun'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.78},
					{'TransZ',		-0.44},
					{'ScaleX',		0.56},
					{'ScaleY',		0.56},
					{'ScaleZ',		0.56}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCenterRotate'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		1.52},
					{'ScaleY',		1.52},
					{'ScaleZ',		1.52}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'EngineCircles'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.585},
					{'TransZ',		-1.192},
					{'ScaleX',		0.44},
					{'ScaleY',		0.44},
					{'ScaleZ',		0.44}
				}
			}
		}		
	}
}}}}


local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i=1,#REF_TO_REMOVE do
  local value = REF_TO_REMOVE[i]
  -- local word = "Table"
  local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"]     = {"Name", value},
              ["REMOVE"]                = "SECTION"
            }
  Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

