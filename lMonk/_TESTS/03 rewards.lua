
local Plant_Harvest = {
	dat = {
		'DE_COOK_ALL1',		-- Heptaploid Wheat
		'DE_COOK_ALL2',		-- Sweetroot
		'DE_COOK_ALL3',		-- Pulpy Roots
		'DE_COOK_HOT',		-- Fireberry
		'DE_COOK_RAD',		-- Grahberry
		'DE_COOK_DUST',		-- Aloe Flesh
		'DE_COOK_COLD',		-- Frozen Tubers
		'DE_COOK_TOX',		-- Jade Peas
		'DE_COOK_LUSH',		-- Impulse Beans
		'DE_COOK_WEIRD',	-- Hexaberry
		'WILD_SCORCHED',	-- Solanium
		'WILD_RADIO',		-- Gamma Root
		'WILD_BARREN',		-- Cactus Flesh
		'WILD_SNOW',		-- Frost Crystal
		'WILD_TOXIC',		-- Fungal Mould
		'WILD_LUSH',		-- Star Bulb
	},
	mult = { D=1.2, W=2, M=1.2 },
}
function Plant_Harvest:Get(x)
	local v = self.mult[string.sub(x, 1, 1)]
	return {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'PRESERVE',
		SPECIAL_KEY_WORDS	= {'Id', x},
		VALUE_CHANGE_TABLE 	= {
			{'AmountMin',	v},
			{'AmountMax',	v * self.mult.M}
		}
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in pairs(tbl.dat) do table.insert(T, tbl:Get(v)) end
	return T
end

local Source_Table_Reward = 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE REWARD.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Table_Reward,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Plant_Harvest)
	},
}}}}
