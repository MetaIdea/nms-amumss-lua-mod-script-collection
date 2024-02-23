-----------------------------------------------------------------------------------------
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/lua_2_exml.lua')
dofile('C:/AMUMSS/ModScript/ModHelperScripts/LIB/exml_2_lua.lua')
-----------------------------------------------------------------------------------------
--	Simple examples of using ToLua & ToExml (ToExml is called by FileWrapping)
--	as a stand-alone EXML editor (it's not a full modding tool).
--  * This is a bare-bones, no safeties, example - NOT a working mod script.
-----------------------------------------------------------------------------------------

function ReadExml(path)
	local f = io.open(path, 'r')
	local t = ToLua(f:read('*a'))
	f:close()
	return t
end

function WriteExml(t, path)
	local f = io.open(path, 'w')
	f:write(FileWrapping(t))
	f:close()
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

WriteExml(gc_cam_file, 'e:/_dump/gccameraglobals.global.exml')
-----------------------------------------------------------------------------------------

local src1 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.EXML'
local gc_tech_file = ReadExml(src1)
local gc_tech = gc_tech_file.template.Table

local tid = {}
--	map IDs for use as table keys
for i, tch in ipairs(gc_tech) do tid[tch.ID] = i end

gc_tech[tid.UT_TOX].ChargeAmount = 1200
for _,sb in ipairs(gc_tech[tid.SHIPGUN1].StatBonuses) do
	if sb.Stat.StatsType:find('Range') then
		sb.Bonus = sb.Bonus + 500
	end
end
table.remove(gc_tech, tid.MECH_GUN)

WriteExml(gc_tech_file, 'e:/_dump/gc_tech.exml')
-----------------------------------------------------------------------------------------

local src2 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.EXML'
local gc_prod_file = ReadExml(src2)
local gc_prod = gc_prod_file.template.Table

local pid = {}
--	map IDs for use as table keys
for i, prd in ipairs(gc_prod) do pid[prd.ID] = i end

for _,prd in ipairs(gc_prod) do
	prd.StackMultiplier = prd.StackMultiplier * 10
end
gc_prod[pid.MICROCHIP].Requirements[2].Amount = 2

WriteExml(gc_prod_file, 'e:/_dump/gc_prod.exml')
-----------------------------------------------------------------------------------------

print('...done')
