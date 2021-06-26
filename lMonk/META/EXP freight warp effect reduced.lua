--[[┎────────────────────────────────────────────────
	┃ Reduce freighter warp light explosion effect
────┸────────────────────────────────────────────--]]
Warp_Exp_Scale = {
	dat = {
		'WARP_FRT_ATMOS',
		'WARP_FRT',
		'WARP_FRG',
		'WARP_START',
		'WARP_START_FRGT',
		'WARP_ARRIVE'
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'FORCE',
			SPECIAL_KEY_WORDS	= {'Id', x},
			VALUE_CHANGE_TABLE 	= { {'Scale', 0.5} }
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do table.insert(T, tbl.Get(tbl.dat[i])) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META reduce freighter warp boom.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/EFFECTS/EXPLOSIONTABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Warp_Exp_Scale)
	}
}}}}
