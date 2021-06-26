--[[┎────────────────────────────────────────────────────────────────
	┃ Tweaks to building and base values
────┸────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC BUILDING.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
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
					{'MinRadiusForBases',					-260},	-- 300	EXTEND FOR BASE BUILDING (+2000)
					{'MaxRadiusForPlanetBases',			 	1000},	-- 1000
					{'BaseRadiusExtension',					-45},	-- 50	EXTEND FOR BASE BUILDING (+100)
					{'BuildingPlacementMaxConnectionLength',1200}	-- 200
				}
			}
		}
	}
}}}}
