-----------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_lua_2_exml.lua')
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_exml_2_lua.lua')
-----------------------------------------------------------------------------------------

local function ConvertMbin(mbin)
	local function fileExists(path)
		local f = io.open(path)
		return f ~= nil and f:close()
	end
	if not fileExists(mbin:gsub('.MBIN$', '.EXML')) then
		os.execute(string.format(
			'D:/MODZ_stuff/NoMansSky/Tools/AMUMSS/MODBUILDER/MBINCompiler.latest.exe convert -y -q --input-format=MBIN %s',
			mbin
		))
	end
end

local function GetFileName(mbin)
	return mbin:match([[.+[/\](.-)%.MBIN$]])
end

local mbin = {
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN',							-- 1
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/MISSIONS/SEASONALMISSIONTABLE.MBIN',							-- 2
	'D:/MODZ_stuff/NoMansSky/UNPACKED/MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',	-- 3
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/REWARDTABLE.MBIN',										-- 4
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/GAMESTATE/PLAYERDATA/MODULARCUSTOMISATIONDATATABLE.MBIN',				-- 5
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',						-- 6
	'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/SOLARSYSTEM/VOXELGENERATORSETTINGS.MBIN',						-- 7
	'D:/MODZ_stuff/NoMansSky/UNPACKED/MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.DESCRIPTOR.MBIN',				-- 8
	'D:/MODZ_stuff/NoMansSky/UNPACKED/GCCAMERAGLOBALS.GLOBAL.MBIN',														-- 9
}
-----------------------------------------------------------------------------------------
local index	 = 6

ConvertMbin(mbin[index])
local r_src  = io.open(mbin[index]:gsub('.MBIN$', '.EXML'), 'r')
local w_src  = io.open('d:/_dump/'..GetFileName(mbin[index])..'.lua', 'w')

w_src:write( PrintExmlAsLua({exml=r_src:read('*a')}) )
r_src:close()
w_src:close()

print('saved '..GetFileName(mbin[index])..' LUA to _dump')
---------------------------------------------------------------------------------------
-- l2e = dofile('d:/_dump/'..GetFileName(mbin[index])..'.lua')
-- io.open('d:/_dump/'..GetFileName(mbin[index])..'.EXML', 'w'):write(FileWrapping(l2e))

-- print('saved '..GetFileName(mbin[index])..' EXML to _dump')
