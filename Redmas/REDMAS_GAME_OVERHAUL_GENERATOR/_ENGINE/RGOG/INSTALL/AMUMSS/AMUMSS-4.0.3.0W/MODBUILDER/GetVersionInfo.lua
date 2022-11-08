function NMS_VersionInfo(NMS_EXE_PATH)
  -- print("NMS_EXE_PATH = ["..NMS_EXE_PATH.."]")
  local versionId = "???"
  
  -- [[Software\Classes\nms\shell\open\command?"???" "%1"??91506???????]]
  local SearchFor = [[Software\Classes\nms\shell\open\command]]

  local filehandle = io.open(NMS_EXE_PATH,"rb")
  if filehandle ~= nil then  
    local data = filehandle:read("a")
    local dataPos = string.find(data,SearchFor,1,true)
    if dataPos ~= nil then
      versionId = string.sub(data,dataPos + #SearchFor + 13,dataPos + #SearchFor + 17)
    else
      versionId = "not found"
    end
    
    filehandle:close()
  end

  return versionId
end

function NMS_GAMEPASS_VersionInfo(GAMEPASS_Info_path)
  -- print("GAMEPASS_Info_path = ["..GAMEPASS_Info_path.."]")
  local versionId = "???"
  
  -- From MicrosoftGame.config
  --   <Identity Name="HelloGames.NoMansSky" Publisher="CN=E17FC9C0-77E1-4CDD-8AE0-E634942431EE" Version="3.991.26223.0" />
  -- From appxmanifest.xml
  --   <Identity Name="HelloGames.NoMansSky" Publisher="CN=E17FC9C0-77E1-4CDD-8AE0-E634942431EE" Version="3.991.26223.0" ProcessorArchitecture="x64" />

  local SearchFor = [[Publisher="CN=E17FC9C0-77E1-4CDD-8AE0-E634942431EE"]]

  local infoTable = ParseTextFileIntoTable(GAMEPASS_Info_path)
  for i=1, #infoTable do
    if infoTable[i]:find(SearchFor,1,true) ~= nil then
      local _,pos = infoTable[i]:find("Version=",1,true)
      if pos ~= nil then
        versionId = infoTable[i]:sub(pos+2)
        versionId = versionId:sub(1,versionId:find([["]],1,true)-1)
        break
      end
    end
  end
  
  if versionId == "???" then
    versionId = "not found"
  end
  
  return versionId
end

-- ****************************************************
-- main
-- ****************************************************

--we are in AMUMSS folder

--arg[1] == path to REPORT.txt
--arg[2] == path to MODBUILDER
--arg[3] == optional, do colors

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end
pv(">>>     In GetVersionInfo.lua")
gfilePATH = arg[1] --for Report()
THIS = "In GetVersionInfo: "

if arg[3] == "Y" then
  _zGREEN         ="[1;32m[1m"
  _zDEFAULT       ="[0m"
end

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.gsub(NMS_FOLDER,"\n","") --remove line break if any

gNMS_BINARIES_FOLDER_PATH = NMS_FOLDER..[[\BINARIES\]]

NMS_EXE = [[NMS.exe]]

-- for Steam and GoG
versionId = NMS_VersionInfo(gNMS_BINARIES_FOLDER_PATH..NMS_EXE)

if versionId == "???" or versionId == "not found" then
  -- NMS.exe was not accessible
  -- let us see if this is GamePass
  gNMS_GAMEPASS_FOLDER_PATH = NMS_FOLDER
  -- could use appxmanifest.xml or MicrosoftGame.config
  NMS_GAMEPASS_info = [[\MicrosoftGame.config]]
  versionId = NMS_GAMEPASS_VersionInfo(gNMS_GAMEPASS_FOLDER_PATH..NMS_GAMEPASS_info)
end

print("  ".._zGREEN.."===> NMS version "..versionId.._zDEFAULT)

WriteToFile(versionId,arg[2]..[[NMS_versionId.txt]])

-- Report("","NMS version "..versionId)
-- Report_flush()

LuaEndedOk(THIS)
