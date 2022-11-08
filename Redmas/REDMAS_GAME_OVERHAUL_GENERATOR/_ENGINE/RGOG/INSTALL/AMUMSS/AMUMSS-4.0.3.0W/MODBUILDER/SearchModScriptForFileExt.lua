--arg[1] == string:file EXT to check
--arg[2] == string: path to MODBUILDER
--arg[3] == string: to indicate to create a composite name for the pak
--arg[4] == string: report pathTooLongList
--arg[5] == string: Caller location

--Only files with EXT extension in ModScript and sub-directory that do not contain DONOTUSE_name
function SearchModScriptForFileExt(EXT)
  local p = function(...) return end --to disable
  if LDebug then p = print end --active
  
  GetModScriptValidContent(gPathToModScript)
  
  -- local ModScriptEXTDirList = {}
  -- ModScriptEXTDirList = GetFilesWithExt(EXT)
  -- p(" YYYYY #ModScriptEXTDirList = ["..#ModScriptEXTDirList.."]")
  
  --return #ModScriptEXTDirList
  return #gScriptList
end

-- ****************************************************
-- main
-- ****************************************************

--we are in MODBUILDER folder

LocalFolder = [[]]
if gVerbose == nil then dofile([[LoadHelpers.lua]]) end

pv(">>>     In SearchModScriptForFileExt.lua")
THIS = "In SearchModScriptForFileExt: "
LDebug = false

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"") --..[[\]] -- \ required because we are in AMUMSS folder
--gMASTER_FOLDER_PATH = LoadFileData(arg[2]..[[\MASTER_FOLDER_PATH.txt]])
-- print("X2: len(gMASTER_FOLDER_PATH) = "..string.len(gMASTER_FOLDER_PATH).." "..#gMASTER_FOLDER_PATH)
-- print("["..lfs.currentdir().."]")    --...AMUMSS
-- print("["..gMASTER_FOLDER_PATH.."]") --...AMUMSS\

gPathToModScript = [[..\ModScript]]

EXT = arg[1]

local result = SearchModScriptForFileExt(EXT)

gfilePATH = "..\\" --for Report()
Report_flush()

LuaEndedOk(THIS)
-- print(" YYYYY result = ["..result.."]")
os.exit(result)