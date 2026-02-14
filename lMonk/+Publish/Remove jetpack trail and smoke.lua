--------------------------------------------------------------------------
local mod_desc = [[
  Remove the jetpack trail line and smoke
]]------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.remove jetpack trail and smoke',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKTRAIL.TRAIL.MBIN',
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKWORMTRAIL.TRAIL.MBIN',
		},
		MXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Width',				0},
					{'Points',				0},
					{'MaxPointsPerFrame',	0},
					{'DistanceThreshold',	0},
					{'PointLife',			0}
				}
			}
		}
	},
	{--	|Remove jetpack smoke| player
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/STANDARDJETPACKFX/EMITTERS/JETPACKSMOKEEMITTER.PARTICLE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/BLUEJETPACKFX/EMITTERS/BLUEJETPACKSMOKEEMITTER.PARTICLE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/GREENJETPACKFX/EMITTERS/GREENJETPACKSMOKEEMITTER.PARTICLE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/REDJETPACKFX/EMITTERS/REDJETPACKSMOKEEMITTER.PARTICLE.MBIN',
		},
		MXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE	= {
					{'StartEnabled', false}
				}
			}
		}
	}
}}}}