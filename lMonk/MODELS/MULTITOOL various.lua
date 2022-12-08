-----------------------------------------------------------------------
local desc = [[
  - remove laser horizontal flare
  - avoid unwanted parts from multitool
]]---------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL multitool various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|no tool muzzle flare|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/LASERMUZZLE.SCENE.MBIN',
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/MUZZLE/BLASTOVERLOADMUZZLE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Flare'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', '_Mag1Clip_1'},		-- no magazine
					-- {'Name', '_LSAcc3_1'},		-- ?
					-- {'Name', '_LSideAcc_6'},		-- ?
					{'Name', '_Screen_1'},			-- 1=tilted 2=flap 3=rounded
					-- {'Name', '_ToolStock_1'},	-- none (or a metal clasp)
					{'Name', '_ToolStock_2'},		-- solid long narrow square stock
					{'Name', '_ToolStock_3'},		-- cylinder or small half disk
					{'Name', '_ToolStock_4'},		-- rectangular stock
					{'Name', '_ToolStock_5'},		-- square block
					-- {'Name', '_ToolStock_6'},	-- half circle curve
					{'Name', '_G1Acc_1'},			-- grip 1 strap
					-- {'Name', '_TS1A_2'},			-- stock 1 strap
					-- {'Name', '_TS2Acc_1'},		-- stock 2 strap
					-- {'Name', '_TS4A_4'},			-- stock 4 strap
					{'Name', '_TS6A_2'},			-- stock 6 strap
				},
				REMOVE				= 'Section'
			}
		}
	}
}}}}
