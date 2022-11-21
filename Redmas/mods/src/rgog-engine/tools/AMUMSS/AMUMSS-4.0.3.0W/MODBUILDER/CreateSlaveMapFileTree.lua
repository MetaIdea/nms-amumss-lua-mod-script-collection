function CreateMapFileTreeEXT(filename)
  local EXML = {} --table to hold the EXML file content
  
  --wait for the file to be available
  local timeOut = 120 --seconds
  repeat
    EXML,msg = ParseTextFileIntoTable(gSourcePath..filename)
    if msg == "ERROR" then
      sleep(1)
    end
    timeOut = timeOut - 1
  until #EXML > 0 or timeOut == 0
  
  local KEY_WORDS = {}
  local TREE_LEVEL = {}
  local FILE_LINE = {}
  local COMMENT = {}
  local level = 0
  
  --terminate if problem getting the file
  if type(EXML) ~= "table" then
    return "ERROR" --abandon effort to create
  end
  if #EXML <= 1 then
    return "ERROR" --abandon effort to create
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
  
  if _mUSE_TXT_MAPFILETREE then
    filepathname = filepathname..".txt"
  else --use default
    _mUSE_LUA_MAPFILETREE = true
    filepathname = filepathname..".lua"
  end
  
  local WholeTextFile = LoadFileData(gSourcePath..filename) --the EXML file as one string, for speed searching for uniqueness
  
  --skipping a few lines at start
  local j = 0
  repeat
    j = j + 1
    if EXML[j] == nil then break end
  until string.find(EXML[j],[[<Data template=]],1,true) ~= nil
  
  local IsLanguageEXML = false
  if string.find(EXML[j],"TkLocalisationTable",1,true) ~= nil then
    IsLanguageEXML = true
  end
  
  if IsLanguageEXML then
    
    local function WTFA(...)
      -- --WriteToFileAppend(...)
    end

    local Language = ""
    local value = ""
    local startOfSection = j + 2
    local ValueLineOffsetInSection = 0
    local IdLineOffsetInSection = 1
    
    local sectionSize = startOfSection
    local s = EXML[startOfSection]
    local foundLanguage = false
    
    for i=startOfSection+1,#EXML do
      --get size of TkLocalisationEntry.xml section
      if s == EXML[i] then
        sectionSize = i - sectionSize
        break
      end
      --look ahead for the 'not empty' language value
      if not foundLanguage and string.find(EXML[i],[[name="Value"]],1,true) ~= nil then
        if StripInfo(EXML[i],[[value="]],[[" />]]) ~= [[]] then
          --found a non-empty value
          ValueLineOffsetInSection = i - startOfSection
          value = StripInfo(EXML[i],[[value="]],[[" />]])
          --previous line is the language for this LANGUAGE file
          Language = StripInfo(EXML[i-1],[[<Property name="]],[[" value=]])
          foundLanguage = true
        end
      end
    end
    
    -- WTFA(deltaX().."      DMFE: LANGUAGE is ["..Language.."]\n",Runner)
    -- WTFA(deltaX().."      DMFE: section Size = ["..sectionSize.."]\n",Runner)
    -- WTFA(deltaX().."      DMFE: start of 1st section at ["..startOfSection.."]\n",Runner)
    -- WTFA(deltaX().."      DMFE: 'Id' found at OFFSET ["..IdLineOffsetInSection.."]\n",Runner)
    -- WTFA(deltaX().."      DMFE: 'value=' found at OFFSET ["..ValueLineOffsetInSection.."] ["..value.."]\n",Runner)
    
--[[ looks like
<Data template="TkLocalisationTable"> -- j
  <Property name="Table"> -- j + 1
  
    <Property value="TkLocalisationEntry.xml"> -- startOfSection
      <Property name="Id" value="UPDATE6_TITLE" /> -- startOfSection + IdLineOffsetInSection
      <Property name="USEnglish" value="VariableSizeString.xml"> -- startOfSection + ValueLineOffsetInSection - 1
        <Property name="Value" value="No Man's Sky Origins Update" /> -- startOfSection + ValueLineOffsetInSection
      </Property> -- startOfSection + sectionSize - 2
    </Property> -- startOfSection + sectionSize - 1
    
  </Property> -- #EXML - 1
</Data> --#EXML
--]]
    
