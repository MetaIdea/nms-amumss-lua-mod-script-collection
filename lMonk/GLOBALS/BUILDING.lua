------------------------------------------------------------------
local desc = [[
  Increased scan range for buildings; More building found in scan
  Increased connections lengh of bases
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC BUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
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

					-- normal game
					{'BaseRadiusExtension',					-40},	-- 50
					{'MinRadiusForBases',					-260},	-- 300
					{'MaxRadiusForPlanetBases',			 	2400},	-- 1000
					{'BuildingPlacementMaxConnectionLength',3000},	-- 200

					-- Extension for basebuilding
					-- {'BaseRadiusExtension',					200},
					-- {'MinRadiusForBases',					2500},
				}
			}
		}
	}
}}}}
