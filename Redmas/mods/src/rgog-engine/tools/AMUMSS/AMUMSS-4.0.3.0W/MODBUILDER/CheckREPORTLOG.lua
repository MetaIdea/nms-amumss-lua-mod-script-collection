--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER
--arg[3] == 1 (check NMS MODS for conflict)

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end --.\MODBUILDER\
pv(">>>     In CheckREPORTLOG.lua")
gfilePATH = arg[1] --to use by LoadHelpers.Report()
THIS = "In CheckREPORTLOG: "

-- print("arg[3] = ["..arg[3].."]")
local CheckMODSconflicts = (arg[3] == "1") or (arg[3] == "3")
local CheckSCRIPTconflicts = (arg[3] == "1") or (arg[3] == "4")

local LogTable = ParseTextFileIntoTable(arg[1]..[[REPORT.lua]])
 
local NoticeCount = 0
local WarningCount = 0
local ConflictCount = 0
local ErrorCount = 0
local BugCount = 0
for i=1,#LogTable do
  if string.find(LogTable[i],"[[NOTICE]]",1,true) then
    NoticeCount = NoticeCount + 1
  end
  if string.find(LogTable[i],"[[WARNING]]",1,true) then
    WarningCount = WarningCount + 1
  end
  if string.find(LogTable[i],"[[CONFLICT]]",1,true) then
    ConflictCount = ConflictCount + 1
  end
  if string.find(LogTable[i],"[[ERROR]]",1,true) then
    ErrorCount = ErrorCount + 1
  end
  if string.find(LogTable[i],"[[BUG]]",1,true) then
    BugCount = BugCount + 1
  end
end

local function stripBracket(say)
  say = string.gsub(say,"%[%[","[")
  say = string.gsub(say,"%]%]","]")
  return say
end

local say = ""
local spacerCMD = "           "
local spacerREPORT = "         "
local msgType = "ATTENTION"
local SeeReport = "" -- [[   >>> See "REPORT.lua"  <<<]]

local say1 = ""
local say2 = [[       or on NEXUS at https://www.nexusmods.com/nomanssky/mods/957]]
if BugCount > 0 then
  if BugCount > 1 then
    say1 = string.format(say..[=[%6u [[BUG]]s reported. PLEASE post ALL scripts AND "REPORT.lua" on Discord:  https://discord.gg/8jGtEcDPEY]=],BugCount)
  else
    say1 = string.format(say..[=[%6u [[BUG]] reported. PLEASE post ALL scripts AND "REPORT.lua" on Discord:  https://discord.gg/8jGtEcDPEY]=],BugCount)
  end
  Report("")
  Report("",say1,msgType)
  Report("",say2,msgType)
  print("")
  print(stripBracket(say1))
  print(say2)
end

say = ""
if ErrorCount > 0 then
  if ErrorCount > 1 then
    say = string.format(say..[=[%6u [[ERROR]]s detected]=],ErrorCount)
  else
    say = string.format(say..[=[%6u [[ERROR]] detected]=],ErrorCount)
  end

  Report("")
  Report("",say,msgType)
  print("")
  print(stripBracket(say)..SeeReport)

  say = spacerCMD.."ERRORS will NOT produce MBIN files and a complete PAK file may not have been created."
  print(say)
  Report("",say,msgType)
  say = spacerCMD.."You need to correct the error first!"
  print(say)
  Report("",say,msgType)
else
  say = string.format(say..[=[%6u [[ERROR]] detected]=],ErrorCount)
  Report("")
  Report("",spacerREPORT..say)
  print("")
  print(stripBracket(say))
end

say = ""
if WarningCount > 0 then
  -- say = "XXXXX "
  if WarningCount > 1 then
    say = string.format(say..[=[%6u [[WARNING]]s raised]=],WarningCount)
  else
    say = string.format(say..[=[%6u [[WARNING]] raised]=],WarningCount)
  end

  Report("")
  Report("",say,msgType)
  print("")
  print(stripBracket(say)..SeeReport)

  say = spacerCMD.."WARNINGS may produce good or bad PAK files.  You have to be the judge!"
  print(say)
  Report("",say,msgType)
else
  say = string.format(say..[=[%6u [[WARNING]] raised]=],WarningCount)
  Report("")
  Report("",spacerREPORT..say)
  print("")
  print(stripBracket(say))
end

say = ""
if NoticeCount > 0 then
  -- say = "XXXXX "
  if NoticeCount > 1 then
    say = string.format(say..[=[%6u [[NOTICE]]s raised]=],NoticeCount)
  else
    say = string.format(say..[=[%6u [[NOTICE]] raised]=],NoticeCount)
  end

  Report("")
  Report("",say,msgType)
  print("")
  print(stripBracket(say)..SeeReport)

  say = spacerCMD.."NOTICES produce good PAK files but alert you to something."
  print(say)
  Report("",say,msgType)
else
  say = string.format(say..[=[%6u [[NOTICE]] raised]=],NoticeCount)
  Report("")
  Report("",spacerREPORT..say)
  print("")
  print(stripBracket(say))
end

print("")
-- Report("")

say = ""
if ConflictCount > 0 then
  if ConflictCount > 1 then
    say = string.format(say..[=[%6u [[CONFLICT]]s detected in processed Scripts/paks]=],ConflictCount)
  else
    say = string.format(say..[=[%6u [[CONFLICT]] detected in processed Scripts/paks]=],ConflictCount)
  end
  Report("")
  Report("",say,msgType)
  print(stripBracket(say)..SeeReport)

  -- Report("")
  say = spacerCMD.."CONFLICTS will prevent the mods involved from expressing their full effect."
  print(say)
  Report("",say,msgType)

  say = spacerCMD.."Some CONFLICTS can be resolved by COMBINING mods..."
  print(say)
  Report("",say,msgType)
  -- print()
  -- Report("")

  say = spacerCMD.."See file 'Creating a Patch for an existing MOD PAK.txt' for further help"
  print(say)
  Report("",say,msgType)
  print("")
  Report("")
else
  if CheckMODSconflicts or CheckSCRIPTconflicts then
    if CheckMODSconflicts and CheckSCRIPTconflicts then
      say = string.format(say..[=[%6u [[CONFLICT]] detected in processed Scripts/paks]=],ConflictCount)
      -- print("")
      Report("")
      Report("",spacerREPORT..say)  
      print(stripBracket(say))

      if (io.open(arg[2].."OnlyOneScript.txt") == nil) then
        say = spacerCMD.."It is safe to use together any of the generated PAKs"
        print(say)
        Report("",spacerREPORT..say)
      end
    elseif CheckMODSconflicts then
      say = string.format(say..[=[%6u [[CONFLICT]] detected in processed MODS paks]=],ConflictCount)
      -- print("")
      Report("")
      Report("",spacerREPORT..say)  
      print(stripBracket(say))
    else --only SCRIPTS
      say = string.format(say..[=[%6u [[CONFLICT]] detected in processed SCRIPTS]=],ConflictCount)
      -- print("")
      Report("")
      Report("",spacerREPORT..say)  
      print(stripBracket(say))
    end
    
  else
    say = say..[=[     - CONFLICT Detection Skipped at user request]=]
    -- print("")
    print(say)
    Report("")
    Report("",spacerREPORT..say)  
  end
  
  print("")
  Report("")
end

Report_flush()

LuaEndedOk(THIS)
