gVerbose = false
if not gVerbose then
  local handle = io.open([[..\WOPT_VERBOSE_LUA.txt]])
  if handle ~= nil then
    gVerbose = true
    handle:close()
  else
    if os.getenv("_gVERBOSE") == "Y" then
      gVerbose = true
    end
  end
end

if gVerbose then print("   [==[LUA Verbose ON]==]") end
gfilePATH = ".\\" --for Report()
local gReportFilehandle = nil

function CheckPoint(num)
  print("Check point #"..num.." coming up...")
  WaitForAnyKey("Check point #"..num.." press a key")
end

gIOstderr = io.stderr -- same for use
gIOstdout = io.stdout -- same for use

gpak_listTable = {}
gfullpak_listTable = {}

-- Full script list with additional info
gScriptList = {}

-- ModScript folder content
--   minus ('___DONOTUSE.txt' folders) and (those in 'Disabled scripts and paks')
--   minur 'too deep'and 'too long path'
gModScriptValidContent = {}
gMEFTI_name = [[MEFTI]]

--***************************************************************************************************
gDONOTUSE_name = ""
if gDONOTUSE_name == nil or gDONOTUSE_name == "" then
  gDONOTUSE_name = "___DONOTUSE.txt"
end

gCOMBINE_name = ""
if gCOMBINE_name == nil or gCOMBINE_name == "" then
  gCOMBINE_name = "___COMBINE.txt"
end

--***************************************************************************************************
-- returns:
--    optional delta
-- or current os.clock()
function dClock(delta)
  if delta ~= nil then
    return string.format("%.3f", delta)
  else
    return string.format("%.3f", os.clock())
  end
end

--***************************************************************************************************
gTracing = ""
if not gVerbose then
  function pv(...)
    if gVerbose then
      local temp = ""
      local num = select("#",...)
      for i=1,num do
        local text = select(i,...)
        if text == nil then
          text = "nil"
        elseif type(text) == "boolean" then
          if text then
            text = "True"
          else
            text = "False"
          end
        end
        temp = temp..text
      end
      if temp ~= "" then
        temp = "<=>"..temp.." <=>"
      end
      if gTracing ~= "" then
        temp = temp.."   T: "..gTracing
        gTracing = ""
      end
      
      temp = dClock()..": "..temp
      print(temp)
    end
  end
else
  function pv()
  end
end 

pv(">>>     In LoadHelpers.lua")

gColors = (os.getenv("-UseColors") == "Y")

-- if not gColors then
  -- local handle = io.open([[..\OPT_Colors_ON.txt]])
  -- if handle ~= nil then
    -- gColors = true
    -- handle:close()
  -- end
-- end

if gColors then
  -- _zBLACK      ="[30m"
  _zRED           ="[1;31m[1m" 
  _zDARK_MAGENTA  ="[1;35m[1m"
  _zGREEN         ="[1;32m[1m"
  _zYELLOW        ="[1;33m[1m"
  _zDARKGRAY      ="[1;90m[1m"
  _zDARKCYAN      ="[1;46m[1m"
  -- _zWHITE      ="[97m"

  _zWHITEonYELLOW ="[93;43m[1m"
  _zBLUEonDARKGRAY="[34;47m"
  _zBLACKonYELLOW ="[7;93m"
  
  -- _zBLINK         ="[5m" --does not work
  _zINVERSE       ="[7m"
  _zDEFAULT       ="[0m"
  
  -- _zBGintense     ="[4m"
  _zBGintense     ="[100m"

  _zUpOneLine     ="[F"
  _zUpOneLineErase="[F[K"
else
  -- _zBLACK      =""
  _zRED        =""
  _zGREEN      =""
  _zYELLOW     =""
  _zDARKGRAY   =""
  -- _zWHITE      =""
  
  _zWHITEonYELLOW =""

  _zBLACKonYELLOW =""
  _zINVERSE       =""
  _zDEFAULT       =""
  
  _zBGintense     =""

  _zUpOneLine      =""
  _zUpOneLineErase =""
end

--***************************************************************************************************
--local cmd = [[...]]
--NewThread(cmd[,silent])
--if silent == true: no output to console
--will WAIT for cmd to complete
function NewThread(cmd,silent)
  if silent == nil then silent = false end
  local hideOutput = ""
  if silent then
    hideOutput = " 1>NUL 2>NUL"
  end
  -- /B /wait "": order is important for it to work on win7 and early win10 version
  local state,sResult,nResult = os.execute([[START /B /wait "" /MIN cmd /c ]]..cmd..hideOutput)
  return state,sResult,nResult
end

--***************************************************************************************************
function os.capture(cmd, raw)
  if raw == nil then raw = true end
  local f = io.popen(cmd, 'r')
  local s = f:read('a')
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '') --strip leading spaces
  s = string.gsub(s, '%s+$', '') --strip trailing spaces
  -- s = string.gsub(s, '[\r\n]+', ' ') --make crlf into spaces
  return s
end

--***************************************************************************************************
-- waits for a valid keypress or beeps on wrong key
-- prompt: string, what to say
--   keys: string, which keys are valid choices
-- prints: the uppercase key that was choosen on the same line as the prompt
-- return: the uppercase key that was choosen
function Choice(prompt,keys)
  local answer = ""  
  if keys == nil then keys = "" end
  local keys = string.upper(keys)
  
  local keyList = ""
  local keyTable = {}
  for i=1,string.len(keys) do
    keyList = keyList..string.sub(keys,i,i)..","
    table.insert(keyTable,string.sub(keys,i,i))
  end

  --clean pending keypresses
  io.read("f")
  
  --now wait for the right key
  local keyLen = #keyTable
  if keyLen == 0 then
    --output prompt and stay on same line
    --io.stdout:write(prompt.." ")
--io.stderr:write(prompt.." ")
gIOstderr:setvbuf("no")
gIOstderr:write(prompt.." ")
  
    io.read("g") --wait for any keypress
    print()
  else
    --output prompt, keys and stay on same line
--io.stdout:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])
    --io.stderr:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])
gIOstderr:setvbuf("no")
gIOstderr:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])

    --NewThread([[<nul set /p="]]..prompt.." ["..string.sub(keyList,1,-2)..[=[]? "]=])
    
    --wait for a valid keypress
    local endRepeat = false
    repeat
      local input = string.upper(string.sub(io.read("g"),-1))
      for i=1,keyLen do
        --print(input,keyTable[i])
        if input == keyTable[i] then
          answer = input
          endRepeat = true
          break
        end
      end
      if not endRepeat then
        beep(800,200)
      end
    until endRepeat
    
    print(answer)
  end
  
  return answer
end

-- function Choice_OUT(prompt,keys)
  -- local answer = ""  
  -- if keys == nil then keys = "" end
  -- local keys = string.upper(keys)
  
  -- local keyList = ""
  -- local keyTable = {}
  -- for i=1,string.len(keys) do
    -- keyList = keyList..string.sub(keys,i,i)..","
    -- table.insert(keyTable,string.sub(keys,i,i))
  -- end

  -- --clean pending keypresses
  -- io.read("f")
  
  -- --now wait for the right key
  -- local keyLen = #keyTable
  -- if keyLen == 0 then
    -- --output prompt and stay on same line
    -- --io.stdout:write(prompt.." ")
-- --io.stderr:write(prompt.." ")
-- gIOstdout:setvbuf("no")
-- gIOstdout:write(prompt.." ")
    
    -- io.read("g") --wait for any keypress
    -- print()
  -- else
    -- --output prompt, keys and stay on same line
-- --io.stdout:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])
    -- --io.stderr:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])
