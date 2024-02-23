---------------------------------------------------------------------------------------------------------
-- Generate a report of source mbin files in all scripts

-- * Needs something like the following to deal with dofile()
-- * dofile((IsRunByAmumss() and '' or 'D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/')..'LIB/lua_2_exml.lua')
---------------------------------------------------------------------------------------------------------
local scripts_path = 'E:\\MODZ_stuff\\NoMansSky\\AMUMss_Scripts\\test09'
local output_path = 'E:\\_dump'

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

-- loop through an amumss scripts folder and collate mod names and MBIN sources from each
local function CollateSources(path)
	local function IsMbin(f) return f:sub(#f-3, #f) == 'MBIN' end
	local src_list = {}
	for _,sf in pairs(ListFolder(path, 'f', '*.lua')) do
		loadfile(sf)()
		container = NMS_MOD_DEFINITION_CONTAINER
		local script = {
			name	= container.MOD_FILENAME,
			sources	= {}
		}
		if container.MODIFICATIONS and #container.MODIFICATIONS > 0 then
			mbin_ct = container.MODIFICATIONS[1].MBIN_CHANGE_TABLE or container.MODIFICATIONS[1].MBIN_CT
			for _,mct in pairs(mbin_ct) do
				local mbin_fs = mct.MBIN_FILE_SOURCE or mct.MBIN_FS
				if type(mbin_fs) == 'table' then
					for _,mfs in pairs(mbin_fs) do
						script.sources[#script.sources+1] = mfs
					end
				else
					script.sources[#script.sources+1] = mbin_fs
				end
			end
		end
		if container.ADD_FILES and #container.ADD_FILES > 0 then
			for _,af in ipairs(container.ADD_FILES) do
				local afs = af.FILE_DESTINATION:gsub('EXML', 'MBIN')
				if IsMbin(afs) then
					script.sources[#script.sources+1] = afs
				end
			end
		end
		src_list[#src_list+1] = script
	end
	return src_list
end

-- MAIN
local output = {}
for _,spt in pairs(CollateSources(scripts_path)) do
	output[#output+1] = '\n'..spt.name..'\n'
	for _,src in ipairs(spt.sources) do
		if type(src) == 'table' then
			for _,s in ipairs(src) do
				output[#output+1] = '\t'..s..'\n'
			end
		else
			output[#output+1] = '\t'..src..'\n'
		end
	end
end
local oput = output_path..'\\'..scripts_path:match('([^/\\]+)[/\\]-$')..'.txt'
local wf = io.open(oput, 'w')
wf:write(table.concat(output))
wf:close()
print('Sources report written to '..oput)