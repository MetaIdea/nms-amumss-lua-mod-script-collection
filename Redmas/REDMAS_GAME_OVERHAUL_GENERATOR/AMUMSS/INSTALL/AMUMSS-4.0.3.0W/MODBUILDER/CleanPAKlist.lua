function CleanPAKList(filename)
  local LineTable = ParseTextFileIntoTable(filename)
  local TempTable = {}
  
  for i=1,#LineTable do
    local text = LineTable[i]
    if string.find(text,[[.DDS ]],1,true) ~= nil 
        or string.find(text,[[.SPV ]],1,true) ~= nil
        or string.find(text,[[.WEM ]],1,true) ~= nil
        or string.find(text,[[.FNT ]],1,true) ~= nil
        -- or string.find(text,[[.BIN ]],1,true) ~= nil
        or string.find(text,[[.BNK ]],1,true) ~= nil
        or string.find(text,[[.TXT ]],1,true) ~= nil then
    else
      table.insert(TempTable,text)
    end
  end
  
  
  local text = ConvertLineTableToText(TempTable)
  WriteToFile(text, filename)
end

-- PROCESSING THIS IS VERY LONG, TRY NOT TO USE IT
-- also, it is not optimized
-- just used to check if we could use Filenames only to find correct path to pak files
local function CheckDuplicateFilenames(TempTable2)
-- ****************************  FilenameDuplicates.txt ******************************

  local function printout(DoPrint,...)
    if DoPrint then print(...) end
    WriteToFileAppendEXT(LocalFolder.."FilenameDuplicates.txt",...)    
  end
  
  local info = table.concat(TempTable2)
  
  print()
  print("Checking if filename without path is sufficient...")
  printout(False,"Count:       PathFileName")
  for i=1,#TempTable2 do
    if i%10000 == 0 then print(i) end
    local endPosition = string.find(TempTable2[i],[[.MBIN]],1,true)
    if endPosition ~= nil then
      local pathfilename = string.sub(TempTable2[i],1,string.find(TempTable2[i],[[ (]],1,true)-1)
      -- print("["..pathfilename.."]")
      local FolderPath = GetFolderPathFromFilePath(pathfilename)
      -- print("["..FolderPath.."]")
      local filename = string.sub(pathfilename,#FolderPath+2)
      -- print("["..filename.."]")
      
      -- print("With table.concat...")
      local _,count = string.gsub(info,[[/]]..filename,[[/]]..filename)
      if count > 1 then
        printout(False,string.format([[%4u: /%s]],count,filename))
      end
      
    end
  end
end
-- ****************************  end FilenameDuplicates.txt ******************************

-- ****************************************************
-- main
-- ****************************************************

--we are in MODBUILDER

LocalFolder = ""
if gVerbose == nil then dofile(LocalFolder.."LoadHelpers.lua") end
pv(">>>     In CleanPAKList.lua")
THIS = "In CleanPAKList: "

-- gfilePATH = "..\\" --for Report()

THIS = "In CleanPAKList: " --Check for THIS in code before changing this string

--not used
--gMASTER_FOLDER_PATH = LoadFileData(LocalFolder.."MASTER_FOLDER_PATH.txt")
--gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")

CleanPAKList(LocalFolder.."pak_list.txt")
LuaEndedOk(THIS)