--[[ looks like
>>> MapFileTree: LANGUAGE\NMS_LOC6_ENGLISH.EXML (NMSARC.86055253.pak) "2022/03/18-18:20:40"
 [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number
 TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique
 TYPE:FILELINE:LEVEL     KEYWORDS
{[   :       3: 0]TkLocalisationTable --Do not use, NOT a KEYWORD
{[P..:       4: 1]  "Table",
{[P..:       5: 2]  | "TkLocalisationEntry.xml",
:[.SU:       6: 3]  | | {"Id","UPDATE6_TITLE",},
{[PS.:       7: 3]  | | "English", / {"English","VariableSizeString.xml",},
:[.SU:       8: 4]  | | | {"Value","No Man's Sky Origins Update",},
:[   :       9: 3]  | | <<< }
:[   :  552424: 2]  | <<< }
:[   :  552425: 1]  <<< }
:[   :  552426: 0]/Data } --Do not use, NOT a KEYWORD
 TYPE:FILELINE:LEVEL     KEYWORDS
 TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique
 [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number
>>> MapFileTree: LANGUAGE\NMS_LOC6_ENGLISH.EXML (NMSARC.86055253.pak) "2022/03/18-18:20:40"
--]]

    --overwrite the previous one
    local function WTFA(...)
      ----WriteToFileAppend(...)
    end

    -- WTFA(deltaX().."      DMFE: A["..EXML[j].."]\n",Runner)
    --TkLocalisationTable --Do not use, NOT a KEYWORD
    table.insert(FILE_LINE,j)
    table.insert(TREE_LEVEL,level)
    table.insert(KEY_WORDS, StripInfo(EXML[j],[[<Data template=]],[[>]])) --remembers template
    table.insert(COMMENT, [[   ]])
    level = level + 1
    
    -- WTFA(deltaX().."      DMFE: B["..EXML[j+1].."]\n",Runner)
    --P.. "Table"
    -- table.insert(FILE_LINE,j+1)
    -- table.insert(TREE_LEVEL,level)
    -- table.insert(KEY_WORDS, StripInfo(EXML[j+1],[[Property name=]],[[>]])..",") --remembers name
    -- table.insert(COMMENT, [[P..]])
    level = level + 1

    --for each section in the LANGUAGE EXML
    -- local startCount = count * 10
    for i=startOfSection, #EXML-3, sectionSize do
      -- lineCount = i
      -- if i > startCount then 
        -- --WriteToFileAppend(deltaX().."      DMFE: "..i.." lines processed\n",Runner)
        -- startCount = startCount + (count * 10)
      -- end
      
      -- WTFA(deltaX().."      DMFE: C["..EXML[i].."]\n",Runner)
      level = level + 1
      --P.. "TkLocalisationEntry.xml"
      -- table.insert(FILE_LINE,i)
      -- table.insert(TREE_LEVEL,level)
      -- table.insert(KEY_WORDS, StripInfo(EXML[i],[[=]],[[">]]))
      -- table.insert(COMMENT, [[   ]])

      -- WTFA(deltaX().."      DMFE: D["..EXML[i + IdLineOffsetInSection].."]\n",Runner)
      --.SU {"Id","...",},
      local text = EXML[i + IdLineOffsetInSection]
      local Name = ""
      if string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
        Name = StripInfo(text,[[<Property name="]],[[" value=]])
      end
      
      if Name ~= "" then
        local result = FindKeywordsInLine(text,i + IdLineOffsetInSection)
        if result ~= "" then
          --like: <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN" />
          --like: <Property name="Id" value="DRONE" />
          --like: <Property name="CreatureType" value="" />
          --like: ...
          table.insert(FILE_LINE,i + IdLineOffsetInSection)
          table.insert(TREE_LEVEL,level)

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
          end
          table.insert(KEY_WORDS, [[{"]]..StripInfo(result,[[: ]],[[=]])..[[",]]..value..[[,},]]) --remembers name and value
          table.insert(COMMENT, UniqueMsg)
        end
      end

      -- WTFA(deltaX().."      DMFE: E["..EXML[i + ValueLineOffsetInSection - 1].."]\n",Runner)
      --P.. "English", -- NOT USED HERE / {"English","VariableSizeString.xml",},
      local text = EXML[i + ValueLineOffsetInSection - 1]
      table.insert(FILE_LINE,i + ValueLineOffsetInSection - 1)
      table.insert(TREE_LEVEL,level)
      
      local name = StripInfo(text,[[<Property name=]],[[ value=]]) --remembers name
      table.insert(KEY_WORDS, name..",")
      table.insert(COMMENT, [[P..]])
      
      -- WTFA(deltaX().."      DMFE: F["..EXML[i + ValueLineOffsetInSection].."]\n",Runner)
      --.SU {"Value","No Man's Sky Origins Update",},
      level = level + 1
      table.insert(FILE_LINE,i + ValueLineOffsetInSection)
      table.insert(TREE_LEVEL,level)
      local result = FindKeywordsInLine(EXML[i + ValueLineOffsetInSection],i + ValueLineOffsetInSection)
      local value = StripInfo(result,[[=]],"]")
      table.insert(KEY_WORDS, [[{"]]..StripInfo(result,[[: ]],[[=]])..[[",]]..value..[[,},]]) --remembers name and value
      table.insert(COMMENT, [[.SU]])

      -- WTFA(deltaX().."      DMFE: G["..EXML[i + sectionSize - 2].."]\n",Runner)
      --<<<
      -- table.insert(FILE_LINE,i + sectionSize - 2)
      -- table.insert(TREE_LEVEL,level)
      -- table.insert(KEY_WORDS, "<<< }") --remembers end of section
      -- table.insert(COMMENT, [[   ]])
      level = level - 1

      -- WTFA(deltaX().."      DMFE: H["..EXML[i + sectionSize - 1].."]\n",Runner)
      --<<<
      -- table.insert(FILE_LINE,i + sectionSize - 1)
      -- table.insert(TREE_LEVEL,level)
      -- table.insert(KEY_WORDS, "<<< }") --remembers end of section
      -- table.insert(COMMENT, [[   ]])
      level = level - 1
    end
    
    --<<<
    table.insert(FILE_LINE,#EXML - 1)
    table.insert(TREE_LEVEL,level)
    table.insert(KEY_WORDS, "<<< }") --remembers end of section
    table.insert(COMMENT, [[   ]])
    level = level - 1
    -- WTFA(deltaX().."      DMFE: I["..EXML[#EXML - 1].."]\n",Runner)

    --/Data } --Do not use, NOT a KEYWORD
    table.insert(FILE_LINE,#EXML)
    table.insert(TREE_LEVEL,level)
    table.insert(KEY_WORDS, "/Data }") --remembers "/Data"
    table.insert(COMMENT, [[   ]])
    -- WTFA(deltaX().."      DMFE: J["..EXML[#EXML].."]\n",Runner)
    
  else --all other EXML files
    for i=j,#EXML do
      -- lineCount = lineCount + 1
      local text = EXML[i]
      -- if i%count == 0 then 
        -- --WriteToFileAppend(deltaX().."      DMFE: "..i.." lines processed\n",Runner)
      -- end
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
  
  local info = {}
  if _mUSE_LUA_MAPFILETREE then
    local tUsing = "=== DisplayMapFileTreeEXT: using 'LUA"
    if _mUSE_LUAPLUS_MAPFILETREE then
      tUsing = tUsing.."FULL"
    end
    
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

  else --_mUSE_TXT_MAPFILETREE  --nothing to pre-process
    local tUsing = "=== DisplayMapFileTreeEXT: using 'TXT"
    if _mUSE_TXTPLUS_MAPFILETREE then
      tUsing = tUsing.."FULL"
    end
  end

  local filehandle = WriteToFileEXT(filepathname)
  if filehandle ~= nil then
    filehandle:write(">>> MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
    filehandle:write(" [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number".."\n")    
    filehandle:write(" TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique".."\n")    
    filehandle:write(" TYPE:FILELINE:LEVEL     KEYWORDS".."\n")    

    if _mUSE_LUA_MAPFILETREE then
      for i=1,#info do
        filehandle:write(info[i].."\n")
      end
      
    elseif _mUSE_TXT_MAPFILETREE then
      for i=1,#KEY_WORDS do
        if _mUSE_TXTPLUS_MAPFILETREE or KEY_WORDS[i] ~= "<<< }" then
          local line = string.format("%8u",FILE_LINE[i])
          local level = string.format("%2u",TREE_LEVEL[i])
          
          local tKeywords = KEY_WORDS[i]
          if tKeywords == "<<< }" then
            tKeywords = string.sub(tKeywords,1,3)
          end
          
          local info = ""
          if i == 1 then
            info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..string.sub(tKeywords,2,-2).." --Do not use, NOT a KEYWORD"
          elseif i == #KEY_WORDS then
            info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..string.sub(tKeywords,1,-2).." --Do not use, NOT a KEYWORD"
          else
            info = "["..COMMENT[i]..":"..line..":"..level.."]"..string.rep("  ",TREE_LEVEL[i])..tKeywords
          end
          filehandle:write(info.."\n")
        end
      end
    end
    
    filehandle:write(" TYPE:FILELINE:LEVEL     KEYWORDS".."\n")    
    filehandle:write(" TYPE = 'P'receding, 'S/s'pecial, 'U/u'nique".."\n")    
    filehandle:write(" [WARNING] Lower case 's/u' are Special/Unique with 'True', 'False' or a number".."\n")    
    filehandle:write(">>> MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
    
    filehandle:flush()
    filehandle:close()

  end
  
  -- local waitingCount = -1
  -- repeat
    -- waitingCount = waitingCount + 1
  -- until IsFileExist(filepathname) or waitingCount > 10
  
  -- if waitingCount <= 10 then
    -- --file exist, ok to remove the copy in .\_TEMP_MAP
    -- local thisFile = gSourcePath..filename
    -- os.remove(thisFile)
  -- end
end

-- ****************************************************
-- main (above should be like SCRIPTBUILDER\TestReCreatedScript.lua)
--      (below not at all)
-- ****************************************************

--we are in MODBUILDER

--to prevent LuaStarting() when loading LoadHelpers.lua
local FlagLua = true
if gVerbose == nil then dofile("LoadHelpers.lua") end
gfilePATH = "..\\" --for Report()

THIS = "In CreateSlaveMapFileTree: "
SLAVE = true

function deltaX()
  return string.format("%7.3f",os.clock()-gX).." "
end

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

gX = os.clock()

-- WriteToFile("\n"..deltaX()..os.date(_mDateTimeFormat), "CreateSlave.txt")
-- WriteToFileAppend("\n"..deltaX().." started "..arg[1], "CreateSlave.txt")
  
NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.sub(NMS_FOLDER,1,string.find(NMS_FOLDER,"Sky",1,true)+2)
NMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]

--not used
--gMASTER_FOLDER_PATH = LoadFileData("MASTER_FOLDER_PATH.txt")
--gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")
LocalFolder = [[MODBUILDER\]]

_mUSE_TXT_MAPFILETREE = IsFileExist([[USE_TXT_MAPFILETREE.txt]])
_mUSE_LUA_MAPFILETREE = IsFileExist([[USE_LUA_MAPFILETREE.txt]])

if not _mUSE_TXT_MAPFILETREE then
  _mUSE_LUA_MAPFILETREE = true --default
end

_mUSE_TXTPLUS_MAPFILETREE = IsFileExist([[USE_TXTPLUS_MAPFILETREE.txt]])
_mUSE_LUAPLUS_MAPFILETREE = IsFileExist([[USE_LUAPLUS_MAPFILETREE.txt]])

-- gSourcePath = [[.\_TEMP_MAP\]]
gSourcePath = [[.\_TEMP\DECOMPILED\]]

gpak_listTable = ParseTextFileIntoTable("pak_list.txt")

tmp = "TXT"
if _mUSE_LUA_MAPFILETREE then
  tmp = "LUA"
end

tmp2 = ""
if _mUSE_TXTPLUS_MAPFILETREE or _mUSE_LUAPLUS_MAPFILETREE then
  tmp2 = "FULL"
end

-- PROCESS It
-- WriteToFileAppend("\n"..deltaX().." entering CreateMapFileTreeEXT() for "..arg[1], "CreateSlave.txt")

-- gUsedProcessFile = "UsedProcess.lua"
-- WriteToFileAppend("u,",gUsedProcessFile)

CreateMapFileTreeEXT(arg[1])

-- WriteToFileAppend("\n"..deltaX().." deleting "..gSourcePath..arg[1], "CreateSlave.txt")
-- os.remove([[gSourcePath..arg[1]])
        
-- WriteToFileAppend("n,",gUsedProcessFile)
-- WriteToFileAppend("\n"..deltaX().." ending "..arg[1], "CreateSlave.txt")
