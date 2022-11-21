function DisplayMapFileTreeEXT(EXML,filename,IsLanguageEXML)
  WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: received request to process file ["..filename.."]\n",Runner)
  
  local KEY_WORDS = {}
  local TREE_LEVEL = {}
  local FILE_LINE = {}
  local COMMENT = {}
  local level = 0
  
  if not IsLanguageEXML then
    if type(EXML) ~= "table" then
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: returned 'EXML is not a TABLE'\n",Runner)
      return "ERROR" 
    end
    if #EXML <= 1 then
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: returned 'TABLE is EMPTY'\n",Runner)
      return "ERROR" 
    end
  end
  
  --***************************************************************************************************  
  local function FindKeywordsInLine(text,i)
    local KeywordsInRange = ""

    if string.find(text,[[me=]],1,true) ~= nil and string.find(text,[[ue=]],1,true) ~= nil then
      --a line like <Property name="" value="" /> 
      --"name" is a potential special_keyword
      local value = StripInfo(text,[[ue="]],[["]])
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil and string.find(value,".",1,true) == nil then
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil then
      -- if value ~= "" then
        local name = StripInfo(text,[[me="]],[["]])
        KeywordsInRange = "[*"..string.format("%8u",i)..[[: ]]..name..[[="]]..value.."\"]"
      -- end
    end --if string.find(
    
    return KeywordsInRange
  end
  --***************************************************************************************************  

  local Pak_FileName = LocatePAK(filename)
  local Pak_FileNamePath = NMS_PCBANKS_FOLDER_PATH..Pak_FileName
  local fileInfo = string.gsub(filename,[[\]],[[.]])
  local filepathname = "..\\MapFileTrees\\"..fileInfo
  local OLDfilepathname = ""
  
  if _mUSE_TXT_MAPFILETREE then
    --try deleting old other version
    OLDfilepathname = filepathname..".lua"
    if IsFileExist(OLDfilepathname) then
      --os.remove(OLDfilepathname)    --don't use, can get stuck
      os.execute([[START /B /wait "" /MIN cmd /c Del /f /q /s "]]..OLDfilepathname..[[" 1>NUL 2>NUL]])    
    end
    filepathname = filepathname..".txt"

  else --use default
    _mUSE_LUA_MAPFILETREE = true

    --try deleting old other version
    OLDfilepathname = filepathname..".txt"
    if IsFileExist(OLDfilepathname) then
      --os.remove(OLDfilepathname)    --don't use, can get stuck
      os.execute([[START /B /wait "" /MIN cmd /c Del /f /q /s "]]..OLDfilepathname..[[" 1>NUL 2>NUL]])  
    end
    filepathname = filepathname..".lua"

  end
  
  -- print("      Creating MapFileTree...")
  -- print("XYZ = "..filename)
  
  -- WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: Pak_FileNamePath = ["..Pak_FileNamePath.."]\n",Runner)
  -- WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: filepathname = ["..filepathname.."]\n",Runner)

  if IsFile2Newest(Pak_FileNamePath,filepathname) then
    --the MapFileTree file is newest than the NMS pak file
    --no need to update
    -- print("      MapFileTree is up-to-date!")
    -- Report("","      MapFileTree is up-to-date!")
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: returned 'this MapFileTree is up-to-date!'\n",Runner)
    return "UP_TO_DATE"
  end
  
  -- if IsFileExist(filepathname) then
    -- WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: deleting old version: '"..filepathname.."'\n",Runner)
    -- -- os.remove([["]]..filepathname..[["]])  --don't use, can get stuck
    -- os.execute([[START /B /wait "" /MIN cmd /c Del /f /q /s "]]..filepathname..[[" 1>NUL 2>NUL]])
  -- end
  
  local count = 10000
  local lineCount = 0
  
  if gUseNumCores <= 0 then
    --disable other processes
    IsLanguageEXML = false
  end
  
  if not IsFileExist(os.getenv("SYSTEMROOT")..[[\system32\tasklist.exe]]) then
    --disable for OS that do not have it
    IsLanguageEXML = false
  end
  
  if IsLanguageEXML then
    local ProcessInfo = os.capture([[tasklist /FI "ImageName eq luaS.exe"]])
    --WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: ProcessInfo = ["..ProcessInfo.."]",Runner)
    
    local _,numUsedSlots = string.gsub(ProcessInfo,"luaS.exe","")
        
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: free slots = "..numUsedSlots.."/"..gUseNumCores.."\n",Runner)
    if numUsedSlots >= gUseNumCores then
      --skip this one for now
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: 'waiting' to activate SLAVE\n",Runner)
      local returnMsg = "SKIP"
      return returnMsg
      
    else
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: 'activating' SLAVE\n",Runner)
      
      local arg1 = filename
      --local cmd = [[runThisJob.exe ".\]]..os.getenv("_mLUAS")..[[ CreateSlaveMapFileTree.lua ]]..arg1..[["]]
      local cmd = [[runThisJob.exe ".\]].._mLUAS..[[ CreateSlaveMapFileTree.lua ]]..arg1..[["]]
      -- WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: ["..cmd.."]\n",Runner)

      os.execute(cmd)
      
      local returnMsg = "OK"
      return returnMsg
    end
    
  else --all other EXML files
    local WholeTextFile = LoadFileData(gSourcePath..filename) --the EXML file as one string, for speed searching for uniqueness
    
    --skipping a few lines at start
    local j = 0
    repeat
      j = j + 1
      if EXML[j] == nil then break end
    until string.find(EXML[j],[[<Data template=]],1,true) ~= nil
    
    lineCount = j
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: total lines to process = "..#EXML.." (starts at "..lineCount..")\n",Runner)
    
    for i=j,#EXML do
      lineCount = lineCount + 1
      local text = EXML[i]
      if i%count == 0 then 
        WriteToFileAppend(deltaX().."      DMFE: "..i.." lines processed\n",Runner)
      end
      if string.find(text,[[/>]],1,true) ~= nil then
        --ALL lines with "/>"
        local Name = ""
        if string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
          Name = StripInfo(text,[[<Property name="]],[[" value=]])
        end
        
        if Name ~= "" then
          local result = FindKeywordsInLine(text,i)
          if result ~= "" then
            --like: <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN" />
            --like: <Property name="Id" value="DRONE" />
            --like: <Property name="CreatureType" value="" />
            --like: ...
            table.insert(FILE_LINE,i)
            table.insert(TREE_LEVEL,level+1)

            --check for uniqueness and report
            local s = trim(text)
            --fastest way!!! --gsub and gmatch take too long
            local firstPosStart,firstPosEnd = string.find(WholeTextFile,s,1,true)
            local secondPos = string.find(WholeTextFile,s,firstPosEnd+1,true)
            
            local value = StripInfo(result,[[=]],"]")
            
            local UniqueMsg = [[   ]]
            if value ~= [[""]] then
              UniqueMsg = [[.S.]]
              if secondPos == nil then
                UniqueMsg = [[.SU]]
                if value == [["True"]] or value == [["False"]] or tonumber(string.sub(value,2,-2)) ~= nil then
                  UniqueMsg = [[.su]]
                end
              
              elseif value == [["True"]] or value == [["False"]] or tonumber(string.sub(value,2,-2)) ~= nil then
                UniqueMsg = [[.s.]]
              end
            -- else
              -- value = [[""]]
            end
            table.insert(KEY_WORDS, [[{"]]..StripInfo(result,[[: ]],[[=]])..[[",]]..value..[[,},]]) --remembers name and value
            table.insert(COMMENT, UniqueMsg)
          else
            --like: <Property name="Seed" value="0" />
            --level = level + 1
            table.insert(FILE_LINE,i)
            table.insert(TREE_LEVEL,level + 1)
            table.insert(KEY_WORDS, StripInfo(text,[[value=]],[[ />]]))
            table.insert(COMMENT, [[   ]])
          end
        else
          --like: <Property value="3" />
          --level = level + 1
          table.insert(FILE_LINE,i)
          table.insert(TREE_LEVEL,level + 1)
          table.insert(KEY_WORDS, StripInfo(text,[[=]],[[ />]]))
          table.insert(COMMENT, [[   ]])
        end
        
      --from here on, no lines with "/>".  Only lines with ">"
      elseif string.find(text,[[</Property>]],1,true) ~= nil then
        --like: </Property>
        --NEVER a KEY_WORD but should remove preceding KEY_WORD
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        table.insert(KEY_WORDS, "<<< }") --remembers end of section
        table.insert(COMMENT, [[   ]])
        level = level - 1
        
      elseif string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
        --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
        level = level + 1
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        
        local name = StripInfo(text,[[<Property name=]],[[ value=]]) --remembers name
        local specialName = ""
        
        --this could also be a SPECIALNAME
        --like: <Property name="Rarity" value="GcRarity.xml">
        local value = StripInfo(text,[[value="]],[["]])
        local UniqueMsg = [[PS.]]
        if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil then
          --check for uniqueness and report
          local s = trim(text)
          --fastest way!!! --gsub and gmatch take too long
          local firstPosStart,firstPosEnd = string.find(WholeTextFile,s,1,true)
          local secondPos = string.find(WholeTextFile,s,firstPosEnd+1,true)
          if secondPos == nil then
            UniqueMsg = [[PSU]]
            if value == "True" or value == "False" or tonumber(value) ~= nil then
              UniqueMsg = [[Psu]]
            end
          end
          specialName = [[ / {]]..name..[[,"]]..value..[[",},]]
        elseif value == "True" or value == "False" or tonumber(value) ~= nil then
          UniqueMsg = [[Ps.]]
        end

        table.insert(KEY_WORDS, name..","..specialName)
        
        if specialName ~= "" then
          table.insert(COMMENT, UniqueMsg)
        else
          table.insert(COMMENT, [[   ]])
        end
        
      elseif string.find(text,[[Property name=]],1,true) ~= nil then
        --like: <Property name="Landmarks">
        level = level + 1
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        table.insert(KEY_WORDS, StripInfo(text,[[Property name=]],[[>]])..",") --remembers name
        table.insert(COMMENT, [[P..]])
        
      elseif string.find(text,[[Property value=]],1,true) ~= nil then
        --like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
        level = level + 1
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        table.insert(KEY_WORDS, StripInfo(text,[[Property value=]],[[>]])..",") --remembers value
        table.insert(COMMENT, [[P..]])
        
      elseif string.find(text,[[<Data template=]],1,true) ~= nil then
        --like: <Data template="GcExternalObjectList">
        --encountered only once at first line
        --NEVER a KEY_WORD
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        table.insert(KEY_WORDS, StripInfo(text,[[<Data template=]],[[>]])) --remembers template
        table.insert(COMMENT, [[   ]])
        
      elseif string.find(text,[[</Data>]],1,true) ~= nil then
        --like: </Data>
        --encountered only once at end of file
        --NEVER a KEY_WORD
        table.insert(FILE_LINE,i)
        table.insert(TREE_LEVEL,level)
        table.insert(KEY_WORDS, "/Data }") --remembers "/Data"
        table.insert(COMMENT, [[   ]])
        
      end
    end  
  end
  
  if #EXML < count then 
    WriteToFileAppend(deltaX().."      DMFE: "..(#EXML-1).." lines processed\n",Runner)
  end
  
  WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: total lines processed = "..lineCount.."\n",Runner)

  local info = {}
  if _mUSE_LUA_MAPFILETREE then
    local tUsing = "=== DisplayMapFileTreeEXT: using 'LUA"
    if _mUSE_LUAPLUS_MAPFILETREE then
      tUsing = tUsing.."FULL"
    end
    -- WriteToFileAppend(deltaX()..tUsing.."' #"..#FILE_LINE..", "..#TREE_LEVEL..", "..#KEY_WORDS..", "..#COMMENT.."\n",Runner)
    
    --pre-process info to LUA format
    local previousLevel = -1
    -- local comment = ""
    for i=1,#KEY_WORDS do
      if (_mUSE_LUAPLUS_MAPFILETREE and KEY_WORDS[i] == "<<< }") or (KEY_WORDS[i] ~= "<<< }") then
        local line = string.format("%8u",FILE_LINE[i])
        local level = string.format("%2u",TREE_LEVEL[i])
        local comment = COMMENT[i]
        
        local nLevel = tonumber(level)

        if _mUSE_LUAPLUS_MAPFILETREE and KEY_WORDS[i] == "<<< }" then
          nLevel = nLevel - 1
        end
        
        if i > 1 then
          if nLevel < previousLevel then
            if _mUSE_LUAPLUS_MAPFILETREE then
              --nothing to do
              --info[#info] = info[#info] --.." ".."}"
            else
              if KEY_WORDS[i] ~= "<<< }" or KEY_WORDS[i] ~= "/Data }" then
                -- info[#info] = info[#info].." "..string.rep("}",previousLevel - nLevel)
              -- else
                info[#info] = info[#info].." "..string.rep("}",previousLevel - nLevel)
              end
            end
          end
                
          if nLevel <= previousLevel then
            if not _mUSE_LUAPLUS_MAPFILETREE and (string.sub(info[#info],1,3) == "{[P" and string.sub(comment,1,1) == "P") then
              info[#info] = info[#info].." }"
            end
          end
        end
        
        previousLevel = nLevel
        
        local tStart = ":"
        if not IsLanguageEXML and (string.sub(comment,1,1) == "P" or (i == 1)) then
          tStart = "{"
        end
        
        local INFO = tStart.."["..comment..":"..line..":"..level.."]"
        if TREE_LEVEL[i] > 0 then
            info[#info+1] = INFO.."  "..string.rep("| ",TREE_LEVEL[i]-1)..KEY_WORDS[i]
        else
          if i == 1 then
            info[#info+1] = INFO..string.rep("  ",TREE_LEVEL[i])..string.sub(KEY_WORDS[i],2,-2).." --Do not use, NOT a KEYWORD"
          elseif i == #KEY_WORDS then
            info[#info+1] = INFO..string.rep("  ",TREE_LEVEL[i])..KEY_WORDS[i].." --Do not use, NOT a KEYWORD"
          else
            info[#info+1] = INFO..string.rep("  ",TREE_LEVEL[i])..KEY_WORDS[i]
          end
        end
      end
    end
    -- WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: #info = "..#info.."\n",Runner)

  else --_mUSE_TXT_MAPFILETREE  --nothing to pre-process
    local tUsing = "=== DisplayMapFileTreeEXT: using 'TXT"
    if _mUSE_TXTPLUS_MAPFILETREE then
      tUsing = tUsing.."FULL"
    end
    -- WriteToFileAppend(deltaX()..tUsing.."' #"..#FILE_LINE..", "..#TREE_LEVEL..", "..#KEY_WORDS..", "..#COMMENT.."\n",Runner)
  end

  local filehandle = WriteToFileEXT(filepathname)
  if filehandle ~= nil then
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: output file 'opened' for ["..filepathname.."]\n",Runner)
    
    filehandle:write(">>> MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
    filehandle:write(" [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number".."\n")    
    filehandle:write(" TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique".."\n")    
    filehandle:write(" TYPE:FILELINE:LEVEL     KEYWORDS".."\n")    

    if _mUSE_LUA_MAPFILETREE then
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: processing 'info' table\n",Runner)
      for i=1,#info do
        -- if i%count == 0 then 
          -- WriteToFileAppend(deltaX().."      INFO: "..i.." lines processed\n",Runner)
        -- end
        filehandle:write(info[i].."\n")
      end
      
    elseif _mUSE_TXT_MAPFILETREE then
      WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: processing 'KEY_WORDS' table\n",Runner)
      for i=1,#KEY_WORDS do
        -- if i%count == 0 then 
          -- WriteToFileAppend(deltaX().."      INFO: "..i.." lines processed\n",Runner)
        -- end
        if _mUSE_TXTPLUS_MAPFILETREE or KEY_WORDS[i] ~= "<<< }" then
          local line = string.format("%8u",FILE_LINE[i])
          local level = string.format("%2u",TREE_LEVEL[i])
          
          local tKeywords = KEY_WORDS[i]
          if tKeywords == "<<< }" then
            tKeywords = string.sub(tKeywords,1,3)
          end
          
          local Info = ""
          if i == 1 then
            Info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..string.sub(tKeywords,2,-2).." --Do not use, NOT a KEYWORD"
          elseif i == #KEY_WORDS then
            Info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..string.sub(tKeywords,1,-2).." --Do not use, NOT a KEYWORD"
          else
            Info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..tKeywords
          end
          filehandle:write(Info.."\n")
        end
      end
    end
    
    filehandle:write(" TYPE:FILELINE:LEVEL     KEYWORDS".."\n")    
    filehandle:write(" TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique".."\n")    
    filehandle:write(" [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number".."\n")    
    filehandle:write(">>> MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
    
    filehandle:flush()
    filehandle:close()

    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: output file 'closed'\n",Runner)

  else
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: 'COULD NOT OPEN output file: no filehandle'\n",Runner)
  end
  
  -- sleep(1)
  local waitingCount = -1
  repeat
    waitingCount = waitingCount + 1
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: 'checking' ["..filepathname.."] existence...\n",Runner)
  until IsFileExist(filepathname) or waitingCount > 10
  
  if waitingCount <= 10 then
    --file exist, ok to remove the copy in .\_TEMP_MAP
    local thisFile = gSourcePath..filename
    WriteToFileAppend(deltaX().."+++ Runner: Deleting file ["..thisFile.."]\n",Runner)
    os.remove(thisFile)
  end
  
  local returnMsg = "OK"
  if waitingCount > 0 then
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: ending with waitingCount = "..waitingCount.."\n",Runner)
    returnMsg = "UNKNOWN"
  else
    WriteToFileAppend(deltaX().."=== DisplayMapFileTreeEXT: ending with 'MapFileTree created!'\n",Runner)
  end
  return returnMsg
end

function RunnerThread()
  WriteToFileAppend(deltaX().."+++ In Runner...\n",Runner)
  local Count = 0
  local MaxCount = 36
  local WaitTime = 5
  
  local OkToRun = false
  local FileListHandle = nil
  local Terminate = false
  
  while not OkToRun do
    FileListHandle = io.open([[MapFileTreeSharedList.txt]],"r")
    if FileListHandle == nil then
      WriteToFileAppend(deltaX().."+++ Runner: NOTICE >>> "..((MaxCount-Count+1)*WaitTime)..": Could not open MapFileTreeSharedList.txt.  Re-checking in "..WaitTime.." sec\n",Runner)
      sleep(WaitTime)
      
      if Count > 36 or (Count > 1 and not IsFileExist([[MapFileTreeCreatorRun.txt]])) then --failsafe exit
        Terminate = true
        WriteToFileAppend(deltaX().."+++ Runner: terminating on [waiting for MapFileTreeSharedList.txt]...\n",Runner)
        if IsFileExist([[MapFileTreeCreatorRun.txt]]) then
          WriteToFileAppend(deltaX().."+++ Runner: forcing removal of MapFileTreeCreatorRun.txt\n",Runner)
          os.remove([[MapFileTreeCreatorRun.txt]])
        end
        break
      end
      Count = Count + 1
    else
      WriteToFileAppend(deltaX().."+++ Runner: opened MapFileTreeSharedList.txt\n",Runner)
      OkToRun = true
    end
  end
  
  local List = {}
  local Done = {}
  local Recreate = {}

  if OkToRun then 
    WriteToFileAppend(deltaX().."+++ Runner: OkToRun\n",Runner)
  end

  local FlagError = false
  Count = 0
  --normally to check 2 more times before quitting
  while OkToRun and not Terminate do
    -- WriteToFileAppend(deltaX().."+++ Runner: In while OkToRun and not Terminate do\n",Runner)
    local FileList = {}
    local line = FileListHandle:read("l")
    while line ~= nil do 
      if line ~= " " then
        table.insert(FileList, line) 
      end
      line = FileListHandle:read("l")
    end
    
    if FileList[#FileList] == "PING" then
      -- WriteToFileAppend(deltaX().."+++ Runner: Resetting exit timer on PING\n",Runner)
      --reset timer
      Count = 0
    end
    
    -- WriteToFileAppend(deltaX().."+++ Runner: #FileList "..#FileList.."\n",Runner)
    -- WriteToFileAppend(deltaX().."+++ Runner: #List "..#List.."\n",Runner)
    -- WriteToFileAppend(deltaX().."+++ Runner: Updating 'List[] and Done[]'\n",Runner)
    local ListCount = #List
    for i=1,#FileList do
      --a new entry
      --add it to the list
      if not Done[i + ListCount] then
        local skipIt = false
        if FileList[i] ~= "PING" then
          for j=1,#List do
            if List[j] == FileList[i] then
              skipIt = true
            end
          end
        end
        
        if not skipIt then
          --report it
          --remove and count
          local file,num = string.gsub(FileList[i],".recreate","")
          local IsRecreate = (num > 0)
          if file ~= "PING" then
            WriteToFileAppend(deltaX().."+++ Runner: Adding "..(i + ListCount).." to List: ["..file.."]"..iif(IsRecreate," with Recreate","").."\n",Runner)
          end
          table.insert(List,file)
          table.insert(Done,false)
          table.insert(Recreate,IsRecreate)
        end
      end
    end
    
    local AllDone = true
    for i=1,#Done do
      if not Done[i] then
        AllDone = false
        break
      end
    end

    local returnMsg = ""
    if not AllDone then
      -- WriteToFileAppend(deltaX().."+++ Runner: #Done = "..#Done.."\n",Runner)
      for i=1,#Done do
        if List[i] == "PING" then
          Done[i] = true
        end
        
        if not Done[i] then
          -- WriteToFileAppend(deltaX().."+++ Runner: Resetting exit timer\n",Runner)
          --reset timer
          Count = 1
          WriteToFileAppend(deltaX().."+++ Runner: _____----_____\n",Runner)
          
          --process this file
          local thisFile = gSourcePath..List[i]
          WriteToFileAppend(deltaX().."+++ Runner: To parse file ["..thisFile.."]\n",Runner)
          
          --is this a LANGUAGE file?
          local IsLanguageEXML = false
          if string.sub(List[i],1,9) == [[LANGUAGE\]] then
            IsLanguageEXML = true
            WriteToFileAppend(deltaX().."+++ Runner: detected LANGUAGE file\n",Runner)
          end
          
          local IsFound = false
          local IsFoundCount = 0
          repeat
            IsFoundCount = IsFoundCount + 1
            -- WriteToFileAppend(deltaX().."+++ Runner:                'Checking' if it exist\n",Runner)
            IsFound = IsFileExist(thisFile)
            if IsFoundCount > 1 then
              sleep(1)
            end
          until IsFound or IsFoundCount > 30 --wait x sec to see if it will be available
          
          if IsFound then
            WriteToFileAppend(deltaX().."+++ Runner: file 'exist' in "..gSourcePath.."\n",Runner)
            -- sleep(10)
            local EXML = {}
            if not IsLanguageEXML then
              repeat
                EXML,msg = ParseTextFileIntoTable(thisFile)
                if msg == "ERROR" then
                  WriteToFileAppend(deltaX().."+++ Runner: ParseTextFileIntoTable() 'cannot process file yet'\n",Runner)
                  sleep(1)
                end
              until #EXML > 0
              -- WriteToFileAppend(deltaX().."+++ Runner: #EXML = "..#EXML.." \n",Runner)
            else
              --skipping loading it, no need to do it here AND in the SLAVE
              EXML = nil
            end

            if Recreate[i] then
              WriteToFileAppend(deltaX().."+++ Runner: 'delete old' mapfiletree\n",Runner)
              --we need to force remove 'old' copy
              local tmpMFT = "..\\MapFileTrees\\"..string.gsub(List[i],[[\]],[[.]])
              WriteToFileAppend(deltaX().."+++ Runner: tmpMFT = ["..tmpMFT.."]\n",Runner)
              if IsFileExist(tmpMFT..[[.lua]]) then
                --os.execute([[START /B /wait "" /MIN cmd /c Del /f /q /s "]]..tmpMFT..[[.lua" 1>NUL 2>NUL]])
                os.execute([[Del /f /q /s "]]..tmpMFT..[[.lua" 1>NUL 2>NUL]])
                repeat
                  sleep(1)
                until not IsFileExist(tmpMFT..[[.lua]])
              elseif IsFileExist(tmpMFT..[[.txt]]) then
                os.execute([[Del /f /q /s "]]..tmpMFT..[[.txt" 1>NUL 2>NUL]])
                repeat
                  sleep(1)
                until not IsFileExist(tmpMFT..[[.txt]])
              end
            end
            
            -- ************************   PROCESS It   **************************
            returnMsg = DisplayMapFileTreeEXT(EXML,List[i],IsLanguageEXML)
            
            WriteToFileAppend(deltaX().."+++ Runner: DisplayMapFileTreeEXT exited with '"..returnMsg.."'\n",Runner)
            
            if returnMsg == "OK" or returnMsg == "UP_TO_DATE" then
              -- WriteToFileAppend(deltaX().."+++ Runner: Deleting file ["..thisFile.."]\n",Runner)
              -- os.remove(thisFile)
              Done[i] = true
            elseif returnMsg == "SKIP" then
              --wait for a free ProcessSlot
              --reset timer
              Count = 0
            end
          
          else
            --STILL NOT FOUND: mark it as Done
            WriteToFileAppend(deltaX().."+++ Runner: ["..thisFile.."] 'cannot be found'\n",Runner)
            Done[i] = true
          end --if IsFound then
        end --if not Done[i] then    
      end --for i=1,#Done do
      WriteToFileAppend(deltaX().."+++ Runner: finished Done[] list\n",Runner)
    end --if not AllDone then
    
    if returnMsg == "ERROR" then
      FlagError = true
    end
    
    --recheck
    AllDone = true
    for i=1,#Done do
      if not Done[i] then
        AllDone = false
        break
      end
    end
    
    if AllDone then
      if not IsFileExist([[MapFileTreeCreatorRun.txt]]) and Count > 1 then
        --terminate
        WriteToFileAppend(deltaX().."+++ Runner: received 'OK' to terminate...\n",Runner)
        WriteToFileAppend(deltaX().."+++ Runner: closing MapFileTreeSharedList.txt\n",Runner)
        FileListHandle:close()
        break
      elseif Count > 36 then
        WriteToFileAppend(deltaX().."+++ Runner: terminating on [Count]...\n",Runner)
        WriteToFileAppend(deltaX().."+++ Runner: closing MapFileTreeSharedList.txt\n",Runner)
        FileListHandle:close()
        WriteToFileAppend(deltaX().."+++ Runner: forcing removal of MapFileTreeCreatorRun.txt\n",Runner)
        os.remove([[MapFileTreeCreatorRun.txt]])
        break
      else
        if Count == 0 then
          WriteToFileAppend(deltaX().."+++ Runner: (PING) Exit in "..((MaxCount-Count)*WaitTime).." sec or less if no more jobs unless asked to terminate...\n",Runner)
        else
          WriteToFileAppend(deltaX().."+++ Runner: Exit in "..((MaxCount-Count)*WaitTime).." sec or less if no more jobs unless asked to terminate...\n",Runner)
        end
        Count = Count + 1
      end
    end

    WriteToFileAppend(deltaX().."+++ Runner: sleeping for "..WaitTime.." sec\n",Runner)
    sleep(WaitTime)
    
  end --while OkToRun and not Terminate do (will exit with break only)

  --NOT USED, every file handles this
  -- for i=1,#List do
    -- if List[i] ~= "PING" then
      -- local thisFile = gSourcePath..List[i]
      -- WriteToFileAppend(deltaX().."+++ Runner: Deleting file ["..thisFile.."]\n",Runner)
      -- os.remove(thisFile)
    -- end
  -- end

  if FlagError and IsFileExist([[..\WOPT_Wbertro.txt]]) then
    WriteToFileAppend(deltaX().."+++ Runner: WARNING >>> IN PAUSE MODE\n",Runner)
    os.execute([[START /wait "In PAUSE MODE, see MapFileTreeRunner.lua" /MAX cmd /c PAUSE_MAPFILETREE.bat]])  
  end
  
  if IsFileExist([[MapFileTreeSharedList.txt]]) then
    WriteToFileAppend(deltaX().."+++ Runner: removing "..[[MapFileTreeSharedList.txt]].."\n",Runner)
    if os.remove([[MapFileTreeSharedList.txt]]) == nil then
      WriteToFileAppend(deltaX().."+++ Runner: NOTICE >>> MapFileTreeSharedList.txt 'already removed or locked'\n",Runner)
    end
  else
    WriteToFileAppend(deltaX().."+++ Runner: NOTICE >>> MapFileTreeSharedList.txt 'does not exist'!\n",Runner)
  end

  if IsFileExist([[MapFileTreeRequested.txt]]) then
    WriteToFileAppend(deltaX().."+++ Runner: removing "..[[MapFileTreeRequested.txt]].."\n",Runner)
    if os.remove([[MapFileTreeRequested.txt]]) == nil then
      WriteToFileAppend(deltaX().."+++ Runner: WARNING >>> 'could not remove' file MapFileTreeRequested.txt\n",Runner)
    end
  else
    WriteToFileAppend(deltaX().."+++ Runner: WARNING >>> MapFileTreeRequested.txt 'does not exist'!\n",Runner)
  end
  
  --NOT USED: SLAVES still need it
  -- local folder = string.sub(gSourcePath,1,#gSourcePath-1)
  -- WriteToFileAppend(deltaX().."+++ Runner: Deleting ["..folder.."]\n",Runner)
  -- os.execute([[START /wait "" /B /MIN cmd /c Clean_TEMP_MAP.bat]])
  
  WriteToFileAppend(deltaX().."+++ Runner: terminated\n",Runner)

end

-- ****************************************************
--                        main
-- ****************************************************

--we are in MODBUILDER

--to prevent LuaStarting() when loading LoadHelpers.lua
local FlagLua = true
if gVerbose == nil then dofile("LoadHelpers.lua") end
-- pv(">>>     In CreateMapFileTree.lua")
gfilePATH = "..\\" --for Report()

THIS = "In CreateMapFileTree: "

-- _mLUA = os.getenv("_mLUA")
_mLUAS = os.getenv("_mLUAS")

gX = os.clock()

--default
_mDateTimeFormat = "%Y/%m/%d-%H:%M:%S"
CustomDateTimeFormat = false

if IsFileExist([[..\DateTimeFormat.txt]]) then
  local tmpDTF = LoadFileData([[..\DateTimeFormat.txt]])
  if tmpDTF ~= nil and tmpDTF ~= _mDateTimeFormat then
    _mDateTimeFormat = tmpDTF
    CustomDateTimeFormat = true
  end
end

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.sub(NMS_FOLDER,1,string.find(NMS_FOLDER,"Sky",1,true)+2)
NMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]

--not used
--gMASTER_FOLDER_PATH = LoadFileData("MASTER_FOLDER_PATH.txt")
--gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")
LocalFolder = [[MODBUILDER\]]

_mUSE_TXT_MAPFILETREE = IsFileExist([[USE_TXT_MAPFILETREE.txt]])
print("_mUSE_TXT_MAPFILETREE == "..tostring(_mUSE_TXT_MAPFILETREE))
_mUSE_LUA_MAPFILETREE = IsFileExist([[USE_LUA_MAPFILETREE.txt]])
print("_mUSE_LUA_MAPFILETREE == "..tostring(_mUSE_LUA_MAPFILETREE))

if not _mUSE_TXT_MAPFILETREE then
  _mUSE_LUA_MAPFILETREE = true --default
end

_mUSE_TXTPLUS_MAPFILETREE = IsFileExist([[USE_TXTPLUS_MAPFILETREE.txt]])
print("_mUSE_TXTPLUS_MAPFILETREE == "..tostring(_mUSE_TXTPLUS_MAPFILETREE))
_mUSE_LUAPLUS_MAPFILETREE = IsFileExist([[USE_LUAPLUS_MAPFILETREE.txt]])
print("_mUSE_LUAPLUS_MAPFILETREE == "..tostring(_mUSE_LUAPLUS_MAPFILETREE))

Runner = "MapFileTreeRunner.lua"
-- gSourcePath = [[.\_TEMP_MAP\]]
gSourcePath = [[.\_TEMP\DECOMPILED\]]

gpak_listTable = ParseTextFileIntoTable("pak_list.txt")

WriteToFileAppendEXT = WriteToFileAppend

function WriteToFileAppend(msg,filename)
  if filename == Runner then
    --send to both cmd window and Runner file
    WriteToFileAppendEXT(msg,filename)
    local msg = string.gsub(msg,"\n","") --remove line break if any
    print(msg)
  else
    WriteToFileAppendEXT(msg,filename)
  end
end

function deltaX()
  return string.format("%7.3f",os.clock()-gX).." "
end

--os.remove(Runner)

tmp = "TXT"
if _mUSE_LUA_MAPFILETREE then
  tmp = "LUA"
end

tmp2 = ""
if _mUSE_TXTPLUS_MAPFILETREE or _mUSE_LUAPLUS_MAPFILETREE then
  tmp2 = "FULL"
end

gNumCores = tonumber(os.getenv("NUMBER_OF_PROCESSORS"))
local ProcessInfo = os.capture([[tasklist /FI "ImageName eq lua.exe"]])            

--main and this instance
_,gNumCoresBase = string.gsub(ProcessInfo,"lua.exe","")

gUseNumCores = gNumCores - gNumCoresBase - 4 --leave 2 free
if gUseNumCores <= 0 then
  gUseNumCores = gNumCores - 2
  if gUseNumCores <= 0 then
    gUseNumCores = 0
  end
end

-- --prepare in use process counter
-- gUsedProcessFile = "UsedProcess.lua"
-- WriteToFile("\n",gUsedProcessFile)

WriteToFileAppend(deltaX().."+++ "..os.date(_mDateTimeFormat).."\n",Runner)
WriteToFileAppend(deltaX().."+++ Starting 2nd thread: '"..tmp..tmp2.."'\n",Runner)
WriteToFileAppend(deltaX().."+++ Runner: 'v"..LoadFileData("AMUMSSVersion.txt").."'\n",Runner)
WriteToFileAppend(deltaX().."+++ Runner: gUseNumCores = ["..gUseNumCores.."]\n",Runner)
print()
print([[  PLEASE DO NOT CLOSE THIS WINDOW, IT WILL SELF-CLOSE WHEN ITS WORK IS DONE!]])
print()
--sleep(20) --let OS catch up...
RunnerThread()

-- pv(THIS.."ending")
-- LuaEndedOk(THIS)
