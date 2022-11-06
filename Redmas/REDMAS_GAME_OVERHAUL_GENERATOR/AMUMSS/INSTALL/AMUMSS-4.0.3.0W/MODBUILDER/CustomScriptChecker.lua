CONTAINER = {
  types = {"table",},
  members = {
    "MOD_FILENAME",
    "MOD_AUTHOR",
    "LUA_AUTHOR",
    "MOD_DESCRIPTION",
    "NMS_VERSION",
    "MOD_BATCHNAME",
    "MODIFICATIONS",
    "ADD_FILES",
  }
}

ADD_FILES = {
  types = {"nil","table",},
  members = {
    "FILE_DESTINATION",
    "EXTERNAL_FILE_SOURCE",
    "FILE_CONTENT",
  }
}

MODIFICATIONS = {
  types = {"nil","table",},
  members = {
    "MBIN_CHANGE_TABLE",
    "PAK_FILE_SOURCE",  --not required, not used
  }
}

MBIN_CHANGE_TABLE = {
  types = {"nil","table",},
  members = {
    "MBIN_FILE_SOURCE",
    "REGEXBEFORE",
    "REGEXAFTER",
    "EXML_CHANGE_TABLE",
  }
}

EXML_CHANGE_TABLE = {
  types = {"nil","table",},
  members = {
    "SPECIAL_KEY_WORDS",
    "PRECEDING_FIRST",
    "PRECEDING_KEY_WORDS",
    "SECTION_UP",
    "SECTION_ACTIVE",
    "WHERE_IN_SECTION",
    "WHERE_IN_SUBSECTION",
    "SAVE_SECTION_TO",
    "SAVE_SECTION_ACROSS",
    "USE_SECTION",
    "MATH_OPERATION",
    "INTEGER_TO_FLOAT",
    "REPLACE_TYPE",
    "VALUE_MATCH",
    "VALUE_MATCH_TYPE",
    "LINE_OFFSET",
    "VALUE_CHANGE_TABLE",
    "FOREACH_SPECIAL_KEY_WORDS",
    "ADD_OPTION",
    "ADD",
    "REMOVE",
  }
}



