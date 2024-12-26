------------------------------------------------------------------
local mod_desc = [[
  Increased scan range for buildings; More building found in scan
  Increased connections lengh of bases
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC BUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.7',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCBUILDINGGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UnknownBuildingRange',				800},	-- 600
					{'MarkerLineWidth',						2},		-- 4
					{'MaxShipScanBuildings',				3},		-- 2

					--- normal game
					{'BaseRadiusExtension',					30},	-- 50
					{'MinRadiusForBases',					150},	-- 300
					{'BuildingPlacementMaxConnectionLength',1800},	-- 200
					{'BuildingPlacementDefaultMinDistance',	1},		-- 3

					--- Extension for basebuilding
					-- {'MaxRadiusForPlanetBases',			 	2000},	-- 1000
					-- {'BaseRadiusExtension',					80},
					-- {'MinRadiusForBases',					1100},
				}
			}
		}
	}
}}}}
