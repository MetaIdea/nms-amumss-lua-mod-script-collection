function LocateMOD_PAK_SOURCE(file)
  local TextFileTable = gpak_listTable
  local TempMBIN = string.gsub(file,[[\]],[[/]])
  
  local Pak_File = ""
  local found = false
  
  for i=1,#TextFileTable,1 do
    local line = TextFileTable[i]
    if (line ~= nil) then
      if (string.find(line,"Listing ",1,true) ~= nil) then
        local start,stop = string.find(line,"Listing ",1,true)
        Pak_File = string.sub(line, stop+1)
        pv("["..Pak_File.."]")
      elseif (string.find(line,TempMBIN,1,true) ~= nil) then
        found = true
        --added "\n".. as a work around for strange bug
        --without, the entries would not be on separate lines all the time
        WriteToFileAppend("\n"..Pak_File.."\n", "MOD_PAK_SOURCE.txt")
        break
      end
    end
  end
  return found,Pak_File
end

function Get_PAK_SOURCE(MBIN_Source)
    --Get PAK_SOURCE for each MBIN_FILE_SOURCE
    -- local MBIN_Source = ParseTextFileIntoTable("MOD_MBIN_SOURCE.txt")
    for i=1,#MBIN_Source do
      local found,Pak_File = LocateMOD_PAK_SOURCE(MBIN_Source[i])
      if not found then
        print("[WARNING] NMS PAK not found for "..MBIN_Source[i]..". Check your file path/name!")
        Report("","NMS PAK not found for "..MBIN_Source[i]..". Check your file path/name!","WARNING")
      end
    end
    
    --CleanUP MOD_PAK_SOURCE.txt
    local PAK_Source = ParseTextFileIntoTable("MOD_PAK_SOURCE.txt")
    for i=1,#PAK_Source do
      for j=i+1,#PAK_Source do
        if PAK_Source[i] == PAK_Source[j] then
          PAK_Source[j] = ""
        end
      end
    end
    local PAK_Source_temp = {}
    for i=1,#PAK_Source do
      if PAK_Source[i] ~= "" then
        table.insert(PAK_Source_temp,PAK_Source[i])
      end
    end
    WriteToFile(ConvertLineTableToText(PAK_Source_temp),"MOD_PAK_SOURCE.txt")
end

-- ****************************************************
-- main
-- ****************************************************

if gVerbose == nil then dofile("LoadHelpers.lua") end
pv(">>>     In LocateMOD_PAK_SOURCE.lua")
gfilePATH = "..\\" --for Report()

THIS = "In LocateMOD_PAK_SOURCE: "

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.gsub(NMS_FOLDER,"\n","") --remove line break if any
gNMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]
-- print("*************  ["..gNMS_PCBANKS_FOLDER_PATH.."]")

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")
--gMASTER_FOLDER_PATH = LoadFileData("MASTER_FOLDER_PATH.txt")
gLocalFolder = [[MODBUILDER\MOD\]]

-- arg[1] = MBIN file to locate
Get_PAK_SOURCE(arg[1])