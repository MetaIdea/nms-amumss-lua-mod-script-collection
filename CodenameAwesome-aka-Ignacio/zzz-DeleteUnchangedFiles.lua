function file_exists(file_path)
	local f=io.open(file_path,"r")
	if f then
		io.close(f)
		return true
	else
		return false
	end
end

local file_path = "../TOOLS/NMS_FULL_pak_list.txt"
local file = io.open(file_path, "r")

print("")
print(" ======>>> Please wait, the script is looking for files to discard...")
print([[    If this script ends with: [ATTENTION] MBIN_CHANGE_TABLE is empty OR not a table of sub-tables...
    it only means that no file were found to discard.
    Just disregard the [ATTENTION] message, it is normal.]])

MBIN_CHANGE_TABLE = {}
for line in file:lines() do
  mod_folder_path = "../MODBUILDER/MOD/"..string.gsub(line,".MBIN",".EXML")
	exists_in_mod_folder = file_exists(mod_folder_path)
    
	decompiled_folder_path = "../MODBUILDER/_TEMP/DECOMPILED/"..string.gsub(line,".MBIN",".EXML")
	exists_in_decompile_folder = file_exists(decompiled_folder_path)
	
	if exists_in_mod_folder and exists_in_decompile_folder then
		if io.open(mod_folder_path):read("*a") == io.open(decompiled_folder_path):read("*a") then
			print("Unchanged file found. Discarding "..line)
			MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE + 1] = {
				["MBIN_FILE_SOURCE"] = {line},
				["MBIN_FS_DISCARD"] = "TRUE"
			}
		end
	end
end
print(" Done")
print("")

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "!!!ThisMustBeCombined!!!.pak", --If you see this pak name in your MODS folder, you did it wrong.
  ["MOD_DESCRIPTION"]		= "Discards files that are identical to the ones in MODBUILDER/_TEMP/DECOMPILED/",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
      COMMENT = [[If this script ends with [ATTENTION] MBIN_CHANGE_TABLE is empty OR not a table of sub-tables...
      it only means that no file were found to discard
      Just disregard the [ATTENTION] message, it is normal]],
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}