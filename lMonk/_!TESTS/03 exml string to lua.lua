-----------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/lua_2_exml.lua')
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/exml_2_lua.lua')
-----------------------------------------------------------------------------------------

exml_section_08 = [[
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
]]

local a = ToLua(exml_section_08)

local tbl_08 = 'exml_source'

local w_src = io.open('d:/_dump/'..tbl_08..'.lua', 'w')

w_src:write(PrintExmlAsLua(exml_section_08))
w_src:close()
print('saved '..tbl_08..' LUA to _dump')
