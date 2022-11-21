--arg[1] == string: file EXTensions to check
--arg[2] == string: path to MODBUILDER
--arg[3] == string: report too deep sub-folders
--arg[4] == string: report pathTooLongList
--arg[5] == string: Caller location

--Only files with EXT extensions in ModScript and sub-directory that do not contain DONOTUSE_name
function SearchModScriptForMultiFileExt(EXT,IsTooDeep,IsTooLongPaths)
  local p = function(...) return end --to disable
  if LDebug then p = print end --active
  
  GetModScriptValidContent(gPathToModScriptFromMain)
  local ModScriptValidContent = gModScriptValidContent --for speed
  --local ScriptList = gScriptList --for speed
  
  if IsTooDeep then
    --now check and remove too deep sub-folders
    --like: Test_Combine_vs_Invividual\PubMods2\BAD_SUB_FOLDER
    local IsFirst = true
    local IsFound = false
    
    for i=1,#ModScriptValidContent do
      if ModScriptValidContent[i][2] ~= "" then
        if IsFirst then
          IsFirst = false
          print("")
        end
        IsFound = true
        print(_zRED..[[>>> [NOTICE] ModScript sub-folder >>> ]].._zGREEN..ModScriptValidContent[i][2].._zRED..[[ <<< is too deep and will not be used.]].._zDEFAULT)
      end
    end
    
    -- if IsFound then
      -- -- in this place, was not working for DarkScythe
      -- WaitForAnyKey()
    -- end
  end
  
  if IsTooLongPaths then
    for i=1,#ModScriptValidContent do
      local IsFirst = true
      if ModScriptValidContent[i][3] ~= "" then
        if IsFirst then
          IsFirst = false
          print("")
          if #pathTooLongList > 1 then
            print(_zRED..[[>>> [WARNING] These paths are probably too long (> 260 char) and can cause problems.]].._zDEFAULT)
          else
            print(_zRED..[[>>> [WARNING] This path is probably too long (> 260 char) and can cause problems.]].._zDEFAULT)
          end
        end
        
        print("- "..trim(ModScriptValidContent[i][3]))
        Report("","- "..trim(ModScriptValidContent[i][3]))
      end
    end
  end

  local ModScriptEXTDirList = {}
  local extCount = {}
  
  --split EXT (like ".MBIN,.EXML,.lua,.pak") into its extensions
  --and insert count into table
  local t = EXT:split(",")
  for i=1,#t do
    -- p("=== ext = ["..t[i].."]")
    
    local tmp
    if t[i]:upper() == ".LUA" then
      tmp = GetFilesWithExt(t[i],false)
    else
      -- true: only in ModScript folder, not sub-folders
      tmp = GetFilesWithExt(t[i],true)
    end

    extCount[#extCount+1] = {}
    extCount[#extCount][1] = t[i]
    extCount[#extCount][2] = #tmp

    -- for i=1,#tmp do
      -- table.insert(ModScriptEXTDirList,tmp[i])
    -- end
  end
  
  local extCountString = ""
  for i=1,#extCount do
    extCountString = extCountString..extCount[i][1].."="..extCount[i][2]..", "
  end

  -- print("=== ["..string.sub(extCountString,1,-3).."]")
  -- p()

  -- write out info for bzrun.bat
  WriteToFile(string.sub(extCountString,1,-3),[[modscriptContent.txt]])

  -- p("=== Done")
  -- for i=1,#ModScriptEXTDirList do
    -- p(" - ["..ModScriptEXTDirList[i].."]")
  -- end
  
end

-- ****************************************************
-- main
-- ****************************************************

--we are in MODBUILDER folder

LocalFolder = [[]]
if gVerbose == nil then dofile([[LoadHelpers.lua]]) end

pv(">>>     In SearchModScriptForMultiFileExt.lua")
THIS = "In SearchModScriptForMultiFileExt: "

EXT = arg[1] --like ".MBIN,.EXML,.LUA"

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"") --..[[\]] -- \ required because we are in AMUMSS folder
--gMASTER_FOLDER_PATH = LoadFileData(arg[2]..[[\MASTER_FOLDER_PATH.txt]])
-- print("gMASTER_FOLDER_PATH = ["..gMASTER_FOLDER_PATH.."]")
-- print("X1: len(gMASTER_FOLDER_PATH) = "..string.len(gMASTER_FOLDER_PATH).." "..#gMASTER_FOLDER_PATH)

gPathToModScriptFromMain = [[..\ModScript]]

IsTooLongPaths = (arg[4] == "TooLongPaths")
IsTooDeep = (arg[3] == "TooDeep")

if not (arg[5] == nil or arg[5] == "") then
  print()
  print("         @@@                Caller Id = ["..arg[4].."]")
  print("         @@@               currentdir = ["..lfs.currentdir().."]")  
  print("         @@@ gPathToModScriptFromMain = ["..gPathToModScriptFromMain.."]")
end

-- print("=== arg[i] = ["..arg[1].."]")
--local result = SearchModScriptForMultiFileExt(EXT)
-- print("IsTooDeep = "..tostring(IsTooDeep))
-- Report("",[[>>> This is SearchModScriptForMultiFileExt()]],"WARNING")
SearchModScriptForMultiFileExt(EXT,IsTooDeep,IsTooLongPaths)

gfilePATH = "..\\" --for Report()
Report_flush()

LuaEndedOk(THIS)

--results returned thru modscriptContent.txt
