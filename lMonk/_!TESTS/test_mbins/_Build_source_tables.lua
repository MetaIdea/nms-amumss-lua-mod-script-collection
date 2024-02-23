---@diagnostic disable: need-check-nil
----------------------------------------------------
-- Grab all mbin files from each script in a folder
-- and add them to a single script
----------------------------------------------------
local scripts_path = 'E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts'
local results_path = 'E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts\\_TESTS!\\test_mbins'

local function ListFolder(path, mode, ext)
	if mode == 'f' then mode = '-d' end
	local t = {}
	local cmd = string.format('dir %s\\%s /a:%s /b', path, (ext or ''), mode)
	local dirdump = io.popen(cmd, 'r')
	local chunk = dirdump:read('*all')
	for s in chunk:gmatch('[^\r\n]+') do
		t[#t+1] = string.format('%s\\%s', path, s)
	end
	return t
end

-- collate folders whos name does NOT contain [!.+]
local function CollateFolders(mpath)
	local batch = {}
	for _,fpath in pairs(ListFolder(mpath, 'd')) do
		fname = fpath:sub(#mpath + 2, #fpath)
		if not fname:find('[!.+/~]') then
			batch[fname] = fpath
		end
	end
	return batch
end

-- loop through scripts folder and collate the MBIN sources from each
-- (keeps uniques only by saving to the table's key)
local function CollateSources(path)
	local function IsMbin(f) return f:sub(#f-3, #f) == 'MBIN' end
	local mbins = {}
	for _,sf in pairs(ListFolder(path, 'f', '*.lua')) do
		local src = {}
		loadfile(sf)()
		container = NMS_MOD_DEFINITION_CONTAINER
		if container.MODIFICATIONS and #container.MODIFICATIONS > 0 then
			mbin_ct = container.MODIFICATIONS[1].MBIN_CHANGE_TABLE
			for _,mct in pairs(mbin_ct) do
				local mbin_fs = mct.MBIN_FILE_SOURCE
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
		for k,_ in pairs(src) do mbins[#mbins+1] = k end
	end
	return mbins
end

--	Pretty-print a lua table as a ready-to-work script
--	(Doesn't maintain the original table order)
local function TableToString(tbl, name, l)
	local lvl		= l or 1
	local indent	= '\t'
	name			= name or 'source_09'
	local slua		= {}
	function slua:add(t)
		for _,v in ipairs(t) do self[#self+1] = v end
	end
	local function key(s)
		return tonumber(s) and '' or s..' = '
	end
	local function eval(v)
		if v == true then
			return 'true'
		elseif v == false then
			return 'false'
		else
			return '[['..v..']]'
		end
	end
	slua:add({key(name), '{\n'})
	for k, val in pairs(tbl) do
		if type(val) ~= 'table' then
			slua:add({indent:rep(lvl), key(k), eval(val), ',\n'})
		else
			slua:add({indent:rep(lvl), TableToString(val, k, lvl + 1), ',\n'})
		end
	end
	lvl = lvl - 1
	slua:add({indent:rep(lvl), '}'})
	return table.concat(slua)
end

-- save a table to file. returns true if successful
local function WriteTableToFile(tbl, tbl_name, file)
	local wf = io.open(file, 'w')
	local f = wf:write(TableToString(tbl, tbl_name))
	wf:close()
	return f ~= nil
end

-- add the collated mbin files to a table and save it as an AMUMSS script
local function GenerateAmumssScript(fname)
	local mod = {
		MOD_FILENAME = 'Test used '..fname..'.pak',
		MOD_DESCRIPTION = 'Testing used mbins compilation without value changes',
		MODIFICATIONS = {
			{
				MBIN_CHANGE_TABLE = {
					{
						MBIN_FILE_SOURCE = CollateSources(fname)
					}
				}
			}
		}
	}
	fname = fname:sub(#scripts_path + 2, #fname)
	local f = string.format('%s\\%s.lua', results_path, fname)
	b = WriteTableToFile(mod, 'NMS_MOD_DEFINITION_CONTAINER', f)
	print('Batch '..fname..(b and ' processed successfully.' or ' FAILED!'))
end

-- MAIN
local batch = CollateFolders(scripts_path)
for _,fn in pairs(batch) do GenerateAmumssScript(fn) end

--------------------------------------------------------------------------------------------------------
local function Experiment4()
	loadfile('E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts\\TABLES\\TECHNOLOGY.lua')()
	mct = NMS_MOD_DEFINITION_CONTAINER
	b = WriteTableToFile(mct, 'NMS_MOD_DEFINITION_CONTAINER', results_path..'\\'..'experiment4.lua')
	print('experiment 4 '..(b and 'Successful!' or 'FAILED!'))
end

-- Experiment4()