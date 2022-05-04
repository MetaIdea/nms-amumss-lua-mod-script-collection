-------------------------------

local File_Mover = {
	logo_decals = {
		source = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/decals/ship/logo/',
		target = 'TEXTURES/COMMON/DECALS/LOGO/',
		names  = {
			{'LOGO.BASE.L*.DDS'},
			-- {'LOGO.BASE.L2.DDS'},
			-- {'LOGO.BASE.L3.DDS'},
			-- {'LOGO.BASE.L4.DDS'},
			-- {'LOGO.BASE.L5.DDS'},
			-- {'LOGO.BASE.L6.DDS'},
			-- {'LOGO.BASE.L7.DDS'},
			-- {'LOGO.BASE.L8.DDS'},
			-- {'LOGO.BASE.L9.DDS'},
			-- {'LOGO.BASE.L10.DDS'},
			-- {'LOGO.BASE.L11.DDS'},
			-- {'LOGO.BASE.L12.DDS'},
			-- {'LOGO.BASE.L13.DDS'},
			-- {'LOGO.BASE.L14.DDS'},
			-- {'LOGO.BASE.L15.DDS'},
		}
	},
}

local function BuildAddFilesTable()
	local T = {}
	for _,p in pairs(File_Mover) do
		for _,s in pairs(p.names) do
			table.insert(T, {
				EXTERNAL_FILE_SOURCE = p.source..s[1],
				FILE_DESTINATION	 = p.target..(s[2] or s[1]),
			})
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TEST 05 texture replaces.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MODIFICATIONS		= {},
	ADD_FILES			= BuildAddFilesTable()
}
