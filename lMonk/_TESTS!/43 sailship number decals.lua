-----------------------------------------------------------------
local desc = [[
  - sailship changes:
   re-align trails & decals
   replace triangle with logo decals
   replace yellow lights with procedural lights to match the sail
   remove wing edge blinkers (requires texture replacements)
]]---------------------------------------------------------------

local sailship_edits = {
	-- Name				rX		rY		rZ		tX		sX		sY
	{'decals_Decal17',	180,	28,		180,	0.09},					-- Wings_A R
	{'decals_Decal18',	0,		0,		-2.777,	0.1},					-- Wings_A L -- flip

	{'decals_Decal16',	225,	180,	35.26},							-- Wings_B R
	{'decals_Decal15',	225,	180,	0},								-- Wings_B L -- flip

	{'decals_Decal14',	270,	180,	9.13},							-- Wings_C R
	{'decals_Decal13',	270,	180,	-3},							-- Wings_C L -- flip

	{'decals_Decal7',	180,	180},									-- Wings_D R
	{'decals_Decal6',	0, 		180},									-- Wings_D L -- flip

	{'decals_Decal9',	180,	180},									-- Wings_E R
	{'decals_Decal10',	0,		180},									-- Wings_E L -- flip

	{'decals_Decal11',	190,	0,		0,		0.45,	-0.1,	-0.1},	-- Wings_F R
	{'decals_Decal12',	0,		0,		0,		-0.4,	-0.1,	-0.1},	-- Wings_F L
	
	{'decals_Decal5'},													-- body_D
	{'decals_Decal8'},
}
function sailship_edits:Get(x)
	local T = {}
	T.SPECIAL_KEY_WORDS = {'Name', x[1]}
	if x[2] then
		T.MATH_OPERATION	 = '+'
		T.VALUE_CHANGE_TABLE = {
			{'RotX',	x[2]},
			{'RotY',	x[3]},
			{'RotZ',	x[4] or 0},
			{'TransX',	x[5] or 0},
			{'ScaleX',	x[6] or 0},
			{'ScaleY',	x[7] or 0},
		}
	else
		T.REMOVE = 'Section'
	end
	return T
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST 17 sailship number decals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |sailship re-alignments|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(sailship_edits)
	},
	{
		-- |sailship NUMBER decals|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/DECALS_NUMBERDECAL1.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					-- {'Map', 'TEXTURES/COMMON/DECALS/LOGO/LOGO.DDS'}
					{'Map', 'TEXTURES/COMMON/DECALS/NUMBER/NUMBER.DDS'}
				}
			}
		}
	}
}}}}
