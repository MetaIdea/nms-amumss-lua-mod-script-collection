function LocateThisPAK(CurrentMBIN)
  --because pak_list.txt uses / (and "xxx") and MBIN_PAKS.txt uses \
  TempMBIN = string.sub(string.gsub(CurrentMBIN,[[\]],[[/]]),2,#CurrentMBIN - 1)
  
  local NMSPAKname = ""
  local found = false
  
  local TextFileTable = TextFileTable
  
	for i=1,#TextFileTable do
		local line = TextFileTable[i]
		if (line ~= nil) then
      if (string.find(line,"Listing ",1,true) ~= nil) then
        local start,stop = string.find(line,"Listing ",1,true)
        NMSPAKname = string.sub(line, stop+1)
      elseif (string.find(line,TempMBIN,1,true) ~= nil) then
        found = true
        break
      end
		end
	end
  if not found then 
    NMSPAKname = "Exist only in paks below"
  end
  
  return NMSPAKname
end

-- ****************************************************
-- main
-- ****************************************************

--arg[1] == path to REPORT.lua
--arg[2] == path to MODBUILDER
--arg[3] == a message --not used
--arg[4] == 1 (check NMS MODS for conflict)

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end --.\MODBUILDER\
pv(">>>     In CheckCONFLICTLOG.lua")
gfilePATH = arg[1] --used by LoadHelpers.Report()
THIS = "In CheckCONFLICTLOG: "

-- -- Report(arg[3])
-- local LogTable = ParseTextFileIntoTable(arg[1]..[[REPORT.lua]])
local CheckMODSconflicts = (arg[4] == "1") or (arg[4] == "3")
local CheckSCRIPTconflicts = (arg[4] == "1") or (arg[4] == "4")

-- print("arg[4] = ["..arg[4].."]")
-- print("CheckMODSconflicts = "..tostring(CheckMODSconflicts))
-- print("CheckSCRIPTconflicts = "..tostring(CheckSCRIPTconflicts))

if CheckMODSconflicts then
  --merge MODS_pak_list into MBIN_PAKS
  -- print("   merging lists...")

  local filehandle = io.open(arg[2]..[[MBIN_PAKS.txt]],"a+")
  if filehandle ~= nil then
    local MODSTable = ParseTextFileIntoTable(arg[2]..[[MODS_pak_list.txt]])
    local userPAKname = ""
    for i=1,#MODSTable do
      local text = MODSTable[i]
      if text ~= nil and trim(text) ~= "" then
        if string.sub(text,1,7) == "Listing" then
          userPAKname = string.sub(text,9)
        elseif string.sub(text,1,5) == "FROM " then
          --skip this line
          -- if string.sub(text,6) == "MODS" then
          -- else 
            -- -- "ModScript"
          -- end
        else
          local pakFile = string.gsub(StripInfo(text,[[]],[[ (]]),[[/]],[[\]])
          -- because some user pak file list may start with / or other non-letters
          local start = string.find(pakFile,"%a")
          if start ~= nil then
            pakFile = string.sub(pakFile,start)
            filehandle:write(pakFile..", : "..userPAKname.."\n")
          else
            --there are no 'letters' found in pakFile(aka text)
            print(_zRED..">>> [NOTICE] Problem getting info from ["..text.."]".._zDEFAULT)
            Report("","Problem getting info from ["..text.."]","NOTICE")
          end
        end
      end
    end
    filehandle:flush()
    filehandle:close()
  end
  -- here MBIN_PAKS.txt contains both MODS and ModScript MBIN lists
end

local ConflictScriptTable = ParseTextFileIntoTable(arg[2]..[[MBIN_PAKS.txt]])

-- do we do Conflicts checking?
if CheckMODSconflicts or CheckSCRIPTconflicts then
  local CST = {}
  for i=1,#ConflictScriptTable do
    local text = ConflictScriptTable[i]
    if text ~= nil and trim(text) ~= "" then
      local t = string.gsub(text,[[/]],[[\]])
      table.insert(CST,t)
    end
  end

  -- --debug purposes only
  -- print("#CST = "..#CST)
  -- WriteToFile("", "MBIN_PAKS_combined.txt") --in AMUMSS main folder
  -- for i=1,#CST do
    -- local text = CST[i]
    -- if text ~= nil and trim(text) ~= "" then
      -- WriteToFileAppend(text.."\n", "MBIN_PAKS_combined.txt")    
    -- end
  -- end

  if CheckMODSconflicts and CheckSCRIPTconflicts then
    print()
    print(_zGREEN..">>> Checking Conflicts in ModScript Scripts/paks and NMS MODS paks. Please wait...".._zDEFAULT)
    Report("")
    Report("","Checked Conflicts in ModScript Scripts/paks and NMS MODS paks.")
    Report("")
  end
  
  if not CheckMODSconflicts then
    print()
    print("===== Conflicts in NMS MODS were NOT checked at user request =====")
    print(">>> Checking Conflicts in ModScript Scripts/paks only. Please wait...")

    Report("")
    Report("","===== Conflicts in NMS MODS were NOT checked at user request =====")
    Report("","ONLY Checked Conflicts in ModScript Scripts/paks.")
    Report("")
  end

  --remove duplicate lines
  local CSTable = {}
  if #CST > 1 then
    print(string.format("       Pruning duplicates in %u files...",#CST))
    for i=1,#CST-1 do
      if i%5000 == 0 then
        print(string.format("   %10u of %u files processed...",i,#CST))
      end
      for j=i+1,#CST do
        if CST[i] == CST[j] then
          --a duplicate
          CST[j] = ""
        end
      end
    end
  
    for i=1,#CST do
      if CST[i] ~= "" then
        table.insert(CSTable,CST[i])
      end
    end
    
  else
    CSTable = CST
  end
  --END: remove duplicate lines

  -- --debug purposes only
  -- print("#CSTable = "..#CSTable)
  -- for i=1,#CSTable do
    -- local text1 = CSTable[i]
    -- if text1 ~= nil and trim(text1) ~= "" then
      -- print(i.." ["..text1.."]")
    -- else
      -- print(i.." Empty")
    -- end
  -- end
  -- print()

  -- pre-load "pak_list.txt"
  -- print("   pre-loading pak_list.txt...")
  TextFileTable = ParseTextFileIntoTable(arg[2].."pak_list.txt")

  -- pre-process CSTable info
  -- print("   pre-processing list table...")
  MBINname = {}

  local startOfMODSlist = 0
  local Done = false
  for i=1,#CSTable do
    local text = CSTable[i]
    -- if text ~= nil and trim(text) ~= "" then
      MBINname[#MBINname+1] = {}
      MBINname[#MBINname][1] = [["]]..StripInfo(text,[[]],[[,]])..[["]]   -- MBINname
      --will be empty if in MODS
      MBINname[#MBINname][2] = [["]]..StripInfo(text,[[, ]],[[:]])..[["]] -- SCRIPTname
      if not Done and MBINname[#MBINname][2] == [[""]] then
        Done = true
        startOfMODSlist = i
      end
      MBINname[#MBINname][3] = [["]]..StripInfo(text,[[: ]])..[["]]       -- userPAKname
    -- end
  end

-- print("   startOfMODSlist = "..startOfMODSlist)  

  local ConflictsDetected = false
  local modulo = 1
  local be_patient = ""

  if #MBINname > 1500 then
    be_patient = ", be patient"
    modulo = math.ceil(#MBINname / 30)
  end

  if #MBINname - 1 > 0 then
    if #MBINname > 1 then
      print("       We have "..#MBINname.." possible conflicting files to process"..be_patient.."!  WORKING...")
    else
      print("       We have "..#MBINname.." possible conflicting file to process!  WORKING...")
    end
  end

--  Report("","=================================== CONFLICTS =========================================={")
  Report("","======== CONFLICTS at FILE level (conflicts of individual value are NOT checked) ======={")
    
  --**** check if pak from script is in MODS
  local pakFromScriptInMODS = {}
  local ScriptName = {}
  for i=1,startOfMODSlist - 1 do
    if MBINname[i][3] ~= pakFromScriptInMODS[#pakFromScriptInMODS] then
      table.insert(pakFromScriptInMODS,MBINname[i][3]) -- userPAKname
      table.insert(ScriptName,MBINname[i][2]) -- SCRIPTname
    end
  end
  
  local AtLeastOne = false
  for i=1,#pakFromScriptInMODS do
    for j=startOfMODSlist,#MBINname do
      if pakFromScriptInMODS[i] == MBINname[j][3] then
        AtLeastOne = true
        Report("","Found pak previously created by "..ScriptName[i]," In MODS")
        break
      end
    end
  end
  if AtLeastOne then
    Report("")
  end
  --**** END: check if pak from script is in MODS
  
  -- Do conflict checking
  local conflictCount = 0
  for i=1,#MBINname-1 do
    -- print("Line: "..i)
    if be_patient ~= "" and i%modulo == 0 then
      print(string.format("   %10u of %u files processed...",i,#MBINname))
    end
    
    local ConflictYet = false
    
    if string.upper(string.sub(MBINname[i][1],-5)) ~= [[.TXT"]] then
      for j=i+1,#MBINname do
        if string.upper(MBINname[i][3]) ~= string.upper(MBINname[j][3]) then --different userPAKname, investigate
          if MBINname[j][1] ~= "" then
            if string.upper(MBINname[i][1]) == string.upper(MBINname[j][1]) then --same MBINname, a conflict
              if not ConflictYet then 
                --this one is modified by another one
                -- pv("Conflict in line "..i)
                ConflictYet = true
                ConflictsDetected = true
                local NMSPAKname = LocateThisPAK(MBINname[i][1])
                Report("","on "..MBINname[i][1]..[[ (]]..NMSPAKname..[[)]],"CONFLICT")
                conflictCount = conflictCount + 1
                if trim(MBINname[i][2]) ~= [[""]] then
                  local tmp = [["Modscript\]]..string.sub(MBINname[i][2],2)
                  Report("","\t- "..tmp,"     >>>")
                else
                  local thisPAKname = MBINname[i][3]:sub(2)
                  local start,stop = string.find(thisPAKname,[[..\ModScript\]],1,true)
                  local comingFrom = [["MODS\]]
                  if stop ~= nil then
                    thisPAKname = string.sub(thisPAKname,stop+1)
                    comingFrom = [["Modscript\]]
                  end
                  Report("","\t- "..comingFrom..thisPAKname,"     >>>")
                end
              end --if not ConflictYet then
              
              if ConflictYet then
                if trim(MBINname[j][2]) ~= [[""]] then
                  local tmp = [["Modscript\]]..string.sub(MBINname[j][2],2)
                  Report("","\t- "..tmp,"     >>>")
                else
                  local thisPAKname = MBINname[j][3]:sub(2)
                  local start,stop = string.find(thisPAKname,[[..\ModScript\]],1,true)
                  local comingFrom = [["MODS\]]
                  if stop ~= nil then
                    thisPAKname = string.sub(thisPAKname,stop+1)
                    comingFrom = [["Modscript\]]
                  end
                  Report("","\t- "..comingFrom..thisPAKname,"     >>>")
                end
                MBINname[j][1] = ""
                -- pv("       With line "..j)
              end --if ConflictYet then
              
            end --string.upper(MBINname[i][1]) == string.upper(MBINname[j][1]) then --same MBINname, a conflict
          -- else --same userPAKname
            -- if string.upper(MBINname[i][1]) == string.upper(MBINname[j][1]) then --and same MBINNAME
              -- MBINname[j][1] = ""
            -- end
          end --if MBINname[j][1] ~= "" then
        end --string.upper(MBINname[i][3]) ~= string.upper(MBINname[j][3]) then --different userPAKname, investigate
      end --for j=i+1,#MBINname do
    end --if string.upper(string.sub(MBINname[i][1],-5)) ~= [[.TXT"]] then
    
    if ConflictYet then
      Report("")
    end
  end --for i=1,#MBINname-1 do
  
  if conflictCount > 0 then
    print(string.format(_zRED.."       Conflict detection done, found %d conflict(s)".._zDEFAULT,conflictCount))
    print(string.format(_zRED.."       See ".._zDEFAULT.._zBLACKonYELLOW.." REPORT.lua ".._zDEFAULT.._zRED.." for the full list of conflict(s)".._zDEFAULT,conflictCount))
  else
    print(_zGREEN.."       Conflict detection done, NO conflict".._zDEFAULT)
    Report("","NO conflict to report")
  end

  Report("","============================ DONE CONFLICTS CHECKING ===================================}")
--  Report("","========================================================================================}")

end

print()

Report_flush()

LuaEndedOk(THIS)
