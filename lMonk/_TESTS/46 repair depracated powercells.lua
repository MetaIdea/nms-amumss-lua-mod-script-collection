--[[-------------------------------------------------------------------
 restore the shield and health powercells deprecated in Origins update
---------------------------------------------------------------------]]

Add_Charge_Item = {
	dat = {
		{'ENERGY',		'PRODFUEL1'},
		{'T_UNW',		'PRODFUEL1'},
		{'T_RAD',		'POWERCELL2'},
		{'T_TOX',		'POWERCELL2'},
		{'T_COLDPROT',	'POWERCELL2'},
		{'T_HOTPROT',	'POWERCELL2'}
	},
	Get = function(x)
		local xml = [[<Property value="NMSString0x10.xml">
			<Property name="Value" value="%s" />
			</Property>]]
		return {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			PRECEDING_KEY_WORDS	= 'ChargeBy',
			ADD 				= string.format(xml, x[2])
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in pairs(tbl.dat) do table.insert(T, tbl.Get(v)) end
	return T
end

P_Requirements = {
	PRODFUEL1 = {
		{'LAND1', 'Substance', 20},
		{'OXYGEN', 'Substance', 10}
	},
	POWERCELL2 = {
		{'LAND2', 'Substance', 20},
		{'CAVE2', 'Substance', 10}
	}
}

local function AddNewCraftPart(lst)
	return [[
		<Property value="GcTechnologyRequirement.xml">
			<Property name="ID" value="]]..lst[1]..[[" />
			<Property name="InventoryType" value="GcInventoryType.xml">
				<Property name="InventoryType" value="]]..lst[2]..[[" />
			</Property>
			<Property name="Amount" value="]]..lst[3]..[[" />
		</Property>
	]]
end

local function BuildRequirements(lst)
	local text = '<Property name="Requirements">'
	for i=1, #lst do text = text..AddNewCraftPart(lst[i]) end
	return text..'</Property>'
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 46 restore powercells.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'POWERCELL2'},
				VALUE_CHANGE_TABLE 	= {
					{'IsCraftable',		true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'POWERCELL2', 'Legality', 'Legal'},
				LINE_OFFSET			= 8,
				REMOVE				= 'LINE'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'POWERCELL2'},
				ADD					= BuildRequirements(P_Requirements.POWERCELL2)
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PRODFUEL1'},
				VALUE_CHANGE_TABLE 	= {
					{'IsCraftable',		true}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PRODFUEL1', 'Legality', 'Legal'},
				LINE_OFFSET			= 8,
				REMOVE				= 'LINE'
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PRODFUEL1'},
				ADD					= BuildRequirements(P_Requirements.PRODFUEL1)
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'PRODFUEL2'},
				PRECEDING_KEY_WORDS = 'Icon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.OXYGENGEL2.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'SHIPCHARGE'},
				PRECEDING_KEY_WORDS = 'Icon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.SHIPCHARGE.DDS'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Add_Charge_Item)
	}
}}}}
