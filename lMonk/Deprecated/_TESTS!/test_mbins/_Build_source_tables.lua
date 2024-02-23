----------------------------------------------------
-- Grab all mbin files from each script in a folder
-- and add them to a single script
----------------------------------------------------
local Scripts_Path = 'E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts'
local Results_Path = 'E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts\\_TESTS!\\test_mbins'

local Batch = {}

local function lstDir(path, mode, ext)
	if mode == 'f' then mode = '-d' end
	local t = {}
	local cmd = string.format('dir %s\\%s /a:%s /b', path, (ext or ''), mode)
	local dirdump = assert(io.popen(cmd, 'r'))
	local chunk = dirdump:read('*all')
	for s in chunk:gmatch('[^\r\n]+') do
		table.insert(t, string.format('%s\\%s', path, s))
	end
	return t
end

-- collate folders whos name does NOT contain [!.+]
local function collateFolders(path)
	local d = lstDir(path, 'd')
	for _,v in pairs(d) do
		dname = v:sub(#path + 2, #v)
		if not dname:find('[!.+]') then
			Batch[dname] = v
		end
	end
end

-- loop through scripts folder and collate the MBIN sources from each
-- (keeps uniques only by saving to the table's key)
local function collateSources(path)
	local function IsMbin(f) return f:sub(f:len()-3, f:len()) == 'MBIN' end
	local mbins = {}
	local luas = lstDir(path, 'f', '*.lua')
	for _,sf in pairs(luas) do
		local src = {}
		assert(loadfile(sf))()
		container = NMS_MOD_DEFINITION_CONTAINER
		if container.MODIFICATIONS and #container.MODIFICATIONS > 0 then
			mbin_ct = container.MODIFICATIONS[1].MBIN_CHANGE_TABLE
			for _,mct in pairs(mbin_ct) do
				mbin_fs = mct.MBIN_FILE_SOURCE
				if type(mbin_fs) == 'table' then
					for _,mfs in pairs(mbin_fs) do
						src[mfs] = 1
					end
				else
					src[mbin_fs] = 1
				end
			end
		end
		if container.ADD_FILES and #container.ADD_FILES > 0 then
			for _,af in ipairs(container.ADD_FILES) do
				s = af.FILE_DESTINATION:gsub('EXML', 'MBIN')
				if IsMbin(s) then
					src[s] = 1
				end
			end
		end
		for k,_ in pairs(src) do table.insert(mbins, k) end
	end
	return mbins
end

-- represent a table structure as indented readable text
local function tableToString(name, tbl, l)
	local lvl = l or 1
	local function sp()
		local sp = ''
		for i=1, lvl do sp = sp..'  ' end
		return sp
	end
	local function key(s)
		-- if tonumber(s) ~= nil then return '' else return s..' = ' end
		return (tonumber(s) and '' or s..' = ')
	end
	local function eval(v)
		if type(v) == 'number' or type(v) == 'boolean' then
			return v
		end
		return (v:find('\n') and '[['..v..']]' or '\''..v..'\'')
	end

	local str = key(name)..'{\n'
	for k, v in pairs(tbl) do
		if type(v) ~= 'table' then
			str = string.format('%s%s%s%s,\n', str, sp(), key(k), eval(v))
		else
			str = string.format('%s%s%s,\n', str, sp(), tableToString(k, v, lvl + 1))
		end
	end
	lvl = lvl - 1
	return string.format('%s%s%s', str, sp(), '}')
end

-- save a table to file. returns true if successful
local function writeTableToFile(tbl, tbl_name, file)
	local wf = assert(io.open(file, 'w'))
	f = wf:write(tableToString(tbl_name, tbl))
	wf:close()
	return f ~= nil
end

-- add the collated mbin files to a table and save it as an AMUMSS script
local function generateAmumssScript(b_key)
	local mod = {
		MOD_FILENAME = 'Test used '..b_key..'.pak',
		MOD_DESCRIPTION = 'Testing used mbins compilation without value changes',
		MODIFICATIONS = {
			{
				MBIN_CHANGE_TABLE = {
					{
						MBIN_FILE_SOURCE = collateSources(Batch[b_key])
					}
				}
			}
		}
	}
	local f = string.format('%s\\%s.lua', Results_Path, b_key)
	b = writeTableToFile(mod, 'NMS_MOD_DEFINITION_CONTAINER', f)
	print('Batch '..b_key..(b and ' processed successfully.' or ' FAILED!'))
end

-- MAIN
local function updateMbinsFromAllBatches()
	collateFolders(Scripts_Path)
	for k,_ in pairs(Batch) do generateAmumssScript(k) end
end

updateMbinsFromAllBatches()

--------------------------------------------------------------------------------------------------------
local function experiment4()
	assert(loadfile('E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts\\TABLES\\TECHNOLOGY.lua'))()
	mct = NMS_MOD_DEFINITION_CONTAINER
	b = writeTableToFile(mct, 'NMS_MOD_DEFINITION_CONTAINER', Results_Path..'\\'..'experiment4.lua')
	print('experiment 4 '..(b and 'Successful!' or 'FAILED!'))
end

-- experiment4()