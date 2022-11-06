function FormatPAKList(filename)
  local LineTable = ParseTextFileIntoTable(filename)
  local TempTable = {}
  local FullTempTable = {}
  local badFile = false
  
  badFile = (#LineTable == 0)

  for i=1,#LineTable do
    local text = LineTable[i]
    if string.sub(text,1,7) == "Listing" then
      TempTable[i] = text.." = {"
      FullTempTable[i] = text
    elseif string.sub(text,1,1) ~= " " then
      local start = string.find(text," (",1,true)
      if start == nil then
        badFile = true
        break
      end
      local info = string.sub(string.gsub(text,[[/]],[[\]]),1,start-1)
      TempTable[i] = [["]]..info..[[",]]
      FullTempTable[i] = info
    else
      TempTable[i] = trim(text).."}"
      FullTempTable[i] = text
    end
  end
  
  if not badFile then
    local text = ConvertLineTableToText(TempTable)
    WriteToFile(text, filename.."Pretty.lua")
    
    local text = ConvertLineTableToText(FullTempTable)
    WriteToFile(text,"Full_"..filename)
  end
  return badFile
end

function GetPakList(filename)
  local LineTable = ParseTextFileIntoTable(filename)
  local TempTable = {}
  
  --pass one, remove all file names and remove duplicate directories in the same .pak only
  local tempInfo = ""
  for i=1,#LineTable do
    local text = LineTable[i]
    if string.sub(text,1,7) == "Listing" then
      TempTable[#TempTable+1] = text.." = {"
      -- print(text)
    elseif string.sub(text,1,1) ~= " " then
      local info = getPath(text)
      -- local start = string.find(text,[[\]],-1,true)
      -- local info = string.sub(string.gsub(text,[[/]],[[\]]),1,start)
      if info ~= nil and info ~= tempInfo then
        TempTable[#TempTable+1] = "[["..info.."]],"
        tempInfo = info
        -- print(info)
      end
    else
      TempTable[#TempTable+1] = trim(text).."}"
    end
    -- if i > 10 then
      -- break
    -- end
  end
  
  --create a list of unique directory
  local TempUniqueDirTable = {}
  for i=1,#TempTable do
    local text = TempTable[i]
    if string.sub(text,1,7) == "Listing" or string.sub(text,1,1) == "}" then
      --skip it
    else
      local s = string.sub(text,3,-3) --keep the ]

      local found = false
      for j=1,#TempUniqueDirTable do
        if s == TempUniqueDirTable[j] then
          found = true
          break
        end
      end

      if not found then
        TempUniqueDirTable[#TempUniqueDirTable+1] = s
      end
    end
  end  
  
  table.sort(TempUniqueDirTable)
  
  local text = ConvertLineTableToText(TempUniqueDirTable)
  WriteToFile(text, "pak_UniqueDir.txt")
    
  text = ConvertLineTableToText(TempTable)
  WriteToFile(text, "pak_Dir.txtPretty.lua")
  
end

-- ****************************************************
-- MAIN
-- ****************************************************

--we are in MODBUILDER

LocalFolder = ""
if gVerbose == nil then dofile(LocalFolder.."LoadHelpers.lua") end
pv(">>>     In FormatPAKlist.lua")
THIS = "In FormatPAKlist: " --Check for THIS in code before changing this string

-- gfilePATH = "..\\" --for Report()

--not used
--gMASTER_FOLDER_PATH = LoadFileData(LocalFolder.."MASTER_FOLDER_PATH.txt")
--gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")

badFile = FormatPAKList(LocalFolder.."pak_list.txt")
if not badFile then
  GetPakList(LocalFolder.."Full_pak_list.txt")
else
  print(_zRED..[[>>> [ERROR] AMUMSS could not list NMS paks content, check access to folder GAMEDATA]].._zDEFAULT)
  Report("",[[>>> AMUMSS could not list NMS paks content, check access to folder GAMEDATA]],"ERROR")          
end

LuaEndedOk(THIS)
