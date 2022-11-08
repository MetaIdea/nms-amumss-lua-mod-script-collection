function CheckUserScriptSyntax(UserScriptName)
  local LineTable = ParseTextFileIntoTable(UserScriptName)
  local TempTable = {}
  
  for i=1,#LineTable do
    local text = LineTable[i]
    if string.find(text,[[.lua ]],1,true) ~= nil then
      table.insert(TempTable,string.sub(text,1,string.find(text,[[ (]],1,true)-1))
    end
  end
  
end

-- ****************************************************
-- main
-- ****************************************************

--we are in MODBUILDER

LocalFolder = ""
if gVerbose == nil then dofile(LocalFolder.."LoadHelpers.lua") end
pv(">>>     In CheckUserScript.lua")
THIS = "In CheckUserScript: "

-- gfilePATH = "..\\" --for Report()

THIS = "In CheckUserScript: " --Check for THIS in code before changing this string

--not used
--gMASTER_FOLDER_PATH = LoadFileData(LocalFolder.."MASTER_FOLDER_PATH.txt")
--gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")

local UserScriptName = LoadFileData("CurrentModScript.txt")

CheckUserScriptSyntax(UserScriptName)
LuaEndedOk(THIS)

