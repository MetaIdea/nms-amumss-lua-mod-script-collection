--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER
--arg[3] == a message

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end --in MODBUILDER
pv(">>>     In CheckMBINCompilerLOG.lua")
gfilePATH = arg[1] --for Report()
THIS = "In CheckMBINCompilerLOG: "

local LogTable = ParseTextFileIntoTable(arg[2]..[[MBINCompiler.log]])

--starting folder varies
local MASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")..[[\]] -- \ required because we are in AMUMSS folder
--local MASTER_FOLDER_PATH = LoadFileData(arg[2]..[[MASTER_FOLDER_PATH.txt]])

local say = arg[3]
-- because string.gsub pattern does not work with all folder names (ex.: ".")
if string.find(say,MASTER_FOLDER_PATH..[[MODBUILDER\MOD\]],1,true) ~= nil then
  local start = string.find(say,MASTER_FOLDER_PATH..[[MODBUILDER\MOD\]],1,true)
  say = string.sub(say,1,start - 1)..string.sub(say,string.len(MASTER_FOLDER_PATH..[[MODBUILDER\MOD\]]) + start)
end

local Compiling = true
local MessageStart = 10
if string.sub(say,1,1) == "D" then
  --we are Decompiling
    Compiling = false
    MessageStart = 12
end

local sayMore = string.sub(say,MessageStart)
if string.find(sayMore,"%",1,true) ~= nil then
  sayMore = ""
end

local warningCount = 0
local errorCount = 0
for i=1,#LogTable do
  if string.find(LogTable[i],"[WARN]",1,true) then
    warningCount = warningCount + 1
  end
  if string.find(LogTable[i],"[ERROR]",1,true) then
    if string.find(LogTable[i],"[ERROR]: No valid files found!",1,true) then
      LogTable[i] = string.gsub(LogTable[i],"ERROR","WARN")
      if Compiling then
        LogTable[i] = string.gsub(LogTable[i],"files","EXML files")
      else
        LogTable[i] = string.gsub(LogTable[i],"files","MBIN files")
      end
      warningCount = warningCount + 1
    else
      errorCount = errorCount + 1
    end
  end
end  

if warningCount > 0 then
  if Compiling then
    Report("","Trying to compile... "..sayMore)
  else
    Report("","Trying to decompile... "..sayMore)
  end
  local Found = false
  local previousInfo = ""
  for i=1,#LogTable do
    local info = LogTable[i]
    info = string.gsub(info,"%[%[","[")
    if not Found and string.find(info,"[WARN]",1,true) then
      Found = true
      -- local info = LogTable[i+3] --print filepath+name
      -- print(info)
      local start,ending = string.find(info,"[WARN] [",1,true)
      if ending ~= nil then
        info = string.sub(info,ending+1,#info-2)
      end
      
      if info ~= previousInfo then
        previousInfo = ltrim(info)
        print("----------------------------------------")
        print("    [WARNING] MBINCompiler = "..info.." OR check your script!")
        Report("")
        Report("","MBINCompiler = "..info.." OR check your script!","WARNING")
      end
      
    elseif Found then  
      if info == nil or trim(info) == "" 
            or string.find(info," converted.",1,true)
            or string.find(info," WARNINGS.",1,true)
            or string.find(info," TIME:",1,true)
            or string.find(info,"[FILE]",1,true)
            or string.find(info,"at System.",1,true)
            or string.find(info,"at libMBIN.",1,true)
            or string.find(info,"at MBINCompiler.",1,true)
            or string.find(info,"at Microsoft.",1,true) then
        --skip it
      elseif string.find(info,"EXPECTED INFO",1,true) then
        print("    [WARN]    MBINCompiler = "..info)
        Report("","   MBINCompiler = "..info,"WARN")
      elseif string.sub(info,1,7) == "[INFO]:" then
        Found = false
      elseif string.find(info,"FILES FAILED.",1,true) then
        --done, rest of the file is irrelevant
        break
      else
        print("    [WARN]    MBINCompiler = "..info)
        Report("","   MBINCompiler = "..info,"WARN")
      end
    end
  end
  --WaitForAnyKey()
end

if errorCount > 0 then
  if Compiling then
    Report("","Trying to compile... "..sayMore)
  else
    Report("","Trying to decompile... "..sayMore)
  end
  local Found = false
  for i=1,#LogTable do
    local info = LogTable[i]
    info = string.gsub(info,"%[%[","[")
    
    if not Found and string.find(info,"[ERROR]",1,true) then
      Found = true
      -- local info = LogTable[i+3] --print filepath+name
      -- print(info)
      local start,ending = string.find(info,"[ERROR]: [",1,true)
      if ending ~= nil then
        info = string.sub(info,ending,#info-1)
      end
      
      print("----------------------------------------")
      print(_zRED.."      - [ERROR]  MBINCompiler = "..info.." OR check your script!".._zDEFAULT)
      print(_zRED.."      - [PSARC]  The PAK will not include this EXML".._zDEFAULT)
      
      Report("")
      Report("","MBINCompiler = "..info.." OR check your script!","ERROR")
      Report("","The PAK will not include this EXML","PSARC")
      
    elseif Found then  
      if info == nil or trim(info) == "" 
            or string.find(info," converted.",1,true)
            or string.find(info," FAILED.",1,true)
            or string.find(info," TIME:",1,true)
            or string.find(info,"[ERROR]",1,true)
            or string.find(info,"[FILE]",1,true)
            or string.find(info,"at System.",1,true)
            or string.find(info,"at libMBIN.",1,true)
            or string.find(info,"at MBINCompiler.",1,true)
            or string.find(info,"at Microsoft.",1,true) then
        --skip it
      elseif string.sub(info,1,7) == "[INFO]:" then
        Found = false
      elseif string.find(info,"FILES FAILED.",1,true) then
        --done, rest of the file is irrelevant
        break
      else
        print("      -   [ERR]  MBINCompiler = "..info)
        Report("","  MBINCompiler = "..info,"ERR")
      end
    end
  end
  --WaitForAnyKey()
end

if warningCount == 0 and errorCount == 0 then
  Report("","   SUCCESS "..say)
else
  -- if warningCount > 0 then
    -- print(_zRED.."    [NOTICE] Possible bad file produced after "..say..", check the file!".._zDEFAULT)
    -- print()
    -- Report("","   Possible bad file produced after "..say..", check the file!","NOTICE")    
    -- -- local currentModScript = LoadFileData(arg[2]..[[CurrentModScript_Short.txt]])
    -- --WriteToFileAppend(currentModScript..": Possible failed "..say.."\n", arg[2]..[[FailedScriptList.txt]])
  -- end
  -- if errorCount > 0 then
    -- Report("","   Failed "..say..", check the file!","ERROR")    
    -- -- local currentModScript = LoadFileData(arg[2]..[[CurrentModScript_Short.txt]])
    -- -- WriteToFileAppend(currentModScript..": Failed "..say.."\n", arg[2]..[[FailedScriptList.txt]])
  -- end
end

Report_flush()

LuaEndedOk(THIS)

--                        Logger.LogMessage( null, "INFO", $"{CommandLine.GetFileInfo( mbin )}" );

