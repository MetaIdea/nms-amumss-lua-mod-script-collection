-----------------------------------------------------------------------------------------
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/lua_2_exml.lua')
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/exml_2_lua.lua')
-----------------------------------------------------------------------------------------
--	Simple examples of using ToLua & ToExml (ToExml is called by FileWrapping)
--	 The script makes all the edits on the converted lua data table, then
--	 uses amumss just to pack the edited file using the ADDFILES function.
-----------------------------------------------------------------------------------------

function ReadExml(path)
	local f = io.open(path, 'r')
	local t = ToLua(f:read('*a'))
	f:close()
	return t
end
-----------------------------------------------------------------------------------------

local src0 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/GCCAMERAGLOBALS.GLOBAL.EXML'
local gc_cam_file = ReadExml(src0)
local gc_cam = gc_cam_file.template

gc_cam.VehicleExitFlashTime			= 0.5
gc_cam.VehicleExitFlashStrength		= 0.5
gc_cam.BinocularFlashTime			= 0.12
gc_cam.BinocularFlashStrength		= 0.4
gc_cam.MechCameraArmShootOffsetY	= 2
gc_cam.InteractionHeadHeightDefault	= 1.5

for _,flwcam in pairs({
	'SpaceshipFollowCam',
	'DropshipFollowCam',
	'ShuttleFollowCam',
	'RoyalShipFollowCam',
	'SailShipFollowCam',
	'ScienceShipFollowCam',
	'AlienShipFollowCam'
}) do
	gc_cam[flwcam].LookStickLimitAngle = 205
end

local shk = {}
--	map GcCameraShakeData names for use as table keys
for i, s in ipairs(gc_cam.CameraShakeTable) do shk[s.Name] = i end

gc_cam.CameraShakeTable[shk.LAND].StrengthScale							= 2
gc_cam.CameraShakeTable[shk.LAND].CapturedData.ShakeStrength			= 0.01
gc_cam.CameraShakeTable[shk.WALKERWALK].StrengthScale					= 2
gc_cam.CameraShakeTable[shk.WALKERWALK].CapturedData.ShakeStrength		= 0.02
gc_cam.CameraShakeTable[shk.DOCKINGSHAKE].StrengthScale					= 8
gc_cam.CameraShakeTable[shk.DOCKINGSHAKE].CapturedData.ShakeStrength	= 0.006
gc_cam.CameraShakeTable[shk.FLYBY].StrengthScale						= 1000
gc_cam.CameraShakeTable[shk.FLYBY].CapturedData.ShakeStrength			= 1.2

