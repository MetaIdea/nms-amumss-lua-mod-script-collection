--arg[1] == string:file EXT to check
--arg[2] == string: path to MODBUILDER

--Only files with EXT extension in ModScript and sub-directory that do not contain DONOTUSE_name
function Log_file_cleaner(logFile)
  local p = function(...) return end --to disable
  if LDebug then p = print end --active
  
  local file = ParseTextFileIntoTable(logFile)
  if #file == 0 then
    print(logFile.." is empty!")
  end
  
  -- print("Trying to delete "..logFile)
  -- repeat
    -- --DeleteFile(logFile)
    -- os.remove(logFile)
  -- until not IsFileExist(logFile)
  -- print(logFile.." deleted")
  
  local newFile = {}
  for i=1,#file do
    local s = file[i]
    if trim(s) ~= "" then
      if trim(s):sub(1,3) ~= [[[F]] then
        s = s:gsub([[.-m]],"")
        table.insert(newFile,s)
      end
    elseif i > 1 and trim(file[i-1]) ~= "" then
      --if previous is not also empty, keep this empty line
      table.insert(newFile,s)
    end
    if string.find(s,[[]],1,true) then
      -- print("BEL at "..i.." with "..#newFile.." lines")
      break
    end
  end

  local newFile = ConvertLineTableToText(newFile)
  WriteToFile(newFile,logFile)
end

-- ****************************************************
-- main
-- ****************************************************

--we are in AMUMSS folder

LocalFolder = [[]]
if gVerbose == nil then dofile([[MODBUILDER\LoadHelpers.lua]]) end

pv(">>>     In Log_file_cleaner.lua")
THIS = "In Log_file_cleaner: "
LDebug = false

EXT = arg[1]

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")..[[\]] -- \ required because we are in AMUMSS folder

-- gPathToModScript = [[.\ModScript]]

logFile = [[log.lua]]
if not IsFileExist(logFile) then
  logFile = [[log.txt]]
end

if IsFileExist(logFile) then
  Log_file_cleaner(logFile)
  print("Done!")
else
  print("No log file to clean!")
end

print("Ended")
-- WaitForAnyKey("end of Log_file_cleaner(), press key...")
LuaEndedOk(THIS)
