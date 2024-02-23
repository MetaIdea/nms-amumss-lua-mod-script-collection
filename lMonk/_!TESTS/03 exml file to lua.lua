-----------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/lua_2_exml.lua')
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/exml_2_lua.lua')
-----------------------------------------------------------------------------------------

local src0 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/CATALOGUECRAFTING.EXML'
local src1 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/MISSIONS/SEASONALMISSIONTABLE.EXML'
local src2 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.EXML'
local src3 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/REWARDTABLE.EXML'
local src4 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.EXML'
local src5 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.EXML'
local src6 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.EXML'
local src7 = 'D:/MODZ_stuff/NoMansSky/UNPACKED/MODELS/PLANETS/CREATURES/STRIDERRIG/STRIDER.DESCRIPTOR.EXML'
local src8 = 'D:/MODZ_stuff/NoMansSky/_game_mod_Folder/utopia constructor/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER_WEAP/ENTITIES/DATA.ENTITY.EXML'

-----------------------------------------------------------------------------------------
local tbl_08 = 'exml_source'

local r_src = io.open(src0, 'r')
local w_src = io.open('d:/_dump/'..tbl_08..'.lua', 'w')
w_src:write( PrintExmlAsLua( r_src:read('*a') ) )
r_src:close()
w_src:close()

print('saved '..tbl_08..' LUA to _dump')
---------------------------------------------------------------------------------------
dofile('d:/_dump/'..tbl_08..'.lua')
---@diagnostic disable-next-line: undefined-global
-- io.open('d:/_dump/'..tbl_08..'.EXML', 'w'):write(FileWrapping(exml_source))

-- print('saved '..tbl_08..' EXML to _dump')
