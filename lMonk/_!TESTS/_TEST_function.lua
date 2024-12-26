--[[-----------------------------------------
 random functions
-------------------------------------------]]

--	Save the converted e2l table to the runtime processing temp folder
function SaveRuntimeMbin(t, path)
	path = '../MODBUILDER/_TEMP/DECOMPILED/'..path:gsub('.MBIN$', '.EXML')
	f = io.open(path, 'w')
	if f then
		f:write(FileWrapping(t))
		f:close()
		return true
	end
	return false
end

local rgbs = {
	{0.34,		0.455,		0.604},
	{0.7,		0.863,		0.925},
	{0.733,		0.878,		0.953},
	{0.996,		1,			0.83},
	{0.7,		0.863,		0.925},
	{0.98,		0.811,		0.628},
	{1,			1,			1},
	{0.10196,	0.15294,	0.2},
	{0.5411765,	0.49803922,	0.44705883}

}

local function rgb2hex(c)
	local h = ''
	for i=1, #c do h = h..string.format('%02X', math.floor(c[i] * 255 + 0.5)) end
	return h
end

-- for _,r in ipairs(rgbs) do print(rgb2hex(r)) end

local function hex2rgb2(hex)
	local function trunc(x, n)
		return tonumber(string.format('%.'..(n or 0)..'f', x))
	end
	local n = {}
	for i=1, hex:len()-1, 2 do
		table.insert(n, trunc(tonumber(hex:sub(i, i+1), 16) / 255, 3))
	end
	return n[1], n[2], n[3], (n[4] or 1)
	-- return n
end

local function Convert2Rgb(color)
	local function asc2prc(asc)
		for i=1, #asc do
			asc[i] = math.floor(asc[i] / 255 * 1000) / 1000
		end
		return asc
	end
	if type(color) == 'table' and (color[1] > 1 or color[2] > 1 or color[3] > 1) then
		return asc2prc(color)
	end
	return color
end

local function Adjacency(sc)
	local function Adj(a, b)
		return (a[1] == b[1] and math.abs(a[2] - b[2]) <= 1) or (a[2] == b[2] and math.abs(a[1] - b[1]) <= 1)
	end
	local count = 0
	for i=1, (#sc-1) do
		for j=i+1, #sc do
			count = count + (Adj(sc[i], sc[j]) and 1 or 0)
		end
	end
	return count >= 3 -- 4 is FULL adjacency
end

local function InsertHexColor(hex)
	local rgb = {{'R', 1}, {'G', 1}, {'B', 1}, {'A', 1}}
	for i=1, (hex:len()/2) do
		rgb[i][2] = tonumber(hex:sub(i*2-1, i*2), 16) / 255
	end
	return rgb
end

local function Hex2Pr(h, dec)
	dec = dec or 3
	return (math.floor(tonumber(h, 16) / 255) * 10^dec) / 10^dec
end

local function _add1(val) return '@'..(val >= 0 and '+'..val or val) end
local function _add2(val) return '@'..(val >= 0 and '+' or '-')..math.abs(val) end

local function _mul(val) return '@*'..val end
-- function _mul(val) return '@*'..(val >= 0 and val or math.abs(1/val)) end
-- no solution for multiplying a negative!!

-- print(JenkinsHash('1RefShipGun2'))

local function MergeTables(tables)
	local merged = {}
	for _, tbl in ipairs(tables) do
		for k, val in pairs(tbl) do
			if type(val) == 'table' then
				merged[k] = merged[k] or {}
				merged[k] = MergeTables({merged[k], val})
			else
				merged[k] = val
			end
		end
	end
	return merged
end


local function hex2Percent(hex, i)
	return math.floor(tonumber(hex:sub(i * 2 - 1, i * 2), 16) / 255 * 1000) / 1000
end

local function GetFileName(mbin)
	return mbin:match('.+/(.-)%.MBIN$')
end

print(GetFileName('D:/MODZ_stuff/NoMansSky/UNPACKED/METADATA/SIMULATION/SOLARSYSTEM/VOXELGENERATORSETTINGS.MBIN'))