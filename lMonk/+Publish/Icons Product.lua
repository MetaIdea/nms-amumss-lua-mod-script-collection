----------------------------------------------------------------------
local mod_desc = [[
  edit/replace/update/improve product icons

  * The ADD_FILES section can be safely disabled/ignored if you prefer
   to add the texture files in a different method.
]]--------------------------------------------------------------------
local mod_version = '1.0'

local prod_icons = {
	CARBON_SEAL		= 'PRODUCTS/PRODUCT.MSEAL.DDS',
	GEODE_CAVE		= 'U4PRODUCTS/PRODUCT.GEODECAVE.DDS',
	SHIPCHARGE		= 'U4PRODUCTS/PRODUCT.SHIPCHARGE.DDS',
	STATION_KEY		= 'PRODUCTS/PRODUCT.STATION.OVERRIDE.DDS',
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Product Icons.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.71',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
				for id, icon in pairs(prod_icons) do
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= {'ID', id},
						PRECEDING_KEY_WORDS = 'Icon',
						VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..icon} }
					}
				end
				return T
			end
		)()
	}
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Products/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/*.DDS',
		},
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/ShipIcons/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/UI/FRONTEND/ICONS/SHIPICONS/*.DDS',
		},
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/u4Products/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/*.DDS',
		},
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Update3/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/UI/FRONTEND/ICONS/UPDATE3/*.DDS',
		}
	}
}