function OpenUserScript()
  local Hash = ""
  
  --***************************************************************************************************  
  local function load_conf()
    local env = {
    string = string,
    math = math,
    table = table,
    tonumber = tonumber,
    tostring = tostring,
    type = type,
    print = print,
    assert = assert,
    io = {open=io.open,type=io.type,input=io.input,read=io.read,close=io.close,lines=io.lines,},
    os = {clock=os.clock,date=os.date,difftime=os.difftime,time=os.time,tmpname=os.tmpname,getenv=os.getenv,},
    pairs = pairs,
    ipairs = ipairs,
    } --user can use anything inside this new environment in the user script
  --***************************************************************************************************  
    
    local scriptFilenamePath = LoadFileData("CurrentModScript.txt")
    local scriptFilename = GetFilenameFromFilePath(scriptFilenamePath)
    
    local script = LoadFileData(scriptFilenamePath)
    -- print("script = ["..script.."]")
    
    --for backward compatibility
    script = string.gsub(script,[[REPLACE_AFTER_ENTRY]],[[PRECEDING_KEY_WORDS]])
    script = string.gsub(script,[[ADDSECTION]],[[ADDAFTERSECTION]])
    local script = string.gsub(script,[[\]],[[\\]]) --preventing those nasty escape sequence when \ is used inside a ""

    --prevent the use of :write in the script (prevent injection)
    if string.find(script,[[:write]],1,true) ~= nil then
      local scriptFile = ParseTextFileIntoTable(scriptFilenamePath)
      for i=1,#scriptFile do
        if string.find(scriptFile[i],[[:write]],1,true) ~= nil then
          if string.sub(trim(scriptFile[i]),1,2) ~= [[--]] then
            return {}, "XXXXX <not allowed> Lua keyword in used on line "..i.." of the script XXXXX"
          end
        end
      end
    end
    
    print("   @@@ Analysing script...")
    local tmpScriptFileName = "UserLoadedScript.lua"
    local resultFileName = "UserLoadedScriptCheckResults.lua"
    
    --we do this because selene cannot handle the " - " correctly in a file name, it thinks it is an options flag
    WriteToFile([[--# selene: allow(unscoped_variables)]].."\n",tmpScriptFileName) --adding to block warning: not local in whole file
    
    WriteToFileAppend([[-- selene: allow(unused_variable)]].."\n",tmpScriptFileName) --adding to block warning: not used for NMS_MOD_DEFINITION_CONTAINER
    WriteToFileAppend([[NMS_MOD_DEFINITION_CONTAINER = {}]].."\n",tmpScriptFileName) --needed for preceding selene block to work

    --extra lines in file due to selene
    local extraLines = 3
    
    WriteToFileAppend(script,tmpScriptFileName) --script to the tmp file
    
    local cmd = [[selene.exe  --display-style="quiet" "]]..tmpScriptFileName..[[">"]]..resultFileName
    -- -- print("["..cmd.."]")
    local r,s,n = os.execute(cmd)
    if r == nil then
      print("   @@@ Basic Syntax Analysis detected problems, please refer to ModScriptCheck folder...")
      --we need to removed the extra lines from the results file
      local rs = ParseTextFileIntoTable(resultFileName)
      for i=1,#rs - 4 do --skip last 4 lines
        local text = rs[i]
        local nStart = string.find(text,":",1,true) + 1
        local nLength = string.find(string.sub(text,nStart),":",1,true) - 1
        local lastPart = string.sub(text,nStart + nLength)
        local sNum = string.sub(text,nStart,nStart + nLength - 1)
        local lineNum = tonumber(sNum) - extraLines
        rs[i] = string.sub(text,1,nStart - 1)..lineNum..lastPart
      end
      
      WriteToFile(ConvertLineTableToText(rs),[[..\ModScriptCheck\]]..scriptFilename..[[.txt]])      
    else
      print("   @@@ Basic Syntax Analysis could not detect any problems")
      os.remove([[..\ModScriptCheck\]]..scriptFilename..[[.txt]])
    end
    
    -- print()
    -- print([[TEST selene: --display-style="quiet" <files>]])
    -- os.execute([[selene --display-style="quiet" ]]..resultFileName)

    --this is bugged, do not work
    --os.execute([[selene -q ]]..resultFileName)

    -- print()
    -- print("TEST selene: -help")
    -- os.execute([[selene --help]])
    
    os.remove(tmpScriptFileName)
    os.remove(resultFileName)
    
    -- if _bOS_bitness == "64" then
      -- print("   @@@ running luacheck.exe")
      -- local cmd = [[luacheck.exe --filename Script "]]..scriptFilenamePath..[[">"..\ModScriptCheck\]]..scriptFilename..[[.txt"]]
      -- -- -- print("["..cmd.."]")
      -- os.execute(cmd)

      -- print("@@@ running luacheck64.exe")
      -- local cmd = [[luacheck64.exe --filename Script "]]..scriptFilenamePath..[[">"..\ModScriptCheck\]]..scriptFilename..[[.txt"]]
      -- -- local cmd = [[luacheck64.exe --filename Script "]].."NMS_REBORN.lua"..[[">"..\ModScriptCheck\]]..scriptFilename..[[.txt"]]

      -- -- print("["..cmd.."]")
      -- os.execute(cmd)
    -- else
      -- print("   @@@ running luacheck32.exe")
      -- --DOES NOT EXIST YET
      -- -- os.execute([[luacheck32.exe --filename Script "]]..scriptFilenamePath..[[">"..\ModScriptCheck\]]..scriptFilename..[[.txt"]])
      -- local cmd = [[luacheck32.exe --filename Script "]]..scriptFilenamePath..[[">"..\ModScriptCheck\]]..scriptFilename..[[.txt"]]
      -- -- print("["..cmd.."]")
      -- os.execute(cmd)
    -- end
    
    -- To be used if you want to inspect the loaded script
    if _mDEBUG ~= nil then
      WriteToFile(script, "..\\TempScript.lua")
    end
    
    local sha1 = require 'sha1'
    Hash = sha1.hex(string.sub(script,1,#script - 40)) 

    gSCRIPTBUILDERscript = (Hash == string.sub(script,#script - 39))
    if gSCRIPTBUILDERscript then print("A SCRIPTBUILDER script!") end
    
    --***************************************************************************************************  
    local function MyErrHandler(x)
      print("")
      print("Lua Script error: "..x)
      Report("","Lua Script error: "..x,"ERR")
      -- print(debug.traceback(nil,0))
      -- Report("", debug.traceback(nil,0),"ERR")
      LuaEndedOk(THIS)
    end

    -- --***************************************************************************************************        
    -- local function GetScript()
      -- return load(script,"User Script",'t',env)
    -- end
    
    local success, chunk = xpcall(load(script,"User Script",'t',env),MyErrHandler) --better
    -- local chunk, failure = load(script,"User Script",'t',env)
    
    if success then
        -- chunk()
    elseif chunk ~= nil then
      print("")
      print("Lua is reporting: "..chunk)
      Report("","Lua is reporting: "..chunk,"ERR")
    end

    return env, chunk, success
  end
  --***************************************************************************************************  

  --###################  MAIN CODE  ###################################
  local conf,status,success = load_conf()

  -- if status == nil or status == false then --only use this if not using pcall above
  if success then --use this if using pcall above
    local msg1 = "USER"
    if gSCRIPTBUILDERscript then
      msg1 = "SCRIPTBUILDER"
    end
    
    print(_zGREEN..">>> [INFO] Success loading ".._zDEFAULT..msg1.._zGREEN.." script".._zDEFAULT)
    NMS_MOD_DEFINITION_CONTAINER = conf.NMS_MOD_DEFINITION_CONTAINER

    if _bScriptCounter == _bNumberScripts then
      --we are at the last script
      if _mSERIALIZING == "Y" then
        print(_zGREEN..">>> [INFO] Serializing loaded script, please wait...".._zDEFAULT)
        local scriptTable = SerializeScript(NMS_MOD_DEFINITION_CONTAINER,true,"NMS_MOD_DEFINITION_CONTAINER")
        WriteToFile(ConvertLineTableToText(scriptTable), "..\\SerializedScript.lua")
      end
    end
    print(_zGREEN..">>> [INFO] Executing now...".._zDEFAULT)
    pv("["..Hash.."]")
    print()


    CustomScriptChecker(NMS_MOD_DEFINITION_CONTAINER)


  else
    NMS_MOD_DEFINITION_CONTAINER = ""
    -- print("")
    -- print(status)
    print("XXXXX Error loading USER script! XXXXX")
    print("")
    WriteToFile("", "LoadScriptAndFilenamesERROR.txt")
    Report(LoadFileData("CurrentModScript.txt"),"[ERROR] loading USER script!","ERROR")
    if status ~= nil then
      Report(LoadFileData("CurrentModScript.txt"),tostring(status))
    end
  end
  
  return NMS_MOD_DEFINITION_CONTAINER
end

function AddResults(results,name,ok,message)
  results[#results+1] = {}
  results[#results][1] = name
  results[#results][2] = ok
  results[#results][3] = message
end

--to execute this function we need a valid NMS_MOD_DEFINITION_CONTAINER
function CustomScriptChecker(NMS_MOD_DEFINITION_CONTAINER)
  if NMS_MOD_DEFINITION_CONTAINER == "" then
    return "Empty NMS_MOD_DEFINITION_CONTAINER"
  end
  
  local results = {}
  --results.name     --string
  --results.ok       --boolean
  --results.message  --string

  print()
  print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
  for k,v in pairs(NMS_MOD_DEFINITION_CONTAINER) do
    print("key = ["..k.."]")
  end
  print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
  print()



  local ok = false
  for i=1,#CONTAINER.types do
    if type(NMS_MOD_DEFINITION_CONTAINER) == CONTAINER.types[i] then
      AddResults(results,"NMS_MOD_DEFINITION_CONTAINER",true,"")
      ok = true
      break
    end
  end
  
  if ok then --check content of NMS_MOD_DEFINITION_CONTAINER
    ok = false
    for j=1,#NMS_MOD_DEFINITION_CONTAINER[1] do
      --are these 'members' of CONTAINER?
      for i=1,#CONTAINER.members do
        if NMS_MOD_DEFINITION_CONTAINER[1][j] == CONTAINER.members[i] then
          AddResults(results,NMS_MOD_DEFINITION_CONTAINER[1][j],true,"a valid member")
          ok = true
        else
          AddResults(results,"MOD_FILENAME",false,"Missing MOD_FILENAME")
        end
      end
      
    end
  end
end

-- ****************************************************
-- main
-- ****************************************************

--we are in MODBUILDER
LocalFolder = ""
if gVerbose == nil then dofile(LocalFolder.."LoadHelpers.lua") end
pv(">>>     In CustomScriptChecker.lua")
THIS = "In CustomScriptChecker: " --Check for THIS in code before changing this string

gfilePATH = "..\\" --for Report()

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.gsub(NMS_FOLDER,"\n","") --remove line break if any
gNMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]
-- print("*************  ["..gNMS_PCBANKS_FOLDER_PATH.."]")

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")
--gMASTER_FOLDER_PATH = LoadFileData("MASTER_FOLDER_PATH.txt")
gLocalFolder = [[MODBUILDER\MOD\]]

gSCRIPTBUILDERscript = false
  
--global for all sub-scripts
gSaveSectionContent = {}
gSaveSectionName = {}
gUseSectionContent = {}
gUseSectionName = {}

--to print them
--GetLuaCurrentKeyWordsAndAll(_G,"",true)

--Get all environment variables once
_bNumberScripts = os.getenv("_bNumberScripts")
_bScriptName = os.getenv("_bScriptName")

_bCOMBINE_MODS = tonumber(os.getenv("_bCOMBINE_MODS"))
_mScriptInPAK = os.getenv("_mScriptInPAK")
_bAllowMapFileTreeCreator = os.getenv("_bAllowMapFileTreeCreator")
_bReCreateMapFileTree= os.getenv("_bReCreateMapFileTree")
_mUSE_TXT_MAPFILETREE = os.getenv("_mUSE_TXT_MAPFILETREE") == "y"
_mUSE_LUA_MAPFILETREE = os.getenv("_mUSE_LUA_MAPFILETREE") == "y"
_mSERIALIZING = os.getenv("_mSERIALIZING")
_bMaxPakNameLength = tonumber(os.getenv("_bMaxPakNameLength"))

--default
_mDateTimeFormat = "%y%m%d-%H%M%S"
CustomDateTimeFormat = false

if IsFileExist([[.\DateTimeFormat.txt]]) then
  local tmpDTF = LoadFileData([[.\DateTimeFormat.txt]])
  if tmpDTF ~= nil and tmpDTF ~= _mDateTimeFormat then
    _mDateTimeFormat = tmpDTF
    CustomDateTimeFormat = true
  end
end

_mWbertro = os.getenv("_mWbertro")
_bOS_bitness = os.getenv("_bOS_bitness")
_bCPU = os.getenv("_bCPU")
_bMinCPU = os.getenv("_bMinCPU")
_mISxxx = os.getenv("_mISxxx")
_mSHOWSECTIONS = os.getenv("-SHOWSECTIONS")
_mSHOWEXTRASECTIONS = os.getenv("-SHOWEXTRASECTIONS")
_mDEBUG = os.getenv("_mDEBUG")
--end Get all environment variables once

gpak_listTable = ParseTextFileIntoTable("pak_list.txt")

gModScriptLuaDirList = {}
gModScriptLuaDirList = ListDir(gModScriptLuaDirList,[[..\ModScript]],true,false)

--clean and keep only .lua scripts
local tempList = {}
for i=1,#gModScriptLuaDirList do
  if string.sub(gModScriptLuaDirList[i],-4) == ".lua" then
    tempList[#tempList+1] = gModScriptLuaDirList[i]
  end
end
gModScriptLuaDirList = tempList

_bScriptCounter = 0
WriteToFile("", "ScriptCounter.txt")

_bNumberScripts = #gModScriptLuaDirList
for i=1,#gModScriptLuaDirList do
  -- print(gModScriptLuaDirList[i])
  _bScriptCounter = i
  _bScriptName = gModScriptLuaDirList[i]
  -- print("_bScriptName = [".._bScriptName.."]")
  -- echo|set /p="%%G">CurrentModScript.txt
  -- echo|set /p="%%~nxG">CurrentModScript_Short.txt
  WriteToFile(gMASTER_FOLDER_PATH..[[ModScript\]].._bScriptName, "CurrentModScript.txt")
  WriteToFile(_bScriptName, "CurrentModScript_Short.txt")

  
  print()
  print(_zRED..">>> Starting to process script #".._bScriptCounter.." of ".._bNumberScripts
                .." [".._bScriptName.."]".._zDEFAULT)
  print()
  print(">>> Opening User Lua Script, Please wait...")

  --*************************************************
  gNMS_MOD_DEFINITION_CONTAINER = OpenUserScript()
  --*************************************************

  if (_mWbertro ~= nil) and gNMS_MOD_DEFINITION_CONTAINER ~= nil then
    SaveTable("..\\TempTable.txt",gNMS_MOD_DEFINITION_CONTAINER,"NMS_MOD_DEFINITION_CONTAINER") 
  end

  if type(gNMS_MOD_DEFINITION_CONTAINER) == "table" then    
    if _bAllowMapFileTreeCreator == "Y" then
      if _bNumberScripts > 0 then
        if not IsFileExist("MapFileTreeSharedList.txt") then
          WriteToFile("","MapFileTreeSharedList.txt")
        end
        dofile("CreateMapFileTreeStarter.lua")
      end
    end

    if _bCOMBINE_MODS == 0 or _bScriptCounter == 1 then
      --INDIVIDUAL MODs: Cleaning directory MOD each time
      --COMBINED MOD: Cleaning directory MOD before first script only
      local cmd = [[CleanMod.bat]] --[[cmd /c CleanMod.bat]]
      NewThread(cmd)
    end

    if type(gNMS_MOD_DEFINITION_CONTAINER[1]) == "table" then
      local Container = gNMS_MOD_DEFINITION_CONTAINER

      for i=1,#Container do
        if i > 1 then
          print()
          print(_zRED..">>> Still processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]".._zDEFAULT)
          print()

          Report("")
          Report("","========================================================================================")
          Report("","Still processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]")
        else
          Report("")
          Report("","========================================================================================")
          Report("","Processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]")
        end
        
        print(_zGREEN.."              ++++++++++  A Multi-PAK script  ++++++++++".._zDEFAULT)
        print(_zGREEN.."              >>> Processing sub-script #"..i..[[ of ]]..#Container.._zDEFAULT)
        print()

        Report("","              ++++++++++  A Multi-PAK script  ++++++++++")
        Report("","              >>> Processing sub-script #"..i..[[ of ]]..#Container)
        
        if _mScriptInPAK ~= nil then
          print(">>> Copying script source to MOD")
          Report("","Copying script source to MOD")

          --copy script to MOD folder
          FilePathSource = LoadFileData("CurrentModScript.txt")
          -- print("["..FilePathSource.."]")
          FolderPath = [[.\MOD\]]..LoadFileData("CurrentModScript_Short.txt")
          -- print("["..FolderPath.."]")
          CopyFile(FilePathSource,FolderPath..[[*]],[[/y /h /v /i]])
          -- local cmd = [[cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FolderPath..[[*" 1>NUL 2>NUL]]
          -- NewThread(cmd)
        end

        ProcessScript(Container[i],True)
        
        Report("","Ending MBIN/PAK phase...")
        if _bCOMBINE_MODS == 0 then
          --individual mod
          Report("","Copied PAKs to NMS MOD folder...")
        end
        Report("","Ended sub-script "..i.." of [".._bScriptName.."]")
        if i == #Container then
          Report("","Ended script [".._bScriptName.."]")
        end
        Report("","========================================================================================")

        --spacing for sub-script
        print()
        Report("")
      end
    else
      --only one entry
      Report("")
      Report("","========================================================================================")
      Report("","Starting to process script #".._bScriptCounter.." of ".._bNumberScripts
                    .." [".._bScriptName.."]")

      print(_zGREEN.."              ++++++++++  A Single-PAK script  ++++++++++".._zDEFAULT)
      print()

      if _mScriptInPAK ~= nil then
        print(">>> Copying script source to MOD")
        Report("","Copying script source to MOD")

        --copy script to MOD folder
        FilePathSource = LoadFileData("CurrentModScript.txt")
        -- print("["..FilePathSource.."]")
        FolderPath = [[.\MOD\]]..LoadFileData("CurrentModScript_Short.txt")
        -- print("["..FolderPath.."]")
        CopyFile(FilePathSource,FolderPath..[[*]],[[/y /h /v /i]])
        -- local cmd = [[cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FolderPath..[[*" 1>NUL 2>NUL]]
        -- NewThread(cmd)
      end

      ProcessScript(gNMS_MOD_DEFINITION_CONTAINER)

      Report("","Ending MBIN/PAK phase...")
      if _bCOMBINE_MODS == 0 then
        --individual mod
        Report("","Copied PAKs to NMS MOD folder...")
      end
      Report("","Ended script [".._bScriptName.."]")
      Report("","========================================================================================")
      Report("")
    end
    
  else
    WriteToFile("", "MOD_MBIN_SOURCE.txt")
    WriteToFile("", "MOD_PAK_SOURCE.txt")
    WriteToFile("", "MOD_FILENAME.txt")
    WriteToFile("", "MOD_AUTHOR.txt")
    WriteToFile("", "LoadScriptAndFilenamesERROR.txt")
    print(">>> [ERROR] NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!")
    print("")
    Report(LoadFileData("CurrentModScript.txt"),"NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!","ERROR")
  end

  --save _bScriptCounter for batch
  WriteToFile(tostring(_bScriptCounter), "ScriptCounter.txt")
  
  print()
  print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)
  print(_zRED..">>>            Scripts processed: ".._bScriptCounter.._zDEFAULT)
  print(_zRED..">>>     Total scripts to process: ".._bNumberScripts.._zDEFAULT)
  print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)

  if _bCOMBINE_MODS ~= 0 then
    --combined mod
    if _bNumberScripts == _bScriptCounter then
      print()
      print(_zGREEN..">>> Done building ALL scripts".._zDEFAULT)
      print(_zGREEN..">>> Copying PAK to NMS MOD folder...".._zDEFAULT)

      Report("","Done building ALL scripts")
      Report("","Copied PAK to NMS MOD folder...")
      -- Report("")
    end
  end
end

pv(THIS.."ending")
LuaEndedOk(THIS)