-- gIOstdout:setvbuf("no")
-- gIOstdout:write(prompt.." ["..string.sub(keyList,1,-2)..[=[]? ]=])

    -- --NewThread([[<nul set /p="]]..prompt.." ["..string.sub(keyList,1,-2)..[=[]? "]=])
    
    -- --wait for a valid keypress
    -- local endRepeat = false
    -- repeat
      -- local input = string.upper(string.sub(io.read("g"),-1))
      -- for i=1,keyLen do
        -- --print(input,keyTable[i])
        -- if input == keyTable[i] then
          -- answer = input
          -- endRepeat = true
          -- break
        -- end
      -- end
      -- if not endRepeat then
        -- beep(800,200)
      -- end
    -- until endRepeat
    
    -- print(answer)
  -- end
  
  -- return answer
-- end

--***************************************************************************************************
function WaitForAnyKey(msg)
  if msg == nil then msg = "Press any key to continue . . ." end
  Choice(msg)
end

--***************************************************************************************************
--output prompt and stay on same line
--  return: a user value of the same type as var[1]
--          or var[1]
--GUI = {}
function GUIF(var)
  if DOCONFIGGLOBAL == nil then DOCONFIGGLOBAL = true end
  -- print("GUIF: DOCONFIGGLOBAL = "..tostring(DOCONFIGGLOBAL))
  if DOCONFIGGLOBAL then
    --clean pending keypresses
    io.read("f")
    
    if type(var) == "table" then
      local z = var[1]
      local org = z
      if z ~= nil then
        local vType = type(z)
        local expecting = ""
        
        if vType == "string" and (z:upper() == "TRUE" or z:upper() == "FALSE") then
          z = (z:upper() == "TRUE")
          org = z
          vType = "boolean"
        end

        if vType == "number" then
          expecting = "Enter Num: "
        elseif vType == "string" then
          expecting = "Enter Str: "
          -- check it is a number as a string
          local tmp = z:gsub([["]],"")
          if tmp ~= nil then
            if type(tonumber(tmp)) == "number" then
              --less confusing for the user probably
              expecting = "Enter Num: "
              vType = "number"
            end
          end
        elseif vType == "boolean" then
          expecting = "Enter Y/N: "
        end

        gIOstderr:setvbuf("no")
        gIOstderr:write("\n ".._zBLACKonYELLOW.." >>> ".._zDEFAULT.." "..var[2].._zDARKCYAN.." "..expecting.._zDEFAULT.." ")
        
        if vType == "number" then
          local s = io.read()
          if s ~= nil then
            local v = tonumber(s) -- get a real number
            if v ~= nil then
              z = v
            end
          end
        elseif vType == "string" then
          local s = io.read()
          if s ~= nil then
            local v = tostring(s) -- get a real string
            if v ~= nil and v ~= "" then
              z = v
            end
          end
        elseif vType == "boolean" then
          local s = trim(io.read():upper())
          if s ~= nil then
            if s == "Y" then
              z = true
            elseif s == "N" then
              z = false
            end
          end
        end

        local ending = ""
        if tostring(z) == tostring(org) then
          ending = " (default)"
        end
        if vType == "boolean" then
          local ztmp = "N"
          if z then
            ztmp = "Y"
          end
          Report("","'Prompt' ["..var[2].."]: ["..ztmp.."]"..ending)
          print("===>> User input: ["..ztmp.."]"..ending)
        else
          Report("","'Prompt' ["..var[2].."]: ["..tostring(z).."]"..ending)
          print("===>> User input: ["..tostring(z).."]"..ending)
        end
        
        print("")
        -- var[1] = z
  -- print("z = "..tostring(z).." "..type(z))
        return z
      else
        print(_zRED.."[WARNING] Variable name is nil: ["..var.."]".._zDEFAULT)
        Report("","Variable name is nil: ["..var.."]","WARNING")
      end
    else
      print(_zRED.."[WARNING] Variable name does not exist: ["..var.."]".._zDEFAULT)
      Report("","Variable name does not exist: ["..var.."]","WARNING")
    end
  else
    return var[1]
  end
end

--***************************************************************************************************
-- ??? return varname of field
function getField(field)
  local t = _ENV -- start with the table of globals
  local v = nil
  for w, d in string.gmatch(field, "([%w_]+)(.?)") do
    print(tostring(w),tostring(d))
    if d == "." then -- not last field?
      t[w] = t[w] or {} -- create table if absent
      t = t[w] -- get the table
    else -- last field
      v = t[w] -- do the assignment
    end
  end
  return v
end

--***************************************************************************************************
function IsWildcardsExist(filenamePath)
  return (string.find(filenamePath,"[%*%?]+") ~= nil)
end

--***************************************************************************************************
function IsFileExist(filenamePath)
  if filenamePath == nil or filenamePath == "" then return false end
  if IsWildcardsExist(filenamePath) then
    print("WildCard!")
    local path = getPath(filenamePath)
    return IsDirExist(path)
  end

  local filehandle = io.open(filenamePath,"rb")
  local Exist = (filehandle ~= nil)
  if Exist then filehandle:close() end
  return Exist
end

--***************************************************************************************************
function IsDirExist(path)
  local result = false
  path = string.gsub(path,[[/]],[[\]])
  if string.sub(path,#path-1) == [[\]] then
    --removing last \
    path = string.sub(path,1,-2)
  end
  -- print(">>> "..path)
  if lfs.attributes(path,'mode') == "directory" then
    result = true
  end
  return result  
end

--***************************************************************************************************
function IsFile2Newest(file1,file2)
  -- pv("IsFile2Newest: ["..file1.."]")
  -- pv("IsFile2Newest: ["..file2.."]")
  local File2IsNewest = false
  os.remove("NewerFile.txt")

  -- pv("IsFile2Newest: "..command)
  --local cmd = [[cmd /c xcopy /DYLR "]]..file1
  local cmd = [[xcopy /DYLR "]]..file1..[[" "]]..file2..[[*" | findstr /BC:"0" >nul && echo|set /p="]]..file2..[[ is newer">"NewerFile.txt"]]
  --NewThread(cmd)
  os.execute(cmd)

  File2IsNewest = IsFileExist("NewerFile.txt")
  os.remove("NewerFile.txt")
  return File2IsNewest
end

--***************************************************************************************************

--Wbertro: it is slow????

function GetFileSize(filenamePath)
  -- local filehandle = assert(io.open(filenamePath,"r"),"io.open: Cannot open file to get file size: "..filenamePath)
  local filehandle = io.open(filenamePath,"r")
  local size = filehandle:seek("end")    -- get file size
  filehandle:close()
  return size
end

--***************************************************************************************************
function GetFileCreationDate(filenamePath)
  local filehandle = io.popen( "dir "..filenamePath.." /T:W", "r" )
  local LineTable = {}
  -- local line = assert(filehandle:read("l"),"read: cannot read line from file: "..filenamePath)
  local line = filehandle:read("l")
  while line ~= nil do
    -- print(line,filenamePath)
    if tonumber(string.sub(line,1,1)) ~= nil then
      table.insert(LineTable, line)
    end
    line = filehandle:read("l")
  end

  filehandle:close()
  return LineTable
end

--***************************************************************************************************
function GetFileCreationByDate(path)
  local filehandle = io.popen( "dir "..path.." /O:-D /T:W /A:-D /B", "r")
  local LineTable = {}
  local line = filehandle:read("l")
  while line ~= nil do
    table.insert(LineTable, line)
    line = filehandle:read("l")
  end

  filehandle:close()
  return LineTable
end

--***************************************************************************************************
function WriteToFile(output,filenamePath,binary)
  local filehandle = nil
  -- print("["..filenamePath.."]")
  if binary == "b" then
    -- print(io.open(filenamePath,"wb")) --wbertro: for debug
    -- filehandle = assert(io.open(filenamePath,"wb"),"io.open: Cannot open binary file to write: "..filenamePath) -- +
    filehandle = io.open(filenamePath,"wb")
  else
    -- print(io.open(filenamePath,"w")) --wbertro: for debug
    -- filehandle = assert(io.open(filenamePath,"w"),"io.open: Cannot open file to write: "..filenamePath) -- +
    filehandle = io.open(filenamePath,"w")
  end
  if filehandle ~= nil then
    filehandle:write(output)
    filehandle:flush()
    filehandle:close()
  end
end

--***************************************************************************************************
function WriteToFileAppend(output,filenamePath)
  local filehandle = io.open(filenamePath,"a+")
  
  if filehandle == nil then
    sleep(1)
    -- filehandle = assert(io.open(filenamePath,"a+"),"io.open: Cannot open file to append: "..filenamePath)
    filehandle = io.open(filenamePath,"a+")
  end
  
  if filehandle ~= nil then
    filehandle:write(output)
    filehandle:flush()
    filehandle:close()
  end
end

--***************************************************************************************************
-- function WriteToFileAppend(output,filename)
  -- local closeIt = false
  
  -- local filehandle = io.type(filename)
-- print("WriteToFileAppend: "..tostring(io.type(filename)))
  -- if filehandle == "file" then
    -- filehandle = filename
  -- else
    -- filehandle = nil
  -- end
  
  -- if filehandle == nil then
    -- filehandle = io.open(filename,"a+")
    -- closeIt = true
  -- end
  
  -- if filehandle == nil then
    -- sleep(1)
    -- filehandle = assert(io.open(filename,"a+"),"io.open: Cannot open file to append: "..filename)
    -- closeIt = true
  -- end
  
  -- if filehandle ~= nil then
    -- filehandle:write(output)
    
    -- if closeIt then
      -- filehandle:flush()
      -- filehandle:close()
      -- return nil
    -- else
      -- return filehandle
    -- end
  -- end
-- end

--***************************************************************************************************
function WriteToFileAppendEXT(filenamePath,...)
  -- local filehandle = assert(io.open(filenamePath,"a+"),"io.open: Cannot open file to append: "..filenamePath)
  local filehandle = io.open(filenamePath,"a+")
  if filehandle ~= nil then
    filehandle:write(...)
    filehandle:write("\n")
    filehandle:flush()
    filehandle:close()
  end
end

--***************************************************************************************************
function WriteToFileEXT(filenamePath,binary)
  local filehandle = nil
  -- print("["..filenamePath.."]")
  if binary == "b" then
    -- print(io.open(filenamePath,"wb")) --wbertro: for debug
    -- filehandle = assert(io.open(filenamePath,"wb"),"io.open: Cannot open file to write: "..filenamePath)
    filehandle = io.open(filenamePath,"wb")
  else
    -- print(io.open(filenamePath,"w")) --wbertro: for debug
    -- filehandle = assert(io.open(filenamePath,"w"),"io.open: Cannot open file to write: "..filenamePath)
    filehandle = io.open(filenamePath,"w")
  end
  return filehandle
end

--***************************************************************************************************
-- returns the file content as a string
function LoadFileData(filenamePath,binary)
if LDebug then print("*** LoadFileData("..filenamePath..")") end
  local data = ""
  local filehandle = nil
  if IsFileExist(filenamePath) then
    if binary == "b" then
      -- filehandle = assert(io.open(filenamePath,"rb"),"io.open: Cannot open binary file to load: "..filenamePath)
      filehandle = io.open(filenamePath,"rb")
    else
      -- filehandle = assert(io.open(filenamePath,"r"),"io.open: Cannot open file to load: "..filenamePath)
      filehandle = io.open(filenamePath,"r")
    end
    -- data = assert(filehandle:read("a"),"read: cannot read file: "..filenamePath)
    data = filehandle:read("a")
    if filehandle ~= nil then
      filehandle:close()
    end
  end
  return data
end

--***************************************************************************************************
function ParseTextFileIntoTable(filenamePath)
if LDebug then print("*** ParseTextFileIntoTable("..filenamePath..")") end
  local msg = ""
  local LineTable = {}
  if IsFileExist(filenamePath) then
    -- local filehandle = assert(io.open(filenamePath,"r"),"io.open: Cannot open file to parse: "..filenamePath)
    local filehandle = io.open(filenamePath,"r")
    local line = filehandle:read("l")
    while line ~= nil do 
      table.insert(LineTable, line) 
      line = filehandle:read("l")
    end
    filehandle:close()
  else
    msg = "ERROR" --DO NOT CHANGE
  end
  return LineTable,msg
end

--***************************************************************************************************
function ConvertLineTableToText(LineTable)
	return table.concat(LineTable, "\n")
end

--***************************************************************************************************
-- default param:
--  /y no prompt when overwriting
--  /h all types of file
--  /v verify
--  /i assume dest is a folder if dest does not exist
--  /j use unbuffered I/O
--  /r overwrite read-only files
--
-- missing: /s Copy folders and subfolders
--
-- if silent == false then xcopy output is sent to xcopy_output.txt
function CopyFile(src,dest,param,silent)
  local IsNotSilent = false
  local xcopy_output = "xcopy_output.txt"
  if silent == nil or silent then
    silent = [[ 1>NUL 2>NUL]]
  else
    IsNotSilent = true
    DeleteFile(xcopy_output)
    silent = " >"..xcopy_output
  end
  if param == nil then param = "/y /h /v /i /j /r" end
  local cmd = [[xcopy ]]..param..[[ "]]..src..[[" "]]..dest..[["]]..silent
  local success,sResult,nResult = os.execute(cmd)
  if IsNotSilent then
    local data = LoadFileData(xcopy_output)
    if tonumber(data:sub(1,data:find(" File(s) copied",1,true))) == 0 then
    success = nil
    sResult = "0 File(s) copied"
    end
  end
  return success,sResult,nResult
end

--***************************************************************************************************
function DeleteFile(filenamePath)
  --os.remove(OLDfilepathname)    --don't use, can get stuck
  os.execute([[START /B /wait "" /MIN cmd /c Del /f /q /s "]]..filenamePath..[[" 1>NUL 2>NUL]])    
end

--***************************************************************************************************
function MoveFileDirectory(src,dest)
  local success,errmsg = os.rename(src,dest)
  if success then
    -- if os.remove(src) == nil then
      -- print("Could not remove source file "..src)
    -- end
  else
    print("Could not move/rename file "..src.." to "..dest.." ("..errmsg..")")
  end
  return success,errmsg
end

--***************************************************************************************************
-- function CreateFolder(path)
  -- local cmd = [[mkdir ]]..[["]]..path..[["]]
  -- return NewThread(cmd)
-- end

--***************************************************************************************************
function mkdir(path)
  local sep = package.config:sub(1,1)
  local pStr = ""
  for dir in path:gmatch("[^" .. sep .. "]+") do
    pStr = pStr .. dir .. sep
    lfs.mkdir(pStr)
  end
end

--***************************************************************************************************
function DeleteDir(dir) --recursive
  for file in lfs.dir(dir) do
    local file_path = dir..'/'..file
    if file ~= "." and file ~= ".." then
      if lfs.attributes(file_path, 'mode') == 'file' then
        --print('remove file',file_path)
        os.remove(file_path)
      elseif lfs.attributes(file_path, 'mode') == 'directory' then
        --print('dir', file_path)
        DeleteDir(file_path) --recursive
      end
    end
  end
  --print('remove dir',dir)
  lfs.rmdir(dir)
end

--***************************************************************************************************
--generic function
--
--path: string, where to look
--StripPath: bool, true to remove the path from the files
--SubDir: bool, true to go recurse into sub-directories
--IsPathLengthOK: bool, true if all path length are ok
--
--return a table with all files in path
function ListDir(DirList,path,StripPath,SubDir,IsPathLengthOK)
  if DirList == nil then DirList = {} end
  if IsPathLengthOK == nil then IsPathLengthOK = true end
  
  --unremarked if we want to abort early
  -- if not IsPathLengthOK then
    -- return DirList,IsPathLengthOK
  -- end
  
  if StripPath == nil then StripPath = false end
  if SubDir == nil then SubDir = false end
  
  if SubDir then StripPath = false end
  
  for file in lfs.dir(path) do
    if file ~= "." and file ~= ".." then
      local f = path..[[\]]..file
      local attr,msg = lfs.attributes(f)
      
      if attr ~= nil then      
        -- assert(type(attr) == "table")

        if attr.mode == "file" then
          if StripPath then
            DirList[#DirList+1] = file
          else
            DirList[#DirList+1] = f
          end
        end
        
        if SubDir and attr.mode == "directory" then
          DirList,IsPathLengthOK = ListDir(DirList,f,StripPath,SubDir,IsPathLengthOK)
        else
          --nothing for now
        end
      else
        print("attrIsNIL ("..string.len(f)..") ["..msg.."]")
        IsPathLengthOK = false
      end
    end
  end
  return DirList,IsPathLengthOK
end

--***************************************************************************************************
--INTERNAL
--get a sub-list of files matching extension (.ext) from DirList table
function GetDirList(ModScriptValidContent,extension,IsModScriptfolderOnly)
  if IsModScriptfolderOnly == nil then IsModScriptfolderOnly = false end
  -- print("- ModScriptValidContent total entries = "..#ModScriptValidContent)
  -- print("                 @@@        extension = ["..extension.."]")

  local EXT = string.upper(extension)
  if string.sub(EXT,1,1) ~= "." then
    EXT = "."..EXT
  end
  
  local cutPoint = string.len(gMASTER_FOLDER_PATH)

  -- now only keep valid files with EXT, ModScript included -- and remove fullpath
  local tempList = {}
  -- local cutPoint = string.len(gMASTER_FOLDER_PATH..[[ModScript\]])
  -- print()
  -- print(string.len(gMASTER_FOLDER_PATH))
  -- print(string.len(string.gsub(lfs.currentdir(),[[MODBUILDER]],"")))
  -- print("cutPoint = ["..cutPoint.."]")
  for i=1,#ModScriptValidContent do
    -- if string.upper(string.sub(ModScriptValidContent[i][1],-1 * string.len(EXT))) == EXT then
    
    if IsModScriptfolderOnly then
      -- for .EXML, .MBIN and .pak
      if string.find(string.upper(ModScriptValidContent[i][1]),EXT,1,true) then
        local thisPath = GetRelPathToScript(ModScriptValidContent[i][1])
        -- print("thisPath = ["..thisPath.."] for "..EXT)
        
        local shortPath = string.sub(trim(thisPath),cutPoint + 1)
        -- print("    shortPath = ["..shortPath.."]")
        
        local _,n = string.gsub(shortPath,[[\]],"")
        if n == 1 then
          -- this file is directly in ModScript folder
          tempList[#tempList+1] = ModScriptValidContent[i]
        end
      end

    else
      -- for .lua
      -- ALLOW for the use of .AUTHOR after the .pak
      if string.find(string.upper(ModScriptValidContent[i][1]),EXT,1,true) then
        -- print(" * ModScriptValidContent[i][1] =["..ModScriptValidContent[i][1].."]")
        -- print("     ModScriptValidContent[i][2] =["..ModScriptValidContent[i][2].."]")
        -- print("     ModScriptValidContent[i][3] =["..tostring(ModScriptValidContent[i][3]).."]")
        -- if ModScriptValidContent[i][2] == "" and not ModScriptValidContent[i][3] then
          -- -- not 'too deep' and not 'too long path'

         local thisPath = GetRelPathToScript(ModScriptValidContent[i][1])
        -- print("thisPath = ["..thisPath.."] for "..EXT)
        
        local shortPath = string.sub(trim(thisPath),cutPoint + 1)
        -- print("    shortPath = ["..shortPath.."]")
        
        local _,n = string.gsub(shortPath,[[\]],"")
        if n < 4 then
           tempList[#tempList+1] = ModScriptValidContent[i]
        end
      end
    end
  end
-- print()
  return tempList
end

--***************************************************************************************************
-- called when #gModScriptValidContent == 0, to initialize it
-- gModScriptValidContent[i][1]: filename and path
-- gModScriptValidContent[i][2]: path string -- folderTooDeep or ""
-- gModScriptValidContent[i][3]: bool -- pathTooLong
-- gModScriptValidContent[i][4]: string -- auto-combine
-- return: gModScriptValidContent
function GetModScriptValidContent(pathToModScript)
  local p = function(...) return end --to disable
  -- p = print --active
  local IsDEV = false

  --All files in ModScript and sub-directories
  p()
  p("         @@@       currentdir = ["..lfs.currentdir().."]")  
  p("         @@@  pathToModScript = ["..pathToModScript.."]")

  --***************************************************************************************************
  -- table DirList = a list of paths and filenames
  -- normally disableThisSubFolderName = "___DONOTUSE.txt"
  local function CleanModScriptDirList(DirList,pathToModScript,DONOTUSE_name,COMBINE_name)
    local p = function(...) return end --to disable
    local LDebug = false
    if LDebug then p = print end --active
    
    local ScriptList = {}
    local ScriptTypeList = {}
    local MEFTI_list = {}
    local CombineFlagList = {}
    
    if IsDEV then print("================================") end
    if IsDEV then print(" A:- DirList total entries in ModScript folder = "..#DirList) end
    
    -- DirList contains all files in ModScript
    if #DirList > 0 then
      -- blank folders where DONOTUSE_name exist
      for i=1,#DirList do
        local d = trim(DirList[i])
        if d ~= "" and string.find(d,DONOTUSE_name,1,true) ~= nil then
          local DNU_folder = string.gsub(d,DONOTUSE_name,"")
          for j=1,#DirList do
            if string.find(DirList[j],DNU_folder,1,true) ~= nil then
              DirList[j] = ""
            end
          end
        end
      end
      -- DirList contains all 'IN_USE' files
      
      if IsDEV then print("     we are in ["..lfs.currentdir().."]") end

      local cutPoint = string.len(gMASTER_FOLDER_PATH)

      -- if IsDEV then print("================================") end
      -- remove all 'MEFTI' folders and 'Disabled scripts and paks' folder content
      for i=1,#DirList do
        local d = trim(DirList[i])
        if d ~= "" and string.find(d,[[\]]..gMEFTI_name..[[\]],1,true) == nil and string.find(d,"Disabled scripts and paks",1,true) == nil then
            table.insert(ScriptList,d)
        end
      end      
      -- if IsDEV then print("================================") end
      
      DirList = ScriptList
      -- DirList and ScriptList contains all 'IN_USE' files less files in 'MEFTI' folders and 'Disabled scripts and paks' folder
      
      if IsDEV then print("") end
      if IsDEV then print(" C:- ScriptList total entries = "..#ScriptList) end
            
      -- Script List types:
      -- N  = Normal (i.e individual in Modscript, when no COMBINE flag)
      
      -- Without COMBINE_FLAG
          -- NOTE: These could be COMBINE if user said to COMBINE
      -- Used when the scripts are in a sub-folder
      -- A  = 1st one in this sub-folder (COMBINE or NOT)
      -- M  = in the middle of the list of scripts in a sub-folder (COMBINE or NOT)
      -- Z or AZ = last in this sub-folder (only when user said to COMBINE) (AZ = 1st and last)
      
      -- With COMBINE_FLAG
          -- NOTE: in ModScript or the sub-folder, these are forced to COMBINE
      -- F  = 1st one in this sub-folder
      -- C  = in the middle of the list of scripts in a sub-folder
      -- E or FE = last of this sub-folder (FE = 1st and last)

      -- 1st pass, find sub-folders
      local previousPath = ""
      
      for i=1,#ScriptList do
        local fullPath = ScriptList[i]
        
        local thisPath = GetRelPathToScript(fullPath)
        
        if thisPath == previousPath then
          -- if IsDEV then print("    skip it") end

        else
          previousPath = thisPath
          
          if IsDEV then print("=====") end
          if IsDEV then print("  fullPathName       = ["..fullPath.."] on i = "..i) end
          if IsDEV then print("    thisPath full = ["..thisPath.."]") end

          local meftiPath = [[..\]]..string.sub(trim(thisPath),cutPoint + 1)..[[MEFTI]]
          if IsDEV then print("    meftiPath     = ["..meftiPath.."]") end
          
          local IsMEFTIexist = false -- MEFTI folder in ModScript is never used
          if meftiPath ~= [[..\ModScript\MEFTI]] then
            IsMEFTIexist = IsDirExist(meftiPath)
          end
          if IsDEV then print("        %%% 1: IsMEFTIexist = ["..tostring(IsMEFTIexist).."]") end
          
          local ISCombineFlagExist = IsFileExist([[..\]]..string.sub(trim(thisPath),cutPoint + 1)..COMBINE_name)
          if IsDEV then print("        %%% 1: ISCombineFlagExist = ["..tostring(ISCombineFlagExist).."]") end
          
          local IsFirstEncounter = false
          local IsNextEncounter = false
          -- doing as if no COMBINE flag exist in any sub-folder
          for j=1,#ScriptList do
            if ScriptTypeList[j] == nil then
              -- this entry has not been processed yet
              
              local d = GetRelPathToScript(ScriptList[j])
              -- if IsDEV then print("    d full = ["..thisPath.."]") end
              
              -- print("["..string.upper(string.sub(d,-10)).."]")
              if string.upper(string.sub(d,-10)) == [[MODSCRIPT\]] and  ScriptList[j]:sub(-4):upper() == ".LUA" then
                ScriptTypeList[j] = "N" -- this entry is in ModScript folder, mark as Normal (i.e. individual)
                MEFTI_list[j] = IsMEFTIexist
                if IsDEV then print("            N - on i, j ["..i..", "..j.."] mark as ["..ScriptTypeList[j].."] ".."["..ScriptList[j].."] "..tostring(MEFTI_list[j])) end
              else
                -- look for the first encounter of thisPath in full
                -- local subD = GetRelPathToScript(ScriptList[j])
                -- if IsDEV then print("    subD = ["..subD.."]") end
                
                -- if not IsFirstEncounter and string.find(ScriptList[j],thisPath,1,true) ~= nil then
                if not IsFirstEncounter and d == thisPath and ScriptList[j]:sub(-4):upper() == ".LUA" then
                  --we found the first script in thisPath
                  IsFirstEncounter = true
                  -- print("IsFirstEncounter = ["..tostring(IsFirstEncounter).."]")
                end

                if IsFirstEncounter then
                  -- if IsDEV then print("        IsFirstEncounter = ["..d.."]") end
                  -- if string.find(ScriptList[j],thisPath,1,true) ~= nil then
                  if d == thisPath then
                    if ScriptList[j]:sub(-4) == ".lua" then
                      -- either way, mark MEFTI flag as detected before
                      MEFTI_list[j] = IsMEFTIexist
                      if IsDEV then print("            %%% B: MEFTI_list["..j.."] = ["..tostring(MEFTI_list[j]).."]") end

                      if not IsNextEncounter then
                        IsNextEncounter = true
                        -- this is the 1st one in this sub-folder                      
                        local scriptType = "A"
                        if ISCombineFlagExist then
                          scriptType = "F"
                        end
                        
                        ScriptTypeList[j] = scriptType --mark as first of list
                        if IsDEV then print("            A/F - on i, j ["..i..", "..j.."] mark as ["..ScriptTypeList[j].."] ".."["..ScriptList[j].."] "..tostring(MEFTI_list[j])) end
                      else
                        -- this is one of the following ones (could be the last one, we will correct later)
                        local scriptType = "M"
                        if ISCombineFlagExist then
                          scriptType = "C"
                        end
                        
                        ScriptTypeList[j] = scriptType -- mark next ones as Middle
                        if IsDEV then print("            M/C - on i, j ["..i..", "..j.."] mark as ["..ScriptTypeList[j].."] ".."["..ScriptList[j].."] "..tostring(MEFTI_list[j])) end
                      end                      
                    end
                    
                  else
                    if IsDEV then print("        OUT of thisPath") end
                    -- we are no longer in thisPath, go back and mark previous script as the end of this sub-folder list
                    if GetRelPathToScript(ScriptList[j-1]) ~= thisPath then
                      -- preceding is not in this sub-folder
                      if ScriptTypeList[j] == "A" then
                        -- this one is also the end
                        ScriptTypeList[j] = "AZ" -- first and end of list
                        if IsDEV then print("            AZ/Z - on i, j ["..i..", "..j.."] forced to ["..ScriptTypeList[j].."] ".."["..ScriptList[j].."] "..tostring(MEFTI_list[j])) end
                      elseif ScriptTypeList[j] == "F" then
                        -- this one is also the end
                        ScriptTypeList[j] = "FE" -- first and end of list
                        if IsDEV then print("            FE/F - on i, j ["..i..", "..j.."] forced to ["..ScriptTypeList[j].."] ".."["..ScriptList[j].."] "..tostring(MEFTI_list[j])) end
                      end
                    else
                      for k=j-1,1,-1 do
                        -- test for lua script only
                        local da = GetRelPathToScript(ScriptList[k])
                        if da == thisPath then
                          if ScriptList[k]:sub(-4):upper() == ".LUA" then
                            if ScriptTypeList[k] == "A" then
                              -- special case: only one script in this sub-folder
                              -- the 1st is also the last and only one
                              ScriptTypeList[k] = "AZ" -- first and end of list
                              if IsDEV then print("            AZ/Z - on i, k ["..i..", "..k.."] corrected it to ["..ScriptTypeList[k].."] ".."["..ScriptList[k].."] "..tostring(MEFTI_list[k])) end
                            elseif ScriptTypeList[k] == "F" then
                              -- special case: only one script in this sub-folder
                              -- the 1st is also the last and only one
                              ScriptTypeList[k] = "FE" -- first and end of list
                              if IsDEV then print("            FE/F - on i, k ["..i..", "..k.."] corrected it to ["..ScriptTypeList[k].."] ".."["..ScriptList[k].."] "..tostring(MEFTI_list[k])) end
                              -- must be a "M" or a "C"
                            elseif ScriptTypeList[k] == "M" then
                              ScriptTypeList[k] = "Z" -- end auto-combine
                            elseif ScriptTypeList[k] == "C" then
                              ScriptTypeList[k] = "E" -- end auto-combine
                            end
                            
                            break
                          end
                        end
                      end -- for k=j-1,1,-1 do
                    end
                    
                    break
                  end --if string.find(ScriptList[j],thisPath,1,true) ~= nil then
                else
                  -- if IsDEV then print("      >>> still not 1st encounter") end
                end --if IsFirstEncounter then
              end --if string.upper(string.sub(d,-10)) == [[MODSCRIPT\]] then
            end --if ScriptTypeList[j] == nil then
          end --for j=1,#ScriptList do
        end --if thisPath == previousPath then
      end --for j=1,#ScriptList do
      
      -- test last script entry
      if IsDEV then print("\n>>> A: test last script") end
      for k=#ScriptList,1,-1 do
        if ScriptList[k]:sub(-4):upper() == ".LUA" then
          if ScriptTypeList[k] == "A" or ScriptTypeList[k] == "AZ" then
            ScriptTypeList[k] = "AZ" -- end of list
            break
          end
          if ScriptTypeList[k] == "M" then
            ScriptTypeList[k] = "Z" -- end of list
            break
          end
        end
      end
      
      -- here all ScriptList entries are scripts
      local tmpK = {}
      local tmpS = {}
      local tmpM = {}
      
      p("")
      for i=1,#ScriptList do
        if ScriptTypeList[i] ~= nil then
          table.insert(tmpK,ScriptList[i])
          table.insert(tmpS,ScriptTypeList[i])
          table.insert(tmpM,MEFTI_list[i])
          p(i..": "..tostring(ScriptTypeList[i]).." "..tostring(MEFTI_list[i]).." ["..ScriptList[i].."]")
        end
      end      
      p("")
      
      ScriptList = tmpK
      ScriptTypeList = tmpS
      MEFTI_list = tmpM
      
if IsDEV then WaitForAnyKey() end

    end --if #DirList > 0 then

      -- print("")
      -- print("RAW ScriptList with info:")
      -- for i=1,#ScriptList do
        -- print("=== "..i..": "..tostring(ScriptTypeList[i]).." "..tostring(MEFTI_list[i]).." ["..ScriptList[i].."]")
      -- end      
      -- print("")
-- if IsDEV then WaitForAnyKey() end

    return DirList,ScriptList,ScriptTypeList,MEFTI_list
  end
  --***************************************************************************************************

	-- do not use /MT: output will be 'distorded'
  -- need /V to capture the output
  local cmd = [[robocopy ]]..pathToModScript..[[\. ]]..pathToModScript..[[\. *.* /S /V /L /R:1 /NS /NDL /NP /NC /NJS /NJH]]
  local robocopyResult = os.capture(cmd,true)
  
  local dirList = robocopyResult:split("\n")  
  -- print("         @@@ A: Found = "..#dirlist.." files in MODSCRIPT")

  --keep only files where ModScript sub-folder does not contain DONOTUSE_name and not those in 'Disabled scripts and paks'
  local ScriptList = {}
  local ScriptTypeList = {}
  -- local MEFTI_list = {}
  dirList,ScriptList,ScriptTypeList,MEFTI_list = CleanModScriptDirList(dirList,pathToModScript,gDONOTUSE_name,gCOMBINE_name)
  -- print("         @@@ B: Found = "..#dirlist.." files in MODSCRIPT after removing folders containing "..gDONOTUSE_name)
  
  --    dirList: the full list of 'IN_USE' files
  -- ScriptList: the list of 'LUA' scripts
  --   ScriptTypeList: the type of these scripts
  --       MEFTI_list: the info on MEFTI folder presence
  
  -- now set info on 'too deep' sub-folders and 'too long path'
  --   like: Test_Combine_vs_Invividual\PubMods2\BAD_SUB_FOLDER
  
  local KeepThis = {}
  local info = ""
  for i=1,#ScriptList do
    ScriptList[i] = trim(ScriptList[i])
    --cannot do that below, some path could contain pattern magic characters
    --local tmp = string.gsub(dirlist[i],gMASTER_FOLDER_PATH..[[ModScript\]],"")
    
    p("ScriptList["..i.."] = ["..ScriptList[i].."]")
    -- do this instead
    local pos = string.find(string.upper(ScriptList[i]),[[MODSCRIPT\]],1,true)
    local tmp = string.sub(ScriptList[i],pos + 10)
    local _,n = string.gsub(tmp,[[\]],"")

    KeepThis[#KeepThis+1] = {}
    KeepThis[#KeepThis][1] = ScriptList[i]
    KeepThis[#KeepThis][2] = "" --default, folderTooDeep
    KeepThis[#KeepThis][3] = false --default, pathTooLong
    KeepThis[#KeepThis][4] = ScriptTypeList[i] --"N", "C" or ("AZ"|"A"|"Z") or ("FE"|"F"|"E")
    KeepThis[#KeepThis][5] = MEFTI_list[i] --default, true if MEFTI exist in this folder

    if n > 2 then
      -- folderTooDeep
      if info ~= GetRelPathToScript(tmp) then
        info = GetRelPathToScript(tmp)
        KeepThis[#KeepThis][2] = info
      end
    end
    
    if string.len(ScriptList[i]) > 260 then
      -- pathTooLong
      KeepThis[#KeepThis][3] = true
    end    
  end

  -- full list of valid scripts with additional info
  gScriptList = KeepThis

  -- finally refresh the full dir list with info on 'too deep' and 'too long path'
  local KeepThis = {}
  local info = ""
  for i=1,#dirList do
    dirList[i] = trim(dirList[i])
    --cannot do that below, some path could contain pattern magic characters
    --local tmp = string.gsub(dirlist[i],gMASTER_FOLDER_PATH..[[ModScript\]],"")
    
    p("dirList["..i.."] = ["..dirList[i].."]")
    -- do this instead
    local pos = string.find(string.upper(dirList[i]),[[MODSCRIPT\]],1,true)
    local tmp = string.sub(dirList[i],pos + 10)
    local _,n = string.gsub(tmp,[[\]],"")

    KeepThis[#KeepThis+1] = {}
    KeepThis[#KeepThis][1] = dirList[i]
    KeepThis[#KeepThis][2] = "" --default, folderTooDeep
    KeepThis[#KeepThis][3] = false --default, pathTooLong

    if n > 2 then
      -- folderTooDeep
      if info ~= GetRelPathToScript(tmp) then
        info = GetRelPathToScript(tmp)
        KeepThis[#KeepThis][2] = info
      end
    end
    
    if string.len(dirList[i]) > 260 then
      -- pathTooLong
      KeepThis[#KeepThis][3] = true
    end    
  end

  -- full path/filename list of valid files with all extensions and 'too deep', 'too long path' still included
  gModScriptValidContent = KeepThis
end

--***************************************************************************************************
--return a list of files with extension EXT in ModScript and sub-folders
--   that do not have a file DONOTUSE_name in the folder
--   nor are inside "Disabled scripts and paks" folder
function GetFilesWithExt(EXT,IsModScriptfolderOnly)
  if IsModScriptfolderOnly == nil then IsModScriptfolderOnly = false end
  --clean and keep only EXT files
  local dirList = GetDirList(gModScriptValidContent,EXT,IsModScriptfolderOnly)
  return dirList
end

--***************************************************************************************************
--return a list of files with extension EXT in Folder
--   that do not have a file DONOTUSE_name in the folder
--   nor are inside "Disabled scripts and paks" folder
function GetFilesWithExtInFolder(Folder,EXT)
  --clean and keep only EXT files
  local dirList = GetDirList(gModScriptValidContent,EXT)
  
  local tmp = {}
  for i=1,#dirList do
-- print(" - "..dirList[i])
    if string.find(dirList[i],Folder,1,true) ~= nil then
      table.insert(tmp,dirList[i])
    end
  end
  -- print("         @@@ D: Found = ["..#tmp.."] files with EXT = ["..EXT.."] in ["..Folder.."]")
  
  return tmp
end

--***************************************************************************************************  
function GetRelPathToScript(scriptPath)
  --we only keep the path where the script came from
  local IsSubFolder = false
  local scriptSourcePath = getPath(scriptPath)
  if scriptSourcePath == nil then
    scriptSourcePath = ""
    IsSubFolder = true
  end
-- print("X: GetRelPathToScript:          === FOR bScriptName = ["..scriptPath.."]")
-- print("X: GetRelPathToScript:          === FOR scriptSourcePath = ["..scriptSourcePath.."]")
  return scriptSourcePath,IsSubFolder
end

--does not work
-- function RemoveDirectory(path)
  -- --***************************************************************************************************
  -- local function removedir(path)
    -- local iter, dir_obj = lfs.dir(path)
    -- while true do
      -- local dir = iter(dir_obj)
      -- if dir == nil then
        -- print("break")
        -- break
      -- end
      -- print(dir)
      -- if dir ~= "." and dir ~= "..." then
        -- local CurDir = path..dir
        -- print("["..CurDir.."]")
        -- local mode = lfs.attributes(CurDir, "mode")
        -- print("mode = "..mode)
        -- if mode == "Directory" then
          -- print("Recursive call...")
          -- removedir(CurDir.."/")
        -- elseif mode == "File" then
          -- print("os.remove...")
          -- os.remove(CurDir)
        -- end
      -- end
    -- end
    -- print("Out of while loop")
    -- local succ, des = os.remove(path)
    -- if des then
      -- print("From os.remove(path): "..des)
    -- end
    -- return succ
  -- end
  -- --***************************************************************************************************
    
  -- return removedir(path)
-- end

--***************************************************************************************************
--To retrieve a table from a text file
do
  function table.load( sfile )
    local ftables,err = loadfile( sfile )
    if err then return _,err end
    local tables = ftables()
    for idx = 1,#tables do
       local tolinki = {}
       for i,v in pairs( tables[idx] ) do
          if type( v ) == "table" then
            tables[idx][i] = tables[v[1]]
          end
          if type( i ) == "table" and tables[i[1]] then
            table.insert( tolinki,{ i,tables[i[1]] } )
          end
       end
       -- link indices
       for _,v in ipairs( tolinki ) do
          tables[idx][v[2]],tables[idx][v[1]] =  tables[idx][v[1]],nil
       end
    end
    return tables[1]
  end

  local function basicSerialize(o)
    if type(o) == "number" then
      return tostring(o)
    else   -- assume it is a string
      return string.format("%q", o)
    end
    -- return string.format([["%s"]], o)
  end

  --To save a table to a text file
  function table.save(filename, value, saved)
    saved = saved or {}       -- initial value
    io.write(filename, " = ")
    if type(value) == "number" or type(value) == "string" then
      io.write(basicSerialize(value), "\n")
    elseif type(value) == "table" then
      if saved[value] then    -- value already saved?
        io.write(saved[value], "\n")  -- use its previous filename
      else
        saved[value] = filename   -- save filename for next time
        io.write("{}\n")     -- create a new table
        for k,v in pairs(value) do      -- save its fields
          local fieldfilename = string.format("%s[%s]", filename, basicSerialize(k))
          table.save(fieldfilename, v, saved)
        end
      end
    elseif type(value) == "boolean" then
      io.write(tostring(value), "\n")
    else
      print("cannot save value "..value.." as a "..type(value))
    end
  end
end

--***************************************************************************************************
function SaveTable(filename,MyTable,TableName)
  io.output(filename)
  local name = string.sub(filename,1,string.find(filename,".",1,true)-1)
  io.write(TableName)
  table.save(name, MyTable)
  io.close()
end

--***************************************************************************************************
function ReturnUpperCaseTable(thisTable)
  local newTable = {}
  if type(thisTable) == "table" then
    for i=1,#thisTable do
      newTable[#newTable + 1 ] = string.upper(thisTable[i])
    end
    return newTable
  end
  return thisTable
end

--***************************************************************************************************
-- serialize ~ by YellowAfterlife
-- https://yal.cc/lua-serializer/
-- Converts value back into according Lua presentation
-- Accepts strings, numbers, boolean values, and tables.
-- Table values are serialized recursively, so tables linking to themselves or
-- linking to other tables in "circles". Table indexes can be numbers, strings,
-- and boolean values.
-- Created under https://creativecommons.org/licenses/by-nc-sa/3.0/
-- Changes made by Wbertro:
  --padding reduced to '  '
  --adapted to 'understand' a AMUMSS script
function serializeObject(object,multiline,depth,name)
	depth = depth or 0
	if multiline == nil then multiline = true end
	local padding = string.rep('  ', depth) -- can use '\t' if printing to file
	local r = padding -- result string
	local NextLine = '\n'
  -- if depth == 0 then
    -- NextLine = ''
  -- end
  
  if name then -- should start from name
    -- enclose in brackets if not string or not a valid identifier
    -- thanks to Boolsheet from #love@irc.oftc.net for string pattern
    local test1 = (type(name) ~= 'string' or name:find('^([%a_][%w_]*)$') == nil)
    local test2 = ( (type(name) == 'string') and string.format('%q', name) or tostring(name) )
    local test3 = ( test1 and ('['..test2..']') or tostring(name) )
    prefix = ""
    suffix = ""
    if depth ~= 0 then
      prefix = "[\""
      suffix = "\"]"
    end
		r = r..prefix..test3..suffix..' = '
    NextLine = ''
    if depth == 0 then
      --only on first run
      NextLine = '\n'
    end
	end
	
  if type(object) == 'table' then --we need to go into that table
    if depth == 0 then
      --only on first run
      r = r..(multiline and '\n' or '')..'{'..(multiline and NextLine or '')
    else
      r = r..(multiline and '\n' or '')..padding..'{'..(multiline and '\n' or ' ')
		end
    
    local length = 0
    for i, v in ipairs(object) do
			r = r..serializeObject(v, multiline, multiline and (depth + 1) or 0)..','..(multiline and '\n' or ' ')
			length = i
		end
		
    for i, v in pairs(object) do
			local itype = type(i) -- convert type into something easier to compare:
			itype =(itype == 'number')  and 1
          or (itype == 'string')  and 2
          or (itype == 'boolean') and 3
          or error('Unsupported index type "' .. itype .. '"')
          
			-- detect if item should be skipped
      local test4 = ( (itype == 1) and (i%1 == 0) and (i >= 1) and (i <= length) ) -- ipairs part
      local test5 = ( (itype == 2) and (string.sub(i, 1, 1) == '_') ) -- prefixed string
      local skip = test4 or test5
			if not skip then
				r = r ..serializeObject(v, multiline, multiline and (depth + 1) or 0, i)..','..(multiline and '\n' or ' ')
			end
		end
		
    r = r..(multiline and padding or '')..'}'
	
  elseif type(object) == 'string' then
		-- r = r .. string.format('%q', object)
    if string.find(object,"\n",1,true) == nil then
      r = r..[["]]..object..[["]] --puts "" around values
    else
		r = r .."[["..object.."]]" --puts [[]] around long string
    end
	
  elseif type(object) == 'number' or type(object) == 'boolean' then
		r = r..tostring(object) --writes a number or a boolean
	
  elseif object == nil then
		r = r..[[nil]]
	
  else
		error('Unserializeable value "'..tostring(object)..'"')
	end
	
  return r --a string
end

--***************************************************************************************************
--**********  switch statement  *****************************************************************************************
--https://gist.github.com/FreeBirdLjj/6303864
--see also: http://lua-users.org/wiki/SwitchStatement

  -- --USAGE EXAMPLE
  -- --***************************************************************************************************
  -- local param = "My".."junk" --tostring(true)
  -- print("param = ["..param.."]")
  -- switch(param,{["Mytrue"] = function() print("[IsPrecedingKeyWords is True]") end,
                -- ["Myfalse"] = function() print("[IsPrecedingKeyWords is False]") end,
                -- [1] = function() print("[This is One]") end,
                -- [4] = function() print("[This is Four]") end,
                -- ["default"] = function() print("default junk") end,})
    
    -- --output:
    -- --  param = [Myjunk]
    -- --  default junk

  -- local param = 4
  -- print("param = ["..param.."]")
  -- switch(param,{["Mytrue"] = function() print("[IsPrecedingKeyWords is True]") end,
                -- ["Myfalse"] = function() print("[IsPrecedingKeyWords is False]") end,
                -- [1] = function() print("[This is One]") end,
                -- [4] = function() print("[This is Four]") end,
                -- ["default"] = function() print("default junk") end,})
    
    -- --output:
    -- --  param = 4
    -- --  [This is Four]
  -- --***************************************************************************************************  

--this becomes a new lua 'Basic function'
_G.switch = function(param, case_table)
    local case = case_table[param]
    -- print("case = "..tostring(case))
    if case then return case() end
    local def = case_table['default']
    -- print("def = "..tostring(def))
    return def and def() or nil
end
--**********  END: switch statement  *****************************************************************************************

--***************************************************************************************************
function iif(test, true_part, false_part)
  if (test) then
    return true_part
  else
    return false_part
  end
end

--***************************************************************************************************
function Round(number)
  return math.floor(number+0.5)
end

--***************************************************************************************************
function math_sign(v)
	return (v >= 0 and 1) or -1
end

--***************************************************************************************************
function math_round(v, multi)
	multi = multi or 1
	return math.floor((v/multi) + (math_sign(v) * 0.5)) * multi
end

--***************************************************************************************************
function string.round(value)
  local dotPosition = string.find(value,".",1,true)
  if dotPosition == nil then return value end
  local afterDotString  = string.sub(value,dotPosition+1)
  if string.find(afterDotString,"0000",1,true) or string.find(afterDotString,"9999",1,true) then
    value = tostring(math_round(tonumber(value),0.001))
  end
  return value
end

--***************************************************************************************************
-- remove trailing and leading whitespace from string.
-- http://en.wikipedia.org/wiki/Trim_(programming)
-- modified
function trim(s)
  -- using local r:
  -- to force the return of only first arg of string.gsub
  -- if used with table.insert: it will confuse it when the second arg is returned
  -- from PiL2 20.4
  local r = string.gsub(s,"^%s*(.-)%s*$", "%1")
  return r
end

--***************************************************************************************************
-- remove trailing whitespace from string.
-- http://en.wikipedia.org/wiki/Trim_(programming)
-- modified
function rtrim(s)
  -- using local r:
  -- to force the return of only first arg of string.gsub
  -- if used with table.insert: it will confuse it when the second arg is returned
  local n = #s
  while n > 0 and s:find("^%s", n) do n = n - 1 end
  local r = s:sub(1, n)
  return r
end

--***************************************************************************************************
-- remove leading whitespace from string.
-- http://en.wikipedia.org/wiki/Trim_(programming)
-- modified
function ltrim(s)
  -- using local r:
  -- to force the return of only first arg of string.gsub
  -- if used with table.insert: it will confuse it when the second arg is returned
  local r = s:gsub("^%s*", "")
  return r
end

--***************************************************************************************************
-- function ReverseOrder(s)
  -- local result = ""
  -- for i=#s,4,-4 do
    -- local byte = string.sub(s,i-3,i)
    -- result = result..byte
  -- end
  -- return result
-- end

--***************************************************************************************************
-- function HexToString(str)
    -- return (string.gsub(str,'..', function (cc)
        -- return string.char(tonumber(cc, 16))
    -- end))
-- end

--***************************************************************************************************
-- function StringToHex(str)
    -- return (string.gsub(str,'.', function (c)
        -- return string.format('%02X', string.byte(c))
    -- end))
-- end

--***************************************************************************************************
-- function bytes_to_int(str,endian,signed) -- use length of string to determine 8,16,32,64 bits
    -- local t={string.byte(str,1,-1)}
    -- if endian=="big" then --reverse bytes
        -- local tt={}
        -- for k=1,#t do
            -- tt[#t-k+1]=t[k]
        -- end
        -- t=tt
    -- end
    -- local n=0
    -- for k=1,#t do
        -- n=n+t[k]*2^((k-1)*8)
    -- end
    -- if signed then
        -- n = (n > 2^(#t*8-1) -1) and (n - 2^(#t*8)) or n -- if last bit set, negative.
    -- end
    -- return n
-- end

--***************************************************************************************************
-- function int_to_bytes(num,endian,signed)
    -- if num<0 and not signed then num=-num print"warning, dropping sign from number converting to unsigned" end
    -- local res={}
    -- local n = math.ceil(select(2,math.frexp(num))/8) -- number of bytes to be used.
    -- if signed and num < 0 then
        -- num = num + 2^n
    -- end
    -- for k=n,1,-1 do -- 256 = 2^8 bits per char.
        -- local mul=2^(8*(k-1))
        -- res[k]=math.floor(num/mul)
        -- num=num-res[k]*mul
    -- end
    -- assert(num==0)
    -- if endian == "big" then
        -- local t={}
        -- for k=1,n do
            -- t[k]=res[n-k+1]
        -- end
        -- res=t
    -- end
    -- return string.char(unpack(res))
-- end

--***************************************************************************************************
--Returns a table splitting a string with a delimiter
--from https://gist.github.com/GabrielBdeC/b055af60707115cbc954b0751d87ec23
--Changes to enhance the code from https://gist.github.com/jaredallard/ddb152179831dd23b230
function string:split(delimiter)
    local result = {}
    local from = 1
    local delim_from, delim_to = string.find(self, delimiter, from, true)
    while delim_from do
        if (delim_from ~= 1) then
            table.insert(result, string.sub(self, from, delim_from-1))
        end
        from = delim_to + 1
        delim_from, delim_to = string.find(self, delimiter, from, true)
    end
    if (from <= #self) then table.insert(result, string.sub(self, from)) end
    return result
end

--***************************************************************************************************
--expression = string to check
--returns IsRegularExpression = true if expr is a regular expression
function IsExpressionRegular(expression)
  --check if we are using LUA regular strings to search for this string
  local IsRegularExpression = false
  -- local expr = expression
  if (string.sub(expression,1,1) == "{" and string.sub(expression,1,3) ~= "{:}") and (string.sub(expression,-1,-1) == "}"  and string.sub(expression,-1,-3) ~= "{:}") then
    IsRegularExpression = true
    -- expr = string.sub(expression,2,-2)
  end

  -- local magicChar = "^$()%[]*+-?)"
  -- for i=1,string.len(magicChar) do
    -- if string.find(expression,string.sub(magicChar,i,i),1,true) ~= nil then
      -- IsRegularExpression = true
      -- break
    -- end
  -- end  
  return IsRegularExpression
end

--***************************************************************************************************
--expression = string
--returns IsRegular = true if expr is a regular expression
--returns uppercase normal or regular expression without <>
function makeRegExUppercase(expr)
  local p = function(...) end
  -- local p = print

  -- p("expr = ["..tostring(expr).."]")
  local IsRegular = IsExpressionRegular(expr)
  -- p("IsRegular = ["..tostring(IsRegular).."]")
  if IsRegular then
    local skipNext = false
    for i=1,string.len(expr) do
      if string.sub(expr,i,i) == "%" then
        skipNext = true
      elseif skipNext then
        skipNext = false
      else
        if i < string.len(expr) then
          expr = string.sub(expr,1,i-1)..string.upper(string.sub(expr,i,i))..string.sub(expr,i+1)
        else
          expr = string.sub(expr,1,i-1)..string.upper(string.sub(expr,i,i))
        end
      end
    end
    --remove the <>
    expr = string.sub(expr,2,-2)
  else
    expr = string.upper(expr)
  end
  
  return IsRegular,expr
end

--***************************************************************************************************
--return first 's' as 'string'
function ReturnStringFrom(s)
  if s == nil then return "" end
  local ss = s
  local sType = type(s)
  if sType == 'table' then
    ss = s[1]
  end
  if sType == 'string' then return ss end
  if sType == 'number' or sType == 'boolean' then return tostring(ss) end
  if sType == 'table' then return "sub-table" end
  --for other types like "function", "thread" and "userdata"
  return "error"
end

--***************************************************************************************************
function NormalizeStrEndlines(str)
  -- print("str = ["..str.."]")
  str = str:gsub('>%s*\n','>\n') -- remove all space characters after > and before crlf
  str = str:gsub('>','>\n') -- make sure all > have a crlf
  str = str:gsub("%-%->\n","-->") -- remove crlf from lines ending in -->
  str = str:gsub("%)%-%->",")-->\n") -- add back crlf from lines ending in )--> (protect 2nd line of an EXML)
  str = str:gsub("\n%s*\n","\n") -- remove double crlf and empty lines
  -- print("str = ["..str.."]")
  return str
end

--***************************************************************************************************
function StripInfo(Info,cut1,cut2)
  --if Info == nil then return nil end
  if type(Info) == "number" then Info = tostring(Info) end
  local _,stop = string.find(Info,cut1,1,true)
  if stop==nil then return Info end
  local result = string.sub(Info,stop+1)
  if cut2~=nil then
    local start = string.find(result,cut2,1,true)
    if start==nil then return Info end
    result = string.sub(result,1,start-1)
  end
  return result
end

--***************************************************************************************************
-- line = a line from the EXML (made UPPERCASE internally)
-- returns: in ORIGINAL CASE
--   pnv, v as Property name=,value=
--   pnv as Property value=
--   nil if none found
function GetPropertyValue(line)
  local pattern = [["(.-)".+"(.-)"]]
  -- pnv = Property name/value
  -- v = value
  local pnv,v = string.match(line:upper(),pattern)
  if pnv ~= nil then
    local pnvL,vL = string.match(line,pattern)
    return pnv,v,pnvL,vL
  else
    pattern = [["(.-)"]]
    pnv = string.match(line:upper(),pattern)
    if pnv ~= nil then
      local pnvL = string.match(line,pattern)
      return nil,pnv,nil,pnvL
    else
      return nil,nil,nil,nil
    end
  end 
end

--***************************************************************************************************
-- line = a line from the EXML
-- returns: in ORIGINAL CASE
--   pnv as Property (name or value)
--   nil if none found
function GetProperty(line)
  DEBUG_VCTproperty_print("    INFO: line = ["..line.."]")
  return string.match(line,[["(.-)"]])
end

--***************************************************************************************************
-- line = a line from the EXML
-- returns:
--  linesFound: a table of line numbers in this group matching "PROPERTY"
function GetPropertyEXT(property,IsRegular,FileTable,startIndex,endIndex)
  -- find how many lines has this property in this group?
  DEBUG_VCTproperty_print("### START: In GetPropertyEXT()")
  DEBUG_VCTproperty_print("###   #FileTable = "..#FileTable)
  DEBUG_VCTproperty_print("###     property = ["..property.."] the 'original'")
  DEBUG_VCTproperty_print("###    IsRegular = ["..tostring(IsRegular).."]")
  
  local prop = property
  if IsRegular then
    if (property:sub(1,1) == "^") then
      prop = [["]]..property:sub(2) -- start with " and remove the ^
    end
    if (property:sub(-1,-1) == "$") then
      prop = prop:sub(-1)..[["]] -- remove the $ and ends with "
    end
  else
    -- it is as if we had used ^...$
    prop = [["]]..prop..[["]] -- starts and ends with "
  end
  DEBUG_VCTproperty_print("###         prop = ["..prop.."] the 'searchedFor'")
  
  local linesNumFound = {}
  
  if startIndex + 1 > endIndex then
    table.insert(linesNumFound,startIndex)
    return linesNumFound
  end
  
  local section = table.concat(FileTable,"",startIndex + 1,endIndex):upper()
  DEBUG_VCTproperty_print("### section string size = ["..#section.."] for FileTable index "..(startIndex + 1).." to "..endIndex)
  
  --***************************************************************************************************
  -- need to check if the 'original' property of found line is ok to keep
  local function CheckProperty(FileTable,tableIndex,property)
    local line = FileTable[tableIndex]:upper()
    local p = StripInfo(line,[[ME="]],[["]]) -- Property name=
    local IsFound = false
    IsFound = (p ~= line)
    if not IsFound then
      p = StripInfo(line,[[Y VALUE="]],[["]]) -- Property value=
      IsFound = (p ~= line)
    end
    DEBUG_VCTproperty_print("       p = ["..p.."] found = "..tostring(IsFound))
    if IsFound then
      -- a valid property, is it one we are searching?
      return (string.find(p,property,1,false) ~= nil)
    end
    return false
  end
  --***************************************************************************************************

  local firstPosEnd = nil
  local lineNumber = nil

  _,firstPosEnd = string.find(section,prop,1,not IsRegular)
  DEBUG_VCTproperty_print(string.format("### prop=[%s] IsRegular=(%s) %d-%d",prop,tostring(IsRegular),(startIndex+1),endIndex))
  
  if firstPosEnd ~= nil then
    _,lineNumber = section:sub(1,firstPosEnd):gsub('>','>')
    local tableIndex = startIndex + 1 + lineNumber
    DEBUG_VCTproperty_print("### A: Line Found ("..tostring(lineNumber)..") using table.concat: ["..FileTable[tableIndex].."] at "..(tableIndex))    
    
    if not IsRegular or CheckProperty(FileTable,tableIndex,property) then
      DEBUG_VCTproperty_print("###   A: Using ["..FileTable[tableIndex].."] at "..(tableIndex))
      table.insert(linesNumFound,tableIndex)
    end

    --local secondPos = nil
    local nextPos = nil
    _,nextPos = string.find(section,prop,firstPosEnd+1,not IsRegular)
    
    if nextPos ~= nil then
      _,lineNumber = section:sub(1,nextPos):gsub('>','>')
      tableIndex = startIndex + 1 + lineNumber
      DEBUG_VCTproperty_print("### B: linesNumFound ("..tostring(lineNumber)..") using table.concat: ["..FileTable[tableIndex].."] at "..(tableIndex))

      if not IsRegular or CheckProperty(FileTable,tableIndex,property) then
        DEBUG_VCTproperty_print("###   B: Using ["..FileTable[tableIndex].."] at "..(tableIndex))
        table.insert(linesNumFound,tableIndex)
      end
      
      DEBUG_VCTproperty_print("### >>> before while")
      local currentPos = nextPos
      DEBUG_VCTproperty_print("###   starting tableIndex = "..tableIndex..", currentPos = "..currentPos)
      
      while nextPos ~= nil do
        nextPos,endPos = string.find(section,prop,currentPos+1,not IsRegular) -- always very fast
        DEBUG_VCTproperty_print("###     out find at endPos = "..tostring(endPos).."  into gsub")
        
        if nextPos ~= nil then
          DEBUG_VCTproperty_print("###     into gsub at currentPos = "..currentPos..", endPos = "..endPos)
          _,lineNumber = section:sub(currentPos,endPos):gsub('>','>') -- slow has endPos increases if section is too big
          
          currentPos = endPos
          tableIndex = tableIndex + lineNumber
          DEBUG_VCTproperty_print("###     out gsub: with lineNumber = "..lineNumber..", currentPos = "..currentPos.." to insert: "..(tableIndex))
          
          if not IsRegular or CheckProperty(FileTable,tableIndex,property) then
            DEBUG_VCTproperty_print("###        C: Using ["..tostring(FileTable[tableIndex]).."] at "..(tableIndex))
            table.insert(linesNumFound,tableIndex)
          end
                    
          nextPos = endPos + 1
        end
      end
      DEBUG_VCTproperty_print("### <<< after while")

    end
  end
DEBUG_VCTproperty_print("### END: In GetPropertyEXT()")
  return linesNumFound
end

--***************************************************************************************************
function StripPath(filename,cutter)
  local start,stop = string.find(filename,cutter,1,true)
  local result = string.sub(filename,stop+1)
  return result
end

--***************************************************************************************************
CurrentKeyWordsAndAll = {}
--GetLuaCurrentKeyWordsAndAll()
do
  local seen={}
  function GetLuaCurrentKeyWordsAndAll(t,tab,AllInfo,parent)
    seen[t]=true
    local s={}
    local n=0
    for k in pairs(t) do
      n=n+1
      s[n]=k
    end
    table.sort(s)

    for k,v in ipairs(s) do
      if AllInfo then
        parent = parent or ""
        -- print("["..parent..v.."]")
        table.insert(CurrentKeyWordsAndAll,"= ["..parent..v.."]")
      else
        -- print("["..v.."]")
        table.insert(CurrentKeyWordsAndAll,"- ["..v.."]")
      end
      local possibleParent = v
      v=t[v]
      if type(v)=="table" and not seen[v] then
        if AllInfo then
          -- if parent == "" then
            parent = possibleParent.."."
          -- end
          GetLuaCurrentKeyWordsAndAll(v,tab.."\t",AllInfo,parent)
          parent = ""
        end
      end
    end
  end
end

gReportTable = {}
--***************************************************************************************************
--function Report(msg,Info,msgType)
  -- the output order is: msgType..msg..Info
  -- msgType default is (0 spaces)[INFO], otherwise it is (4 spaces)[msgType]
        -- [INFO] is currently ""
  -- Info will appear inside [], any space before the first letter is transferred to front of the []
  -- msg will appear without change  
function Report(Info,msg,msgType)
  --if Info == nil then return end
  if (Info == nil or Info == "") and msg == nil then
    msgType = "" --to force a blank line to output
  end
  if Info == nil then Info = "" end --will ouput a \n
  if msg == nil then msg = "" end

  if msgType == nil then
--    msgType = "[INFO] "
    msgType = ""
  elseif msgType ~= "" then
    local pre = "    ["
    local suf = "] "
    if msgType == "BUG" or msgType == "ERROR" or msgType == "WARNING" or msgType == "NOTICE" then
      pre = "   [["
      suf = "]] "    
    elseif msgType == "CONFLICT" then
      pre = "  [["
      suf = "]] "    
    end
    msgType = pre..msgType..suf
  end
  
  local FileName = ""
  if gReport_ext ~= nil then
    FileName = "-"..gReport_ext
  end
  
  local chain = "" --derived from Info
  local say = "" --final complete message
  if type(Info) == "table" then
    for z=1,#Info do
      chain = chain..Info[z]..[[, ]]
    end		
  elseif type(Info) == "string" then
    chain = Info
  elseif type(Info) == "boolean" then
    if Info then
      chain = "true"
    else
      chain = "false"
    end
  else
    chain = "???"
    say = "ERROR: in Report(): type(Info) is "..type(Info)
    print(say)
  end
  if chain ~= "" then
    local spacer = string.match(chain,"^%s*")
    if spacer == nil then spacer = "" end
    chain = " "..spacer.."["..trim(chain).."]"
  end
  -- if msg ~= "" then
    -- msg = " "..msg
  -- end
  say = msgType..msg..chain
  -- print("***** "..say.." *****")

  -- if gfilePATH == "..\\" and FileName == "" then
    -- -- this is the standard REPORT.lua file
    -- if gReportFilehandle == nil then
      -- gReportFilehandle = io.open(gfilePATH.."REPORT"..FileName..".txt","a+")
    -- end
    
    -- gReportFilehandle:write([[.]]..say.."\n")
    -- -- gReportFilehandle:flush()
    
  -- else

  if FileName == "" then
    table.insert(gReportTable,say)
  else  
    WriteToFileAppend(say.."\n", gfilePATH.."REPORT"..FileName..".lua")
  end
  -- end
end

--***************************************************************************************************
function Report_flush()
  WriteToFileAppend(ConvertLineTableToText(gReportTable).."\n", gfilePATH.."REPORT.lua")
  gReportTable = {}
end

--***************************************************************************************************
function ShowTime(Time)
  return os.date("%H:%M:%S",Time)
end

--***************************************************************************************************
--changes all \\ to \
--changes all / to \
function NormalizePath(path)
  if path == nil then return path end
  repeat
    path = string.gsub(path,[[/]],[[\]])
    path = string.gsub(path,[[\\]],[[\]])
  until string.find(path,[[/]],1,true) == nil and  string.find(path,[[\\]],1,true) == nil
  return path
end

--used by NormalizePathExt()
local WholeDirFile = ""

--***************************************************************************************************
function NormalizePathExt(path)
  if path == nil then return path end
  path = string.gsub(path,[[/]],[[\]])
  path = string.gsub(path,[[\\]],[[\]])
  
  local _,NumberOfBackslash = string.gsub(path,[[\]],[[\]])
  if NumberOfBackslash > 0 then
    return string.upper(path) --standard use of \,\\ or /
  end

  --there was no \ found, so no path or dots are part of the path
  local _,NumberOfDots = string.gsub(path,[[.]],[[.]])
  if NumberOfDots == 0 then
    --bad path
    return path
  else --some dots exist in the path
    --check if tempPath is valid
    local found = false
    if WholeDirFile == "" then
      WholeDirFile = LoadFileData("pak_UniqueDir.txt") --for speed searching
    end
    local WDF = WholeDirFile
    for i=1,NumberOfDots do
      local tempPathExt = string.gsub(path,[[.]],[[\]],NumberOfDots - i)
      -- local tempPath = string.sub(tempPathExt,1,)
      -- local tempExt = ""
                        --                                                        **** recheck NormalizePath usage
      --search for it 
      local firstPosStart,firstPosEnd = string.find(WDF,tempPath.."]",1,true)
      if firstPosEnd ~= nil then
        found = true
        break
      end
    end
    if found then
      return tempPath..tempExt
    else
      --no path or bad path
      return path
    end
  end
end

--***************************************************************************************************
function getPath(str)
  -- return str:gsub('\\','/'):match('.*/')
  return str:gsub([[/]],[[\]]):match([[.*\]])
end

--***************************************************************************************************
function GetFilenameFromFilePath(pathname)
  NormalizePath(pathname)
  return pathname:match([[^.+\(.+)$]])
end

--***************************************************************************************************
function GetFolderPathFromFilePath(filePathAndName)
	if filePathAndName ~= nil then
    filePathAndName = string.gsub(filePathAndName,[[/]],[[\]])
    local _,count = string.gsub(filePathAndName,[[\]],"")
    if count == 0 then
      return ""
    elseif count == 1 then
      return string.sub(filePathAndName,1,string.find(filePathAndName,[[\]]) - 1)
    end
    local temp1 = string.gsub(filePathAndName,[[\]],"X_TEMP_X",count-1)
    local temp2 = string.sub(temp1,1,string.find(temp1,[[\]])-1)
    return string.gsub(temp2,"X_TEMP_X",[[\]])
  else
    return filePathAndName
  end
end

--***************************************************************************************************
function TestNoNil(Info,...)
  local FoundNoNil = true
  local args = { n = select("#", ...), ... }
  for i=1,args.n do
    if args[i] == nil then
      print("BUG: "..Info..", arg["..i.."] is nil")
      FoundNoNil = false
    end
  end
  return FoundNoNil
end

--***************************************************************************************************
function boolToString(Bool)
  local s = "false"
  if Bool then s = "true" end
  return s
end

--***************************************************************************************************
function sleep(s)
  -- s==2 =>> 1 second delay
	if s==nil then s=1 end
  s = math.tointeger(s+1)
  --localhost was 127.0.0.1
  local command = [[PING -n ]]..s..[[ localhost>nul]]
	--NewThread(command)
	os.execute(command)
end

--***************************************************************************************************
function pause()
  io.stdin:flush()
  print("Press Enter to continue...")
  io.stdin:read([[*l]])
end

--***************************************************************************************************
function UpdateTimes(location)
  if location == nil then location = "" end
  local updateTime = os.time()
  WriteToFileAppend(updateTime.." "..location,[[Times.txt]])
end

--***************************************************************************************************
function ShowElapsedTime(msg,startTime)
  print(string.format(msg.." >>> %.2f sec",(os.clock() - startTime)))
end

--***************************************************************************************************
--Based on Bladehawke's C# code:
    -- public static uint Hash(string key)
    -- {
        -- uint hash, i;
        -- string upperKey = key.ToUpper();
        -- for(hash = i = 0; i < key.Length; ++i)
        -- {
            
            -- hash += upperKey[(int)i];
            -- hash += (hash << 10);
            -- hash ^= (hash >> 6);
        -- }
        -- hash += (hash << 3);
        -- hash ^= (hash >> 11);
        -- hash += (hash << 15);
        -- return hash;
    -- }
function NMS_Hash(sKey)
  local skey = sKey:upper()
  local iHash = 0
  for i=0,skey:len() do
    
  end
  return iHash
end

--***************************************************************************************************
function LocateAnyFileInPAK(filenamePath)
  -- pv("In LocateAnyFileInPAK()")
  local Pak_FileName = ""
  if filenamePath == nil or filenamePath == "" then
    return Pak_FileName
  end
  
  local filename = NormalizePath(filenamePath)
  -- pv("["..filename.."]")
  
  if #gfullpak_listTable == 0 then
    gfullpak_listTable = ParseTextFileIntoTable("Full_pak_list.txt")
  end
  
  local fullpak_listTable = gfullpak_listTable
  -- pv(#pak_listTable.." lines")
  local found = false
  for i=1,#fullpak_listTable,1 do
		local line = fullpak_listTable[i]
		if (line ~= nil) then
      if string.find(line,"Listing ",1,true) ~= nil then
        local start,stop = string.find(line,"Listing ",1,true)
        --remember Pak_FileName for when we find the filename
        Pak_FileName = string.sub(line, stop+1)
        -- pv("["..Pak_FileName.."]")
      else
        if string.find(line,filename,1,true) ~= nil then
          found = true
          break
        end
      end
		end
	end
  if found then
    return Pak_FileName
  else
    return ""
  end
end

--***************************************************************************************************
function LocatePAK(filename)
  -- pv("In LocatePAK()")

  if #gpak_listTable == 0 then
    gpak_listTable = ParseTextFileIntoTable("pak_list.txt")
  end
  
  local Pak_FileName = ""
  
  filename = string.gsub(filename,[[%.EXML]],[[.MBIN]])
  filename = string.gsub(filename,[[\]],[[/]])
  -- pv("["..filename.."]")
  
  local pak_listTable = gpak_listTable
  -- pv(#pak_listTable.." lines")
  for i=1,#pak_listTable,1 do
		local line = pak_listTable[i]
		if line ~= nil then
      if string.find(line,"Listing ",1,true) ~= nil then
        local start,stop = string.find(line,"Listing ",1,true)
        --remember Pak_FileName for when we find the filename
        Pak_FileName = string.sub(line, stop+1)
        -- pv("["..Pak_FileName.."]")
      else
        if string.find(line,filename,1,true) ~= nil then
          break
        end
      end
		end
	end
  return Pak_FileName
end

--***************************************************************************************************  
function LocateMOD_PAK_SOURCE(file)
  if #gpak_listTable == 0 then
    gpak_listTable = ParseTextFileIntoTable("pak_list.txt")
  end
  local pak_listTable = gpak_listTable
  
  local TempMBIN = string.gsub(file,[[\]],[[/]])
  
  local Pak_File = ""
  local found = false
  
  --LookAt_MOD_PAK_SOURCE_content("- DDDDD before finding source")

  -- print("TempMBIN = "..TempMBIN)
  -- print("pak_list.txt = "..#pak_listTable)
  for i=1,#pak_listTable,1 do
    local line = pak_listTable[i]
    if line ~= nil then
      if string.find(line,"Listing ",1,true) ~= nil then
        local start,stop = string.find(line,"Listing ",1,true)
        Pak_File = string.sub(line, stop+1)
        -- print("["..Pak_File.."]")
      elseif string.find(line,TempMBIN,1,true) ~= nil then
        found = true
        --added "\n".. as a work around for strange bug
        --without, the entries would not be on separate lines all the time
        WriteToFileAppend("\n"..Pak_File.."\n", "MOD_PAK_SOURCE.txt")
        break
      end
    end
  end
  --LookAt_MOD_PAK_SOURCE_content("- CCCCC after finding source")
  return found,Pak_File
end

--***************************************************************************************************  
function GetMBINCompilerVersion(EXEfilenamepath)
  local cmd = EXEfilenamepath..[[ version -q]]
  local sV = os.capture(cmd,false)
  local version = string.gsub(sV,"%.",",",1) --1st . to ,
  version = string.gsub(version,"%.","") --all . to ""
  version = string.gsub(version,",",".",1) --, to .
  local nV = tonumber(version)
  return sV,nV
end

--***************************************************************************************************  
--sourcePath = where the EXML files are relative to MODBUILDER
--
--returns: string: success
function MBINCompiler_C(sourcePath,IsWithThreads)
  local withThreads = ""
  if not IsWithThreads then
    withThreads = "--no-threads"
  end
  
  local success = ""

  --clear .log
  local cmd = [[del MBINCompiler.log 1>NUL 2>NUL]]
  os.execute(cmd)

  print("@@@ MBINCompiler creating MBIN files...")
  local cmd = [[MBINCompiler.exe -q -y -f -iEXML --exclude=";" ]]..withThreads..[[ "]]..sourcePath --..[["]]

  local state,str,num = os.execute(cmd) --fast and same output as batch
  if state then
    success = "OK"
  else
    -- print("@@@ MBINCompiler returned: "..str..", "..tostring(num))
    success = "ERROR"
  end

  return success
end

--***************************************************************************************************  
--sourcePath = where the MBIN files are relative to MODBUILDER
--HideVersionInfo = bool optional, Hide version info in EXML header
--
--returns: string: all the EXML files decompiled
function MBINCompiler_D(sourcePath,HideVersionInfo)
  local success = ""
  local result = ""

  --clear .log
  local cmd = [[del MBINCompiler.log 1>NUL 2>NUL]]
  os.execute(cmd)

  local sHideVersionInfo = ""
  if HideVersionInfo == nil then HideVersionInfo = false end
  if HideVersionInfo then
    sHideVersionInfo = "--no-version"
  end
  
  print("@@@ MBINCompiler creating EXML files...")
  local cmd = [[MBINCompiler.exe -y -f -iMBIN ]]..sHideVersionInfo..[[ --stream --exclude=";" "]]..sourcePath --..[["]]

  --Capture the output sent to cmd window
  result = os.capture(cmd,true)
  
  if result ~= nil and result ~= "" then
    success = "OK"
  end
  
  return success,result
end

--***************************************************************************************************  
--action = CREATE, LIST
--  CREATE >>> works from MODBUILDER\MOD folder
  --  local pakDestPathFromMOD = [[..\..\Builds\IncrementalBuilds]] --no ending \
  --  local pakFilename = [[Test_PSARC.pak]] --%_cFilename%(%_ca%).pak%_cMOD_AUTHOR%
--  LIST >>> works everywhere
  --  local pakDestPathFromMOD = [[..\..\Builds\IncrementalBuilds]] --no ending \
  --  local pakFilename = [[Test_PSARC.pak]] --%_cFilename%(%_ca%).pak%_cMOD_AUTHOR%

function psarc_CL(action,pakDestPathFromMOD,pakFilename,silent)
  if silent == nil then silent = false end
  
  if silent then
    print("@@@ psarc creating pak...")
    silent = [[ 1>NUL 2>NUL]]
  else
    silent = ""
  end
  
  local success = ""
  local result = ""
  local _input = [[..\input.txt]] --to be used by psarc.exe
  action = string.upper(action)
  
  if action == "CREATE" then
    lfs.chdir([[.\MOD]]) --into MODBUILDER\MOD
    
    --used to strip this path from the pak files (only if 'input.txt' have it)
    --may not be required since ListDir() below does not include it
    local _STRIP_PATTERN = lfs.currentdir()
    _STRIP_PATTERN = string.sub(_STRIP_PATTERN,4) -- remove C:\
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[\]],[[/]]) --change \ to /
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%(]],[[\(]]) --escape (
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%)]],[[\)]]) --escape )
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%+]],[[\+]]) --escape +

    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%$]],[[\$]]) --escape $
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%^]],[[\^]]) --escape ^
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%[]],[[\[]]) --escape [
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,"%]","\\]") --escape ]
    _STRIP_PATTERN = string.gsub(_STRIP_PATTERN,[[%{]],[[\{]]) --escape {
    -- print(" === ".._STRIP_PATTERN)

    --create input.txt: list of all files to pak from MOD folder
    local fileList = {}
    fileList = ListDir(fileList,[[.]],false,true)

    if #fileList > 0 then
      local tmp = {}
      for i=1,#fileList do
        if string.find(fileList[i],".EXML",1,true) == nil then
          --when other than .EXML, retain the info
          --remove '.\'
          tmp[#tmp+1] = string.sub(fileList[i],3)
        end
      end
      
      fileList = tmp
      
      if #fileList == 0 then
        print("@@@ No file to pak: tmp")
        success = "NoFileToPak"
      else      
        local sFileList = ConvertLineTableToText(fileList)
        WriteToFile(sFileList,_input)

        --local cmd = [[psarc.exe create --overwrite --skip-missing-files --strip="%_STRIP_PATTERN%" --inputfile=..\input.txt --output="%_cDestination%\%_cFilename%(%_ca%).pak%_cMOD_AUTHOR%"]]
        local cmd = [[..\psarc.exe create --overwrite --skip-missing-files --strip="]].._STRIP_PATTERN..[[" --inputfile=]].._input..[[ --output="]]..pakDestPathFromMOD..[[\]]..pakFilename..[["]]..silent
        local state,str,num = os.execute(cmd) --fast and same output as batch
        if state then
          success = "OK"
        else
          -- print("@@@ psarc returned: "..str..", "..tostring(num))
          success = "psarcError"
        end
      end
    else
      print("@@@ No file to pak: fileList")
      success = "NoFileToPak"
    end
    
    lfs.chdir([[..\]]) --back to MODBUILDER
    
  elseif action == "LIST" then
    local cmd = [[psarc.exe list "]]..pakDestPathFromMOD..[[\]]..pakFilename..[["]]
    result = os.capture(cmd)
    if result ~= nil and result ~= "" then
      success = "OK"
    end
    
  else
    print("@@@ Bad action: ["..action.."]")
  end
  return success,result
end

--***************************************************************************************************  
--only action = EXTRACT
--  EXTRACT >>> works everywhere
  --  pakPath = where the pak is, like gMASTER_FOLDER_PATH --with ending \
  --  pakName = the name of the pak to EXTRACT: like [[Test_PSARC.pak]] --%_cFilename%(%_ca%).pak%_cMOD_AUTHOR%
  --  destPath = where to send the EXTRACTed file(s): like [[..\..\Builds\IncrementalBuilds]] --no ending \
  --  source = the 'path and filename' of the exact file to EXTRACT || empty if EXTRACT ALL

function psarc_E(pakPath,pakName,destPath,source)
  --this is EXTRACT
  
  --%%~nxG = filename.ext
  --%%A = NMS path + filename.ext
  --from user mod, no '/': ..\psarc.exe extract "..\..\ModScript\%%~nxG" --to="..\..\ModScript\EXTRACTED_PAK" -y "%%A" 1>NUL 2>NUL
  --from user mod, w/ '/': ..\psarc.exe extract "..\..\ModScript\%%~nxG" --to="..\..\ModScript\EXTRACTED_PAK" -y "/%%A" 1>NUL 2>NUL
  
  -- %%H = PCBANK file name
  --from NMS PCBANKS: ..\psarc.exe extract "%_gNMS_PCBANKS_FOLDER%%%H" "%1" --to="!CD!\EXTRACTED" -y 1>NUL 2>NUL
  
  local success = ""
  
  --extract (--input=FILE || the first file argument) (--to=DIRECTORY || 'default' current directory) source(the exact name to extract)
  local cmd = [[psarc.exe extract "]]..pakPath..pakName..[[" --to="]]..destPath..[[" "]]..source..[[" -y]]
  prn2("@@@ EXTRACT: cmd = ["..cmd.."]")
  local state,str,num = os.execute(cmd)
  prn2("@@@ EXTRACT: result = ["..string.format("%s, %s (%d)",success,sResult,nResult).."]")
  
  if state then
    success = "OK"
  else
    -- print("@@@ psarc returned: "..str..", "..tostring(num))
    success = "psarcError"
  end
  
  return success
end

--handles LuaEndedOk.txt
do
  local path = ""
  local MasterPath = os.getenv("_bMASTER_FOLDER_PATH")
  if MasterPath ~= nil then
    path = MasterPath..[[MODBUILDER\]]
  end
  -- pv("LuaStarting path: ["..path.."]")
  function LuaStarting()
    -- pv("      +++++++++  LuaStarting  +++++++++")
    if os.remove(path..[[LuaEndedOk.txt]]) then
      -- pv("       LuaEndedOk.txt removed")
    end
  end

  function LuaEndedOk(Info)
    if Info == nil then Info = "" end
    -- pv("       --------  LuaEndedOk   -------- "..Info)
    WriteToFile("",path..[[LuaEndedOk.txt]])
  end

  if FlagLua == nil then
    LuaStarting()
  else
    -- pv("FlagLua used!")
  end
end

