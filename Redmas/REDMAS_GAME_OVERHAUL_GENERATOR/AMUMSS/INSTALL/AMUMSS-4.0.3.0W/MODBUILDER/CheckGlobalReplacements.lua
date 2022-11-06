-- ****************************************************
-- main
-- ****************************************************

--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end --.\MODBUILDER\
pv(">>>     In CheckGlobalReplacements.lua")
gfilePATH = arg[1] --used by LoadHelpers.Report()
THIS = "In CheckGlobalReplacements: "

local LogTable = ParseTextFileIntoTable(arg[1]..[[REPORT.lua]])
local ScriptName = ""
local SubScriptName = ""
local ScriptProcessedCount = 0
local SubScriptProcessedCount = 0
local SubScriptGlobalPos = 0
local ActionCount = -1
local ScriptCount = -1
local UsesGLOBAL = ""
local reportUnknown = false
local reportBack = false
local bugFound = false

local NoProblems = true
Report("")
print()
for i=1,#LogTable do
  local line = LogTable[i]
  if line ~= nil then
    if string.find(line,"[[BUG]]",1,true) ~= nil then
      bugFound = true
      break
    end
    if string.find(line,"Starting to process script",1,true) ~= nil then
      reportUnknown = false
      ScriptName = StripInfo(line," [[","]]")
      ScriptProcessedCount = ScriptProcessedCount + 1
      SubScriptProcessedCount = 0 -- reset
      SubScriptGlobalPos = 0 -- reset
    end
    if string.find(line,"Processing sub-script",1,true) ~= nil then
      reportUnknown = false
      ScriptName = StripInfo(line," [[","]]")
      ScriptProcessedCount = ScriptProcessedCount + 1
      SubScriptProcessedCount = SubScriptProcessedCount + 1
    end
    if string.find(line,"Still processing script",1,true) ~= nil then
      ScriptProcessedCount = ScriptProcessedCount - 1 -- not in a new script, this is a multi-script
    end
    
    if string.find(line,"Ended script processing with",1,true) ~= nil then
      reportUnknown = false
      if ActionCount < 0 then ActionCount = 0 end
      ActionCount = ActionCount + tonumber(StripInfo(line," [["," action"))
      ActionCount = ActionCount + tonumber(StripInfo(line,", "," files"))
    end

    if string.find(line,"Ended script [",1,true) ~= nil or string.find(line,"Ended sub-script",1,true) ~= nil then
      reportBack = true
      if ActionCount < 0 then
        reportUnknown = true
      end
    end

    if string.find(line,"[ENDED THIS SCRIPT PROCESSING]",1,true) ~= nil then
      reportUnknown = true
    end

    if string.find(line,".GLOBAL.EXML ",1,true) ~= nil or string.find(line,"GLOBALS.EXML ",1,true) ~= nil then
      if string.find(line,"Getting ",1,true) ~= nil and string.find(line,".EXML ",1,true) ~= nil then
        UsesGLOBAL = " ["..string.sub(line,string.find(line,"Getting ",1,true)+8,string.find(line,".EXML ",1,true)+4).."]"
      end
    end
  end
  
  if ScriptName ~= "" then
    if ActionCount >= 0 and reportBack then
      local ScriptTable = ParseTextFileIntoTable(arg[1]..[[ModScript\]]..ScriptName)
      
      for j=SubScriptGlobalPos + 1,#ScriptTable do
        local line = ScriptTable[j]
        if line ~= nil and string.find(line,"global replacement",1,true) ~= nil then
          ScriptCount = tonumber(StripInfo(line,"--"," global"))
          if ScriptCount == nil then
            ScriptCount = -1
          elseif SubScriptProcessedCount > 0 then
            SubScriptGlobalPos = j
          end
          break
        end
      end
      
      local state = "ERROR"
      if ScriptCount == ActionCount then
        state = "INFO"
      elseif ScriptCount == -1 then
        state = "WARNING"
      end
      
      if state ~= "INFO" then
        NoProblems = false
        if SubScriptProcessedCount == 0 then
          Report("",string.rep(" ",7-string.len(state))..string.format("[%s] %2d: %5d global replacements / %5d action(s): %s",state,ScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
          print(string.rep(" ",7-string.len(state))..string.format("[%s] %2d: %5d global replacements / %5d action(s): %s",state,ScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
        else
          Report("",string.rep(" ",7-string.len(state))..string.format("[%s] %2d.%d: %5d global replacements / %5d action(s): %s",state,ScriptProcessedCount,SubScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
          print(string.rep(" ",7-string.len(state))..string.format("[%s] %2d.%d: %5d global replacements / %5d action(s): %s",state,ScriptProcessedCount,SubScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
        end
      end
      
      --reset for next script
      ScriptName = ""
      ActionCount = -1
      ScriptCount = -1
      UsesGLOBAL = ""
    elseif reportUnknown then
      reportUnknown = false
      NoProblems = true
      if SubScriptProcessedCount == 0 then
        Report("",string.rep(" ",7-string.len("UNKNOWN"))..string.format("[%s] %2d: %5d global replacements / %5d action(s): %s","UNKNOWN",ScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
        print(string.rep(" ",7-string.len("UNKNOWN"))..string.format("[%s] %2d: %5d global replacements / %5d action(s): %s","UNKNOWN",ScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
      else
        Report("",string.rep(" ",7-string.len("UNKNOWN"))..string.format("[%s] %2d.%d: %5d global replacements / %5d action(s): %s","UNKNOWN",ScriptProcessedCount,SubScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
        print(string.rep(" ",7-string.len("UNKNOWN"))..string.format("[%s] %2d.%d: %5d global replacements / %5d action(s): %s","UNKNOWN",ScriptProcessedCount,SubScriptProcessedCount,ScriptCount,ActionCount,ScriptName)..UsesGLOBAL)
      end
    end
  end
end

if bugFound then
  Report("","ALL scripts: BUG found!")
  print("ALL scripts: ".._zRED.."BUG found!".._zDEFAULT)
else
  if NoProblems and #LogTable > 0 then
    Report("","ALL scripts: 'Suggested Global Replacements numbers' are MATCHING!")
    print("ALL scripts: 'Suggested Global Replacements numbers' are ".._zGREEN.."MATCHING!".._zDEFAULT)
  end
end

Report_flush()

LuaEndedOk(THIS)
