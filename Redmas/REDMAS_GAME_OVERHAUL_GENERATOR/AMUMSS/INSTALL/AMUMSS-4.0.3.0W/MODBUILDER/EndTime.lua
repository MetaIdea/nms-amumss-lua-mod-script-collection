--arg[1] == path to REPORT.txt
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end
pv(">>>     In EndTime.lua")
gfilePATH = arg[1] --for Report()
THIS = "In EndTime: "

local endTime = os.time()
WriteToFileAppend(endTime,arg[2]..[[Times.txt]])
Report("","Ended AMUMSS automatic processing at "..ShowTime(endTime))
Report_flush()

LuaEndedOk(THIS)
