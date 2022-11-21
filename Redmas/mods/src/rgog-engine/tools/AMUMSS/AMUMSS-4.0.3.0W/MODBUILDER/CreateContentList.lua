--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end
pv(">>>     In CreateContentList.lua")
gfilePATH = arg[1] --for Report()

local ModFilename = LoadFileData(arg[2]..[[MOD_FILENAME.txt]])
WriteToFile("This mod ("..ModFilename..") contains:".."\n\n",arg[2]..[[Content.txt]])

local ScriptNameTable = ParseTextFileIntoTable(arg[2]..[[CONTENT_LIST.txt]])

for i=1,#ScriptNameTable do
  -- local 
  -- WriteToFileAppend("- "..ScriptName.."\n",arg[2]..[[Content.txt]])
  WriteToFileAppend("- "..ScriptNameTable[i].."\n",arg[2]..[[Content.txt]])
  break
end
