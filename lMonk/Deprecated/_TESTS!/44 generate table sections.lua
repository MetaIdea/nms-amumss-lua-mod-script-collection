-- generate table sections

ID_LIST = {
	'NPCVEHICLETERM',
	'BIOROOM',
	'CUBEFRAME',
	'MAINROOMFRAME',
	'PYRAMIDSHAPE',
	'WEDGESHAPE'
}

Tech_Charge = {
	{'SHIPJUMP1',		1.2},
	{'SHIPJUMP_ALIEN',	1.2},
	{'LAUNCHER',		1.2},
	{'LAUNCHER_ALIEN',	1.2},
	{'F_HYPERDRIVE',	4},
	{'LASER',			2},
	{'SMG',				2},
	{'GRENADE',			1.5},
	{'VEHICLE_ENGINE',	1.2}
}

K_Icons_Color = {
	{'Id',		'STORM_CRYSTAL',				0, 0.54,	0.26,	0.26,	nil},
	{'Id',		'VENTGEM',						0, 0.54,	0.26,	0.26,	nil},
	{'Value',	'FRIG_BOOST_SUB',				1, 0.11,	0.18,	0.26,	'ALL'},
	{'Value',	'UI_ALLOY_SIMPLE_SUBTITLE',		1, 0.18,	0.25,	0.62, 	'ALL'}
}

Add_To_Table = {}
for i = 1,#ID_LIST do
	local section =
	{
		SPECIAL_KEY_WORDS	= {'ID', ID_LIST[i]},
		VALUE_CHANGE_TABLE 	= {{'BuildableOnFreighter', true}}
	}
	table.insert(Add_To_Table, section)
end

local function BuildExmlChangeTable(func, lst)
	local T = {}
	for i = 1, #lst do table.insert(T, func(lst[i])) end
	return T
end

local function AddToExmlChangeTable(T, func, lst)
	for i = 1, #lst do table.insert(T, func(lst[i])) end
end

local function GetTechCharge(x)
	return {
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'ID', x[1]},
		VALUE_CHANGE_TABLE 	= { {'ChargeAmount', x[2]} }
	}
end

local function GetIconColor(x)
	return {
		REPLACE_TYPE 		= x[7],
		INTEGER_TO_FLOAT	= 'Force',
		SPECIAL_KEY_WORDS	= {x[1], x[2]},
		SECTION_UP			= x[3],
		VALUE_CHANGE_TABLE 	= { {'R', x[4]}, {'G', x[5]}, {'B', x[6]} }
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '___TEST 44 generate table sections.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN',
		EXML_CHANGE_TABLE	= Add_To_Table
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(GetTechCharge, Tech_Charge)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'FRIG_BOOST_SPD', 'ID', 'ASTEROID2'},
				VALUE_CHANGE_TABLE 	= {
					{'ID',			'ASTEROID3'},
					{'Amount',		20}
				}
			}
		}
	}
}}}}

-- adds to the [3rd] mbin source in MBIN_CHANGE_TABLE
AddToExmlChangeTable(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].EXML_CHANGE_TABLE, GetIconColor, K_Icons_Color)
