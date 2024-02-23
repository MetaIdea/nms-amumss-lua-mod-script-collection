--------------------------------------------------------------------------
-- EXCLUDED FROM BATCH
------------------------------------------------
local desc = [[
  Reduce freighter warp light explosion effect
  Reduce ship laser hit explosion
]]----------------------------------------------

local Warp_Exp_Scale = {
	dat = {
		{'WARP_FRT_ATMOS',	0.6},
		{'WARP_FRT',		0.6},
		{'WARP_FRG',		0.6},
		{'WARP_START',		0.6},
		{'WARP_START_FRGT',	0.6},
		{'WARP_ARRIVE',		0.6},
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Force',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE 	= { {'Scale', x[2]} }
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl.dat) do table.insert(T, tbl.Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META reduce explosion scale.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	-- MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/EFFECTS/EXPLOSIONTABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Warp_Exp_Scale)
	}
}}}}
