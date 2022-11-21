--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end --.\MODBUILDER\
pv(">>>     In ReportFailedScript.lua")
gfilePATH = arg[1] --to use by LoadHelpers.Report()
THIS = "In ReportFailedScript: "
--print("@@@ "..lfs.currentdir())

local ModScriptFailed = ParseTextFileIntoTable(arg[2].."FailedScriptList.txt")
if #ModScriptFailed > 0 then
  print()
  print(_zRED.."[ATTENTION] Failed scripts report:".._zDEFAULT)
  -- Report("")
  Report("","Failed scripts:","ATTENTION")

  for i=1,#ModScriptFailed do
    print("   - "..ModScriptFailed[i])  
    Report("","   - "..ModScriptFailed[i],"      >>>")
  end

else
  print()
  print(_zGREEN..">>> No script failed processing!".._zDEFAULT)
  --Report("","}")
  Report("")
  Report("","No script failed processing!")
end

-- Report("")
Report_flush()

LuaEndedOk(THIS)
