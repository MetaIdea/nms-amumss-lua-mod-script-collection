-----------------------------------------------------------------------------------------
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/_lua_2_exml.lua')
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/_exml_2_lua.lua')
-----------------------------------------------------------------------------------------
--	Simple examples of using ToLua & ToExml (ToExml is called by FileWrapping)
--	The script makes all the edits on the converted lua data table,
--	then uses EXT_FUNC just to repack the result.
-----------------------------------------------------------------------------------------

local gc_product_table  = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'
local gc_camera_globals = 'GCCAMERAGLOBALS.GLOBAL.MBIN'

local function ProcessCameraGlobals(exml)
	local gc_cam_file = ToLua(exml)
	local gc_cam = gc_cam_file.template

	gc_cam.VehicleExitFlashTime			= 0.5
	gc_cam.VehicleExitFlashStrength		= 0.5
	gc_cam.BinocularFlashTime			= 0.12
	gc_cam.BinocularFlashStrength		= 0.4
	gc_cam.MechCameraArmShootOffsetY	= 2
	gc_cam.InteractionHeadHeightDefault	= 1.5

	for _,flwcam in ipairs({
		'SpaceshipFollowCam',
		'DropshipFollowCam',
		'ShuttleFollowCam',
		'RoyalShipFollowCam',
		'SailShipFollowCam',
		'ScienceShipFollowCam',
		'AlienShipFollowCam'
	}) do
		gc_cam[flwcam].LookStickLimitAngle = 255
	end

	local shk = {}
	--	map GcCameraShakeData names for use as table keys
	for i, s in ipairs(gc_cam.CameraShakeTable) do
		shk[s.Name] = i
	end
	gc_cam.CameraShakeTable[shk.LAND].StrengthScale							= 2
	gc_cam.CameraShakeTable[shk.LAND].CapturedData.ShakeStrength			= 0.01
	gc_cam.CameraShakeTable[shk.WALKERWALK].StrengthScale					= 2
	gc_cam.CameraShakeTable[shk.WALKERWALK].CapturedData.ShakeStrength		= 0.02
	gc_cam.CameraShakeTable[shk.DOCKINGSHAKE].StrengthScale					= 8
	gc_cam.CameraShakeTable[shk.DOCKINGSHAKE].CapturedData.ShakeStrength	= 0.006
	gc_cam.CameraShakeTable[shk.FLYBY].StrengthScale						= 1000
	gc_cam.CameraShakeTable[shk.FLYBY].CapturedData.ShakeStrength			= 1.2

	return FileWrapping(gc_cam_file)
end
-----------------------------------------------------------------------------------------
local function ProcessProductTable(exml)
	local gc_prod_file	= ToLua(exml)
	local gc_prod		= gc_prod_file.template.Table

	local pid = {}
	--	map IDs for use as table keys
	for i, prd in ipairs(gc_prod) do
		pid[prd.ID] = i
	end
	-- can have a products mod without higher stacks(!)
	for _,prd in ipairs(gc_prod) do
		prd.StackMultiplier = prd.StackMultiplier * 10
	end
	gc_prod[pid.MICROCHIP].Requirements[2].Amount = 2

	return FileWrapping(gc_prod_file)
end
-----------------------------------------------------------------------------------------
ProcessRawExml = nil
function ProcessRawExml(the_index) -- called by AMUMSS
	local nz_product = NormalizePath(gc_product_table, true)
	local nz_camera  = NormalizePath(gc_camera_globals, true)
	return {
		[nz_product] = ProcessProductTable(table.concat(the_index.ModdedEXMLs[nz_product])),
		[nz_camera]  = ProcessCameraGlobals(table.concat(the_index.ModdedEXMLs[nz_camera]))
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '_TEST L2E edit with ext_func.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE = { gc_product_table, gc_camera_globals },
		EXT_FUNC		 = {'ProcessRawExml'}
	}
}}}}
