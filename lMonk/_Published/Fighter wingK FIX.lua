--------------------------------------------------
local desc = [[
  Partial fix to fighter wing_K missing textures
  Better placemnet for subwing_A
]]------------------------------------------------

local Wing_K_Fix = {
	sec = {
		'WingsK_ALOD',
		'SUB1WingsK_ALOD',
		'SUB3WingsK_ALOD'
	},
	val = {
		{'BATCHSTARTPHYSI',	37668,					41736,					53247},
		{'VERTRSTARTPHYSI',	21866,					24590,					31380},
		{'VERTRENDPHYSICS',	24589,					29311,					33122},
		{'BATCHCOUNT', 		4068,					7890,					2856},
		{'VERTRENDGRAPHIC', 2723,					4721,					1742},
		{'BOUNDHULLST', 	212,					248,					328},
		{'BOUNDHULLED', 	248,					292,					352},
		{'AABBMINX', 		-2.891207,				-3.749691,				-3.733948},
		{'AABBMINY', 		0.836564,				nil,					0.712383},
		{'AABBMINZ', 		-1.380045,				-2.157869,				-2.149216},
		{'AABBMAXX', 		nil,					3.749691,				3.733998},
		{'AABBMAXY', 		1.77087,				nil,					1.885870},
		{'AABBMAXZ', 		0.631633,				1.163431,				0.729330},
		{'HASH', 			'2415886621828453799',	'12658428626844270041',	'11193870210701611168'},
		{'MESHLINK', 		'WingsK_ALODShape1',	'WingsK_ALODShape1',	'WingsK_ALODShape1'},
	}
}
function Wing_K_Fix:build()
	local T = {}
	for i=1, (#self.sec) do
		lod = self.sec[i]
		for _,v in pairs(self.val) do
			if v[i + 1] ~= nil then
				table.insert(T, {
					SECTION_ACTIVE		= 1,
					SPECIAL_KEY_WORDS	= {'Name', (lod..'0'), 'Name', v[1]},
					VALUE_CHANGE_TABLE 	= { {'Value', v[i + 1]} }
				})
			end
		end
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'Name', (lod..'0')},
			VALUE_CHANGE_TABLE 	= { {'Name', (lod..'1')} }
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.fighter wingK FIX.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.81,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.9715},
					{'ScaleZ',		1.06}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= Wing_K_Fix:build()
	}
}}}}
