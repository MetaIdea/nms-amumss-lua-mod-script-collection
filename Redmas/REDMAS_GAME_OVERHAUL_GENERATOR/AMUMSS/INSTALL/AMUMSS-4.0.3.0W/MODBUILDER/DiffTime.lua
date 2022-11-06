--arg[1] == path to REPORT.txt
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end
pv(">>>     In DiffTime.lua")
gfilePATH = arg[1] --for Report()
THIS = "In DiffTime: "

function SecondsToHHMMSS(seconds)
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(seconds/3600))
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)))
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60))
    return hours..":"..mins..":"..secs
  end
end

local DiffTimeTable = ParseTextFileIntoTable(arg[2]..[[Times.txt]])
if #DiffTimeTable == 2 then
  local say = SecondsToHHMMSS(os.difftime(DiffTimeTable[#DiffTimeTable],DiffTimeTable[1]))
  print("\n ===>>> TOTAL TIME to complete: "..say.."\n")
  Report("","TOTAL TIME to complete: "..say)
else
  print("\n ===>>> TOTAL TIME to complete: unknown\n")
  Report("","TOTAL TIME to complete: unknown")
end

Report_flush()

LuaEndedOk(THIS)
