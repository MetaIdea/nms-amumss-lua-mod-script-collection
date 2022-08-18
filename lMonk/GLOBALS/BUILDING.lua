------------------------------------------------------------------
local desc = [[
  Increased scan range for buildings; More building found in scan
  Increased connections lengh of bases
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC BUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCBUILDINGGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'UnknownBuildingRange',				200},	-- 600
					{'MarkerLineWidth',						-3},	-- 4
					{'MaxShipScanBuildings',				1},		-- 2

					--- normal game
					{'BaseRadiusExtension',					-20},	-- 50
					{'MinRadiusForBases',					-150},	-- 300
					{'BuildingPlacementMaxConnectionLength',1600},	-- 200
					{'BuildingPlacementDefaultMinDistance',	-2},	-- 3

					--- Extension for basebuilding
					-- {'MaxRadiusForPlanetBases',			 	1000},	-- 1000
					-- {'BaseRadiusExtension',					20},
					-- {'MinRadiusForBases',					100},
				}
			}
		}
	}
}}}}
