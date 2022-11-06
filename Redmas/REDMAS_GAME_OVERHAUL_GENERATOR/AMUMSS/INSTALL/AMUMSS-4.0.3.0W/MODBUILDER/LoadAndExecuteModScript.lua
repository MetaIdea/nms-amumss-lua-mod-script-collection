-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function HandleModScript(MOD_DEF,Multi_pak,global_integer_to_float)
  pv(THIS.."From HandleModScript()")
CheckPoint(2)
  local gIs_FULL_MODE = gIs_FULL_MODE
  local gIs_DEV_MODE = gIs_DEV_MODE
  local gIs_LEAN_MODE = gIs_LEAN_MODE

  if Multi_pak == nil then Multi_pak = false end

  local file = "" --the current mbin_file_source string
  local FullPathFile = "" --the filenamepath of the current or new EXML file
  local ActiveFile = nil --the filenamepath of the current EXML file
  local AtLeastOne_EXML_CHANGE_TABLE = false
  local AtLeastOne_MBIN_CHANGE_TABLE = false

  local TextFileTable = {}

  local NumReplacements = 0
  local NumFilesAdded = 0
  local NumREGEXBEFORE = 0
  local NumREGEXAFTER = 0
  local NumXLST = 0
  
  local UserScriptName = LoadFileData("CurrentModScript.txt")
  UserScriptName = string.sub(UserScriptName,string.len(gMASTER_FOLDER_PATH..[[ModScript\]])+1)

  --***************************************************************************************************
  local function ExecuteREGEX(From,Command)
    -- print("")
    local spacer = "      "
    -- if _bOS_bitness == "64" then
      print(spacer..From..": Using 64bit version")
      Report("","  "..From.."  : Using 64bit version")
      os.execute([[sed-4.7-x64.exe ]]..Command)
    -- else
      -- print(spacer..From..": Using 32bit version")
      -- Report("","  "..From.."  : Using 32bit version")
      -- os.execute([[sed-4.7.exe ]]..Command)
    -- end
    print(spacer..From..": "..Command)
    Report("","  "..From.."  : "..Command)
  end
  --***************************************************************************************************

  --***************************************************************************************************
  local function EXMLtoMBIN(s)
    return string.gsub(NormalizePath(s),".EXML",".MBIN")
  end
  --***************************************************************************************************

  local CurrentScriptName = LoadFileData("CurrentModScript.txt")
  -- because string.gsub pattern does not work with all folder names (ex.: ".")
  if string.find(CurrentScriptName,gMASTER_FOLDER_PATH..[[ModScript\]],1,true) ~= nil then
    local start = string.find(CurrentScriptName,gMASTER_FOLDER_PATH..[[ModScript\]],1,true)
    CurrentScriptName = string.sub(CurrentScriptName,1,start - 1)..string.sub(CurrentScriptName,string.len(gMASTER_FOLDER_PATH..[[ModScript\]]) + start)
  end
  CurrentScriptName = "["..CurrentScriptName.."]"
  Report(CurrentScriptName,">>>>>>> Loaded script")

  local prn2 = pv --print
  
  --Add new files
  prn2(" >>> JUST BEFORE ADD_FILES <<<")
  if MOD_DEF["ADD_FILES"] ~= nil and type(MOD_DEF["ADD_FILES"]) == "table" and #MOD_DEF["ADD_FILES"] > 0 then
    -- print("")
    print(_zGREEN..">>> ADDing files:".._zDEFAULT)
    Report("")
    Report("",">>> ADDing files:")

    local WildcardsInUse = false
    
    prn2([[@@@ #MOD_DEF["ADD_FILES"] = ]]..#MOD_DEF["ADD_FILES"])
    for i=1,#MOD_DEF["ADD_FILES"] do
      --absolute path: gNMS_PCBANKS_FOLDER_PATH to NMS pak files folder
      --absolute path: gMASTER_FOLDER_PATH to AMUMSS main folder
      --relative path: gPathToModbuilderMod
      --relative path: gPathToModScriptFromModbuilder
      -- print("")
      -- print("@@@ Processing ADD_FILES["..i.."]")

      local okToProcess = true

      --checking
      local AddFilesST = MOD_DEF["ADD_FILES"][i]
      local EXTFS = ""
      local INTFS = ""
      local FD = ""
      
      if AddFilesST["EXTERNAL_FILE_SOURCE"] ~= nil then
        EXTFS = AddFilesST["EXTERNAL_FILE_SOURCE"]:upper()
      end
      if AddFilesST["INTERNAL_FILE_SOURCE"] ~= nil then
        INTFS = AddFilesST["INTERNAL_FILE_SOURCE"]:upper()
      end
      if AddFilesST["FILE_DESTINATION"] ~= nil then
        FD = AddFilesST["FILE_DESTINATION"]:upper()
      end

      if AddFilesST["COMMENT"] ~= nil and AddFilesST["COMMENT"] ~= "" and type(AddFilesST["COMMENT"]) == "string" then
        print(_zGREEN..[[ >>> Script's ]].._zBLACKonYELLOW..[[Comment]].._zDEFAULT..[[: <<< ]].._zDEFAULT..AddFilesST["COMMENT"].." >>>")
        Report("","[Comment] [["..AddFilesST["COMMENT"].."]]")
      end

      if FD == "" then
        print(_zRED..">>> [WARNING] Unknown FILE_DESTINATION["..i.."]. Please verify your script".._zDEFAULT)
        Report(CurrentScriptName,"Unknown FILE_DESTINATION["..i.."]. Please verify your script","WARNING")
        okToProcess = false
      end

      local INTERNAL_Exist = false
      local EXTERNAL_Exist = false
      local CONTENT_Exist = false

      INTERNAL_Exist = INTFS ~= nil and INTFS ~= ""
      EXTERNAL_Exist = EXTFS ~= nil and EXTFS ~= ""
      CONTENT_Exist = AddFilesST["FILE_CONTENT"] ~= nil --it could be ""

      local TooManyErr = false
      if CONTENT_Exist then
        if INTERNAL_Exist or EXTERNAL_Exist then
          --error: too many
          TooManyErr = true
          okToProcess = false
        end
      elseif INTERNAL_Exist then
        if EXTERNAL_Exist then
          --error: too many
          TooManyErr = true
          okToProcess = false
        end
      elseif not EXTERNAL_Exist then
        --error: all 3 missing
        print(_zRED..">>> [WARNING] ADD_FILES["..i.."]: One of INTERNAL_FILE_SOURCE, EXTERNAL_FILE_SOURCE or FILE_CONTENT must be used. Please verify your script".._zDEFAULT)
        Report(CurrentScriptName,"ADD_FILES["..i.."]: One of INTERNAL_FILE_SOURCE, EXTERNAL_FILE_SOURCE or FILE_CONTENT must be used. Please verify your script","WARNING")
        okToProcess = false
      end

      if TooManyErr then
        print(_zRED..">>> [WARNING] ADD_FILES["..i.."]: ONLY one of INTERNAL_FILE_SOURCE, EXTERNAL_FILE_SOURCE or FILE_CONTENT must be used. Please verify your script".._zDEFAULT)
        Report(CurrentScriptName,"ADD_FILES["..i.."]: ONLY one of INTERNAL_FILE_SOURCE, EXTERNAL_FILE_SOURCE or FILE_CONTENT must be used. Please verify your script","WARNING")
      end
      --End checking

      --#########################################
      if okToProcess then
        local DestNormOrgFilenamePath = NormalizePath(FD)
        prn2("@@@ 1: DestNormOrgFilenamePath = ["..DestNormOrgFilenamePath.."]")

        local newFilenameProvided = false
        local _,count = string.gsub(DestNormOrgFilenamePath,[[%.]],"") --escaping '.'
        prn2("@@@    count '.' = "..count)
        if count == 0 then
          --no extension, assume it is a folder name and that the end '\' is missing
          --add '\'
          DestNormOrgFilenamePath = string.gsub(DestNormOrgFilenamePath..[[\]],[[\\]],[[\]])
          prn2("@@@ 1A: DestNormOrgFilenamePath = ["..DestNormOrgFilenamePath.."]")
        else
          newFilenameProvided = true
        end

        --local DestNormFolderPath = NormalizePath(gMASTER_FOLDER_PATH .. gPathToModbuilderMod .. GetFolderPathFromFilePath(DestNormOrgFilenamePath)) --..[[\]])
        local DestNormFolderPath = NormalizePath(gPathToModbuilderMod .. GetFolderPathFromFilePath(DestNormOrgFilenamePath)) --..[[\]])
        prn2("@@@ 2:      DestNormFolderPath = ["..DestNormFolderPath.."]")
        --local DestNormFilePath = NormalizePath(gMASTER_FOLDER_PATH .. gPathToModbuilderMod .. DestNormOrgFilenamePath)
        local DestNormFilePath = NormalizePath(gPathToModbuilderMod .. DestNormOrgFilenamePath)
        prn2("@@@ 3:        DestNormFilePath = ["..DestNormFilePath.."]")

        local _,count = string.gsub(DestNormOrgFilenamePath,[[\]],"")
        prn2("@@@    count '\\' = "..count)
        if count > 0 then
          if not IsDirExist(string.gsub(DestNormFolderPath,[[\]],[[\\]])) then
            local DestNormFolderPathNoMod = string.gsub(DestNormFolderPath,gPathToModbuilderMod,"")
            if not gIs_LEAN_MODE then
              print("       new folder: " .. DestNormFolderPathNoMod)
            end
            Report("","       new 'folder': "..[["]]..DestNormFolderPathNoMod..[["]])
            DestNormFolderPath = string.gsub(DestNormFolderPath,[[\]],[[\\]])
            mkdir(DestNormFolderPath)
          end
        end

        --*********************
        if INTERNAL_Exist then
          --process INTERNAL:
          --       source = NMS path and filename
          --  destination = where I like in the style of NMS paths and filename!
          --                absolute or relative to ModScript folder
          --                with or without Destination Filename
          local source = NormalizePath(INTFS)
          local pakName = LocateAnyFileInPAK(source)
          if pakName ~= "" then
            --we need to get the file from this NMS pak and send it to DESTINATION
            prn2("@@@ pakName = "..pakName)

            --were to save the extracted file
            local tmpFilePath = [[.\_INTERNAL]]
            mkdir(tmpFilePath)

            -- local cmd = [[psarc.exe extract "]]..gNMS_PCBANKS_FOLDER_PATH..pakName..[[" --to="]]..tmpFilePath..[[" "]]..source..[[" -y 1>NUL 2>NUL]]
            local cmd = [[psarc.exe extract "]]..gNMS_PCBANKS_FOLDER_PATH..pakName..[[" --to="]]..tmpFilePath..[[" "]]..source..[[" -y]]
            prn2("@@@ 5a: cmd = ["..cmd.."]")
            local success,sResult,nResult = NewThread(cmd)
            prn2("@@@ 5b: result = ["..string.format("%s, %s with (%d)",success,sResult,nResult).."]")

            if success then
              --now we copy it to DESTINATION

              --point to MODBUILDER\_INTERNAL
              FilePathSource = tmpFilePath..[[\]]..source

              local newFilename = GetFilenameFromFilePath(DestNormOrgFilenamePath)
              prn2("@@@ 5c: newFilename = ["..newFilename.."]")

              local src = FilePathSource
              local dest = DestNormOrgFilenamePath

              --do we need to add the filename to dest?
              if not newFilenameProvided then
                --no filename given, use current name of the source with the destination path
                local currentFilename = GetFilenameFromFilePath(FilePathSource)
                prn2("@@@ 5e: currentFilename = ["..currentFilename.."]")
                local currentFilenamePath = NormalizePath([[.\MOD\]]..dest..[[\]]..currentFilename)
                if not gIs_LEAN_MODE then
                  print("        create file: "..currentFilenamePath)
                end
                Report("","      create 'file': "..[["]]..currentFilenamePath..[["]])
                dest = currentFilenamePath
              else
                --use destination new path and filename
                local currentFilenamePath = NormalizePath([[.\MOD\]]..dest)
                if not gIs_LEAN_MODE then
                  print("        create file: "..currentFilenamePath)
                end
                Report("","      create 'file': "..[["]]..currentFilenamePath..[["]])
                dest = currentFilenamePath
              end

              prn2("@@@ 5f:  src = ["..src.."]")
              prn2("@@@ 5g: dest = ["..dest.."]")

              os.remove(dest) --so that MoveFileDirectory() can move it
              local success,errmsg = MoveFileDirectory(src,dest)
              if not success then
                print(_zRED..">>> [WARNING] ADD_FILES["..i.."]: Could not copy INTERNAL_FILE_SOURCE to DESTINATION. Please verify your script".._zDEFAULT)
                Report(CurrentScriptName,"ADD_FILES["..i.."]: Could not copy INTERNAL_FILE_SOURCE to DESTINATION. Please verify your script","WARNING")
              end

              NumFilesAdded = NumFilesAdded + 1
            else
              print(_zRED..">>> [WARNING] Cannot extract file ".._zDEFAULT..source)
              Report("","Cannot extract file "..source,"WARNING")
            end

            --remove temp folder
            DeleteDir(tmpFilePath)

          else
            print(_zRED..">>> [WARNING] ADD_FILES["..i.."]: Cannot find INTERNAL_FILE_SOURCE in NMS paks. Please verify your script".._zDEFAULT)
            Report(CurrentScriptName,"ADD_FILES["..i.."]: Cannot find INTERNAL_FILE_SOURCE in NMS paks. Please verify your script","WARNING")
          end

        --*********************
        elseif CONTENT_Exist then
          --process FILE_CONTENT:
          --       source = FILE_CONTENT
          --  destination = a NMS path in MODBUILDER\MOD folder
          --                a Destination Filename is REQUIRED
          if not newFilenameProvided then
            print(_zRED..">>> [WARNING] ADD_FILES["..i.."]: Missing DESTINATION filename, required with FILE_CONTENT. Please verify your script".._zDEFAULT)
            Report(CurrentScriptName,"ADD_FILES["..i.."]: Missing DESTINATION filename, required with FILE_CONTENT. Please verify your script","WARNING")
          else
            if not gIs_LEAN_MODE then
              print("      create file: "..DestNormOrgFilenamePath)
            end
            Report("","      create 'file': "..[["]]..DestNormOrgFilenamePath..[["]])
            DestNormFilePath = string.gsub(DestNormFilePath,[[\]],[[\\]])
            local FileData = AddFilesST["FILE_CONTENT"]
            --WriteToFile(string.gsub(FileData,"\n","",1), DestNormFilePath) --to remove the first \n
            WriteToFile(FileData, DestNormFilePath)
            NumFilesAdded = NumFilesAdded + 1
          end

        --*********************
        elseif EXTERNAL_Exist then
          --process EXTERNAL:
          --       source = where it is(absolute or relative to ModScript folder)
          --  destination = a NMS path in MODBUILDER\MOD folder
          --                with or without Destination Filename

          local FilePathSource = ""
          if string.sub(EXTFS,2,2) == ":" then
            --we have a complete path
            FilePathSource = EXTFS
          else
            --path is relative to ModScript folder
            FilePathSource = GetFolderPathFromFilePath(LoadFileData("CurrentModScript.txt"))..[[\]]..EXTFS
          end

          WildcardsInUse = WildcardsInUse or IsWildcardsExist(FilePathSource)

          FilePathSource = NormalizePath(FilePathSource)
          prn2("@@@ 4: FilePathSource = ["..FilePathSource.."]")

          if IsFileExist(FilePathSource) then
            local newFilename = GetFilenameFromFilePath(DestNormOrgFilenamePath)
            prn2("@@@ 4a: newFilename = ["..newFilename.."]")

            if not newFilenameProvided then
              --no filename given, use current name
              local currentFilename = GetFilenameFromFilePath(FilePathSource)
              prn2("@@@ 4b: currentFilename = ["..currentFilename.."]")
              prn2("@@@ 4c: DestNormFolderPath\\currentFilename = ["..DestNormFolderPath..[[\]]..currentFilename.."]")
              local currentFilenamePath = NormalizePath(DestNormFolderPath..[[\]]..currentFilename)
              if not gIs_LEAN_MODE then
                print("        create file: "..currentFilenamePath)
              end
              Report("","      create 'file': "..[["]]..currentFilenamePath..[["]])
              -- local cmd = [[xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..DestNormFolderPath..[[*"]]
              -- local success,sResult,nResult = NewThread(cmd)
              local success,sResult,nResult = CopyFile(FilePathSource,DestNormFolderPath,[[/y /h /v /i /r /q]],false)
              prn2("@@@ 4d: result = ["..string.format("success = %s, %s with (%d)",success,sResult,nResult).."]")
              if success == nil then
                print(_zRED..">>> [WARNING] Could not copy file(s)".._zDEFAULT)
                Report("","Could not copy file(s)","WARNING")
                NumFilesAdded = NumFilesAdded -1
              end
            else
              --use destination new filename
              local newFilenamePath = string.gsub(DestNormFolderPath..[[\]]..newFilename,[[\\]],[[\]])
              prn2("@@@ 4e: newFilenamePath = ["..newFilenamePath.."]")
              if not gIs_LEAN_MODE then
                print("        create file: "..newFilenamePath)
              end
              Report("","      create 'file': "..[["]]..newFilenamePath..[["]])
              -- local cmd = [[xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..newFilenamePath..[[*"]]
              -- local success,sResult,nResult = NewThread(cmd)
              local success,sResult,nResult = CopyFile(FilePathSource,newFilenamePath..[[*]],[[/y /h /v /i /r /q]],false)
              prn2("@@@ 4e: result = ["..string.format("success = %s, %s with (%d)",success,sResult,nResult).."]")
              if success == nil then
                print(_zRED..">>> [WARNING] Could not any copy file".._zDEFAULT)
                Report("","Could not copy any file","WARNING")
                NumFilesAdded = NumFilesAdded -1
              end
            end
            NumFilesAdded = NumFilesAdded + 1

          else
            print(_zRED..">>> [WARNING] Cannot find file or path ".._zDEFAULT..FilePathSource)
            Report("","Cannot find file or path "..FilePathSource,"WARNING")
          end
        end
      end --okToProcess
    end --for i=1,#MOD_DEF["ADD_FILES"] do

    if WildcardsInUse then
      print("\n    >>>>> Ended with "..NumFilesAdded .. " files/groups of files ADDed <<<<<\n")
      Report("","\n    >>>>> Ended with "..NumFilesAdded .. " files/groups of files ADDed <<<<<\n")
    else
      print("\n    >>>>> Ended with "..NumFilesAdded .. " files ADDed <<<<<\n")
      Report("","\n    >>>>> Ended with "..NumFilesAdded .. " files ADDed <<<<<\n")
    end
  else
    if MOD_DEF["ADD_FILES"] ~= nil then
      if type(MOD_DEF["ADD_FILES"]) ~= "table" then
        print(_zRED.."    [WARNING] ADD_FILES not a table. Check script...".._zDEFAULT)
        Report("","ADD_FILES is not a table. Check script...","WARNING")
      else
        print(_zRED.."    [INFO] ADD_FILES table is empty.".._zDEFAULT)
        Report("","ADD_FILES table is empty.","INFO")
      end
    end
  end
  
  prn2(">>> JUST BEFORE MODIFICATIONS <<<")
  if MOD_DEF["MODIFICATIONS"] ~= nil then
    for n=1,#MOD_DEF["MODIFICATIONS"] do
      local iEXML_CT_IsNil = false
      local iEXML_CT_IsString = false
      
      local nMOD = MOD_DEF["MODIFICATIONS"][n]
      
      -- alias
      if nMOD["MBIN_CT"] ~= nil then
        nMOD["MBIN_CHANGE_TABLE"] = nMOD["MBIN_CT"]
      end

      if nMOD["MBIN_CHANGE_TABLE"] ~= nil then
        pv([[==> type(nMOD["MBIN_CHANGE_TABLE"]) = ]]..type(nMOD["MBIN_CHANGE_TABLE"]))
        pv([[==> #nMOD["MBIN_CHANGE_TABLE"] = ]]..#nMOD["MBIN_CHANGE_TABLE"])

        local RemoveFlagOFF = true
        for m=1,#nMOD["MBIN_CHANGE_TABLE"] do
          if WDEBUG then WaitForAnyKey("============>>>>>> Just entering pre-processing mbin_change_table["..m.."], press key...") end
          local mMBIN_CT = nMOD["MBIN_CHANGE_TABLE"][m]
          
          -- alias
          if mMBIN_CT["MBIN_FS"] ~= nil then
            mMBIN_CT["MBIN_FILE_SOURCE"] = mMBIN_CT["MBIN_FS"]
          end
          if mMBIN_CT["EXML_CT"] ~= nil then
            mMBIN_CT["EXML_CHANGE_TABLE"] = mMBIN_CT["EXML_CT"]
          end
          
          AtLeastOne_MBIN_CHANGE_TABLE = true

          local NEW_FILEPATH_AND_NAME = {}
          local REMOVE_FLAG = {}
          local mbin_file_source = mMBIN_CT["MBIN_FILE_SOURCE"]

          --=================== Test which mbin_file_source alt syntax is used ========================
          local syntax = 0
          if type(mbin_file_source) ~= "table" then
            --alternate syntax #1
            syntax = 1
            pv("alt syntax #1: only a string.  Make it a table, we want a table!")
            mbin_file_source = {}
            mbin_file_source[1] = EXMLtoMBIN(mMBIN_CT["MBIN_FILE_SOURCE"])
            NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = ""
            REMOVE_FLAG[#REMOVE_FLAG+1] = ""

            --for Conflicts
            if mbin_file_source[1] == nil then mbin_file_source[1] = "" end
            pv("#1 [a String] "..mbin_file_source[1]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
            WriteToFileAppend(mbin_file_source[1]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")

          else
            local tempTable = {}
            local tempConflicts = {}
            for i=1,#mbin_file_source do
              if type(mbin_file_source[i]) == "table" then
                --alternate syntax #3
                syntax = 3
                --handle MBIN_FILE_SOURCE as a table of tables
                pv("alt syntax #3: Convert mbin_file_source to a simple table")
                tempTable[#tempTable+1] = EXMLtoMBIN(mbin_file_source[i][1])

                --and save info for NEW_FILEPATH_AND_NAME
                NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = EXMLtoMBIN(mbin_file_source[i][2])
                if mbin_file_source[i][3] == nil then
                  REMOVE_FLAG[#REMOVE_FLAG+1] = ""
                else
                  REMOVE_FLAG[#REMOVE_FLAG+1] = string.upper(mbin_file_source[i][3])
                end

                --for Conflicts
                if REMOVE_FLAG[#REMOVE_FLAG] == "" then
                  pv("#3.1: Adding to tempConflicts "..EXMLtoMBIN(mbin_file_source[i][1]))
                  tempConflicts[#tempConflicts+1] = EXMLtoMBIN(mbin_file_source[i][1])
                else
                  pv("["..REMOVE_FLAG[#REMOVE_FLAG].."]")
                  --let us remove any sign of mbin_file_source[i][1] in tempConflicts
                  for tC=#tempConflicts,-1 do
                    if tempConflicts[tC] == EXMLtoMBIN(mbin_file_source[i][1]) then
                      table.remove(tempConflicts,tC)
                    end
                  end
                end
                pv("#3.2 [T of T] "..EXMLtoMBIN(mbin_file_source[i][2])..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
                WriteToFileAppend(EXMLtoMBIN(mbin_file_source[i][2])..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")

              else
                --alternate syntax #2
                syntax = 2
                pv("alt syntax #2: Handle MBIN_FILE_SOURCE as a table only")
                tempTable[#tempTable+1] = EXMLtoMBIN(mbin_file_source[i])
                NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = ""
                REMOVE_FLAG[#REMOVE_FLAG+1] = ""

                --for Conflicts
                pv("#2 [T of String(s)] "..EXMLtoMBIN(mbin_file_source[i])..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
                WriteToFileAppend(EXMLtoMBIN(mbin_file_source[i])..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
              end
            end

            --if some were left, record them
            pv("#tempConflicts = "..#tempConflicts)
            for tC=1,#tempConflicts do
              pv("#3.1 [T of T] "..tempConflicts[tC]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
              WriteToFileAppend(tempConflicts[tC]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
            end

            mbin_file_source = tempTable
          end
          --=================== end: Test which mbin_file_source alt syntax is used ========================
          
          if WDEBUG then print("*** syntax = "..syntax) end
          if #mbin_file_source == 0 then
            print(_zRED..">>> [WARNING] No MBIN source file specified for MBIN_CHANGE_TABLE["..m.."]! Check script...".._zDEFAULT)
            Report("","No MBIN source file specified for MBIN_CHANGE_TABLE["..m.."]! Check script...","WARNING")
          end

          local OkToSkipOpeningFile = false
          
          -- print("*** lfs.currentdir() = ["..lfs.currentdir().."]")
          for u=1,#mbin_file_source do
            if WDEBUG then WaitForAnyKey("\n===========>>>>>> Just entering loop processing mbin_file_source["..u.."], press key...") end
            --change MBIN.PC/MBIN to EXML
            file = string.gsub(mbin_file_source[u],[[%.MBIN%.PC]],[[.MBIN]])
            file = string.gsub(file,[[%.MBIN]],[[.EXML]])
            file = NormalizePath(file)
            if WDEBUG then print("***             file = ["..file.."]") end

            FullPathFile = gPathToModbuilderMod..file
            if WDEBUG then print("***     FullPathFile = ["..FullPathFile.."]") end
            print("--------------------------------------------------------------------------------------")
            print("\n".._zRED..">>> " .. file.._zDEFAULT)

            if mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
              Report("","{>>> " .. file)
            else
              Report("",">>> " .. file)
            end

            --MBINCompiler handles:
            --    *.MBIN -> *.EXML -> *.MBIN
            --    *.GEOMETRY.MBIN.PC -> *.GEOMETRY.EXML -> *.GEOMETRY.MBIN.PC
            --    *.GEOMETRY.DATA.MBIN.PC -> *.GEOMETRY.DATA.EXML -> *.GEOMETRY.DATA.MBIN.PC

            if #NEW_FILEPATH_AND_NAME > 0 and NEW_FILEPATH_AND_NAME[u] ~= nil and NEW_FILEPATH_AND_NAME[u] ~= "" then
              --result of alternate syntax #3 use
              --user asked to create a new file
              --try to change all / to \
              NEW_FILEPATH_AND_NAME[u] = NormalizePath(NEW_FILEPATH_AND_NAME[u])
              -- print("")
              print("    => Copying/renaming this file to ["..NEW_FILEPATH_AND_NAME[u].."]")
              Report("","=> Copying/renaming this file to ["..NEW_FILEPATH_AND_NAME[u].."]")
              --change MBIN.PC/MBIN to EXML
              NEW_FILEPATH_AND_NAME[u] = string.gsub(NEW_FILEPATH_AND_NAME[u],[[%.MBIN%.PC]],[[.MBIN]])
              NEW_FILEPATH_AND_NAME[u] = string.gsub(NEW_FILEPATH_AND_NAME[u],[[%.MBIN]],[[.EXML]])

              local FilePathSource = [[.\MOD\]]..file

              if IsFileExist(FilePathSource) then
                local FilePathDestination = [[.\MOD\]]..NEW_FILEPATH_AND_NAME[u]
                -- print("***      FilePathSource = ["..FilePathSource.."]")
                -- print("*** FilePathDestination = ["..FilePathDestination.."]")
                if WDEBUG then WaitForAnyKey("Just before copying original to new file, press key...") end
                --xcopy original file to its new folder in MOD with new name
                CopyFile(FilePathSource,FilePathDestination..[[*]],[[/y /h /v /i]])
                if WDEBUG then WaitForAnyKey("Just after copying original to new file, press key...") end

                if REMOVE_FLAG[u] == "REMOVE" then
                  -- print("*** detected REMOVE flag")
                  RemoveFlagOFF = false
                  --delete original file from its folder
                  print("    => Removing this file ["..FilePathSource.."]")
                  Report("","=> Removing this file")

                  if IsFileExist(FilePathSource) then
                    DeleteFile(FilePathSource)
                    -- print("*** after deleting")
                    if WDEBUG then WaitForAnyKey("Just after deleting original file, press key...") end

                    repeat
                      sleep(1)
                    until not IsFileExist(FilePathSource)
                    -- print("*** after WAITING for deleted")
                    if WDEBUG then WaitForAnyKey("Just after checking that original file is deleted, press key...") end
                  end

                  --os.remove([[.\]]..FilePathSource)
                  --remove original empty folder(s), if any
                  local FolderPath = lfs.currentdir()..[[\MOD\]]..GetFolderPathFromFilePath(file)
                  -- print("*** FolderPath = ["..FolderPath.."]")
                  repeat
                    --to remove all empty folders in the path
                    local cmd = [[rd /q "]]..FolderPath..[[" 1>NUL 2>NUL]]
                    NewThread(cmd)
                    FolderPath = GetFolderPathFromFilePath(FolderPath)
                    -- print("["..FolderPath.."]")
                  until FolderPath == ""
                  -- print("*** after deleting empty folders")
                else
                  -- print("*** NO REMOVE")
                end
              else
                print(_zRED.."    => This file does not exist anymore, did you already REMOVE it!".._zDEFAULT)
                Report("","=> This file does not exist anymore, did you already REMOVE it! ")
              end
            end -- if #NEW_FILEPATH_AND_NAME > 0 and NEW_FILEPATH_AND_NAME[u] ~= nil and NEW_FILEPATH_AND_NAME[u] ~= "" then

            --=================== REGEXBEFORE ========================
            --we have to do this BEFORE opening FullPathFile
            if mMBIN_CT["REGEXBEFORE"] ~= nil then
              local regexbefore = mMBIN_CT["REGEXBEFORE"]
              if type(regexbefore) ~= "table" then
                print("")
                print(_zRED..">>> [ERROR] REGEXBEFORE is not a table, please correct your script".._zDEFAULT)
                Report("","REGEXBEFORE is not a table, please correct your script","ERROR")
              end
              for i=1,#regexbefore do
                local ToFindRegex = string.gsub(regexbefore[i][1],[[\\]],[[\]])
                ToFindRegex = string.gsub(ToFindRegex,[["]],[[\"]])
                local ToReplaceRegex = string.gsub(regexbefore[i][2],[[\\]],[[\]])
                ToReplaceRegex = string.gsub(ToReplaceRegex,[["]],[[\"]])
                if ToFindRegex == nil or ToReplaceRegex == nil then
                  print("")
                  print(_zRED..">>> [ERROR] missing REGEXBEFORE member, please correct your script".._zDEFAULT)
                  Report("","missing REGEXBEFORE member, please correct your script","ERROR")
                else
                  if ToFindRegex ~= "" then
                    print("")
                    local From = "REGEXBEFORE"
                    local Command = [[-i -r "s/]]..ToFindRegex..[[/]]..ToReplaceRegex..[[/" "]]..FullPathFile..[["]]
                    --for debug purposes
                    -- Command = string.sub(Command,4)..[[ > "]]..From..[[_output.txt"]]
                    ExecuteREGEX(From,Command)
                    NumREGEXBEFORE = NumREGEXBEFORE + 1
                    print("")
                  end
                end
              end
            end
            --=================== end REGEXBEFORE ========================

            --=================== XLST ========================
            if mMBIN_CT["XLST"] ~= nil then
              local xlst = mMBIN_CT["XLST"]
              local tempXslFileName = os.tmpname()
              local tempXslFile = io.open(tempXslFileName, "w")
              tempXslFile:write(xlst)
              io.close(tempXslFile)
              os.execute([[powershell.exe .\transform-xml.ps1 ]]..tempXslFileName..[[ ]]..FullPathFile)
              os.remove(tempXslFileName)
              NumXLST = NumXLST + 1
            end
            --=================== end XLST ========================

            if REMOVE_FLAG[u] ~= "REMOVE" then
              if WDEBUG then WaitForAnyKey("Because NO REMOVE_FLAG, press key...") end
              
              if ActiveFile ~= FullPathFile then
                
                -- is this needed?  Maybe when no changes are directly done to a file
                if ActiveFile ~= nil and ActiveFile ~= "" then
                  if WDEBUG then WaitForAnyKey("A: <<< STILL INSIDE MBIN_FS LOOP >>> Just before saving changes to 'ActiveFile' ["..ActiveFile.."], press key...") end
                  WriteToFile(ConvertLineTableToText(TextFileTable), ActiveFile)
                end

                -- print([[mMBIN_CT["EXML_CHANGE_TABLE"] = []]..tostring(mMBIN_CT["EXML_CHANGE_TABLE"]).."]")
                if mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
                  print("     *** Opening file: ["..FullPathFile:gsub(gPathToModbuilderMod,"").."]")
                  if WDEBUG then WaitForAnyKey("Just before opening ["..FullPathFile.."], press key...") end
                  TextFileTable = ParseTextFileIntoTable(FullPathFile) --the EXML file in MODBUILDER\MOD
                  ActiveFile = FullPathFile
                else
                  if WDEBUG then WaitForAnyKey("No EXML_CT: reset 'ActiveFile' and 'TextFileTable', press key...") end
                  TextFileTable = {}
                  ActiveFile = nil
                  OkToSkipOpeningFile = true
                end
              else
                --wait for saving it
                print("     *** File already opened...")
              end
            else
              if WDEBUG then WaitForAnyKey("Because REMOVE_FLAG: reset 'ActiveFile' and 'TextFileTable', press key...") end
              TextFileTable = {}
              ActiveFile = nil
            end
            
            -- print("*** #TextFileTable = ["..#TextFileTable.."]")
            if WDEBUG then WaitForAnyKey("Just before ERROR file does not exist, press key...") end
            
            if #TextFileTable == 0 and mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
              if not OkToSkipOpeningFile and REMOVE_FLAG[u] ~= "REMOVE" then
                -- print("*** NO REMOVE")
                --this file does not exist, problem
                print(_zRED..">>> [ERROR] file does not exist! See above for source...".._zDEFAULT)
                Report("","file does not exist! See above for source...","ERROR")
              end
              
            else -- #TextFileTable == 0 and mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then

             -- print("*** going to process...")
              if WDEBUG then WaitForAnyKey("Just before MapFileTrees, press key...") end
              --=================== create MapFileTrees of original EXML only... ========================
              if _bReCreateMapFileTree ~= "X" then
                local src = [[.\_TEMP\DECOMPILED\]]..file
                if IsFileExist(src) then
                  if _bCreateMapFileTree ~= nil then
                    if _bAllowMapFileTreeCreator == "Y" then
                      print("     MapFileTree creation/update on 2nd thread...")
                      Report("","    MapFileTree creation/update done by 2nd thread")

                      --copied automatically to [[.\_TEMP_MAP\]]..file by GetFreshSources.bat

                      local Recreate = ""
                      if _bReCreateMapFileTree == "Y" then
                        --inform we need to recreate
                        Recreate = ".recreate"
                      end

                      if IsFileExist([[MapFileTreeSharedList.txt]]) then
                        WriteToFileAppend(file..Recreate.."\n",[[MapFileTreeSharedList.txt]])
                      else
                        WriteToFile(file..Recreate.."\n",[[MapFileTreeSharedList.txt]])
                      end

                    else
                      --MAIN thread processing
                      DisplayMapFileTreeEXT(ParseTextFileIntoTable([[.\_TEMP\DECOMPILED\]]..file),file)
                    end

                  else
                    print("    Skipping MapFileTree creation/update")
                    Report("","    Skipping MapFileTree creation/update")
                  end

                else
                  print("    Skipping MapFileTree creation/update, comes from a PAK")
                  Report("","    Skipping MapFileTree creation/update, comes from a PAK")
                end
              else
                print("    Skipping, USER asked to NEVER create/update MapFileTree files")
                Report("","    Skipping, USER asked to NEVER create/update MapFileTree files")
              end
              --=================== end create MapFileTrees ========================
              if WDEBUG then WaitForAnyKey("Just after MapFileTrees, press key...") end

              local ReplaceNumber = 0
              local ADDNumber = 0
              local REMOVENumber = 0

              if gIs_LEAN_MODE then
                print("")
                print("    ".._zGREEN.."processing using LEAN mode".._zDEFAULT)
              end
              
              if mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
                AtLeastOne_EXML_CHANGE_TABLE = true
                MissingCurlyBracketsWarning = false
                if type(mMBIN_CT["EXML_CHANGE_TABLE"][1]) ~= "table" then
                  MissingCurlyBracketsWarning = true
                end

                local EXML_CHANGE_TABLE = mMBIN_CT["EXML_CHANGE_TABLE"]

                -- print(";;; EXML_CHANGE_TABLE "..n..", "..m)
                -- for k,v in pairs(EXML_CHANGE_TABLE) do
                  -- print(k,type(v))
                -- end
                -- print(";;;")

                if EXML_CHANGE_TABLE ~= nil then
                  if type(EXML_CHANGE_TABLE) == "string" then
                    print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE entry is a STRING, verify your script]].._zDEFAULT)
                    Report("",[[>>> EXML_CHANGE_TABLE entry is a STRING, verify your script]],"WARNING")
                    iEXML_CT_IsString = true
                    break
                  else
                    if type(EXML_CHANGE_TABLE) ~= "table" then
                      -- print("EXML_CHANGE_TABLE = "..type(EXML_CHANGE_TABLE))
                      print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE entry is not a TABLE of TABLES, verify your script]].._zDEFAULT)
                      Report("",[[>>> EXML_CHANGE_TABLE entry is not a TABLE of TABLES, verify your script]],"WARNING")
                      break
                    else
                      if #EXML_CHANGE_TABLE == 0 then
                        print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE table does not contain any TABLE, verify your script]].._zDEFAULT)
                        Report("",[[>>> EXML_CHANGE_TABLE table does not contain any TABLE, verify your script]],"WARNING")
                      end
                    end
                  end

                end

                local ECT_Index = 0
                for i=1,#EXML_CHANGE_TABLE do
                  -- print("In EXML_CHANGE_TABLE for loop #"..i)

                  local iEXML_CT = EXML_CHANGE_TABLE[i]

                  --allow alias names
                  if iEXML_CT["ITF"] ~= nil then
                    iEXML_CT["INTEGER_TO_FLOAT"] = iEXML_CT["ITF"]
                  end
                  if iEXML_CT["FSKWG"] ~= nil then
                    iEXML_CT["FOREACH_SKW_GROUP"] = iEXML_CT["FSKWG"]
                  end
                  if iEXML_CT["MATH_OP"] ~= nil then
                    iEXML_CT["MATH_OPERATION"] = iEXML_CT["MATH_OP"]
                  end
                  if iEXML_CT["PKW"] ~= nil then
                    iEXML_CT["PRECEDING_KEY_WORDS"] = iEXML_CT["PKW"]
                  end
                  if iEXML_CT["SKW"] ~= nil then
                    iEXML_CT["SPECIAL_KEY_WORDS"] = iEXML_CT["SKW"]
                  end
                  if iEXML_CT["VCT"] ~= nil then
                    iEXML_CT["VALUE_CHANGE_TABLE"] = iEXML_CT["VCT"]
                  end
                  if iEXML_CT["WIS"] ~= nil then
                    iEXML_CT["WHERE_IN_SECTION"] = iEXML_CT["WIS"]
                  end
                  if iEXML_CT["WISS"] ~= nil then
                    iEXML_CT["WHERE_IN_SUBSECTION"] = iEXML_CT["WISS"]
                  end
                  --END: allow alias names

                  --these were renamed
                  if iEXML_CT["ADD_NAMED_SECTION"] ~= nil then
                    iEXML_CT["SECTION_ADD_NAMED"] = iEXML_CT["ADD_NAMED_SECTION"]
                  end
                  if iEXML_CT["EDIT_SECTION"] ~= nil then
                    iEXML_CT["SECTION_EDIT"] = iEXML_CT["EDIT_SECTION"]
                  end
                  if iEXML_CT["KEEP_SECTION"] ~= nil then
                    iEXML_CT["SECTION_KEEP"] = iEXML_CT["KEEP_SECTION"]
                  end
                  if iEXML_CT["SAVE_SECTION_TO"] ~= nil then
                    iEXML_CT["SECTION_SAVE_TO"] = iEXML_CT["SAVE_SECTION_TO"]
                  end
                  if iEXML_CT["WI_SEC_LOP"] ~= nil then
                    iEXML_CT["WISEC_LOP"] = iEXML_CT["WI_SEC_LOP"]
                  end
                  if iEXML_CT["WISUB_SEC_LOP"] ~= nil then
                    iEXML_CT["WISUBSEC_LOP"] = iEXML_CT["WISUB_SEC_LOP"]
                  end
                  if iEXML_CT["WISUB_SEC_OPTION"] ~= nil then
                    iEXML_CT["WISUBSEC_OPTION"] = iEXML_CT["WISUB_SEC_OPTION"]
                  end
                  --END: these were renamed

                  iEXML_CT_IsTableOfTables = true
                  if iEXML_CT == nil then
                    print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE entry is NIL, verify your script]].._zDEFAULT)
                    Report("",[[>>> EXML_CHANGE_TABLE entry is NIL, verify your script]],"WARNING")
                    iEXML_CT_IsNil = true
                    break
                  else

                    -- print(";;; EXML_CHANGE_TABLE "..n..", "..m..", "..i)
                    -- for k,v in pairs(iEXML_CT) do
                      -- print(k,type(v))
                    -- end
                    -- print(";;;")

                    -- print("iEXML_CT = "..type(iEXML_CT))
                    if type(iEXML_CT) ~= "table" then
                      print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE entry is not a correct TABLE of TABLES, verify your script]].._zDEFAULT)
                      Report("",[[>>> EXML_CHANGE_TABLE entry is not a correct TABLE of TABLES, verify your script]],"WARNING")
                      iEXML_CT_IsTableOfTables = false
                    else
                      pv(" ==> type(iEXML_CT) = "..type(iEXML_CT))
                      pv(" ==> #iEXML_CT = "..#iEXML_CT)
                    end
                  end

  -- *****************   section_edit section   ********************
  local section_edit = ReturnStringFrom(iEXML_CT["SECTION_EDIT"])
  local IsEditSection = (section_edit ~= "")
  if section_edit ~= "" and tonumber(section_edit) ~= nil then
    print(_zRED..[[>>> [WARNING] SECTION_EDIT is not a valid STRING, it won't be used!]].._zDEFAULT)
    Report(section_edit,[[>>> SECTION_EDIT is not a valid STRING, it won't be used!]],"WARNING")
    section_edit = ""
  end

  local foundEditSection = false
  local tmpFileText = ""
  if IsEditSection then
    --check if this section name already exist in internal gUseSectionName list
    local SectionAlreadyExist = false
    for m=1,#gUseSectionName do
      if gUseSectionName[m] == section_edit then
        --already in gUseSectionName, nothing more to do right now, we will use it
        DEBUG_SECTION_print("@@@@@ A: In section_edit: Found section_edit in internal gUseSectionName list")
        SectionAlreadyExist = true
        foundEditSection = true
        tmpFileText = gUseSectionContent[m]
        break
      end
    end

    if not SectionAlreadyExist then
      --check if it is in the internal gSaveSectionName list
      for m=1,#gSaveSectionName do
        if gSaveSectionName[m] == section_edit then
          --was saved internally, retrieve the section name/content
          DEBUG_SECTION_print("@@@@@ A: In section_edit: Found section_edit in the internal SECTION_SAVE_TO list")
          --add it to gUse...
          gUseSectionName[#gUseSectionName+1] = section_edit
          gUseSectionContent[#gUseSectionContent+1] = gSaveSectionContent[m]
          -- print("A: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
          foundEditSection = true
          tmpFileText = gUseSectionContent[#gUseSectionContent]
          break
        end
      end

      if not foundEditSection then
        --try to read back the lines from a file in the SavedSections folder using the section_edit name.xml
        if IsFileExist([[..\SavedSections\]]..section_edit..[[.xml]]) then
          DEBUG_SECTION_print("@@@@@ A: In section_edit: Found section_edit in a file in the SavedSections folder using the SECTION_EDIT name.xml")
          gUseSectionName[#gUseSectionName+1] = section_edit
          gUseSectionContent[#gUseSectionContent+1] = LoadFileData([[..\..\SavedSections\]]..section_edit..[[.xml]])
          -- print("B: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
          foundEditSection = true
          tmpFileText = gUseSectionContent[#gUseSectionContent]
        else
          --no such named section exist internally or externally: WARNING
          DEBUG_SECTION_print("@@@@@ A: In section_edit: DID NOT find specified SECTION_EDIT: BAD NAME?")
          
          --create an entry with that name and with empty content
          gUseSectionName[#gUseSectionName+1] = section_edit
          gUseSectionContent[#gUseSectionContent+1] = ""
          -- print("C: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
       end
      end
    end
  end
  
  if IsEditSection then
    if foundEditSection then
      ActiveFile = section_edit
      -- load it as if an EXML
      TextFileTable = tmpFileText:split("\n")
      DEBUG_SECTION_print("@@@@@ A: In section_edit: ActiveFile = ["..ActiveFile.."]")
      DEBUG_SECTION_print("@@@@@ A: In section_edit: #TextFileTable = ["..#TextFileTable.."]")
    else
      --even it it was requested, we are not able to edit this named section
      IsEditSection = false
      print(_zRED..[[>>> [WARNING] SECTION_EDIT "]]..section_edit..[[" is not a valid user_name_of_section STRING, it won't be used!]].._zDEFAULT)
      Report(section_add_named,[[>>> SECTION_EDIT "]]..section_edit..[[" is not a valid user_name_of_section STRING, it won't be used!]],"WARNING")
      ActiveFile = ""
      TextFileTable = {}
    end
  end
  
  -- *****************  END: section_edit section   ********************
                  GUARD = "Wbertro"
                  if iEXML_CT["FOREACH_SKW_GROUP"] ~= nil then
                    -- -- *****************   foreach_SKWG section   ********************
                    local foreach_SKWG = iEXML_CT["FOREACH_SKW_GROUP"]

                    local foreach_SKWGBadTable = false

                    if type(foreach_SKWG) ~= "table" then
                      foreach_SKWGBadTable = true
                    else --a table
                      if #foreach_SKWG == 0 then
                        --foreach_SKWG should be at least ONE table
                        foreach_SKWGBadTable = true
                      else --some tables
                        for i=1,#foreach_SKWG do
                          if type(foreach_SKWG[i]) ~= "table" then
                            foreach_SKWGBadTable = true
                            break
                          end
                        end
                      end
                    end

                    if foreach_SKWGBadTable then
                      print("")
                      print(_zRED..[[>>> [WARNING] FOREACH_SKW_GROUP is NOT a correct table with sub-tables"]].._zDEFAULT)
                      Report("",[[>>> FOREACH_SKW_GROUP is NOT a correct table with sub-tables]],"WARNING")
                    end

                    -- if IsSpecialKeyWords and IsForeach_SKW then
                      -- print("")
                      -- print(_zRED..[[>>> [NOTICE] FOREACH_SKW_GROUP and SPECIAL_KEY_WORDS are found, only SPECIAL_KEY_WORDS will be used"]].._zDEFAULT)
                      -- Report("",[[>>> FOREACH_SKW_GROUP and SPECIAL_KEY_WORDS are found, only SPECIAL_KEY_WORDS will be used]],"NOTICE")
                      -- IsForeach_SKW = false
                      -- -- foreach_SKW_words = {}
                    -- end

                    if not foreach_SKWGBadTable then
                      --folding foreach_SKW into spec_key_words
                      pv("#foreach_SKWG = "..#foreach_SKWG)
                      for i=1,#foreach_SKWG do
                        ECT_Index = i
                        DEBUG_VCTproperty_print("     ===>> before ExchangePropertyValue(): #TextFileTable = "..#TextFileTable)
                        moddedFileTable,ReplNumber,ADDcount,REMOVEcount = ExchangePropertyValue(
                              n,
                              m,
                              u,
                              ECT_Index,
                              FullPathFile,
                              TextFileTable,
                              iEXML_CT["VALUE_CHANGE_TABLE"],
                              foreach_SKWG[i],
                              iEXML_CT["PRECEDING_KEY_WORDS"],
                              iEXML_CT["PRECEDING_FIRST"],
                              iEXML_CT["FIND_ALL_SECTIONS"],
                              iEXML_CT["SECTION_UP"],
                              iEXML_CT["SECTION_UP_SPECIAL"],
                              iEXML_CT["SECTION_UP_PRECEDING"],
                              iEXML_CT["SECTION_ACTIVE"],
                              iEXML_CT["WHERE_IN_SECTION"],
                              iEXML_CT["WISEC_LOP"],
                              iEXML_CT["WHERE_IN_SUBSECTION"],
                              iEXML_CT["WISUBSEC_LOP"],
                              iEXML_CT["WISUBSEC_OPTION"],
                              iEXML_CT["SECTION_SAVE_TO"],
                              iEXML_CT["SECTION_KEEP"],
                              iEXML_CT["SECTION_ADD_NAMED"],
                              section_edit,
                              IsEditSection,
                              iEXML_CT["SECTION_UPDATE"],
                              iEXML_CT["MATH_OPERATION"],
                              iEXML_CT["INTEGER_TO_FLOAT"],
                              global_integer_to_float,
                              iEXML_CT["VALUE_MATCH"],
                              iEXML_CT["REPLACE_TYPE"],
                              iEXML_CT["VALUE_MATCH_TYPE"],
                              iEXML_CT["VALUE_MATCH_OPTIONS"],
                              iEXML_CT["NOTICE_OFF"],
                              iEXML_CT["LINE_OFFSET"],
                              iEXML_CT["ADD_OPTION"],
                              iEXML_CT["ADD"],
                              iEXML_CT["REMOVE"],
                              iEXML_CT["COMMENT"],
                              iEXML_CT_IsTableOfTables,
                              MissingCurlyBracketsWarning,
                              true,
                              GUARD
                            )
                        DEBUG_VCTproperty_print("     ===>>A) after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable)
                        if WDEBUG then print("     ===>> after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable) end
                        TextFileTable = moddedFileTable --update TextFileTable for next iteration
                        
                        -- if file was discarded
                        if #TextFileTable == 0 then
                          ActiveFile = nil
                        end
                        DEBUG_VCTproperty_print("     ===>>B) after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable)
                        
                        ReplaceNumber = ReplaceNumber + ReplNumber
                        ADDNumber = ADDNumber + ADDcount
                        REMOVENumber = REMOVENumber + REMOVEcount
                      end --for i=1,#foreach_SKWG[1] do
                    end --if IsForeach_SKW then

                  else --iEXML_CT["FOREACH_SPECIAL_KEY_WORDS_GROUP"] == nil
                    ECT_Index = i
                    DEBUG_VCTproperty_print("     ===>> before ExchangePropertyValue(): #TextFileTable = "..#TextFileTable)
                    moddedFileTable,ReplNumber,ADDcount,REMOVEcount = ExchangePropertyValue(
                          n,
                          m,
                          u,
                          ECT_Index,
                          FullPathFile,
                          TextFileTable,
                          iEXML_CT["VALUE_CHANGE_TABLE"],
                          iEXML_CT["SPECIAL_KEY_WORDS"],
                          iEXML_CT["PRECEDING_KEY_WORDS"],
                          iEXML_CT["PRECEDING_FIRST"],
                          iEXML_CT["FIND_ALL_SECTIONS"],
                          iEXML_CT["SECTION_UP"],
                          iEXML_CT["SECTION_UP_SPECIAL"],
                          iEXML_CT["SECTION_UP_PRECEDING"],
                          iEXML_CT["SECTION_ACTIVE"],
                          iEXML_CT["WHERE_IN_SECTION"],
                          iEXML_CT["WISEC_LOP"],
                          iEXML_CT["WHERE_IN_SUBSECTION"],
                          iEXML_CT["WISUBSEC_LOP"],
                          iEXML_CT["WISUBSEC_OPTION"],
                          iEXML_CT["SECTION_SAVE_TO"],
                          iEXML_CT["SECTION_KEEP"],
                          iEXML_CT["SECTION_ADD_NAMED"],
                          section_edit,
                          IsEditSection,
                          iEXML_CT["SECTION_UPDATE"],
                          iEXML_CT["MATH_OPERATION"],
                          iEXML_CT["INTEGER_TO_FLOAT"],
                          global_integer_to_float,
                          iEXML_CT["VALUE_MATCH"],
                          iEXML_CT["REPLACE_TYPE"],
                          iEXML_CT["VALUE_MATCH_TYPE"],
                          iEXML_CT["VALUE_MATCH_OPTIONS"],
                          iEXML_CT["NOTICE_OFF"],
                          iEXML_CT["LINE_OFFSET"],
                          iEXML_CT["ADD_OPTION"],
                          iEXML_CT["ADD"],
                          iEXML_CT["REMOVE"],
                          iEXML_CT["COMMENT"],
                          iEXML_CT_IsTableOfTables,
                          MissingCurlyBracketsWarning,
                          false,
                          GUARD
                        )
                    DEBUG_VCTproperty_print("     ===>>A) after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable)
                    if WDEBUG then print("     ===>> after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable) end
                    TextFileTable = moddedFileTable --update TextFileTable for next iteration

                    -- if file was discarded
                    if #TextFileTable == 0 then
                      ActiveFile = nil
                    end
                    DEBUG_VCTproperty_print("     ===>>B) after ExchangePropertyValue(): #moddedFileTable = "..#moddedFileTable)
                    
                    ReplaceNumber = ReplaceNumber + ReplNumber
                    ADDNumber = ADDNumber + ADDcount
                    REMOVENumber = REMOVENumber + REMOVEcount
                  end --if iEXML_CT["FOREACH_SPECIAL_KEY_WORDS_GROUP"] ~= nil then
                end --for i=1,#EXML_CHANGE_TABLE do

                if iEXML_CT_IsNil or iEXML_CT_IsString then
                  break
                end

                print("")
                print(_zGREEN.."   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =".._zDEFAULT)
                print(_zGREEN.."                Ended processing of MODIFICATIONS["..n.."]["..m.."]["..u.."]["..ECT_Index.."]".._zDEFAULT)

                if ADDNumber > 0 then
                  Report(ADDNumber.." ADD(s) made","  Ended processing with")
                  print("    >>>>> "..ADDNumber.." ADD(s) made")
                end

                if REMOVENumber > 0 then
                  Report(REMOVENumber.." REMOVE(s) made","  Ended processing with")
                  print("    >>>>> "..REMOVENumber.." REMOVE(s) made")
                end

                if ReplaceNumber > 0 then
                  Report(ReplaceNumber.." CHANGE(s) made","  Ended processing with")
                  print("    >>>>> "..ReplaceNumber.." CHANGE(s) made")
                end

                Report(file,"     on File:")
                Report("","  Ended with a total of "..(ReplaceNumber + ADDNumber + REMOVENumber).." action(s) made }")
                print("    >>>>> Ended with a total of "..(ReplaceNumber + ADDNumber + REMOVENumber).." action(s) made\n")
                NumReplacements = NumReplacements + ReplaceNumber + ADDNumber + REMOVENumber

                if THIS == "In TestReCreatedScript: " then CheckReCreatedEXMLAgainstOrg(file) end
              -- else
                -- NoEXML_CHANGE_TABLE = true
                -- -- print("[INFO] [\"MODIFICATIONS\"] has no [\"EXML_CHANGE_TABLE\"]")
                -- -- Report("","[\"MODIFICATIONS\"] has no [\"EXML_CHANGE_TABLE\"]")
              end -- if mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
              -- print("   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
            end -- #TextFileTable == 0 and mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then

            --=================== REGEXAFTER ========================
            if mMBIN_CT["REGEXAFTER"] ~= nil then
              local regexafter = mMBIN_CT["REGEXAFTER"]
              if type(regexafter) ~= "table" then
                print("")
                print(_zRED..">>> [ERROR] REGEXAFTER is not a table, please correct your script".._zDEFAULT)
                Report("","REGEXAFTER is not a table, please correct your script","ERROR")
              else
                --we must save the current changes to FullPathFile
                WriteToFile(ConvertLineTableToText(TextFileTable), FullPathFile)

                for i=1,#regexafter do
                  local ToFindRegex = string.gsub(regexafter[i][1],[[\\]],[[\]])
                  ToFindRegex = string.gsub(ToFindRegex,[["]],[[\"]])
                  local ToReplaceRegex = string.gsub(regexafter[i][2],[[\\]],[[\]])
                  ToReplaceRegex = string.gsub(ToReplaceRegex,[["]],[[\"]])
                  if ToFindRegex == nil or ToReplaceRegex == nil then
                    print("")
                    print(_zRED..">>> [ERROR] missing REGEXAFTER member, please correct your script".._zDEFAULT)
                    Report("","missing REGEXAFTER member, please correct your script","ERROR")
                  else
                    if ToFindRegex ~= "" then
                      print("")
                      local From = "REGEXAFTER"
                      local Command = [[-i -r "s/]]..ToFindRegex..[[/]]..ToReplaceRegex..[[/" "]]..FullPathFile..[["]]
                      --for debug purposes
                      -- Command = string.sub(Command,4)..[[ > "]]..From..[[_output.txt"]]
                      ExecuteREGEX(From,Command)
                      NumREGEXAFTER = NumREGEXAFTER + 1
                    end
                  end
                end
                
                --and re-open FullPathFile
                TextFileTable = ParseTextFileIntoTable(FullPathFile) --the EXML file in MODBUILDER\MOD
              end
            end
            --=================== end REGEXAFTER ========================
          end --for u=1,#mbin_file_source do

          -- if mMBIN_CT["MBIN_FS_DISCARD"] == "TRUE" then
            -- for u=1,#mbin_file_source do
              -- local file = string.gsub(mbin_file_source[u],[[%.MBIN%.PC]],[[.MBIN]])
              -- file = string.gsub(file,[[%.MBIN]],[[.EXML]])
              -- file = NormalizePath(file)
              -- -- print("["..[[.\MOD\]]..file.."]")
              
              -- DeleteFile([[.\MOD\]]..file)
              -- ActiveFile = nil
              -- print(_zRED..">>> Discarded: ["..file.."]".._zDEFAULT)
              -- Report("",">>> Discarded: ["..file.."]")
            -- end
            
          -- else
            -- print("*** RemoveFlagOFF = "..tostring(RemoveFlagOFF))
            if WDEBUG then WaitForAnyKey("B: <<< DONE WITH MBIN_FS LOOP >>>, #TextFileTable = "..#TextFileTable..", press key...") end
            
            if #TextFileTable ~= 0 then
              if not foundEditSection then
                if mMBIN_CT["EXML_CHANGE_TABLE"] ~= nil then
                  -- saving only if EXML_CT exist
                  -- on last mbin_file_source
                  if WDEBUG then WaitForAnyKey("B: Just before saving changes to ["..FullPathFile.."], press key...") end
                  WriteToFile(ConvertLineTableToText(TextFileTable), FullPathFile)
                else
                  if WDEBUG then WaitForAnyKey("B: No EXML_CT, no need to save ["..FullPathFile.."], press key...") end
                end
              end
              
            elseif not OkToSkipOpeningFile and RemoveFlagOFF then
              -- print("*** NO REMOVE")
              print(_zRED..">>> [WARNING] EMPTY MBIN file or does not exist! Check script...".._zDEFAULT)
              Report("","EMPTY MBIN file or does not exist! Check script...","WARNING")
              --reset
              RemoveFlagOFF = false
            end
            
          -- end --if mMBIN_CT["MBIN_FS_DISCARD"] == "TRUE" then
        end --for m=1,#nMOD["MBIN_CHANGE_TABLE"] do

      end --if nMOD["MBIN_CHANGE_TABLE"] ~= nil then

      if iEXML_CT_IsNil or iEXML_CT_IsString then
        break
      end

    end --for n=1,#MOD_DEF["MODIFICATIONS"] do
  end --if MOD_DEF["MODIFICATIONS"]~=nil then

  if AtLeastOne_EXML_CHANGE_TABLE and MOD_DEF["MODIFICATIONS"] ~= nil and NumReplacements == 0 then
    print(_zRED..">>> [WARNING] No replacement done. Please verify your script".._zDEFAULT)
    Report(CurrentScriptName,"No replacement done. Please verify your script","WARNING")
  end
  if MOD_DEF["ADD_FILES"] ~= nil and NumFilesAdded == 0 then
    if #MOD_DEF["ADD_FILES"] >= 1 and MOD_DEF["ADD_FILES"][1]["FILE_DESTINATION"] ~= "" then
      print(_zRED..">>> [WARNING] No file ADDed. Please verify your script".._zDEFAULT)
      Report(CurrentScriptName,"No file ADDed. Please verify your script","WARNING")
    end
  end
  
  if MOD_DEF["ADD_FILES"] ~= nil or AtLeastOne_EXML_CHANGE_TABLE or AtLeastOne_MBIN_CHANGE_TABLE then
    Report("")
    
    if NumREGEXBEFORE > 0 or NumREGEXAFTER > 0 then
      Report(NumREGEXBEFORE.." REGEXBEFORE action(s), "..NumREGEXAFTER .. " REGEXAFTER action(s)")
    end      
    
    if NumXLST > 0 then
      Report(NumXLST.." XLST action(s)")
    end      
    
    NumReplacements = NumReplacements + NumREGEXBEFORE + NumREGEXAFTER + NumXLST
    -- if Multi_pak then
      -- Report("["..NumReplacements.." action(s), "..NumFilesAdded .. " files/groups of files ADDed]","Ended sub-script processing with ")
    -- else
      Report("["..NumReplacements.." action(s), "..NumFilesAdded .. " files/groups of files ADDed]","Ended script processing with ")
    -- end
    
    print("")
    print("    ".._zBGintense.."                                                                              ".._zDEFAULT)
    print("    ".._zDEFAULT..">>>>>".._zDEFAULT.." Ended ALL with "..NumReplacements.." action(s) made and "..NumFilesAdded .. " files/groups of files ADDed ".._zDEFAULT.."<<<<<".._zDEFAULT)
    print("    ".._zBGintense.."                                                                              ".._zDEFAULT)

    print("")
  end
  
  pv(THIS.."From end of HandleModScript()")
end

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function CheckReCreatedEXMLAgainstOrg(file)
  -- now we can compare the ORIG_MOD with this ReCreated_MOD
  --if the SAME then SUCCESS
  --else report FAILURE
  pv(THIS.."From CheckReCreatedEXMLAgainstOrg()")
  print("")
  -- Report("")
  -- *file (ORG EXML)        gMASTER_FOLDER_PATH..[[\SCRIPTBUILDER\MOD\]]..string.gsub(nMOD["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"],"%.MBIN",".EXML"),
  --local temp = gMASTER_FOLDER_PATH..gPathToModbuilderMod..file
  local temp = gPathToModbuilderMod..file
  -- temp = string.gsub(temp,[[\]],[[\\]]) --no need to do this replacement

  local say = temp
  -- because string.gsub pattern does not work with all folder names (ex.: ".")
  if string.find(say,gMASTER_FOLDER_PATH,1,true) ~= nil then
    local start = string.find(say,gMASTER_FOLDER_PATH,1,true)
    say = string.sub(say,1,start - 1)..string.sub(say,string.len(gMASTER_FOLDER_PATH) + start)
  end
  print("           "..say)
  -- Report("","           "..say,"")

  local ORIG_MOD = LoadFileData(temp)
  print("  Original MOD is "..string.len(ORIG_MOD).." long")
  Report("","  Original MOD is "..string.len(ORIG_MOD).." long")

  temp = string.gsub(temp,gPathToModbuilderMod,[[\Modified_PAK\DECOMPILED\]])

  local say = temp
  -- because string.gsub pattern does not work with all folder names (ex.: ".")
  if string.find(say,gMASTER_FOLDER_PATH,1,true) ~= nil then
    local start = string.find(say,gMASTER_FOLDER_PATH,1,true)
    say = string.sub(say,1,start - 1)..string.sub(say,string.len(gMASTER_FOLDER_PATH) + start)
  end
  print("     "..say)
  -- Report("","     "..say,"")

  local ReCreated_MOD = LoadFileData(temp)
  print("Re-Created MOD is "..string.len(ReCreated_MOD).." long")
  Report("","Re-Created MOD is "..string.len(ReCreated_MOD).." long")

  ResultsCreatingScript[#ResultsCreatingScript + 1] = {}
  ResultsCreatingScript[#ResultsCreatingScript][1] = file

  if ReCreated_MOD == ORIG_MOD then
    ResultsCreatingScript[#ResultsCreatingScript][2] = "Success"
    print("\n      ********************************************************************************")
    print("\n      >>>>>>>>>>>>  Script MOD creation SUCCEEDED, BOTH FILES IDENTICAL!  <<<<<<<<<<<<")
    print("\n      ********************************************************************************")
    Report("",">>>>>>>>>>>>  Script MOD creation SUCCEEDED, BOTH FILES IDENTICAL!  <<<<<<<<<<<<","SUCCESS")
  else
    ResultsCreatingScript[#ResultsCreatingScript][2] = "Failure"
    print("\n      --------------------------------------------------------")
    print("\n      XXXXXXXXXXXX  Script MOD creation FAILURE!  XXXXXXXXXXXX")
    print("\n      --------------------------------------------------------")
    Report("","XXXXXXXXXXXX  Script MOD creation FAILURE!  XXXXXXXXXXXX","ERROR")
  end
  print("")
  Report("")
  pv(THIS.."From end of CheckReCreatedEXMLAgainstOrg()")
end

--***************************************************************************************************
function GetSpecKeyWordsInfo(spec_key_words)
  local Info = ""
  for i=1,#spec_key_words,2 do
    if spec_key_words[i] ~= nil and spec_key_words[i+1] ~= nil then
      Info = Info..[[{"]]..spec_key_words[i]..[[","]]..spec_key_words[i+1]..[[",}, ]]
    end
  end
  Info = string.sub(Info,1,-2)
  return Info
end

--***************************************************************************************************
function GetPrecKeyWordsInfo(prec_key_words)
  local Info = ""
  for i=1,#prec_key_words do
    if prec_key_words[i] ~= nil then
      Info = Info..[["]]..prec_key_words[i]..[[",]]
    end
  end
  return [[{]]..Info..[[},]]
end

--***************************************************************************************************
function GetValueMatchInfo(val_match)
  local Info = ""
  for i=1,#val_match do
    if val_match[i][1] ~= nil and val_match[i][1] ~= "" then
      if type(tonumber(val_match[i][1])) == "number" then
        Info = Info..val_match[i][1]..[[,]]
      else
        Info = Info..[["]]..val_match[i][1]..[[",]]
      end
    end
  end
  --remove last ,
  return string.sub(Info,1,-2)
end

--***************************************************************************************************
function GetWhereInSectionInfo(WhereKeyWords)
  local Info = ""
  for i=1,#WhereKeyWords do
    if WhereKeyWords[i][1] ~= nil and WhereKeyWords[i][2] ~= nil then
      Info = Info..[[{"]]..WhereKeyWords[i][1]..[[","]]..WhereKeyWords[i][2]..[[",}, ]]
    end
  end
  Info = string.sub(Info,1,-2)
  return Info
end
--***************************************************************************************************

--***************************************************************************************************
function GetWhereInSubSectionInfo(SubWhereKeyWords)
  local Info = ""
  for i=1,#SubWhereKeyWords do
    if SubWhereKeyWords[i][1] ~= nil and SubWhereKeyWords[i][2] ~= nil then
      Info = Info..[[{"]]..SubWhereKeyWords[i][1]..[[","]]..SubWhereKeyWords[i][2]..[[",}, ]]
    end
  end
  Info = string.sub(Info,1,-2)
  return Info
end
--***************************************************************************************************

--***************************************************************************************************
function GoUPToOwnerStart(TextFileTable,lineInSection)
  local level = 0
  local OwnerStartLine = 0
  for i=lineInSection-1,1,-1 do
    local Orgline = TextFileTable[i]
    if string.find(Orgline,[[/>]],1,true) ~= nil then
      --skip this line, never an owner
    else
      if string.find(Orgline,[[">]],1,true) ~= nil then
        level = level - 1
      elseif string.find(Orgline,[[/Property>]],1,true) ~= nil then
        --always the end of a group
        level = level + 1
      end
      if level == -1 then
        --owner start line found
        OwnerStartLine = i
        break
      end
    end
  end
  -- pv("   U.OwnerStartLine = "..OwnerStartLine)
  return OwnerStartLine
end
--***************************************************************************************************

--***************************************************************************************************
function GoDownToOwnerEnd(TextFileTable,lineInSection)
  local level = 0
  local OwnerEndLine = 0
  -- pv("      D.lineInSection = "..lineInSection)
  for i=lineInSection,#TextFileTable do
    local Orgline = TextFileTable[i]
    if string.find(Orgline,[[/>]],1,true) ~= nil then
      --skip this line, never an owner
    else
      if string.find(Orgline,[[/Property>]],1,true) ~= nil then
        --always the end of a group
        level = level - 1
      elseif string.find(Orgline,[[">]],1,true) ~= nil then
        level = level + 1
      end
      if level == -1 then
        --owner end line found
        OwnerEndLine = i
        break
      end
    end
  end
  -- pv("      D.OwnerEndLine = "..OwnerEndLine)
  assert(OwnerEndLine ~= nil,"FindGroup:GoDownToOwnerEnd:OwnerEndLine == nil")
  if OwnerEndLine == 0 then OwnerEndLine = #TextFileTable end
  return OwnerEndLine
end
--***************************************************************************************************

--***************************************************************************************************
function MapFileTreeSharedListPING()
  if IsFileExist([[MapFileTreeSharedList.txt]]) then
    WriteToFileAppend("PING".."\n",[[MapFileTreeSharedList.txt]])
  end
end

--*************************************** handles generic SECTION_UP *******************************************
function Process_SectionUP(FileTable,GroupStartLine,GroupEndLine,KeyWordLine,section_up)
  -- pv("")
  -- pv([[D ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]])
  if section_up > 0 then
    -- pv("Processing SECTION_UP = "..section_up)
    for n=1,#GroupStartLine do
      local Section_UP = section_up
      local currentLine = GroupStartLine[n]
      -- pv("  SECTION_UP: Current line = "..currentLine)
      repeat
        GroupStartLine[n] = GoUPToOwnerStart(FileTable,currentLine)
        GroupEndLine[n] = GoDownToOwnerEnd(FileTable,GroupStartLine[n]+1)
        KeyWordLine[n] = KeyWordLine[n] --stays the same
        currentLine = GroupStartLine[n]
        Section_UP = Section_UP - 1
      until Section_UP == 0
    end
  end
  return GroupStartLine,GroupEndLine,KeyWordLine
end
--*************************************** END: handles generic SECTION_UP **************************************

--***************************************************************************************************
function ShowKeyWordInfo(spec_key_words,prec_key_words,IsPrecedingKeyWords,IsSpecialKeyWords,IsPrecedingFirstTRUE,gIs_LEAN_MODE,IsUsingForeach_SKWG,item)
  if IsPrecedingKeyWords or IsSpecialKeyWords then
    if not gIs_LEAN_MODE then print("") end
  end

  if IsUsingForeach_SKWG then
    Report(""," -> using FOREACH_SKW_GROUP["..item.."]")
  end

  local Info = ""
  if IsPrecedingFirstTRUE then
    if IsPrecedingKeyWords then
      Info = GetPrecKeyWordsInfo(prec_key_words)
      Report(""," -> Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
      if not gIs_LEAN_MODE then print(" -> Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ") end

      if IsSpecialKeyWords then
        Info = GetSpecKeyWordsInfo(spec_key_words)
        Report("","    and SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
        if not gIs_LEAN_MODE then print("    and SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ") end
      end
    else
      if IsSpecialKeyWords then
        Info = GetSpecKeyWordsInfo(spec_key_words)
        Report(""," -> Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
        if not gIs_LEAN_MODE then print(" -> Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ") end
      end
    end

  else
    if IsSpecialKeyWords then
      Info = GetSpecKeyWordsInfo(spec_key_words)
      Report(""," -> Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
      if not gIs_LEAN_MODE then print(" -> Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ") end

      if IsPrecedingKeyWords then
        Info = GetPrecKeyWordsInfo(prec_key_words)
        Report("","            and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
        if not gIs_LEAN_MODE then print("            and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ") end
      end
    else
      if IsPrecedingKeyWords then
        Info = GetPrecKeyWordsInfo(prec_key_words)
        Report(""," -> Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
        if not gIs_LEAN_MODE then print(" -> Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ") end
      end
    end
  end
end
--****************************** END: ShowKeyWordInfo ***********************************************

--***************************************************************************************************      
--reversing the order of the Groups
--so that we add or remove from the bottom up
function ReverseGroupsOrder(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
  local Gs = {}
  local Ge = {}
  local Gl = {}
  for i=#GroupStartLine,1,-1 do
    Gs[#Gs+1] = GroupStartLine[i]
    Ge[#Ge+1] = GroupEndLine[i]
    Gl[#Gl+1] = SpecialKeyWordLine[i]
  end
  return Gs,Ge,Gl
end
--******************************* END: ReverseGroupsOrder *******************************************      

--***************************************************************************************************      
-- prepare info to inform user
function PrepareInfoForUser(VCTproperty,VCTvalue
      ,IsMath_Operation,math_operation
      ,IsInteger_to_floatPRESERVE,IsInteger_to_floatFORCE
      ,IsValueMatch,val_match,IsValueMatchOptionsMatch,value_match_options,value_match_type,newIsValueMatchType
      ,IsLineOffset,line_offset
      ,IsSpecialKeyWords,spec_key_words
      ,IsPrecedingKeyWords,prec_key_words
      ,IsWhereKeyWords,WhereKeyWords
      ,IsSubWhereKeyWords,IsWisubSecOptionALL,SubWhereKeyWords
      ,IsWiSecLopAND,IsWisubSecLopAND
      ,IsTextToAdd,IsReplaceADDAFTERLINE,IsReplaceADDAFTERSECTION
      ,IsToRemove,IsToRemoveLINE,IsToRemoveSECTION
      ,IsReplace,IsReplaceRAW,IsReplaceONCE,IsReplaceALL,IsReplaceAllInSection,IsReplaceFOLLOWING
      ,IsLargeNumOfReplacement,RememberNumberOfGroups
      ,gIs_LEAN_MODE
      ,_zGREEN,_zDEFAULT
      )
  local spacer = 0
  local msg0 = ""
  local msg1 = ""
  local msg2 = ""
  local msg3 = ""
  local msg4 = ""
  local msg5 = ""
  local Info = ""
  
  if IsMath_Operation then
    msg1 = "Math_operation "
    
    --clean and count
    local mathOp,b = string.gsub(math_operation,"!","")
    mathOp,c = string.gsub(mathOp,"%$","")
    local mo = string.sub(mathOp,2)..string.sub(mathOp,1,1)
    
    msg2 = string.rep([[!]],b)..string.rep([[$]],c)..mo

    if IsValueMatch then
      msg3 = " matching ["..value_match_options..GetValueMatchInfo(val_match).."]"
    end

  else
    if IsValueMatch then
      if IsValueMatchOptionsMatch then
        msg3 = " matching ["..GetValueMatchInfo(val_match).."]"
      else
        msg3 = " not matching ["..GetValueMatchInfo(val_match).."]"
      end
    end
  end

  if newIsValueMatchType then
    msg3 = msg3.." of type ["..value_match_type.."]"
  end

  if IsLineOffset then
    if IsSpecialKeyWords then
      local ThreeDots = ""
      if #spec_key_words > 2 then ThreeDots = "... " end
      msg5 = " at "..ThreeDots.."["..spec_key_words[#spec_key_words-1].."] and ["..spec_key_words[#spec_key_words].."]"
    else
      msg5 = " at ["..prec_key_words[#prec_key_words].."]"
    end
    msg4 = " with a LINE_OFFSET of ["..line_offset.."]" --was offset
  end

  local VCTvalueTmp,IsNotNil = GetVCTvalueTmp(VCTvalue)        
  -- local VCTvalueTmp = VCTvalue
  -- local defaultPos = VCTvalue:gsub("%s+",""):gsub('"',""):find("GUIF({",1,true)
  local userInput = ""
  if IsNotNil then
    -- VCTvalueTmp = VCTvalue:sub(defaultPos + 7,defaultPos + 7 + VCTvalue:sub(defaultPos + 7):find(",",1,true) - 2)
    userInput = _zGREEN.." (or user input)".._zDEFAULT
  end
-- print("VCTvalueTmp = <"..VCTvalueTmp..">")
  
  if IsTextToAdd then
    if IsReplaceADDAFTERLINE then
      Report("","    Looking to >>> add some text <<< after LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4)
      if not gIs_LEAN_MODE then print("\n    Looking to >>> add some text <<< after LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4) end
      spacer = 11
    elseif IsReplaceADDAFTERSECTION then
      Report("","    Looking to >>> add some text <<< after SECTION")
      if not gIs_LEAN_MODE then print("\n    Looking to >>> add some text <<< after SECTION") end
      spacer = 11
    else
      Report("","    Looking to >>> replace some text <<< at LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4)
      if not gIs_LEAN_MODE then print("\n    Looking to >>> replace some text <<< at LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4) end
      spacer = 11
    end

  elseif IsToRemove then
    if IsToRemoveLINE then
      Report("","    Looking to >>> remove LINE <<< at Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4)
      if not gIs_LEAN_MODE then print("\n    Looking to >>> remove LINE <<< at Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4) end
      spacer = 11
    elseif IsToRemoveSECTION then
      Report("","    Looking to >>> remove SECTION <<<")
      if not gIs_LEAN_MODE then print("\n    Looking to >>> remove SECTION <<<") end
      spacer = 11
    else
      Report("","    Looking to >>> remove some text <<< at LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4)
      if not gIs_LEAN_MODE then print("\n    Looking to >>> remove some text <<< at LINE with Property name ["..[["]]..VCTproperty..[["]].."] and value ["..[["]]..VCTvalueTmp..userInput..[["]].."]"..msg3..msg4) end
      spacer = 11
    end

  else
    --reset
    IsLargeNumOfReplacement = false

    local qm12 = [["]]
    if type(tonumber(VCTvalueTmp)) == "number" then qm12 = [[]] end
    Report("","    Looking for >>> ["..[["]]..VCTproperty..[["]].."] New value will be >>> "..msg1.."["..msg2..qm12..VCTvalueTmp..userInput..qm12.."]"..msg3..msg4..msg5)
    
    local part1 = trim(VCTproperty)
    if string.len(part1) > 100 then
      part1 = string.sub(part1,1,30).._zGREEN..[[ ..trimmed.. ]].._zDEFAULT..ltrim(string.sub(part1,-30))
    end
    local part2 = trim(VCTvalueTmp)
    qm12 = [["]]
    local part2tmp = part2:gsub([["]],"")
    if part2tmp ~= nil then
      if type(tonumber(part2tmp)) == "number" then qm12 = [[]] end
    else
      if type(tonumber(part2)) == "number" then qm12 = [[]] end
    end
    if part2:sub(1,1) == '"' then qm12 = [[]] end
    
    if string.len(part2) > 100 then
      part2 = string.sub(part2,1,30).._zGREEN..[[ ..trimmed.. ]].._zDEFAULT..ltrim(string.sub(part2..userInput,-30))
    end
-- print("msg2 = <"..msg2..">")
-- print("qm12 = <"..qm12..">")
-- print("part2 = <"..part2..">")
    if not gIs_LEAN_MODE then
      print("\n    Looking for >>> ["..[["]]..part1..[["]].."] New value will be >>> "..msg1.."["..msg2..qm12..part2..userInput..qm12.."]"..msg3..msg4..msg5)
    end
    spacer = 12
  end

  local LOP = ""
  if IsWhereKeyWords then
    LOP = "(OR)"
    if IsWiSecLopAND then
      LOP = "(AND)"
    end
    Info = GetWhereInSectionInfo(WhereKeyWords)
    msg0 = string.rep(" ",spacer).."    >>> using WHERE_IN_SECTION"..LOP.." "..Info.." to restrict search..."
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
    
    msg0 = string.rep(" ",spacer).."    >>> Evaluated "..RememberNumberOfGroups.." sections against WHERE_IN_SECTION keywords..."
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
  end

  if IsSubWhereKeyWords then
    local Option = ""
    if IsWisubSecOptionALL then
      Option = "with [ALL sub-sections] "
    end
    LOP = "(OR)"
    if IsWisubSecLopAND then
      LOP = "(AND)"
    end
    Info = GetWhereInSubSectionInfo(SubWhereKeyWords)
    msg0 = string.rep(" ",spacer).."    >>> using WHERE_IN_SUBSECTION"..LOP.." "..Option..Info.." to restrict search..."
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
    
    msg0 = string.rep(" ",spacer).."    >>> Evaluated "..RememberNumberOfGroups.." sections against WHERE_IN_SUBSECTION keywords..."
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
  end

  if IsReplace then
    if IsReplaceONCE then msg0 = "ONCE" end
    if IsReplaceALL then msg0 = "ALL" end
    if IsReplaceAllInSection then msg0 = "ALLINSECTION" end
    if IsReplaceFOLLOWING then msg0 = "FOLLOWING" end
    if IsReplaceRAW then msg0 = "RAW" end
    
    msg0 = string.rep(" ",spacer).."    >>> Replace operation is ["..msg0.."]"
    if IsPrecedingKeyWords then
      Info = GetPrecKeyWordsInfo(prec_key_words)
      msg0 = msg0.." based on key_words: "..Info
    end
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
  end

  if IsInteger_to_floatPRESERVE then
    msg0 = string.rep(" ",spacer).."    >>> INTEGER_TO_FLOAT is [PRESERVE]"
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
  elseif IsInteger_to_floatFORCE then
    msg0 = string.rep(" ",spacer).."    >>> INTEGER_TO_FLOAT is [FORCE]"
    Report("",msg0)
    if not gIs_LEAN_MODE then print(msg0) end
  end

end
--****************************** END: PrepareInfoForUser ***********************************************

--***************************************************************************************************      
 --on the first possible VCT
 function OnFirstVCT(section_up_preceding,section_up_special,section_up
      ,IsSpecialKeyWords,spec_key_words
      ,IsPrecedingFirstTRUE,IsPrecedingKeyWords,prec_key_words
      ,IsWhereKeyWords,IsSubWhereKeyWords
      ,_zRED,_zDEFAULT)
  pv("First time")
  if IsSpecialKeyWords then
    pv("   with SPECIAL_KEY_WORDS")

    if #spec_key_words%2 ~= 0 then
      --not an even number of spec_key_words: problem
      -- print("")
      print(_zRED..">>> [WARNING] SPECIAL_KEY_WORDS: NOT an even number of (name/value).  LAST entry will be IGNORED.  Please correct your script!".._zDEFAULT)
      Report("","SPECIAL_KEY_WORDS: NOT an even number of (name/value).  LAST entry will be IGNORED.  Please correct your script!","WARNING")
    end

  elseif IsPrecedingKeyWords then
    pv("   with SomeKeyWords")

  else --no key_words
    if IsWhereKeyWords or IsSubWhereKeyWords then
      Report(""," -> No key_word specified, using whole file to apply conditions...")
      print("\n -> No key_word specified, using whole file to apply conditions...")
    else
      Report(""," -> No key_word specified, using whole file...")
      print("\n -> No key_word specified, using whole file...")
    end
  end

  if IsPrecedingFirstTRUE then
    if section_up_preceding > 0 then
      if section_up_preceding == 1 then
        Report("","       >>>>> Going UP "..section_up_preceding.." parent section after PRECEDING_KEY_WORDS...")
        print("    -- Going UP "..section_up_preceding.." parent section after PRECEDING_KEY_WORDS...")
      else
        Report("","       >>>>> Going UP "..section_up_preceding.." parent sections after PRECEDING_KEY_WORDS...")
        print("    -- Going UP "..section_up_preceding.." parent sections after PRECEDING_KEY_WORDS...")
      end
    end

    if section_up_special > 0 then
      if section_up_special == 1 then
        Report("","       >>>>> Going UP "..section_up_special.." parent section after SPECIAL_KEY_WORDS...")
        print("    -- Going UP "..section_up_special.." parent section after SPECIAL_KEY_WORDS...")
      else
        Report("","       >>>>> Going UP "..section_up_special.." parent sections after SPECIAL_KEY_WORDS...")
        print("    -- Going UP "..section_up_special.." parent sections after SPECIAL_KEY_WORDS...")
      end
    end

  else
    if section_up_special > 0 then
      if section_up_special == 1 then
        Report("","       >>>>> Going UP "..section_up_special.." parent section after SPECIAL_KEY_WORDS...")
        print("    -- Going UP "..section_up_special.." parent section after SPECIAL_KEY_WORDS...")
      else
        Report("","       >>>>> Going UP "..section_up_special.." parent sections after SPECIAL_KEY_WORDS...")
        print("    -- Going UP "..section_up_special.." parent sections after SPECIAL_KEY_WORDS...")
      end
    end

    if section_up_preceding > 0 then
      if section_up_preceding == 1 then
        Report("","       >>>>> Going UP "..section_up_preceding.." parent section after PRECEDING_KEY_WORDS...")
        print("    -- Going UP "..section_up_preceding.." parent section after PRECEDING_KEY_WORDS...")
      else
        Report("","       >>>>> Going UP "..section_up_preceding.." parent sections after PRECEDING_KEY_WORDS...")
        print("    -- Going UP "..section_up_preceding.." parent sections after PRECEDING_KEY_WORDS...")
      end
    end
  end

  if section_up > 0 then
    if section_up == 1 then
      Report("","       >>>>> Going UP "..section_up.." parent section after all keywords...")
      print("    -- Going UP "..section_up.." parent section after all keywords...")
    else
      Report("","       >>>>> Going UP "..section_up.." parent sections after all keywords...")
      print("    -- Going UP "..section_up.." parent sections after all keywords...")
    end
  end
end
--****************************** END: OnFirstVCT ***********************************************

--****************************** GetVCTvalueTmp ***********************************************
function GetVCTvalueTmp(VCTvalue)
  local VCTvalueTmp = VCTvalue
  local defaultPos = VCTvalue:gsub("%s+",""):gsub('"',""):find("GUIF({",1,true)
  if defaultPos ~= nil then
    VCTvalueTmp = VCTvalue:sub(defaultPos + 7,defaultPos + 7 + VCTvalue:sub(defaultPos + 7):find(",",1,true) - 2)
  end
  -- print("VCTvalueTmp = <"..VCTvalueTmp..">")
  return VCTvalueTmp,(defaultPos ~= nil)
end
--****************************** END: GetVCTvalueTmp ***********************************************

-- -- *****************   mbin_fs_discard section   ********************
-- function MbinFsDiscard(mbin_fs_discard)
  -- mbin_fs_discard = ReturnStringFrom(mbin_fs_discard)
  -- mbin_fs_discard = string.upper(mbin_fs_discard)

  -- local Ismbin_fs_discard = (mbin_fs_discard ~= "")
  -- local Ismbin_fs_discardTRUE = (mbin_fs_discard == "TRUE")
  -- local Ismbin_fs_discardFALSE = (mbin_fs_discard == "FALSE")
  -- if Ismbin_fs_discard and not (Ismbin_fs_discardTRUE or Ismbin_fs_discardFALSE) then
    -- print(_zRED..[[>>> [WARNING] MBIN_FS_DISCARD value is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    -- Report(mbin_fs_discard,[[>>> MBIN_FS_DISCARD value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  -- end

  -- return Ismbin_fs_discardTRUE
-- end
-- --***************************************************************************************************      

-- *****************   section_keep section   ********************
function SectionKeep(section_keep)
  section_keep = ReturnStringFrom(section_keep)
  section_keep = string.upper(section_keep)

  local IsKeepSection = (section_keep ~= "")
  local IsKeepSectionTRUE = (section_keep == "TRUE")
  local IsKeepSectionFALSE = (section_keep == "FALSE")
  if IsKeepSection and not (IsKeepSectionTRUE or IsKeepSectionFALSE) then
    print(_zRED..[[>>> [WARNING] SECTION_KEEP value is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    Report(section_keep,[[>>> SECTION_KEEP value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

  return IsKeepSectionTRUE
end
--***************************************************************************************************      

-- *****************   section_update section   ********************
function SectionUpdate(section_update)
  section_update = ReturnStringFrom(section_update)
  section_update = string.upper(section_update)

  local IsUpdateSection = (section_update ~= "")
  local IsUpdateSectionTRUE = (section_update == "TRUE")
  local IsUpdateSectionFALSE = (section_update == "FALSE")
  if IsUpdateSection and not (IsUpdateSectionTRUE or IsUpdateSectionFALSE) then
    print(_zRED..[[>>> [WARNING] SECTION_UPDATE value is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    Report(section_update,[[>>> SECTION_UPDATE value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

  return IsUpdateSectionTRUE
end
--***************************************************************************************************      

--[=[
ExchangePropertyValue(
modificationIndex           ,n
MBINchangeTableIndex        ,m
EXMLchangeTableIndex        ,u

item                       ,ECT_Index
                 -- file                        ,file: full NMS path with extension .EXML
file (ORG EXML)            ,FullPathFile, aka: gPathToModbuilderMod..string.gsub(MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"],".MBIN",".EXML")
FileTable                  ,the TextFileTable 'table' containing the file above

value_change_table         ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_CHANGE_TABLE"]

special_key_words          ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SPECIAL_KEY_WORDS"]
preceding_key_words        ,PRECEDING_KEY_WORDS_SUB [==]PRECEDING_KEY_WORDS_SUB = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["PRECEDING_KEY_WORDS"][==]

preceding_first             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["PRECEDING_FIRST"]
find_all_sections           ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["FIND_ALL_SECTIONS"]
section_up                  ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_UP"]
section_up_special          ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_UP_SPECIAL"]
section_up_preceding        ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_UP_PRECEDING"]
section_active              ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_ACTIVE"]
where_key_words             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WHERE_IN_SECTION"]
wi_sec_lop                  ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WISEC_LOP"]
subwhere_key_words          ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WHERE_IN_SUBSECTION"]
wisub_sec_lop               ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WISUBSEC_LOP"]
wisub_sec_option            ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WISUBSEC_OPTION"]

section_save_to             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_SAVE_TO"]
section_keep                ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_KEEP"]
section_add_named           ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_ADD_NAMED"]
section_edit
IsEditSection
section_update              ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_UPDATE"]

math_operation              ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["MATH_OPERATION"]
integer_to_float            ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["INTEGER_TO_FLOAT"]
global_integer_to_float     ,global_integer_to_float

value_match                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH"]
replace_type                ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["REPLACE_TYPE"]
value_match_type            ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH_TYPE"]
value_match_options         ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH_OPTIONS"]

notice_off                  ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["NOTICE_OFF"]

line_offset                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["LINE_OFFSET"]
add_option                  ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["ADD_OPTION"]
text_to_add                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["ADD"]
to_remove                   ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["REMOVE"]

comment                     ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["COMMENT"]

iEXML_CT_IsTableOfTables    ,iEXML_CT_IsTableOfTables
MissingCurlyBracketsWarning ,MissingCurlyBracketsWarning
IsUsingForeach_SKWG         ,IsUsingForeach_SKWG
GUARD                       ,to detect if all arg are here
)
--]=]

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--called each time with all property/value combo in value_change_table
function ExchangePropertyValue(modificationIndex,MBINchangeTableIndex,EXMLchangeTableIndex
          ,item,file,FileTable
          ,value_change_table
          ,special_key_words,preceding_key_words
          ,preceding_first,find_all_sections,section_up,section_up_special,section_up_preceding,section_active
          ,where_key_words,wi_sec_lop,subwhere_key_words,wisub_sec_lop,wisub_sec_option
          ,section_save_to,section_keep,section_add_named,section_edit,IsEditSection,section_update
          ,math_operation,integer_to_float,global_integer_to_float
          ,value_match,replace_type,value_match_type,value_match_options
          ,notice_off
          ,line_offset,add_option,text_to_add,to_remove
          ,comment
          ,iEXML_CT_IsTableOfTables,MissingCurlyBracketsWarning,IsUsingForeach_SKWG
          ,GUARD)

  if GUARD ~= "Wbertro" then
    print("GUARD is wrong!")
    WaitForAyKey()
    return
  end
  -- local _mISxxx = _mISxxx
  -- local gDEBUG_CurrentLine = gDEBUG_CurrentLine
  -- local gDEBUG_repl_done = gDEBUG_repl_done
  -- local gDEBUG_BeforeEXTRA_BEHAVIOR = gDEBUG_BeforeEXTRA_BEHAVIOR
  -- local gDEBUG_GROUPS = gDEBUG_GROUPS
  -- local gDEBUG_Before_Value_match = gDEBUG_Before_Value_match
  -- local gDEBUG_ReplaceRAW = gDEBUG_ReplaceRAW
  
  -- local gMaxNumberOfGroups = gMaxNumberOfGroups
  -- local gIs_FULL_MODE = gIs_FULL_MODE
  -- local gIs_DEV_MODE = gIs_DEV_MODE
  -- local gIs_LEAN_MODE = gIs_LEAN_MODE
CheckPoint(3)
  
  local IsdotOn = true
  local dotCount = 0
  
  if gIs_LEAN_MODE then
    if item%2 == 0 then
      print(_zUpOneLine.." >")
    else
      print(_zUpOneLine.." <")
    end
  end
  
  if not gIs_LEAN_MODE then
    print(_zGREEN.."   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -".._zDEFAULT)
    if IsUsingForeach_SKWG then
      print(_zGREEN.."                processing FOREACH_SKW_GROUP["..item.."], please wait...".._zDEFAULT)
    else
      print(_zGREEN.."                processing MODIFICATIONS["..modificationIndex.."]["..MBINchangeTableIndex.."]["..EXMLchangeTableIndex.."]["..item.."], please wait...".._zDEFAULT)
    end
  end
  
  if not iEXML_CT_IsTableOfTables then
    print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE first entry is not just a simple table: check your script"]].._zDEFAULT)
    Report("",[[>>> EXML_CHANGE_TABLE first entry is not just a simple table: check your script]],"WARNING")
    if _mSERIALIZING == "Y" then
      print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
      Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
    end
  end

  if MissingCurlyBracketsWarning then
    print(_zRED..[[>>> [WARNING] EXML_CHANGE_TABLE first entry is Missing Curly Brackets, check your script"]].._zDEFAULT)
    Report("",[[>>> EXML_CHANGE_TABLE first entry is Missing Curly Brackets, check your script]],"WARNING")
    if _mSERIALIZING == "Y" then
      print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
      Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
    end
  end

  if not gIs_LEAN_MODE and comment ~= nil and comment ~= "" and type(comment) == "string" then
    print(_zGREEN..[[ >>> Script's ]].._zBLACKonYELLOW..[[Comment]].._zDEFAULT..[[: <<< ]].._zDEFAULT..comment.." >>>")
    Report("","[Comment] #"..item.." [["..comment.."]]")
  end

  Report_flush()

  if gDEBUG_StopAtEachProcessing then WaitForAnyKey("==============>>>>> press key for next processing...") end

  -- -- *****************   get_user_input section   ********************  
  -- if get_user_input ~= nil and type(get_user_input) == "table" then
    -- GUI = get_user_input
  -- end

  -- -- *****************   mbin_fs_discard section   ********************
  -- local Ismbin_fs_discard = MbinFsDiscard(mbin_fs_discard)

  -- *****************   IsMath_Operation section   ********************
  local IsMath_Operation = false
  math_operation = ReturnStringFrom(math_operation)
  if math_operation == nil then math_operation = "" end
  if string.len(math_operation) > 0 then
    IsMath_Operation = true
  end
  --***************************************************************************************************

  -- *****************   text_to_add section   ********************
  text_to_add = ReturnStringFrom(text_to_add)
  text_to_add = string.gsub(text_to_add,[[\\]],[[\]])
  if text_to_add ~= nil then
    local tmp = trim(text_to_add)
    if tmp == "" then
      text_to_add = ""
    -- else
      --we do not touch text_to_add, the user is responsible for the formatting
    end
  else
    text_to_add = ""
  end
  local IsTextToAdd = (text_to_add ~= "")
  if IsTextToAdd then
    text_to_add = NormalizeStrEndlines(text_to_add)
  end

  -- *****************  END: text_to_add section   ********************

  -- *****************   value_change_table section   ********************
  --Note: value_change_table is the original to create val_change_table (the normalized table)

  local val_change_table = {{"",""}}
  -- local IsChangeTable = false
  local IsSomeSamePropertyChangeTable = false
  local IsNotTheSamePropertyChangeTable = false
  local IsAllTheSameChangeTable = false
  local IsAllChangeTableIGNORE = true
  local IsVCTempty = false
  
  if value_change_table == nil then
    val_change_table[1][1] = "IGNORE"
    val_change_table[1][2] = "IGNORE"
    IsVCTempty = true
  else
    if type(value_change_table) ~= "table" then
      --not a table, just one word
      if value_change_table == "" then
        val_change_table[1][1] = "IGNORE"
        val_change_table[1][2] = "IGNORE"
        IsVCTempty = true
      else
        --Make it a table, we want a table!
        --will not crash AMUMSS but will not produce a good EXML probably
        val_change_table[1][1] = value_change_table
        val_change_table[1][2] = value_change_table
        print(_zRED..[[>>> [WARNING] this VALUE_CHANGE_TABLE entry is NOT a 'table of tables': check your script"]].._zDEFAULT)
        Report("",[[>>> this VALUE_CHANGE_TABLE entry is NOT a 'table of tables': check your script]],"WARNING")
      end
    else
      if type(value_change_table[1]) ~= "table" then
        --problem, not a table of tables
        print(_zRED..[[>>> [WARNING] this VALUE_CHANGE_TABLE entry is NOT a 'table of tables': check your script"]].._zDEFAULT)
        Report("",[[>>> this VALUE_CHANGE_TABLE entry is NOT a 'table of tables': check your script]],"WARNING")
        if _mSERIALIZING == "Y" then
          print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
          Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
        end
        value_change_table = nil
      else
        --already a table, use it
        val_change_table = value_change_table
      end
    end
  end

  -- if (#val_change_table > 0) and (val_change_table[1] ~= "" or val_change_table[2] ~= "") then
    -- IsChangeTable = true
  -- end

  for i=1,#val_change_table do
    val_change_table[i][1] = tostring(val_change_table[i][1])
    --pv(val_change_table[i][1])
    
    if val_change_table[i][1] == "nil" then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] In your script, a VALUE_CHANGE_TABLE "Property name/value" below is NIL, please correct!]].._zDEFAULT)
      Report("",[[>>> In your script, a VALUE_CHANGE_TABLE "Property name/value" below is NIL, please correct!]],"ERROR")
      if _mSERIALIZING == "Y" then
        print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
        Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
      end
      if IsMath_Operation then
        val_change_table[i][1] = "0" --to prevent a crash
      else
        val_change_table[i][1] = "NIL" --to prevent a crash
      end
    end
    
    val_change_table[i][2] = tostring(val_change_table[i][2])
    --pv(val_change_table[i][2])

    if val_change_table[i][2] == "nil" then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] In your script, VALUE_CHANGE_TABLE "newvalue" (for "]]..val_change_table[i][1]..[[" below) is NIL, please correct!]].._zDEFAULT)
      Report("",[[>>> In your script VALUE_CHANGE_TABLE "newvalue" (for "]]..val_change_table[i][1]..[[" below) is NIL, please correct!]],"ERROR")
      if _mSERIALIZING == "Y" then
        print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
        Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
      end
      if IsMath_Operation then
        val_change_table[i][2] = "NIL" --to prevent a crash
      else
        val_change_table[i][2] = "NIL" --to prevent a crash
      end
    end
    
    val_change_table[i][1] = string.gsub(val_change_table[i][1],[[\\]],[[\]])
    val_change_table[i][2] = string.gsub(val_change_table[i][2],[[\\]],[[\]])
  end

  --check if val_change_table contains multiple of the same [1]
  if #val_change_table > 1 then
    local propChangeTable = val_change_table[1][1]
    
    --do not use, interferes with IsLineOffset
    --when modder used "IGNORE" intentionally
    --if not IsVCTempty or propChangeTable ~= "IGNORE" then
    
    if propChangeTable ~= "IGNORE" then
      for i=2,#val_change_table do
        if propChangeTable == val_change_table[i][1] then
          IsSomeSamePropertyChangeTable = true
        else
          IsNotTheSamePropertyChangeTable = true
        end
      end
    end

    IsAllTheSameChangeTable = (IsSomeSamePropertyChangeTable and not IsNotTheSamePropertyChangeTable)
    
    if IsSomeSamePropertyChangeTable and IsNotTheSamePropertyChangeTable then
      --some are the same and some are not
      --could lead to problems: REPORT
      print(_zRED..[[>>> [NOTICE] In your script, some VALUE_CHANGE_TABLE "property" are duplicates, other are not, please correct!]].._zDEFAULT)
      print(_zRED..[[>>>          It could lead to unreliable replacements, please split into two EXML_CHANGE_TABLE sub-tables instead]].._zDEFAULT)
      Report("",[[>>> In your script, some VALUE_CHANGE_TABLE "property" are duplicates, other are not, please correct!]],"NOTICE")
      Report("",[[>>> It could lead to unreliable replacements, please split into two EXML_CHANGE_TABLE sub-tables instead]],"NOTICE")
    end

  end

  if #val_change_table > 1 and not IsVCTempty then
    for i=1,#val_change_table do
      if val_change_table[i][1] ~= "IGNORE" then
        IsAllChangeTableIGNORE = false
        break
      end
    end
  else
    -- only one or none
    IsAllChangeTableIGNORE = false
  end

  --  *******************************************************
  -- FROM HERE ON [value_change_table] is known as [val_change_table] (a table)
  --  *******************************************************

  -- *****************   integer_to_float section   ********************
  if integer_to_float == nil  or integer_to_float == "" then
    integer_to_float = global_integer_to_float
  end
  integer_to_float = ReturnStringFrom(integer_to_float)
  integer_to_float = string.upper(integer_to_float)

  local IsInteger_to_floatDeclared = (integer_to_float ~= "")
  local IsInteger_to_floatPRESERVE = (integer_to_float == "PRESERVE")
  local IsInteger_to_floatFORCE = (integer_to_float == "FORCE")
  if IsInteger_to_floatDeclared and not (IsInteger_to_floatPRESERVE or IsInteger_to_floatFORCE) then
    print(_zRED..[[>>> [WARNING] INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]].._zDEFAULT)
    Report(integer_to_float,[[>>> INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]],"WARNING")
  end

    -- *****************   section_save_to section   ********************
  section_save_to = ReturnStringFrom(section_save_to)
  local IsSaveSectionTo = (section_save_to ~= "")
  if section_save_to ~= "" and tonumber(section_save_to) ~= nil then
    print(_zRED..[[>>> [WARNING] SECTION_SAVE_TO is not a valid user_name_of_section STRING, it won't be used!]].._zDEFAULT)
    Report(section_save_to,[[>>> SECTION_SAVE_TO is not a valid user_name_of_section STRING, it won't be used!]],"WARNING")
    section_save_to = ""
  end

  if IsSaveSectionTo then
    gSaveSectionName[#gSaveSectionName+1] = section_save_to
    gSaveSectionContent[#gSaveSectionContent+1] = "???"
-- print("0: gSaveSectionContent[#] = ["..gSaveSectionContent[#gSaveSectionContent].."]")
    
    -- -- auto discard MBIN from MODBUILDER\MOD
    -- -- DeleteFile([[.\MOD\]]..file)
    -- DeleteFile(file)
    -- print(_zRED..">>> Discarded: ["..file.."]".._zDEFAULT)
    -- Report("",">>> Discarded: ["..file.."]")
  end

  -- *****************   section_keep section   ********************
  local IsKeepSection = SectionKeep(section_keep)
  
  -- *****************   section_edit section   ********************
  -- see before "foreach_SKWG section"
  -- *****************  END: section_edit section   ********************

  -- *****************   section_update section   ********************
  local IsUpdateSection = SectionUpdate(section_update)
  
  -- *****************   section_add_named section   ********************
  section_add_named = ReturnStringFrom(section_add_named)
  local IsUseSection_add_named = (section_add_named ~= "")
  if section_add_named ~= "" and tonumber(section_add_named) ~= nil then
    print(_zRED..[[>>> [WARNING] SECTION_ADD_NAMED is not a valid user_name_of_section STRING, it won't be used!]].._zDEFAULT)
    Report(section_add_named,[[>>> SECTION_ADD_NAMED is not a valid user_name_of_section STRING, it won't be used!]],"WARNING")
    section_add_named = ""
  end

  if IsUseSection_add_named then
    --check if this section name already exist in internal gUseSectionName list
    local SectionAlreadyExist = false
    for m=1,#gUseSectionName do
      if gUseSectionName[m] == section_add_named then
        --already in gUseSectionName, nothing more to do right now
        DEBUG_SECTION_print("@@@@@ B: In section_add_named: Found SECTION_ADD_NAMED in internal gUseSectionName list")
        SectionAlreadyExist = true
        IsTextToAdd = true
        break
      end
    end

    if not SectionAlreadyExist then
      --check if it is in the internal gSaveSectionName list
      local found = false
      for m=1,#gSaveSectionName do
        if gSaveSectionName[m] == section_add_named then
          --was saved internally, retrieve the section name/content
          DEBUG_SECTION_print("@@@@@ B: In section_add_named: Found SECTION_ADD_NAMED in the internal SECTION_SAVE_TO list")
          gUseSectionName[#gUseSectionName+1] = section_add_named
          gUseSectionContent[#gUseSectionContent+1] = gSaveSectionContent[m]
-- print("D: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
          found = true
          IsTextToAdd = true
          break
        end
      end

      if not found then
        --try to read back the lines from a file in the SavedSections folder using the section_add_named name.xml
        --if IsFileExist(gMASTER_FOLDER_PATH..[[SavedSections\]]..section_add_named..[[.txt]]) then
        if IsFileExist([[..\SavedSections\]]..section_add_named..[[.xml]]) then
          DEBUG_SECTION_print("@@@@@ B: In section_add_named: Found SECTION_ADD_NAMED in a file in the SavedSections folder using the SECTION_ADD_NAMED name.xml")
          gUseSectionName[#gUseSectionName+1] = section_add_named
          gUseSectionContent[#gUseSectionContent+1] = LoadFileData([[..\..\SavedSections\]]..section_add_named..[[.xml]])
-- print("E: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
        else
          --no such named section exist
          DEBUG_SECTION_print("@@@@@ B: In section_add_named: DID NOT find specified SECTION_ADD_NAMED: BAD NAME?")
          gUseSectionName[#gUseSectionName+1] = section_add_named
          gUseSectionContent[#gUseSectionContent+1] = ""
-- print("F: gUseSectionContent[#] = ["..gUseSectionContent[#gUseSectionContent].."]")
        end
      end
      
    end
  end
  -- *****************  END: section_add_named section   ********************

  -- *****************   to_remove section   ********************
  to_remove = ReturnStringFrom(to_remove)
  to_remove = string.upper(to_remove)

  local IsToRemove = (to_remove ~= "")
  local IsToRemoveLINE = (to_remove == "LINE")
  local IsToRemoveSECTION = (to_remove == "SECTION")
  if IsToRemove and not (IsToRemoveLINE or IsToRemoveSECTION) then
    print(_zRED..[[>>> [WARNING] REMOVE value is incorrect, should be "", "LINE" or "SECTION"]].._zDEFAULT)
    Report(to_remove,[[>>> REMOVE value is incorrect, should be "", "LINE" or "SECTION"]],"WARNING")
  -- elseif IsTextToAdd and IsToRemove then
    -- print(_zRED..[[>>> [NOTICE] BOTH ADD and REMOVE are used in this EXML_CHANGE_TABLE section]].._zDEFAULT)
    -- Report("",[[>>> BOTH ADD and REMOVE are used in this EXML_CHANGE_TABLE section]],"NOTICE")
  end
  -- *****************  END: to_remove section   ********************

  -- *****************   preceding_first section   ********************
  preceding_first = ReturnStringFrom(preceding_first)
  preceding_first = string.upper(preceding_first)

  local IsPrecedingFirst = (preceding_first ~= "")

  local IsPrecedingFirstTRUE = (preceding_first == "TRUE")
  local IsPrecedingFirstFALSE = (preceding_first == "FALSE") --only use next line
  if IsPrecedingFirst and not (IsPrecedingFirstTRUE or IsPrecedingFirstFALSE) then
    print(_zRED..[[>>> [WARNING] PRECEDING_FIRST value is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    Report(preceding_first,[[>>> PRECEDING_FIRST value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

  -- *****************   find_all_sections section   ********************
  find_all_sections = ReturnStringFrom(find_all_sections)
  find_all_sections = string.upper(find_all_sections)

  local IsFindAllSections = (find_all_sections ~= "")

  local IsFindAllSectionsTRUE = (find_all_sections == "TRUE")
  local IsFindAllSectionsFALSE = (find_all_sections == "FALSE")
  if IsFindAllSections and not (IsFindAllSectionsTRUE or IsFindAllSectionsFALSE) then
    print(_zRED..[[>>> [WARNING] FIND_ALL_SECTIONS value is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    Report(find_all_sections,[[>>> FIND_ALL_SECTIONS value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

  -- *****************   replace_type section   ********************
  replace_type = ReturnStringFrom(replace_type)
  replace_type = string.upper(replace_type)

  -- to preserve backward compatibility
  local tmpIsADDAFTERSECTION = false
  if replace_type == "ADDAFTERSECTION" then
    tmpIsADDAFTERSECTION = true
    replace_type = ""
  end

  local IsOrgReplace_typeEmpty = false
  if replace_type == "" then
    IsOrgReplace_typeEmpty = true
    replace_type = "ONCE"
  end

  local IsReplaceONCE = (replace_type == "ONCE")
  local IsReplaceALL = (replace_type == "ALL")
  local IsReplaceAllInSection = (replace_type == "ALLINSECTION")
  local IsReplaceFOLLOWING = (replace_type == "FOLLOWING")
  local IsReplaceRAW = (replace_type == "RAW")

  if IsReplaceRAW then
    -- when using RAW, it implies that ALL is used also
    IsReplaceALL = true
  end

  local IsReplace = (replace_type ~= "")
  if IsReplace then
    if not IsTextToAdd and not (IsReplaceONCE or IsReplaceALL or IsReplaceAllInSection or IsReplaceFOLLOWING or IsReplaceRAW) then
      -- print(_zRED..[[>>> [WARNING] REPLACE_TYPE value is incorrect, should only be "", "ONCE", "ALL", "ALLINSECTION", "FOLLOWING" or "RAW"]].._zDEFAULT)
      -- Report(replace_type,[[>>> REPLACE_TYPE value is incorrect, should only be "", "ONCE", "ALL", "ALLINSECTION", "FOLLOWING" or "RAW": found]],"WARNING")
      print(_zRED..[[>>> [WARNING] REPLACE_TYPE value is incorrect, should only be "", "ONCE", "ALL", "ALLINSECTION" or "RAW"]].._zDEFAULT)
      Report(replace_type,[[>>> REPLACE_TYPE value is incorrect, should only be "", "ONCE", "ALL", "ALLINSECTION" or "RAW": found]],"WARNING")
      IsReplace = false
    end
  else
    --set DEFAULT value
    IsReplace = true
    IsReplaceONCE = true
  end

  -- *****************   add_option section   ********************
  add_option = ReturnStringFrom(add_option)
  add_option = string.upper(add_option)

  if IsTextToAdd then
    if add_option == "" then
      if tmpIsADDAFTERSECTION then
        --for backward compatibility from REPLACE_TYPE
        add_option = "ADDAFTERSECTION"
      else
        --default option
        add_option = "ADDAFTERLINE"
      end
    end
  end

  if add_option == "ADDATLINE" then
    add_option = "REPLACEATLINE" --for backward compatibility
  end

  local IsReplaceADDAFTERSECTION = (add_option == "ADDAFTERSECTION") and IsTextToAdd
  local IsReplaceADDAFTERLINE = (add_option == "ADDAFTERLINE") and IsTextToAdd
  local IsReplaceATLINE = (add_option == "REPLACEATLINE") and IsTextToAdd

  local IsAddOption = (add_option ~= "")
  if IsAddOption then
    if IsTextToAdd and not (IsReplaceADDAFTERSECTION or IsReplaceADDAFTERLINE or IsReplaceATLINE) then
      print(_zRED..[[>>> [WARNING] ADD_OPTION value is incorrect, should only be "", "REPLACEATLINE", "ADDafterLINE" or "ADDafterSECTION"]].._zDEFAULT)
      Report(replace_type,[[>>> ADD_OPTION value is incorrect, should only be "", "REPLACEATLINE", "ADDafterLINE" or "ADDafterSECTION"]],"WARNING")
      IsAddOption = false
    end
  end

  -- *****************   value_match section   ********************
  local val_match = {}
  local IsValueMatch = false

  if value_match == nil then
    value_match = ""
  end
  
  if type(value_match) ~= 'table' then
    value_match = ReturnStringFrom(value_match)
    val_match[1] = value_match
    IsValueMatch = (val_match[1] ~= "")
  else
    --make all non-empty members STRING
    for i=1,#value_match do
      local val = ReturnStringFrom(value_match[i])
      if val ~= "" then
        val_match[i] = val
        IsValueMatch = true
      end
    end
  end

  for i=1,#val_match do
    local vm = val_match[i]
    local IsRegEx = IsExpressionRegular(vm)
    if IsRegEx then
      IsReplaceALL = true
      IsReplaceONCE = false
    end
    
    if (string.sub(vm,1,1) == "{" and string.sub(vm,1,3) ~= "{:}" and string.sub(vm,-1,-1) ~= "}") or (string.sub(vm,1,1) ~= "{" and string.sub(vm,-1,-1) == "}" and string.sub(vm,-1,-3) ~= "{:}") then
      print(_zRED..[[>>> [WARNING] VALUE_MATCH value ]]..vm..[[ is incorrect.  Inconsistent use of curly brackets {}]].._zDEFAULT)
      Report(replace_type,[[>>> VALUE_MATCH value ]]..vm..[[ is incorrect.  Inconsistent use of curly brackets {}]],"WARNING")
    end
    -- here, we keep val_match[i] original value
  end
  
  if IsValueMatch then
    --pre-process all val_match
    local v_match = {}
    for i=1,#val_match do
      local v = val_match[i]
      v = NormalizePath(v)
      local value_matchIsNumber, value_matchIsInteger = CheckValueType(v,false)
      
      local IsRegEx,vm = makeRegExUppercase(v)

      v_match[i] = {}
      v_match[i][1] = v --the original
      v_match[i][2] = vm --the cleaned value
      v_match[i][3] = value_matchIsNumber
      v_match[i][4] = value_matchIsInteger
      v_match[i][5] = IsRegEx

      -- print(" original: v_match["..i.."][1] = ["..v_match[i][1].."]")
      -- print("       vm: v_match["..i.."][2] = ["..v_match[i][2].."]")
      -- print(" IsNumber: v_match["..i.."][3] = ["..tostring(v_match[i][3]).."]")
      -- print("IsInteger: v_match["..i.."][4] = ["..tostring(v_match[i][4]).."]")
      -- print("  IsRegEx: v_match["..i.."][5] = ["..tostring(v_match[i][5]).."]")
      -- print("=====")
    end
    
    --check for mixed STRING and NUMBER
    local IsMixedValues = false
    for i=2,#v_match do
      if v_match[i-1][3] ~= v_match[i][3] then
        IsMixedValues = true
        break
      end
    end
    
    if IsMixedValues then
      print(_zRED..[[>>> [WARNING] MIXED use of STRING and NUMBER, all will be considered STRING]].._zDEFAULT)
      Report(replace_type,[[>>> MIXED use of STRING and NUMBER, all will be considered STRING]],"WARNING")
      for i=1,#v_match do
        v_match[i][3] = false
      end
    end
    
    val_match = v_match
  end

  --  *******************************************************
  -- FROM HERE ON [value_match] is known as [val_match] (a table)
  --  *******************************************************

  -- *****************   value_match_type section   ********************
  value_match_type = ReturnStringFrom(value_match_type)
  value_match_type = string.upper(value_match_type)

  local IsValueMatchType = (value_match_type ~= "")
  local IsValueMatchTypeNumber = (value_match_type == "NUMBER")
  local IsValueMatchTypeString = (value_match_type == "STRING")

  if IsValueMatch and IsValueMatchType and not (IsValueMatchTypeNumber or IsValueMatchTypeString) then
    print(_zRED..[[>>> [WARNING] VALUE_MATCH_TYPE value is incorrect, should be "", "NUMBER" or "STRING"]].._zDEFAULT)
    Report(value_match_type,[[>>> VALUE_MATCH_TYPE value is incorrect, should be "", "NUMBER" or "STRING"]],"WARNING")
    IsValueMatchType = false
  end

  -- *****************   value_match_options section   ********************
  value_match_options = ReturnStringFrom(value_match_options)

  if value_match_options == "" then
    value_match_options = "="
  end
  local IsValueMatchOptions = true

  value_match_options = string.upper(value_match_options)
  local IsValueMatchOptionsMatch = (value_match_options == "=")
  local IsValueMatchOptionsNoMatch = (value_match_options == "~=")
  local IsValueMatchOptionsLSS = (value_match_options == "<")
  local IsValueMatchOptionsLEQ = (value_match_options == "<=")
  local IsValueMatchOptionsGTR = (value_match_options == ">")
  local IsValueMatchOptionsGEQ = (value_match_options == ">=")
  -- print("IsValueMatchOptions = "..tostring(IsValueMatchOptions))
  -- print("IsValueMatchOptionsLSS = "..tostring(IsValueMatchOptionsLSS))
-- WaitForAnyKey("value_match_options, press key...")
  if IsValueMatch and IsValueMatchOptions
      and not (IsValueMatchOptionsMatch
            or IsValueMatchOptionsNoMatch
            or IsValueMatchOptionsLSS
            or IsValueMatchOptionsLEQ
            or IsValueMatchOptionsGTR
            or IsValueMatchOptionsGEQ) then
    print(_zRED..[[>>> [WARNING] VALUE_MATCH_OPTIONS value is incorrect, should be "", "=", "~=", "<", "<=", ">" or ">="]].._zDEFAULT)
    Report(IsValueMatchOptions,[[>>> VALUE_MATCH_OPTIONS value is incorrect, should be "", "=", "~=", "<", "<=", ">" or ">="]],"WARNING")
    IsValueMatchOptions = false
  end
  
  for i=1,#val_match do
    if not val_match[i][3] and (
                 IsValueMatchOptionsLSS
              or IsValueMatchOptionsLEQ
              or IsValueMatchOptionsGTR
              or IsValueMatchOptionsGEQ) then
      print(_zRED..[[>>> [WARNING] Incorrect value of VALUE_MATCH_OPTIONS used with VALUE_MATCH, should be "", "=" or "~="]].._zDEFAULT)
      Report(IsValueMatchOptions,[[>>> Incorrect value of VALUE_MATCH_OPTIONS used with VALUE_MATCH, should be "", "=" or "~="]],"WARNING")
      IsValueMatchOptions = false
      break
    end
  end

  --***************************************************************************************************
  local function CheckValueMatchOptions(val_match,exstring)
    --doing an AND of all the VALUE_MATCH fields
    local p = function() end
    -- local p = print
    
    local matchResult = false
    
    if exstring == nil then
      return matchResult
    end
    
    local valueIsNumber, valueIsInteger = CheckValueType(exstring,false)
    p("=====")
    p(" - valueIsNumber = ["..tostring(valueIsNumber).."]")
    p(" - valueIsInteger = ["..tostring(valueIsInteger).."]")
    
    if not valueIsNumber then
      exstring = string.upper(exstring)
    end
    p(" - exstring = ["..exstring.."]")
    
    for i=1,#val_match do
      local V = val_match[i]
      local vm = V[2]
      local value_matchIsNumber = V[3]
      local value_matchIsInteger = V[4]
      local IsRegEx = V[5]
      
      p(" - original = ["..tostring(V[1]).."]")
      p("   - vm = ["..vm.."]")      
      p("   - value_matchIsNumber = ["..tostring(value_matchIsNumber).."]")
      p("   - value_matchIsInteger = ["..tostring(value_matchIsInteger).."]")
      p("   - IsRegEx = ["..tostring(IsRegEx).."]")
      
      -- we need vm without <>
      local IsNumber = false
      local IsString = false
      if valueIsNumber and value_matchIsNumber then
        --ok to compare as NUMBER
        IsNumber = true
        if not valueIsInteger then
          v = string.round(exstring)
          vm = string.round(vm)
        end
      elseif not valueIsNumber and not value_matchIsNumber then
        --ok to compare as STRING
        IsString = true
      else
        --cannot compare
        matchResult = false
      end

      p("   - IsString = ["..tostring(IsString).."]")
      p("   - IsNumber = ["..tostring(IsNumber).."]")

      if IsString then
        if IsRegEx then
          p("     - vm = ["..vm.."]")
          p("     -  v = ["..exstring.."]")
          --let us use lua regular pattern matching
          if IsValueMatchOptionsMatch then
            matchResult = matchResult or (string.find(exstring,vm) ~= nil)
            -- if matchResult then
              -- p("exstring = ["..exstring.."]")
              -- p("vm = [["..vm.."]]")
              -- p("match col = ["..tostring(string.find(exstring,vm)).."]")
            -- end
          elseif IsValueMatchOptionsNoMatch then
            matchResult = matchResult or (string.find(exstring,vm) == nil)
          end
        else
          if IsValueMatchOptionsMatch then
            matchResult = matchResult or (exstring == vm)
          elseif IsValueMatchOptionsNoMatch then
            matchResult = matchResult or (exstring ~= vm)
          end
        end

      elseif IsNumber then
        if IsValueMatchOptionsMatch then
          matchResult = matchResult or (tonumber(exstring) == tonumber(vm))
        elseif IsValueMatchOptionsNoMatch then
          matchResult = matchResult or (tonumber(exstring) ~= tonumber(vm))
        elseif IsValueMatchOptionsLSS then
          matchResult = matchResult or (tonumber(exstring) < tonumber(vm))
        elseif IsValueMatchOptionsLEQ then
          matchResult = matchResult or (tonumber(exstring) <= tonumber(vm))
        elseif IsValueMatchOptionsGTR then
          matchResult = matchResult or (tonumber(exstring) > tonumber(vm))
        elseif IsValueMatchOptionsGEQ then
          matchResult = matchResult or (tonumber(exstring) >= tonumber(vm))
        end
      end
      
      p("   - matchResult = ["..tostring(matchResult).."]")
    end --for i=1,#val_match do
    
    p("=====")
    return matchResult
  end
  --***************************************************************************************************

  -- *****************   notice_off section   ********************
  notice_off = ReturnStringFrom(notice_off)
  notice_off = string.upper(notice_off)
  if notice_off == "" then
    notice_off = "FALSE"
  end

  local IsNotice_off = (notice_off ~= "")

  local IsNotice_offTRUE = (notice_off == "TRUE")
  local IsNotice_offFALSE = (notice_off == "FALSE")
  if IsNotice_off and not (IsNotice_offTRUE or IsNotice_offFALSE) then
    print(_zRED..[[>>> [WARNING] NOTICE_OFF exstring is incorrect, should be "", "TRUE" or "FALSE"]].._zDEFAULT)
    Report(notice_off,[[>>> NOTICE_OFF value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
    IsNotice_off = false
  else
    IsNotice_off = IsNotice_offTRUE
  end

  -- *****************   IsLineOffset section   ********************
  local IsLineOffset = (line_offset ~= nil and line_offset ~= "")
  -- print("line_offset = ["..tostring(line_offset).."]")
  -- print("IsLineOffset = ["..tostring(IsLineOffset).."]")

  -- if IsLineOffset == true then scripts uses LINE_OFFSET

  local line_offsetNumber = 0
  if IsLineOffset then
    line_offsetNumber = (tonumber(line_offset) or math.huge)
    if IsLineOffset and line_offsetNumber == math.huge then
      print(_zRED..[[>>> [WARNING] LINE_OFFSET value type is incorrect, should be "" or "+/- a number"]].._zDEFAULT)
      Report(line_offset,[[>>> LINE_OFFSET value type is incorrect, should be "" or "+/- a number"]],"WARNING")
    end
  else
    line_offset = 0
  end
  
  local offset = 0
  local offset_sign = "+"
  if IsLineOffset then
    if line_offsetNumber < 0 then
      offset_sign = "-"
    end
    offset = math.abs(math.tointeger(line_offsetNumber))
  end
  
  DEBUG_CurrentLine_print("@@@ IsLineOffset = ["..tostring(IsLineOffset).."]")
  DEBUG_CurrentLine_print("@@@ offset = "..offset)

  -- *****************   special_key_words section   ********************
  local spec_key_words = {}
  local IsSpecialKeyWords = false
  local DoEmptyTest = true

  local special_key_wordsBadTable = false
  if special_key_words == nil then
    pv("special_key_words is nil")
    spec_key_words[1] = ""
    spec_key_words[2] = ""
    DoEmptyTest = false
  else
    if type(special_key_words) ~= "table" then
      pv("special_key_words is not a table")
      if special_key_words == "" then
        --nothing to do
        DoEmptyTest = false
      else
        --Not a table AND only one value: problem
        pv("special_key_words == Only one value, problem!")
        spec_key_words[1] = special_key_words
      end
    else
      if type(special_key_words[1]) == "table" then
        --problem
        special_key_wordsBadTable = true

      else
        --already a simple table, use it
        pv("special_key_words is a table")
        spec_key_words = special_key_words
      end
    end
  end

  -- --to remove empty words
  -- local tempTable = {}
  -- for i=1,#spec_key_words do
    -- if spec_key_words[i] ~= "" then
      -- tempTable[i] = string.gsub(spec_key_words[i],[[\\]],[[\]])
    -- end
  -- end
  -- spec_key_words = tempTable

  if special_key_wordsBadTable then
    print("")
    print(_zRED..[[>>> [WARNING] SPECIAL_KEY_WORDS first entry is a table, in your script"]].._zDEFAULT)
    Report("",[[>>> SPECIAL_KEY_WORDS first entry is a table, in your script]],"WARNING")
    if _mSERIALIZING == "Y" then
      print(_zRED..[[>>>          Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]].._zDEFAULT)
      Report("",[[>>> Check SerializedScript.lua (if it was generated) to see how your script shows to AMUMSS]],"WARNING")
    end
  end

  if DoEmptyTest and #spec_key_words > 0 then
    if (#spec_key_words >= 2 and #spec_key_words%2 == 0) then
      IsSpecialKeyWords = true
    end

    if #spec_key_words == 1 then
      --only one spec_key_words: problem
      print("")
      print(_zRED..">>> [WARNING] SPECIAL_KEY_WORDS will be IGNORED: ONLY ONE (name or value).  Please correct your script!".._zDEFAULT)
      Report("","SPECIAL_KEY_WORDS will be IGNORED: ONLY ONE (name or value).  Please correct your script!","WARNING")
    elseif #spec_key_words%2 ~= 0 then
      --odd number of spec_key_words: problem
      print("")
      print(_zRED..">>> [WARNING] SPECIAL_KEY_WORDS will be IGNORED: ODD number of (name or value).  Please correct your script!".._zDEFAULT)
      Report("","SPECIAL_KEY_WORDS will be IGNORED: ODD number of (name or value).  Please correct your script!","WARNING")
    end

    -- if IsSpecialKeyWords and (spec_key_words[1] == "" or spec_key_words[2] == "") then
      -- --one or both keywords are empty
      -- print("")
      -- print(_zRED..">>> [WARNING] SPECIAL_KEY_WORDS will be IGNORED: empty string found.  Please correct your script!".._zDEFAULT)
      -- Report("","SPECIAL_KEY_WORDS will be IGNORED: empty string found.  Please correct your script!","WARNING")
    -- end

    if DoEmptyTest then
      local EmptyWord = false
      for i=1,#spec_key_words do
        if spec_key_words[i] == "" then
          EmptyWord = true
          break
        end
      end

      if IsSpecialKeyWords and EmptyWord then
        --at least one keyword is empty
        print("")
        print(_zRED..">>> [WARNING] SPECIAL_KEY_WORDS may be IGNORED: at least one empty string found.  Please correct your script!".._zDEFAULT)
        Report("","SPECIAL_KEY_WORDS may be IGNORED: at least one empty string found.  Please correct your script!","WARNING")
        spec_key_words = {"",""}
        IsSpecialKeyWords = false
      end
    end

  end

  local EmptySpecialKeyWords = ""
  if DoEmptyTest then
    EmptySpecialKeyWords = " empty words"
  end
  pv("# spec_key_words = "..#spec_key_words..EmptySpecialKeyWords)
  pv(GetSpecKeyWordsInfo(spec_key_words))

  --  *******************************************************
  -- FROM HERE ON [special_key_words] is known as [spec_key_words] (a table)
  --  *******************************************************

  -- *****************   preceding_key_words section   ********************
  local IsPrecedingKeyWords = false
  local IsOnePrecedingWordOnly = false
  local FirstPrecedingWordNotEmpty = 0

  if preceding_key_words == nil then preceding_key_words = "" end
  local prec_key_words = {}
  if type(preceding_key_words) ~= "table" then
    --not a table, just one word
    --Make it a table, we want a table!
    prec_key_words[1] = preceding_key_words
    IsOnePrecedingWordOnly = true

    if prec_key_words[1] == "" then
      IsOnePrecedingWordOnly = false
      IsPrecedingKeyWords = false
    else
      IsPrecedingKeyWords = true
      FirstPrecedingWordNotEmpty = 1
    end

  else
    --already a table, use it
    prec_key_words = preceding_key_words

    --to remove empty words
    local tempTable = {}
    for i=1,#prec_key_words do
      if prec_key_words[i] ~= "" then
        tempTable[i] = string.gsub(prec_key_words[i],[[\\]],[[\]])
      end
    end
    prec_key_words = tempTable

    --one or many words
    --maybe empty or not
    if #prec_key_words > 1 then
      IsOnePrecedingWordOnly = false
      FirstPrecedingWordNotEmpty = 1
      IsPrecedingKeyWords = true
    elseif #prec_key_words == 1 then
      --only one word
      IsOnePrecedingWordOnly = true
      IsPrecedingKeyWords = true
      FirstPrecedingWordNotEmpty = 1
    else
      IsPrecedingKeyWords = false
      prec_key_words[1] = ""
    end
  end

  pv("# prec_key_words = "..#prec_key_words)
  pv(GetPrecKeyWordsInfo(prec_key_words))

  --  *******************************************************
  -- FROM HERE ON [preceding_key_words] is known as [prec_key_words] (a table)
  --  *******************************************************

  -- *****************   section_up section   ********************
  if section_up == nil then
    section_up = 0
  else
    if type(section_up) ~= "number" then
      print(_zRED..">>> [WARNING] SECTION_UP is not a proper number, please correct your script!".._zDEFAULT)
      Report("",">>> SECTION_UP is not a proper number, please correct your script!","WARNING")
      section_up = 0
    end
  end
  section_up = math.tointeger(math.abs(tonumber(section_up)))
  pv("section_up = "..section_up)
  -- ***************** END: section_up section   ********************

  -- *****************   section_up_special section   ********************
  if section_up_special == nil then
    section_up_special = 0
  else
    if type(section_up_special) ~= "number" then
      print(_zRED..">>> [WARNING] SECTION_UP_SPECIAL is not a proper number, please correct your script!".._zDEFAULT)
      Report("",">>> SECTION_UP_SPECIAL is not a proper number, please correct your script!","WARNING")
      section_up = 0
    end
  end
  section_up_special = math.tointeger(math.abs(tonumber(section_up_special)))
  pv("section_up_special = "..section_up_special)
  -- ***************** END: section_up_special section   ********************

  -- *****************   section_up_preceding section   ********************
  -- NOT USED
  --this line effectively deactivates SECTION_UP_PRECEDING
  section_up_preceding = 0

  if section_up_preceding == nil then
    section_up_preceding = 0
  else
    if type(section_up_preceding) ~= "number" then
      print(_zRED..">>> [WARNING] SECTION_UP_PRECEDING is not a proper number, please correct your script!".._zDEFAULT)
      Report("",">>> SECTION_UP_PRECEDING is not a proper number, please correct your script!","WARNING")
      section_up = 0
    end
  end
  section_up_preceding = math.tointeger(math.abs(tonumber(section_up_preceding)))
  pv("section_up_preceding = "..section_up_preceding)
  -- ***************** END: section_up_preceding section   ********************

  -- *****************   where_key_words section   ********************
  local WhereKeyWords = {{"",""}}
  local IsWhereKeyWords = false

  if where_key_words == nil or where_key_words == "" then
    WhereKeyWords[1][1] = "IGNORE"
    WhereKeyWords[1][2] = "IGNORE"
  else
    if type(where_key_words) ~= "table" then
      --not a table, make it a table
      print(_zRED..">>> [WARNING] WHERE_IN_SECTION is not a proper table of tables, please correct your script!".._zDEFAULT)
      Report("",">>> WHERE_IN_SECTION is not a proper table of tables, please correct your script!","WARNING")
      WhereKeyWords[1][1] = "IGNORE"
      WhereKeyWords[1][2] = "IGNORE"
    else
      --already a table, use it
      local NotTableOfTables = false
      local NotTwoItems = false
      for i=1,#where_key_words do
        if type(where_key_words[i]) ~= "table" then
          NotTableOfTables = true
          break
        elseif #where_key_words[i] ~= 2 then
          NotTwoItems = true
          break
        end
      end
      if NotTableOfTables then
        print(_zRED..">>> [WARNING] WHERE_IN_SECTION is not a proper table of tables, please correct your script!".._zDEFAULT)
        Report("",">>> WHERE_IN_SECTION is not a proper table of tables, please correct your script!","WARNING")
      end
      if NotTwoItems then
        print(_zRED..">>> [WARNING] WHERE_IN_SECTION tables should have two items each, please correct your script!".._zDEFAULT)
        Report("",">>> WHERE_IN_SECTION tables should have two items each, please correct your script!","WARNING")
      end
      if not NotTableOfTables and not NotTwoItems then
        --we can use it
        WhereKeyWords = where_key_words
      else
        WhereKeyWords[1][1] = "IGNORE"
        WhereKeyWords[1][2] = "IGNORE"
      end
    end
  end

  for i=1,#WhereKeyWords do
    if WhereKeyWords[i][1] == nil then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] A WHERE_IN_SECTION "Property name/value" is nil, please correct your script!]].._zDEFAULT)
      Report("",[[>>> A WHERE_IN_SECTION "Property name/value" is nil, please correct your script!]],"ERROR")
      WhereKeyWords[i][1] = "IGNORE" --to prevent a crash
      break
    end
    if WhereKeyWords[i][2] == nil then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] A WHERE_IN_SECTION "newvalue" is nil, please correct your script!]].._zDEFAULT)
      Report("",[[>>> A WHERE_IN_SECTION "newvalue" is nil, please correct your script!]],"ERROR")
      WhereKeyWords[i][2] = "IGNORE" --to prevent a crash
      break
    end
    
    WhereKeyWords[i][1] = string.gsub(WhereKeyWords[i][1],[[\\]],[[\]])
    
    if type(WhereKeyWords[i][2]) == "number" then
      WhereKeyWords[i][2] = tostring(WhereKeyWords[i][2])
    else
      WhereKeyWords[i][2] = string.gsub(WhereKeyWords[i][2],[[\\]],[[\]])
    end
  end

  if (#WhereKeyWords > 0) and (WhereKeyWords[1][1] ~= "IGNORE" or WhereKeyWords[1][2] ~= "IGNORE") then
    IsWhereKeyWords = true
    IsReplaceALL = true
  end

  --  *******************************************************
  -- FROM HERE ON [where_key_words] is known as [WhereKeyWords] (a table of tables)
  --  *******************************************************

  -- *****************   wi_sec_lop section   ********************
  wi_sec_lop = ReturnStringFrom(wi_sec_lop)
  wi_sec_lop = string.upper(wi_sec_lop)

  local IsWiSecLop = (wi_sec_lop ~= "")

  local IsWiSecLopOR = (wi_sec_lop == "OR") --default
  local IsWiSecLopAND = (wi_sec_lop == "AND")
  if IsWiSecLop and not (IsWiSecLopOR or IsWiSecLopAND) then
    print(_zRED..[[>>> [WARNING] WISEC_LOP value is incorrect, should be "", "OR" or "AND"]].._zDEFAULT)
    Report(wi_sec_lop,[[>>> WISEC_LOP value is incorrect, should be "", "OR" or "AND"]],"WARNING")
  end

  if not IsWiSecLopAND then
    IsWiSecLopOR = true --default
  end

  -- *****************   subwhere_key_words section   ********************
  local SubWhereKeyWords = {{"",""}}
  local IsSubWhereKeyWords = false

  if subwhere_key_words == nil or subwhere_key_words == "" then
    SubWhereKeyWords[1][1] = "IGNORE"
    SubWhereKeyWords[1][2] = "IGNORE"
  else
    if type(subwhere_key_words) ~= "table" then
      --not a table, make it a table
      print(_zRED..">>> [WARNING] WHERE_IN_SUBSECTION is not a proper table of tables, please correct your script!".._zDEFAULT)
      Report("",">>> WHERE_IN_SUBSECTION is not a proper table of tables, please correct your script!","WARNING")
      SubWhereKeyWords[1][1] = "IGNORE"
      SubWhereKeyWords[1][2] = "IGNORE"
    else
      --already a table, use it
      local NotTableOfTables = false
      local NotTwoItems = false
      for i=1,#subwhere_key_words do
        if type(subwhere_key_words[i]) ~= "table" then
          NotTableOfTables = true
          break
        elseif #subwhere_key_words[i] ~= 2 then
          NotTwoItems = true
          break
        end
      end
      if NotTableOfTables then
        print(_zRED..">>> [WARNING] WHERE_IN_SUBSECTION is not a proper table of tables, please correct your script!".._zDEFAULT)
        Report("",">>> WHERE_IN_SUBSECTION is not a proper table of tables, please correct your script!","WARNING")
      end
      if NotTwoItems then
        print(_zRED..">>> [WARNING] WHERE_IN_SUBSECTION tables should have two items each, please correct your script!".._zDEFAULT)
        Report("",">>> WHERE_IN_SUBSECTION tables should have two items each, please correct your script!","WARNING")
      end
      if not NotTableOfTables and not NotTwoItems then
        --we can use it
        SubWhereKeyWords = subwhere_key_words
      end
    end
  end

  for i=1,#SubWhereKeyWords do
    if SubWhereKeyWords[i][1] == nil then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] A WHERE_IN_SUBSECTION "Property name/value" is nil, please correct your script!]].._zDEFAULT)
      Report("",[[>>> A WHERE_IN_SUBSECTION "Property name/value" is nil, please correct your script!]],"ERROR")
      SubWhereKeyWords[i][1] = "IGNORE" --to prevent a crash
      break
    end
    if SubWhereKeyWords[i][2] == nil then
      --we have a problem, should not be nil
      print(_zRED..[[>>> [ERROR] A WHERE_IN_SUBSECTION "newvalue" is nil, please correct your script!]].._zDEFAULT)
      Report("",[[>>> A WHERE_IN_SUBSECTION "newvalue" is nil, please correct your script!]],"ERROR")
      SubWhereKeyWords[i][2] = "IGNORE" --to prevent a crash
      break
    end
    
    SubWhereKeyWords[i][1] = string.gsub(SubWhereKeyWords[i][1],[[\\]],[[\]])
    
    if type(SubWhereKeyWords[i][2]) == "number" then
      SubWhereKeyWords[i][2] = tostring(SubWhereKeyWords[i][2])
    else
      SubWhereKeyWords[i][2] = string.gsub(SubWhereKeyWords[i][2],[[\\]],[[\]])
    end
  end

  if (#SubWhereKeyWords > 0) and (SubWhereKeyWords[1][1] ~= "IGNORE" or SubWhereKeyWords[1][2] ~= "IGNORE") then
    IsSubWhereKeyWords = true
    IsReplaceALL = true
  end

  --  *******************************************************
  -- FROM HERE ON [subwhere_key_words] is known as [SubWhereKeyWords] (a table of tables)
  --  *******************************************************

  -- *****************   wisub_sec_lop section   ********************
  wisub_sec_lop = ReturnStringFrom(wisub_sec_lop)
  wisub_sec_lop = string.upper(wisub_sec_lop)

  local IsWisubSecLop = (wisub_sec_lop ~= "")

  local IsWisubSecLopOR = (wisub_sec_lop == "OR") --default
  local IsWisubSecLopAND = (wisub_sec_lop == "AND")
  if IsWisubSecLop and not (IsWisubSecLopAND or IsWisubSecLopOR) then
    print(_zRED..[[>>> [WARNING] WISUBSEC_LOP value is incorrect, should be "", "AND" or "OR"]].._zDEFAULT)
    Report(wisub_sec_lop,[[>>> WISUBSEC_LOP value is incorrect, should be "", "AND" or "OR"]],"WARNING")
  end

  if not IsWisubSecLopAND then
    IsWisubSecLopOR = true --default
  end

  -- *****************   wisub_sec_option section   ********************
  wisub_sec_option = ReturnStringFrom(wisub_sec_option)
  wisub_sec_option = string.upper(wisub_sec_option)

  local IsWisubSecOption = (wisub_sec_option ~= "")

  local IsWisubSecOptionONCE = (wisub_sec_option == "ONCE") --default
  local IsWisubSecOptionALL = (wisub_sec_option == "ALL")
  if IsWisubSecOption and not (IsWisubSecOptionONCE or IsWisubSecOptionALL) then
    print(_zRED..[[>>> [WARNING] WISUBSEC_OPTION value is incorrect, should be "", "ONCE" or "ALL"]].._zDEFAULT)
    Report(wisub_sec_option,[[>>> WISUBSEC_OPTION value is incorrect, should be "", "ONCE" or "ALL"]],"WARNING")
  end

  if not IsWisubSecOptionALL then
    IsWisubSecOptionONCE = true --default
  end

  -- *****************   section_active section   ********************
  local SectionActive = {}
  local IsSectionActive = false
  local badEntry = false

  if section_active == nil then
    --nothing to do
  elseif type(section_active) ~= "number" and type(section_active) ~= "string" and type(section_active) ~= "table" then
    badEntry = true
  else
    if type(section_active) == "number" then
      if math.abs(section_active) >= 0 then
        table.insert(SectionActive,section_active)
        IsSectionActive = true
      end

    elseif type(section_active) == "string" then
      local sa = math.tointeger(tonumber(section_active))
      if sa ~= nil then
        if math.abs(sa) >= 0 then
          table.insert(SectionActive,sa)
          IsSectionActive = true
        end
      else
        badEntry = true
      end

    elseif type(section_active) == "table" then
      for i=1,#section_active do
        if type(section_active[i]) == "number" then
          if math.abs(section_active[i]) >= 0 then
            SectionActive[i] = section_active[i]
            IsSectionActive = true
          end

        elseif type(section_active[i]) == "string" then
          local sa = math.tointeger(tonumber(section_active[i]))
          if sa ~= nil then
            if math.abs(sa) >= 0 then
              SectionActive[i] = sa
              IsSectionActive = true
            end
          else
            badEntry = true
            break
          end
        else
          badEntry = true
          break
        end
      end
    end
  end

  if badEntry then
    print(_zRED..">>> [WARNING] SECTION_ACTIVE is not a proper number or table of numbers, please correct your script!".._zDEFAULT)
    Report("",">>> SECTION_ACTIVE is not a proper number or table of numbers, please correct your script!","WARNING")
    SectionActive = {}
    IsSectionActive = false
  end

  local IsSectionActiveNegative = false
  --makes all positive
  for i=1,#SectionActive do
    if SectionActive[i] < 0 then
      SectionActive[i] = math.abs(SectionActive[i])
      IsSectionActiveNegative = true
    end
  end

  --================================================================
  local function SortList(one,two)
    return (one < two)
  end
  --================================================================

  if #SectionActive == 1 and SectionActive[1] == 0 then
    --only one section and 0
    IsSectionActive = false
  end

  if #SectionActive > 0 then
    --sort ascending
    table.sort(SectionActive,SortList)
  end

-- --DEBUG
-- for m=1,#SectionActive do
  -- print("- SectionActive["..m.."] = "..SectionActive[m])
-- end
-- print("IsSectionActiveNegative = "..tostring(IsSectionActiveNegative))
-- print("")

  if IsSectionActive then
    if IsSectionActiveNegative then
      IsReplaceONCE = true
      IsReplaceALL = false
    else
      IsReplaceONCE = false
      IsReplaceALL = true
    end
  end

  --  *******************************************************
  -- FROM HERE ON [section_active] is known as [SectionActive] (a table of numbers)
  --  *******************************************************

  -- *****************   get_user_input section   ********************
  -- userInput = {
  --      {prompt1,userName1,userValue1},
  --      {prompt2,userName2,userValue2},
  --      ...
  --      }
  -- 
  -- local userInput = {}
  -- *****************   END: get_user_input section   ********************

  -- *****************   ISxxx section   ********************
  --local IsReplaceAllInGroup = IsReplace and ((IsPrecedingKeyWords and (not IsOnePrecedingWordOnly)) or IsSpecialKeyWords)
  local IsWholeFileSearch = (not IsPrecedingKeyWords and not IsSpecialKeyWords) or IsReplace and (not IsReplaceAllInGroup)
  
  if _mISxxx then
    print("")
    print(" + AFTER all preparations...")
    print(" +                 IsReplace: ["..tostring(IsReplace).."]               IsReplaceRAW: ["..tostring(IsReplaceRAW).."]")
    print(" +       IsPrecedingKeyWords: ["..tostring(IsPrecedingKeyWords).."]         IsSpecialKeyWords: ["..tostring(IsSpecialKeyWords).."]")
    print(" +    IsOnePrecedingWordOnly: ["..tostring(IsOnePrecedingWordOnly).."]         IsWholeFileSearch: ["..tostring(IsWholeFileSearch).."] --these are for info only")
    print(" +FirstPrecedingWordNotEmpty: ["..FirstPrecedingWordNotEmpty.."]            IsReplaceFOLLOWING: ["..tostring(IsReplaceFOLLOWING).."]     IsReplaceONCE: ["..tostring(IsReplaceONCE).."]")
    print(" +     IsReplaceAllInSection: ["..tostring(IsReplaceAllInSection).."]")
    print(" +      IsPrecedingFirstTRUE: ["..tostring(IsPrecedingFirstTRUE))
    print(" +               IsTextToAdd: ["..tostring(IsTextToAdd)
              .."]  IsReplaceADDAFTERSECTION: ["..tostring(IsReplaceADDAFTERSECTION)
              .."]  IsReplaceADDAFTERLINE: ["..tostring(IsReplaceADDAFTERLINE)
              .."]        IsReplaceATLINE: ["..tostring(IsReplaceATLINE).."]")
    print(" +                IsToRemove: ["..tostring(IsToRemove)
              .."]            IsToRemoveLINE: ["..tostring(IsToRemoveLINE)
              .."]      IsToRemoveSECTION: ["..tostring(IsToRemoveSECTION).."]")
    --print(" +      IsReplaceAllInGroup: ["..tostring(IsReplaceAllInGroup).."]              IsReplaceALL: ["..tostring(IsReplaceALL).."]")
    print(" +              IsReplaceALL: ["..tostring(IsReplaceALL).."]")
    print(" +       IsValueMatchOptions: ["..tostring(IsValueMatchOptions).."]        value_match_options: ["..value_match_options.."]")
    print(" +           IsWhereKeyWords: ["..tostring(IsWhereKeyWords).."]           IsSectionActive: ["..tostring(IsSectionActive).."]")
    print(" +   IsAllTheSameChangeTable: ["..tostring(IsAllTheSameChangeTable).."]")
    print(" +              IsLineOffset: ["..tostring(IsLineOffset).."]")
    print("")
  end

  -- *****************   SCRIPTBUILDERscript section   ********************
  local ScriptType = "User"
  if gSCRIPTBUILDERscript then
    --treat this script as a SCRIPTBUILDER script
    ScriptType = "SCRIPTBUILDER"
  end

CheckPoint(4)
  -- *****************   main section   ********************
  -- local size = GetFileSize(file)
  -- pv("size of "..file.." is "..size)

  -- gVerbose = true
  -- pv("gVerbose is ON")

  -- LOADED ONCE per EXML_CHANGE_TABLE, unless changed by 
  --    the EXML file as one UPPERCASE text, for speed searching for uniqueness
  DEBUG_TableToStringCount_print("###  ---- WholeTextFileTable refresh: #FileTable = "..#FileTable.." ----")
  local WholeTextFileTable = {}
  table.insert(WholeTextFileTable,string.upper(table.concat(FileTable)))
  local IsDirtyWholeTextFileTable = false
  DEBUG_TableToStringCount_print("###  ---- WholeTextFileTable refresh DONE ----")
    
  local _,lineCount = WholeTextFileTable[1]:gsub('>','>')
  if lineCount ~= #FileTable then
    print(_zRED..[[>>> [WARNING] Modded EXML's line count does not match the number of line endings ">", Keywords search could probably fail.  Please correct your script!]].._zDEFAULT)
    Report("",[[>>> Modded EXML's line count does not match the number of line endings ">", Keywords search could probably fail.  Please correct your script!]],"WARNING")
  end
  DEBUG_TableToStringCount_print("###  ---- lineCount = "..lineCount..", #FileTable = "..#FileTable)
  
  local GroupStartLine = {}
  local GroupEndLine = {}
  local SpecialKeyWordLine = {}
  local SectionsTable = {}

  local Group_Found = false

  local k = 1 --to iterate thru GroupStartLine/GroupEndLine values

  -- if gVerbose then Report(prec_key_words,"from user lua script","INFO") end

  --Note: all property/value combo in val_change_table use the Same_KEY_WORDS

  local tFindGroup = 0
  
  if IsPrecedingKeyWords or IsSpecialKeyWords then
    DEBUG_GROUPS_print("SKW or PKW exist")
    
    ShowKeyWordInfo(spec_key_words,prec_key_words,IsPrecedingKeyWords,IsSpecialKeyWords,IsPrecedingFirstTRUE,gIs_LEAN_MODE,IsUsingForeach_SKWG,item)

    --#####################################################################################################################
    --********************  FINDGROUP (processing spec_key_words and prec_key_words) **************************************
    --find group(s) where key_words lead
    local FileName = string.sub(file,#gMASTER_FOLDER_PATH + string.len([[MODBUILDER\MOD\]]) + 1)

    --IsOnePrecedingWordOnly is ONLY used for display above, Findgroup() will decide if it is activated using IsOnlyOnePreceding

CheckPoint(5)
    tFindGroup = os.clock()
    -- print("FindGroup before "..dClock())
    Group_Found,GroupStartLine,GroupEndLine,SpecialKeyWordLine,SectionsTable,IsOnlyOnePreceding
            = FindGroup(FileName,FileTable,WholeTextFileTable,prec_key_words,IsPrecedingFirstTRUE
                       ,IsSpecialKeyWords,spec_key_words,section_up_special,section_up_preceding)

    -- print("FindGroup after "..dClock())
    tFindGroup = os.clock() - tFindGroup
    -- print("FindGroup in "..dClock(tFindGroup))
    
    if gDEBUG_GROUPS and _mSHOWSECTIONS == "Y" then
        ShowSections(SectionsTable,"AFG:")
        print(" = = = = = = = =")
        for p=1,#GroupStartLine do
          print("   "..p..":   "..GroupStartLine[p].." - "..GroupEndLine[p])
        end
        print(" = = = = = = = =")
    end
    
    if IsOnlyOnePreceding then
      pv("Only 'one' PRECEDING_KEY_WORDS detected")
    end

    if not Group_Found then
      print(_zRED..">>> [WARNING] Some KEY_WORDS not found, script result may be wrong!, see REPORT.lua".._zDEFAULT)
      Report(Info,"Some KEY_WORDS not found, script result may be wrong!","WARNING")
    end
    --********************  END: FINDGROUP (processing spec_key_words and prec_key_words) **************************************
    --#####################################################################################################################

  else
    DEBUG_GROUPS_print("NO SKW and NO PKW")
    --no key_words to search =>> use the whole file
    if IsReplaceRAW then
      GroupStartLine = {1}
    else
      GroupStartLine = {3}
    end
    GroupEndLine = {#FileTable}
    SpecialKeyWordLine = {""}
    SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"<->",SectionsTable)
    Group_Found = true
  end

  -- AFTER any/all spec_key_words and prec_key_words were processed
  DEBUG_GROUPS_print("D: AFTER any/all spec_key_words and prec_key_words were processed: #GroupStartLine = "..#GroupStartLine)
  -- ********  Groups AFTER processing SPECIAL, UP_SPECIAL and PRECEDING keywords  *************
    --recreate Group List and remove duplicates
    GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
  DEBUG_GROUPS_print("AFTER SKW, PKW and UP_SPECIAL RemoveDuplicateGroups(): #GroupStartLine = "..#GroupStartLine)
  -- *******************************************************************************************

  local NumFoundGroups = #GroupStartLine

  if gDEBUG_GROUPS then
    DEBUG_GROUPS_print("A: NumFoundGroups = "..NumFoundGroups)
    ShowSections(SectionsTable,"ASUP:")
  end
  
  --to be able to say how many groups were evaluated
  local RememberNumberOfGroups = 0

  --**************************************** handles WHERE_IN_SECTION ***********************************
  local function ProcessWHERE_IN_SECTION(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
    local p = function() end
    -- local p = print

    RememberNumberOfGroups = #(GetLASTsections(SectionsTable))

    if Group_Found and IsWhereKeyWords then
      p("")
      p("\n   In Group_Found and IsWhereKeyWords\n")
      -- print("#GroupStartLine = "..#GroupStartLine)

      if IsWiSecLopOR then
        p(">>> using OR section")
        local GroupState = {}
        
        for i=1,#GroupStartLine do
          --for each group
          p("   In Group "..i)
          local FoundInSection = false
          
          GroupState[i] = FoundInSection
          local WhereKeyWordsState = {}
          for k=1,#WhereKeyWords do
            --for each pair of WhereKeyWords
            --check if WhereKeyWords are found in this group
            p("      looking for ["..WhereKeyWords[k][1].."],["..WhereKeyWords[k][2].."]")
            WhereKeyWordsState[k] = false
            for j=GroupStartLine[i],GroupEndLine[i] do
              --for each line in this group
              local text = FileTable[j]
              if (string.find(text,[[="]]..WhereKeyWords[k][1]..[["]],1,true) or WhereKeyWords[k][1] == "IGNORE")
                    and (string.find(text,[[value="]]..WhereKeyWords[k][2]..[["]],1,true) or WhereKeyWords[k][2] == "IGNORE") then
                -- print("At group #"..i..", WhereKeyWords["..k.."] is found")
                p("      Found at "..j)
                WhereKeyWordsState[k] = true
                -- if IsWiSecLopOR then
                  --any true is ok
                  break
                -- end
              end
            end
            
            if WhereKeyWordsState[k] then
              --word 'k' found in this group
              p("      Found")
              FoundInSection = true
              break
            end
          end

          GroupState[i] = FoundInSection
        end --for i=1,#GroupStartLine do
      
        --clean unwanted groups
        for i=#GroupStartLine,1,-1 do
          if not GroupState[i] then
            table.remove(GroupStartLine,i)
            table.remove(GroupEndLine,i)
            table.remove(SpecialKeyWordLine,i)
          end
        end
      end --if IsWisubSecLopOR then

      if IsWiSecLopAND then
        p(">>> using AND section")

        local newGSL = {}
        local newGEL = {}
        local newSKWL = {}

        --***************************************************************************
        local function SaveSection(StartLine,EndLine,SKWLine)
          p("saving "..StartLine.."-"..EndLine.." ("..SKWLine..")")
          table.insert(newGSL,StartLine)
          table.insert(newGEL,EndLine)
          table.insert(newSKWL,SKWLine)
        end
        --***************************************************************************

        
        for i=1,#GroupStartLine do
          --for each group
          local keywordState = {}
          for k=1,#WhereKeyWords do
            --for each pair of WhereKeyWords
            --check if WhereKeyWords are found in this group
            keywordState[k] = false
            for j=GroupStartLine[i],GroupEndLine[i] do
              --for each line in this group
              local text = FileTable[j]
              if (string.find(text,[[="]]..WhereKeyWords[k][1]..[["]],1,true) or WhereKeyWords[k][1] == "IGNORE")
                    and (string.find(text,[[value="]]..WhereKeyWords[k][2]..[["]],1,true) or WhereKeyWords[k][2] == "IGNORE") then
                p("      Found ["..WhereKeyWords[k][1].."],["..WhereKeyWords[k][2].."]")
                keywordState[k] = true
                break
              end
            end --for j=GroupStartLine[i],GroupEndLine[i] do
          end --for k=1,#WhereKeyWords do
          
          local allFound = true
          for k=1,#WhereKeyWords do
            if not keywordState[k] then
              allFound = false
              break
            end
          end          
          
          if allFound then
            --this section is good, remember it
            SaveSection(GroupStartLine[i],GroupEndLine[i],SpecialKeyWordLine[i])
          end
          
        end --for i=1,#GroupStartLine do
      
        --recreate Group List and remove duplicates
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(newGSL,newGEL,newSKWL)
      end
      
      NumFoundGroups = #GroupStartLine
      Group_Found = (NumFoundGroups > 0)

      if not Group_Found then
        -- ShowKeyWordInfo(spec_key_words,prec_key_words,IsPrecedingKeyWords,IsSpecialKeyWords,IsPrecedingFirstTRUE,gIs_LEAN_MODE,IsUsingForeach_SKWG,item) -- the SPECIAL and PRECEDING keywords

        local spacer = 11
        local Info = GetWhereInSectionInfo(WhereKeyWords)
        local LOP = "(OR)"
        if IsWiSecLopAND then
          LOP = "(AND)"
        end
        local msg0 = string.rep(" ",spacer).."    >>> using WHERE_IN_SECTION"..LOP.." "..Info.." to restrict search..."
        Report("",msg0)
        print(msg0)
        msg0 = string.rep(" ",spacer).."    >>> Evaluated "..RememberNumberOfGroups.." sections against WHERE_IN_SECTION keywords..."
        Report("",msg0)
        print(msg0)

        print("")
        print(_zRED..">>> [WARNING] KEY_WORDS not found, skipping this change!, see REPORT.lua".._zDEFAULT)
        Report(Info,"KEY_WORDS not found, skipping this change!","WARNING")
      end
      
    end --if Group_Found and IsWhereKeyWords then
    return GroupStartLine,GroupEndLine,SpecialKeyWordLine
  end
  --**************************************** END: handles WHERE_IN_SECTION ***********************************

  --**************************************** handles WHERE_IN_SUBSECTION ***********************************
  local function ProcessWHERE_IN_SUBSECTION(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
    -- local p = function() end
    --local p = print

    RememberNumberOfGroups = #(GetLASTsections(SectionsTable))

    local newGSL = {}
    local newGEL = {}
    local newSKWL = {}

    --***************************************************************************
    local function SaveSubSectionAtLine(linenum)
      table.insert(newGSL,GoUPToOwnerStart(FileTable,linenum + 1))
      table.insert(newGEL,GoDownToOwnerEnd(FileTable,linenum + 1))
      table.insert(newSKWL,linenum)
    end
    --***************************************************************************

    if Group_Found and IsSubWhereKeyWords then
      DEBUG_WISS_print("")
      DEBUG_WISS_print("\nIn Group_Found and IsSubWhereKeyWords\n")
      DEBUG_WISS_print("WHERE_IN_SUBSECTION: #GroupStartLine = "..#GroupStartLine)
      -- local GroupState = {}
      if IsWisubSecLopOR then
        DEBUG_GROUPS_print(">>> using OR section")
        for i=1,#GroupStartLine do --for each group
          for k=1,#SubWhereKeyWords do --for each SubWhereKeyWord pair
            --check if pair is found in this group
            for j=GroupStartLine[i],GroupEndLine[i] do
              --for each line in this group
              local text = FileTable[j]
              if (string.find(text,[[="]]..SubWhereKeyWords[k][1]..[["]],1,true) or SubWhereKeyWords[k][1] == "IGNORE")
                    and (string.find(text,[[value="]]..SubWhereKeyWords[k][2]..[["]],1,true) or SubWhereKeyWords[k][2] == "IGNORE") then
                DEBUG_WISS_print("    At group #"..i.." line "..j..", SubWhereKeyWords["..k.."] is found")
                --a pair was found
                SaveSubSectionAtLine(j)

                if IsWisubSecOptionONCE then
                  --doing only first sub-group of each group
                  break
                end
              end --if keywords found
            end --for j=GroupStartLine[i],GroupEndLine[i] do
          end --for k=1,#SubWhereKeyWords do
        end --for i=1,#GroupStartLine do

        --recreate Group List and remove duplicates
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(newGSL,newGEL,newSKWL)

      end --if IsWisubSecLopOR then

      --***************************************************************************
      local function GetPairSections(GroupStartLine,GroupEndLine,SubWhereKWindex)
        -- local p = function() end
        -- local p = print

        newGSL = {}
        newGEL = {}
        newSKWL = {}

        DEBUG_WISS_print("   GetPairSections: keywords = "..SubWhereKeyWords[SubWhereKWindex][1].." + "..SubWhereKeyWords[SubWhereKWindex][2])
        DEBUG_WISS_print("   GetPairSections: #GroupStartLine = "..#GroupStartLine)

        for i=1,#GroupStartLine do --for each group
          DEBUG_WISS_print("   GetPairSections: lines = "..GroupStartLine[i].."-"..GroupEndLine[i])
          for j=GroupStartLine[i],GroupEndLine[i] do
            --for each line in this group
            local text = FileTable[j]
            DEBUG_WISS_print("   GetPairSections: text = ["..text.."]")
            if (string.find(text,[[="]]..SubWhereKeyWords[SubWhereKWindex][1]..[["]],1,true) or SubWhereKeyWords[SubWhereKWindex][1] == "IGNORE")
                  and (string.find(text,[[value="]]..SubWhereKeyWords[SubWhereKWindex][2]..[["]],1,true) or SubWhereKeyWords[SubWhereKWindex][2] == "IGNORE") then
              DEBUG_WISS_print("    At group #"..i.." line "..j..", SubWhereKWindex = "..SubWhereKWindex.." is found")
              --a pair was found
              DEBUG_WISS_print("   GetPairSections: found pair at "..j)
              SaveSubSectionAtLine(j)

              if IsWisubSecOptionONCE and #GroupStartLine > 1 then
                --doing only first sub-group of each group when multiple groups exist
                break
              end
            end --if keywords found

          end --for j=GroupStartLine[i],GroupEndLine[i] do
        end --for i=1,#GroupStartLine do

        --here all sections meeting 1st pair keywords are in newGSL...
        --now we check if next pair is also in these sections

        DEBUG_WISS_print("   GetPairSections: #newGSL = "..#newGSL)
        --recreate Group List and remove duplicates
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(newGSL,newGEL,newSKWL)
        DEBUG_WISS_print("   GetPairSections: after RemoveDuplicateGroups, #GroupStartLine = "..#GroupStartLine)
        return GroupStartLine,GroupEndLine,SpecialKeyWordLine
      end
      --***************************************************************************

      if IsWisubSecLopAND then
        DEBUG_GROUPS_print(">>> using AND section")
        --by default, we keep the section unless one of the pairs is NOT found
        for SubWhereKWindex=1,#SubWhereKeyWords do --for each SubWhereKeyWord pair
          DEBUG_WISS_print("AND: SubWhereKWindex = "..SubWhereKWindex)
          GroupStartLine,GroupEndLine,SpecialKeyWordLine = GetPairSections(GroupStartLine,GroupEndLine,SubWhereKWindex)
          DEBUG_WISS_print("AND: #GroupStartLine = "..#GroupStartLine)
        end
      end

      NumFoundGroups = #GroupStartLine
      Group_Found = (NumFoundGroups > 0)

      if not Group_Found then
        -- ShowKeyWordInfo(spec_key_words,prec_key_words,IsPrecedingKeyWords,IsSpecialKeyWords,IsPrecedingFirstTRUE,gIs_LEAN_MODE,IsUsingForeach_SKWG,item)

        local spacer = 11
        local Info = GetWhereInSubSectionInfo(SubWhereKeyWords)
        local Option = ""
        if IsWisubSecOptionALL then
          Option = "with [ALL sub-sections] "
        end
        local LOP = "(OR)"
        if IsWisubSecLopAND then
          LOP = "(AND)"
        end
        local msg0 = string.rep(" ",spacer).."    >>> using WHERE_IN_SUBSECTION"..LOP.." "..Option..Info.." to restrict search..."
        Report("",msg0)
        print(msg0)
        msg0 = string.rep(" ",spacer).."    >>> Evaluated "..RememberNumberOfGroups.." sections against WHERE_IN_SUBSECTION keywords..."
        Report("",msg0)
        print(msg0)

        print("")
        print(_zRED..">>> [WARNING] KEY_WORDS not found, skipping this change!, see REPORT.lua".._zDEFAULT)
        Report(Info,"KEY_WORDS not found, skipping this change!","WARNING")
      end
    end
    return GroupStartLine,GroupEndLine,SpecialKeyWordLine
  end
  --**************************************** END: handles WHERE_IN_SUBSECTION ***********************************

--START: the next 4 handlers sequence should be programmable !!!

  --**************************************** process SECTION_UP ***********************************
  if section_up > 0 then
    pv("   Found SECTION_UP = "..section_up)
    GroupStartLine,GroupEndLine,SpecialKeyWordLine = Process_SectionUP(FileTable,GroupStartLine,GroupEndLine,SpecialKeyWordLine,section_up)
    SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"UP",SectionsTable)
  end
  --**************************************** end: process SECTION_UP ***********************************

  --**************************************** process SECTION_ACTIVE ******************************************
  local IsSectionActiveValuesNotUsed = false
  local numGroupsBeforeSectionActive = NumFoundGroups
  if IsSectionActive then
    --in GroupStartLine,GroupEndLine,SpecialKeyWordLine tables:
      --insert in  SectionsTable:
          --'not active' ones with "-A"
          --'active' ones with "+A"
      --keep only the 'active' ones in GroupStartLine,GroupEndLine,SpecialKeyWordLine tables

    --return SECTION_ACTIVE and SECTION_INACTIVE groups

-- for m=1,#SectionActive do
  -- print("- SectionActive["..m.."] = "..SectionActive[m])
-- end

    GSLA,GELA,SKWLA,GSLI,GELI,SKWLI,IsOkToUse = ProcessSECTION_ACTIVE(GroupStartLine,GroupEndLine,SpecialKeyWordLine,SectionActive)

-- for m=1,#GSLA do
  -- print("- GSLA["..m.."] = "..GSLA[m])
-- end
-- for m=1,#GSLI do
  -- print("- GSLI["..m.."] = "..GSLI[m])
-- end
-- WaitForAnyKey()

    if IsOkToUse then
      --some/all SECTION_ACTIVE values where processed
      --adding the SECTION_INACTIVE groups as 'SI'
      SectionsTable = AddSectionsIntoTable(GSLI,GELI,SKWLI,"SI",SectionsTable)
      --adding the SECTION_ACTIVE groups as 'SA'
      SectionsTable = AddSectionsIntoTable(GSLA,GELA,SKWLA,"SA",SectionsTable)
            -- ShowSections(SectionsTable,"SA:")

      --re-make the future USING groups
      GroupStartLine = GSLA
      GroupEndLine = GELA
      SpecialKeyWordLine = SKWLA
    else
      IsSectionActiveValuesNotUsed = true
    end
  end
  --**************************************** end: process SECTION_ACTIVE *************************************

  --**************************************** process WHERE_IN_SECTION ***********************************
  if IsWhereKeyWords then
    DEBUG_GROUPS_print("   Found "..#WhereKeyWords.." WHERE_IN_SECTION word pair(s), looking...")
    GroupStartLine,GroupEndLine,SpecialKeyWordLine = ProcessWHERE_IN_SECTION(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
    SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"WiSec",SectionsTable)
    DEBUG_GROUPS_print("after WHERE_IN_SECTION: NumFoundGroups = "..#GroupStartLine)
  end
  --**************************************** end: process WHERE_IN_SECTION ***********************************

  --**************************************** process WHERE_IN_SUBSECTION ***********************************
  if IsSubWhereKeyWords then
    DEBUG_GROUPS_print("   Found "..#SubWhereKeyWords.." WHERE_IN_SUBSECTION word pair(s), looking...")
    GroupStartLine,GroupEndLine,SpecialKeyWordLine = ProcessWHERE_IN_SUBSECTION(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
    SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"WiSub",SectionsTable)
    DEBUG_GROUPS_print("after WHERE_IN_SUBSECTION: NumFoundGroups = "..#GroupStartLine)
  end
  --**************************************** end: process WHERE_IN_SUBSECTION ***********************************

--END: the next 4 handlers sequence should be programmable !!!

  --recreate Group List and remove duplicates
  GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(GroupStartLine,GroupEndLine,SpecialKeyWordLine)

  DEBUG_GROUPS_print("AFTER SECTION_UP, WHEREx and SECTION_ACTIVE RemoveDuplicateGroups(): #GroupStartLine = "..#GroupStartLine)
  
  --readjusting AFTER SECTION_UP, WHEREx and SECTION_ACTIVE
  NumFoundGroups = #GroupStartLine

  DEBUG_GROUPS_print("B: NumFoundGroups = "..NumFoundGroups)
  DEBUG_GROUPS_print(_zRED.."*** Found "..#GroupStartLine.." section(s)".._zDEFAULT)

  local IsLargeNumOfReplacement = false

  local IsLargeNumOfGroupsFound = false
  if not gIs_FULL_MODE and #GroupStartLine > gMaxNumberOfGroups then
    IsLargeNumOfGroupsFound = true
    print(_zGREEN..">>> ".._zRED.."LARGE number".._zDEFAULT.._zGREEN.." of sections found, reducing log.lua output!  See Report.lua for full output".._zDEFAULT)
    print(_zRED.."               BE PATIENT".._zDEFAULT..", the output may only seem to stop at times...")
  end

  local ReplNumber = 0
  local ADDcount = 0
  local REMOVEcount = 0

  local SaveSectionDone = false

  if Group_Found then
    pv("Entering Group_Found...")

    if not (IsReplaceALL or IsSectionActive) then
      -- 'Only FIRST section will be used'
      pv("NOTICE: making the groups ONLY one group (the whole file!)")
      GroupStartLine = {GroupStartLine[1]}
      GroupEndLine = {GroupEndLine[1]}
      SpecialKeyWordLine = {SpecialKeyWordLine[1]}
    end

    DEBUG_GROUPS_print("D: AFTER no REPLACEALL and no SECTIONACTIVE: #GroupStartLine = "..#GroupStartLine)
    
    if #GroupStartLine > 1 and (IsTextToAdd or IsToRemove) then
      GroupStartLine,GroupEndLine,SpecialKeyWordLine = ReverseGroupsOrder(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
      SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"RO",SectionsTable)
    end

    -- NOW is the time to add 'Using'
    SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"Using ",SectionsTable)
    DEBUG_GROUPS_print("E: AFTER reversing order: #GroupStartLine = "..#GroupStartLine)
    --===================================================
          --   FROM NOW ON, THE GROUPS ARE 'DEFINED'
    --===================================================

CheckPoint(6)
    --used by IsReplaceONCE, IsReplaceFOLLOWING and IsOnlyOnePreceding
    --initialize
    local LastReplacementLine = GroupStartLine[1]

    local AtLeastOneReplacementDone = false
    
    if IsVCTempty then
      --NO VALUE_CHANGE_TABLE, otherwise wait for changes to happen
      DEBUG_SECTION_print("@@@@@ C: IsVCTempty = "..tostring(IsVCTempty))
      if IsSaveSectionTo then
        --JUST saving the section without any changes
        DEBUG_SECTION_print("@@@@@ C: in IsSaveSectionTo")
        SaveSectionDone = true
        
        --save the first section to a file in the SavedSections folder using the SECTION_SAVE_TO name.xml
        --we overwrite any existing file with that name
        local thisSection = ""
        for m=GroupStartLine[1],GroupEndLine[1] do
          local line = FileTable[m]
          thisSection = thisSection..line.."\n"
        end

        if IsKeepSection then
          DEBUG_SECTION_print("@@@@@ C: Writing section_save_to a file in the SavedSections folder just after GROUPS defined")
          WriteToFile(thisSection,gMASTER_FOLDER_PATH..[[SavedSections\]]..section_save_to..[[.xml]])
        end

        for m=1,#gSaveSectionName do
          if gSaveSectionName[m] == section_save_to then
            --was saved it internally, update content
            DEBUG_SECTION_print("@@@@@ C: Saving content of section_save_to in the internal SECTION_SAVE_TO list just after GROUPS defined")
            gSaveSectionContent[m] = thisSection
            IsOneReplacementDoneThisValue = true
            -- print("X: gSaveSectionContent[m] = ["..gSaveSectionContent[m].."]")
            break
          end
        end
      end
    end
    
    local IsLockValue = false --used by MATH_OPERATION L and LB
    local lockedValue = nil
    
    --we have val_change_table that has all {property, value} to be changed with these prec_key_words
    local j = 0 --to iterate the val_change_table

    --=============================================== OUTER while loop ===================================
    while j <= (#val_change_table - 1) do
      MapFileTreeSharedListPING()

      --used to limit output
      local numChangeTableRepl = 0

      --point to next VCTproperty/VCTvalue combo
      j = j + 1

      if j == 1 then
        prn(">>> Entering 'outer' while, val_change_table["..j.."]")
      else
        prn(">>> Looping 'outer' while val_change_table["..j.."]")
      end

      -- VCT entry j
      local VCTproperty = val_change_table[j][1]
      local VCTvalue = val_change_table[j][2]
      
      DEBUG_CurrentLine_print("@@@ A: USING these: VCTproperty=["..VCTproperty.."] ".."VCTvalue=["..VCTvalue.."]")
      
      local IsAddToStringValueFlag = (type(VCTvalue) == "string" and type(tonumber(VCTvalue)) ~= "number" and string.find(VCTvalue,"{:}",1,true) ~= nil)
      
      local IsOneReplacementDoneThisValue = false
      local IsAutoIncrementOffset = false

      if gDEBUG_BeforeEXTRA_BEHAVIOR then
        print(" +        IsAddToStringValueFlag: ["..tostring(IsAddToStringValueFlag).."]")
        print(" +        val_change_table[j][x]: ["..tostring(j).."]")
        print(" +                  IsLineOffset: ["..tostring(IsLineOffset).."]")
        print(" +       IsAllTheSameChangeTable: ["..tostring(IsAllTheSameChangeTable).."]")
        print(" +        IsAllChangeTableIGNORE: ["..tostring(IsAllChangeTableIGNORE).."]")
        print(" +                    IsVCTempty: ["..tostring(IsVCTempty).."]")
        print(" +                        offset: ["..tostring(offset).."]")
        print(" +         IsAutoIncrementOffset: ["..tostring(IsAutoIncrementOffset).."]")
      end
      
-- **********
-- PRE-PROCESSING value_change_table(j)
-- **********

      --#########################################
      --  EXTRA BEHAVIOR section
      --#########################################
      DEBUG_CurrentLine_print("@@@ A: USING these BEFORE: VCTproperty=["..VCTproperty.."] ".."VCTvalue=["..VCTvalue.."]")

      --processing of IGNORE behavior
      if string.upper(VCTproperty) == "IGNORE" and string.upper(VCTvalue) == "IGNORE" then
        prn([[In BOTH VCTproperty="IGNORE" and VCTvalue="IGNORE"]])
        if IsSpecialKeyWords and not IsPrecedingKeyWords then
          prn("   with SPECIAL_KEY_WORDS first:")
          prn("      Using last word of PRECEDING_KEY_WORDS as 'VCTproperty'")

          if #prec_key_words == 1 and IsPrecedingKeyWords then --meaning not empty AND only one
            prn("      Using ONLY word of PRECEDING_KEY_WORDS as 'VCTproperty'")
            VCTproperty = prec_key_words[#prec_key_words]
          else
            prn("   Using last word of SPECIAL_KEY_WORDS as 'VCTproperty' when PRECEDING_KEY_WORDS >= 1")
            VCTproperty = spec_key_words[#spec_key_words]
          end

        elseif #prec_key_words > 2 then
          --TODO: works with text_to_add, we could check
          prn("   Using both last words as 'VCTproperty' and 'VCTvalue' with PRECEDING_KEY_WORDS > 2")
          VCTproperty = prec_key_words[#prec_key_words - 1]
          VCTvalue = prec_key_words[#prec_key_words]

        elseif #prec_key_words >= 1 then
          prn("   Using last word as 'VCTproperty' with PRECEDING_KEY_WORDS >= 1")
          VCTproperty = prec_key_words[#prec_key_words]
        end

        if not IsVCTempty and ((IsLineOffset or IsAllTheSameChangeTable or IsAllChangeTableIGNORE) and j > 1) then
          --for next value_change, auto-increment offset
          -- IsLineOffset = true -- turned ON if not already
          offset = offset + 1
          IsAutoIncrementOffset = true
          print("  auto-INCREMENTING offset to "..offset)
        end

        -- if not IsVCTempty and (IsLineOffset and j > 1) then
          -- --for next value_change, auto-increment offset
          -- offset = offset + 1
          -- IsAutoIncrementOffset = true
          -- prn("  auto-INCREMENTING offset to "..offset)
        -- end

      elseif string.upper(VCTproperty) == "IGNORE" then
        prn([[In ONLY VCTproperty="IGNORE"]])

        if not IsVCTempty and ((IsLineOffset or IsAllTheSameChangeTable or IsAllChangeTableIGNORE) and j > 1) then
        -- if (IsLineOffset or IsAllTheSameChangeTable or IsAllChangeTableIGNORE) and j > 1 then
          --for next value_change, auto-increment offset
          -- IsLineOffset = true -- turned ON if not already
          offset = offset + 1
          IsAutoIncrementOffset = true
          print("  auto-INCREMENTING offset to "..offset)
        end

        -- if IsLineOffset and j > 1 then
          -- --for next value_change, auto-increment offset
          -- offset = offset + 1
          -- IsAutoIncrementOffset = true
          -- prn("  auto-INCREMENTING offset to "..offset)
        -- end

        if IsSpecialKeyWords and not IsPrecedingKeyWords then
          prn("   with SPECIAL_KEY_WORDS only:")
          if not IsLineOffset then
            VCTproperty = spec_key_words[#spec_key_words]
          end

        elseif #prec_key_words >= 1 and prec_key_words[1] ~= "" then
          --TODO: probably using a math_operation, we could check
          if IsMath_Operation or IsReplaceAllInSection then
            --keep the "IGNORE" VCTproperty
          else
            prn("   with PRECEDING_KEY_WORDS >= 1")
              VCTproperty = prec_key_words[#prec_key_words] --use the last PRECEDING_KEY_WORDS
          end
        end
      end
      
      -- ShowKeyWordInfo(spec_key_words,prec_key_words,IsPrecedingKeyWords,IsSpecialKeyWords,IsPrecedingFirstTRUE,gIs_LEAN_MODE,IsUsingForeach_SKWG,item)
      DEBUG_CurrentLine_print("@@@ A: USING these  AFTER: VCTproperty=["..VCTproperty.."] ".."VCTvalue=["..VCTvalue.."]")

      --#########################################
      -- END: EXTRA BEHAVIOR section
      --#########################################

      -- original case after EXTRA BEHAVIOR
      -- used for display
      local orgVCTproperty = VCTproperty
      local orgVCTvalue = VCTvalue
      
      --next line should be done only once for each VCT
      local IsRegular = false
      if not IsReplaceRAW then
        IsRegular,VCTproperty = makeRegExUppercase(VCTproperty)
      else
        VCTproperty = VCTproperty:upper()
      end
      prn("VCTproperty = ["..VCTproperty.."], IsRegular = "..tostring(IsRegular))

      if IsRegular then
        IsReplaceALL = true
        IsReplaceOnce = false
      end
      
      if j == 1 then --on the first possible VCT
        OnFirstVCT(section_up_preceding,section_up_special,section_up
              ,IsSpecialKeyWords,spec_key_words
              ,IsPrecedingFirstTRUE,IsPrecedingKeyWords,prec_key_words
              ,IsWhereKeyWords,IsSubWhereKeyWords
              ,_zRED,_zDEFAULT)
        
        if IsSaveSectionTo then
          --save the first section to a file in the SavedSections folder using the SECTION_SAVE_TO name.xml
          --we overwrite any existing file with that name
          local thisSection = ""
          for m=GroupStartLine[1],GroupEndLine[1] do
            local line = FileTable[m]
            thisSection = thisSection..line.."\n"
          end

          if IsKeepSection then
            DEBUG_SECTION_print("@@@@@ D: Writing section_save_to a file in the SavedSections folder on the first possible VCT")
            WriteToFile(thisSection,gMASTER_FOLDER_PATH..[[SavedSections\]]..section_save_to..[[.xml]])
          end

          for m=1,#gSaveSectionName do
            if gSaveSectionName[m] == section_save_to then
              --was saved internally, update content
              DEBUG_SECTION_print("@@@@@ D: Saving section_save_to in the internal SECTION_SAVE_TO list on the first possible VCT")
              gSaveSectionContent[m] = thisSection
              IsOneReplacementDoneThisValue = true
              -- print("Y: gSaveSectionContent[m] = ["..gSaveSectionContent[m].."]")
              break
            end
          end
        end
      end

      DEBUG_GROUPS_print("F: #GroupStartLine = "..#GroupStartLine)
      DEBUG_GROUPS_print("F: NumFoundGroups = "..NumFoundGroups)
      
      if NumFoundGroups > 0 and j == 1 then --just say on the first val_change_table
        local so = ""
        if IsSectionActive then
          for i=1,#SectionActive do
            so = so..SectionActive[i]..", "
          end
          so = string.sub(so,1,-3)
        end

        if numGroupsBeforeSectionActive > 1 then --when multiple sections were found
          Report("","       >>>>> Found "..numGroupsBeforeSectionActive.." valid candidate sections in "..dClock(tFindGroup).." sec")
          if not gIs_LEAN_MODE then print("       >>>>> Found "..numGroupsBeforeSectionActive.." valid candidate sections in "..dClock(tFindGroup).." sec") end

          if not (IsReplace or IsSectionActive) then
            Report("","KEY_WORDS located more than one section and REPLACE_TYPE/SECTION_ACTIVE are missing!","NOTICE")
            if not gIs_LEAN_MODE then print(_zRED..">>> [NOTICE] KEY_WORDS located more than one section and REPLACE_TYPE/SECTION_ACTIVE are missing!".._zDEFAULT) end
          end

          if IsSectionActive then
            Report("","       >>>>> using ACTIVE section(s) as requested: ["..so.."]")
            if not gIs_LEAN_MODE then print("       >>>>> using ACTIVE section(s) as requested: ["..so.."]") end

            if IsReplaceALL then
              Report("",[[       >>>>> SECTION_ACTIVE forces REPLACE_TYPE = "ALL"]])
              if not gIs_LEAN_MODE then print([[       >>>>> SECTION_ACTIVE forces REPLACE_TYPE = "ALL"]]) end
            end

            if IsReplaceONCE then
              Report("",[[       >>>>> negative SECTION_ACTIVE forces REPLACE_TYPE = "ONCE"]])
              if not gIs_LEAN_MODE then print([[       >>>>> negative SECTION_ACTIVE forces REPLACE_TYPE = "ONCE"]]) end
            end

          elseif IsReplaceALL or (IsOrgReplace_typeEmpty and not (IsTextToAdd or IsToRemove))then
            Report("","       >>>>> using ALL valid sections as requested")
            if not gIs_LEAN_MODE then print("       >>>>> using ALL valid sections as requested") end

          else
            Report("",[[       >>>>> 'Only FIRST section will be used']],"")
            if not gIs_LEAN_MODE then print(_zRED..[[       >>>>> Only FIRST section will be used]].._zDEFAULT) end
          end
        end

        -- print("")
        -- ********************  THIS IS THE MASTER ShowSections()  **************************
        -- the ONLY one to ShowSections() in production code
        ShowSections(SectionsTable,"  ")

        if IsSectionActiveValuesNotUsed then
          Report("","SECTION_ACTIVE values were not used, out of range: ["..so.."]","NOTICE")
          print(_zRED..">>> [NOTICE] SECTION_ACTIVE values were not used, out of range: ["..so.."]".._zDEFAULT)
        end
        -- ***********************************************************************************
        -- print("")
      end

      DEBUG_CurrentLine_print("@@@ B: USING these: VCTproperty=["..VCTproperty.."] ".."VCTvalue=["..VCTvalue.."]")
      local newIsValueMatchType = IsValueMatchType
      if not IsValueMatchType then
        --none specified by the user
        --let us force it to be of the same type as the new VCTvalue

        local VCTvalueTmp = GetVCTvalueTmp(VCTvalue)        
        local ValueTypeIsNumber, ValueIsInteger = CheckValueType(VCTvalueTmp,false)
        if ValueTypeIsNumber then
          value_match_type = "NUMBER"
        else
          value_match_type = "STRING"
        end
        newIsValueMatchType = true
      end
      
      PrepareInfoForUser(orgVCTproperty,orgVCTvalue
                        ,IsMath_Operation,math_operation
                        ,IsInteger_to_floatPRESERVE,IsInteger_to_floatFORCE
                        ,IsValueMatch,val_match,IsValueMatchOptionsMatch,value_match_options,value_match_type,newIsValueMatchType
                        ,IsLineOffset,line_offset
                        ,IsSpecialKeyWords,spec_key_words
                        ,IsPrecedingKeyWords,prec_key_words
                        ,IsWhereKeyWords,WhereKeyWords
                        ,IsSubWhereKeyWords,IsWisubSecOptionALL,SubWhereKeyWords
                        ,IsWiSecLopAND,IsWisubSecLopAND
                        ,IsTextToAdd,IsReplaceADDAFTERLINE,IsReplaceADDAFTERSECTION
                        ,IsToRemove,IsToRemoveLINE,IsToRemoveSECTION
                        ,IsReplace,IsReplaceRAW,IsReplaceONCE,IsReplaceALL,IsReplaceAllInSection,IsReplaceFOLLOWING
                        ,IsLargeNumOfReplacement,RememberNumberOfGroups
                        ,gIs_LEAN_MODE
                        ,_zGREEN,_zDEFAULT
                        )
      
      if not gIs_LEAN_MODE and not IsNotice_off and (tonumber(VCTvalue) ~= nil and tonumber(VCTvalue) > 99999999) then
        --MBINCompiler may produce a problematic MBIN that once decompiled will have a value of "1.0E+7"
        print(_zRED..[[>>> [NOTICE] MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+09"]].._zDEFAULT)
        print(_zRED..[[         xxxxx Your script contains a value over "99999999" xxxxx]].._zDEFAULT)
        print(_zRED..[[         A value like "100000123" will become "100000120", (it won't be exact)]].._zDEFAULT)
        print(_zRED..[[         Bigger values may become like "1E+09"]].._zDEFAULT)
        print(_zRED..[[         That could prevent NMS from using the mod]].._zDEFAULT)
        Report("",[[MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+09"]],"NOTICE")
        Report("",[[       xxxxx Your script contains a value over "99999999" xxxxx]],"")
        Report("",[[       A value like "100000123" will become "100000120", (it won't be exact)]],"")
        Report("",[[       Bigger values may become like "1E+09"]],"")
        Report("",[[       That could prevent NMS from using the mod]],"")
      end

      if not gIs_LEAN_MODE and #GroupStartLine > 1 and (IsTextToAdd or IsToRemove) then
        --we reversed the order of the Groups
        --so that we add or remove from the bottom up
        Report("","       >>>>> Processing Sections in reverse order for ADD/REMOVE <<<<<")
        print("\n       >>>>> Processing Sections in reverse order for ADD/REMOVE <<<<<")
        print("")
      end

-- **********
-- END PRE-PROCESSING value_change_table(j)
-- **********

      k = 0 --to iterate thru GroupStartLine/GroupEndLine groups

      --=============================================== INNER while loop ===================================
      while k <= #GroupStartLine - 1 do
        MapFileTreeSharedListPING()

        --go explore next group for the current VCTproperty
        k = k + 1
        if k == 1 then
          prn(">>> Entering 'groups while' at k = "..k.." for j = "..j)
        else
          prn(">>> Looping 'groups while' at k = "..k.." for j = "..j)
        end

        local i = GroupStartLine[k] - 1 -- -1 because i will be incremented in the while loop
        DEBUG_CurrentLine_print("    >>> we are at line "..(i+1).." in section ["..k.."] = "..(i+1).."-"..GroupEndLine[k])
        
        local EndLine = GroupEndLine[k] --to remember the section 'end line' for the 'out of section' NOTICE below
        local EndLineBackup = GroupEndLine[k] --to remember the section 'end line' for restoring it

        -- if IsReplaceFOLLOWING then
          -- --GroupEndLine[k] was adjusted below
          -- if not gIs_LEAN_MODE then print("                >>> FOLLOWING forces line "..i.." as base to ".._zGREEN.."END of file".._zDEFAULT) end
          -- Report("","                >>> FOLLOWING forces line "..i.." as base to END of file")
          -- GroupEndLine[k] = #FileTable
          
        if IsOnlyOnePreceding then
          pv("LastReplacementLine: "..LastReplacementLine)
          i = LastReplacementLine
          if not gIs_LEAN_MODE then print("                >>> Only one PRECEDIND_KEY_WORDS forces line "..i.." as base...") end
          Report("","                >>> Only one PRECEDIND_KEY_WORDS forces line "..i.." as base...")
        elseif IsReplaceONCE then
          --use the first line of the new group
          pv("NewGroupLine: "..i)
        end

        -- if IsLineOffset and i == 0 then
          -- do we need to apply the offset???
          --    it is handle in each case below
        -- end
        
        -- can we FAST find the lines matching VCTproperty?
        local linesNumFound = {}
        if not IsReplaceRAW then
          linesNumFound = GetPropertyEXT(VCTproperty,IsRegular,FileTable,i,GroupEndLine[k]) -- must be i for IGNORE to work, do not change, was i + 1
        end
        local linesNumFoundIndex = 0
        
        local SearchGroupRange = tostring(i + 1).."-"..tostring(GroupEndLine[k])

        if not IsTextToAdd and not IsToRemove then
          if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
            if not gIs_LEAN_MODE then
              print("                >>> Searching in lines "..SearchGroupRange..[[...]])
              if IsSaveSectionTo then
                print("                >>> Saved section to [".._zGREEN..[["]]..section_save_to..[["]].._zDEFAULT.."]")
              end
            end
          end
          Report("","                >>> Searching in lines "..SearchGroupRange..[[...]])
          if IsSaveSectionTo then
            Report("","                >>> Saved section to ["..[["]]..section_save_to..[["]].."]")

            -- auto discard MBIN from MODBUILDER\MOD
            if IsFileExist(file) then
              DeleteFile(file:gsub("EXML","MBIN"))
              DeleteFile(file:gsub("EXML","PC.MBIN"))
              DeleteFile(file)
              print(_zGREEN..">>> ".._zDEFAULT.._zRED.."Discarded".._zDEFAULT.._zGREEN..": ["..file.."]".._zDEFAULT)
              Report("",">>> Discarded: ["..file.."]")
              FileTable = {}
            end
          end
      
        else
          DEBUG_CurrentLine_print("   >>> SearchGroupRange = "..SearchGroupRange)
        end

        --using while because we can change the value of i and GroupEndLine
        --that is useful with line_offset, text_to_add and maybe other manipulations

        -- print("Just before the BIG INNER WHILE: ["..VCTproperty.."] ["..VCTvalue.."], about to process line "..i + 1)
        local InWhile = false

        --=============================================== SECTION while loop ===================================
        --loop thru all the lines in this group
        -- while i <= (GroupEndLine[k] - 1) do
        while i <= (GroupEndLine[k] - 1) and (#linesNumFound > 0 or VCTproperty == "IGNORE" or IsTextToAdd or IsToRemove or IsReplaceRAW) do
          if not InWhile then
            DEBUG_CurrentLine_print("    >>> Entering 'inner' 'lines in group["..k.."]' while at line "..i.." for j = "..j)
            -- print("This line: ["..FileTable[i].."]")
            InWhile = true
          -- else
            -- --generates lots of lines
            -- -- pv(">>> Looping 'inner' while at line "..i.."...")
          end

-- **********
-- PRE-PROCESSING group(k) at line i
-- **********

          local repl_done = false
          if not IsReplaceATLINE or (IsReplaceATLINE and VCTvalue == "IGNORE") then            
            if #linesNumFound > 0 then
              linesNumFoundIndex = linesNumFoundIndex + 1
              if linesNumFoundIndex <= #linesNumFound then
                i = linesNumFound[linesNumFoundIndex]
                DEBUG_CurrentLine_print(dClock()..": ".."@@@ Using linesNumFound["..linesNumFoundIndex.."] at "..i)
              else
                DEBUG_LoopBreak_print("Z: break out of this group on 'linesNumFoundIndex > #linesNumFound' to next group")
                break
              end
            else
              i = i + 1 -- next line (old way when VCT is empty)
            end
              -- ??? required now ??? with the Break at the end after the replacement
              -- linesNumFound[1] = nil -- reset for next i for now...  should break out of while loop when only one found          
          end
          
          local CurrentLine = i --used with text_to_add and to_remove
          
          local line = FileTable[i]
          DEBUG_CurrentLine_print("@@@ CurrentLine: "..i.." ["..tostring(line).."]")

          if line == nil then
            if not IsSaveSectionTo then
              print(_zRED..">>> [WARNING] Problem with [current line] being nil".._zDEFAULT)
              Report("","Problem with [current line] being nil","WARNING")
            end
            break
          end

-- **********
-- END PRE-PROCESSING group(k) at line i
-- **********

-- print("VCTValue = <"..VCTvalue..">")          
-- print([[VCTvalue:gsub("%s+","") = <]]..tostring( (VCTvalue:gsub("%s+","")) )..">")          
-- print([[VCTvalue:gsub("%s+",""):find("GUIF({",1,true) = <]]..tostring( (VCTvalue:gsub("%s+",""):find("GUIF({",1,true)) )..">")          
          if VCTvalue:gsub("%s+",""):find("GUIF({",1,true) ~= nil then
-- print("A: got here")          
            tmp = load("return "..VCTvalue,"GUIF","t")
-- print("type(tmp) = <"..type(tmp)..">")          
            if type(tmp) == "function" then
              --VCTvalue = tostring(tmp())
              VCTvalue = tmp()
              if type(VCTvalue) == "boolean" then
                -- translate to NMS type
                if VCTvalue then
                  VCTvalue = "True"
                else
                  VCTvalue = "False"
                end
              end
              -- print("@@@ VCTvalue = ["..VCTvalue.."]")
            else
              print(_zRED..">>> [WARNING] Problem GUIF() being nil, check your script".._zDEFAULT)
              Report("","Problem GUIF() being nil, check your script","WARNING")
            end
          end
-- print("After GUIF(), VCTValue = <"..VCTvalue..">")          
          if IsReplaceRAW then
            if string.find(line:upper(),VCTproperty,1,true) ~= nil then --not for regular expression
              -- print("Found a line at "..i..": "..VCTproperty)
              --we found A line containing the VCTproperty string
              --it is "anything goes here", free for all!
              --if we searched [[oper]], it will find [[Property]] ==> all lines

              -- DEBUG_ReplaceRAW_print("RAW replacement of: [" .. VCTproperty .. "] with: [" .. VCTvalue.."]")

              --fix-up pattern first to prevent side-effects
              pattern = string.gsub(orgVCTproperty, "[%%%]%^%-$().[*+?]", "%%%1")
              DEBUG_ReplaceRAW_print("RAW search pattern: ["..pattern.."]")
              
              local _,NumLinesVCTvalue = VCTvalue:gsub("\n","")
              if NumLinesVCTvalue < 2 then
                -- only one line => direct replacement
                FileTable[i] = string.gsub(line,pattern,VCTvalue)
              else
                -- VCTvalue contains multiple lines, we need to insert them into FileTable
                DEBUG_ReplaceRAW_print(" >>> current size of FileTable = "..#FileTable)
                DEBUG_ReplaceRAW_print("at line = "..(i).." inserting "..NumLinesVCTvalue.." lines")
                local textmod = table.concat(FileTable,"\n",1,i-1) -- to remove the current line
                
                VCTvalue = NormalizeStrEndlines(VCTvalue)
                textmod = textmod.."\n"..VCTvalue.."\n" -- adding the new lines
                
                textmod = textmod..table.concat(FileTable,"\n",i+1,#FileTable) -- appending the rest of the lines
                
                textmod = string.gsub(textmod,"\n\n","\n") -- remove empty lines
                FileTable = textmod:split("\n") -- to make it a table again
                
                --we need to refresh WholeTextFileTable
                IsDirtyWholeTextFileTable = true
                
                DEBUG_ReplaceRAW_print(" >>> NEW size of FileTable = "..#FileTable.." [#original - 1(original line is replaced) + #newlines]")
              end
              
              repl_done = true
            end

          else -- not a "RAW" operation
            -- print("not IsReplaceRAW...")
            -- print("B: VCTproperty=["..VCTproperty.."] ".."VCTvalue=["..VCTvalue.."]")
            -- pv("   ===> processing line"..line)
            --(i == 2) is a special case where the whole EXML content was removed
            -- or (VCTproperty == "IGNORE" and (IsTextToAdd or IsToRemove)) --was this
            
            DEBUG_VCTproperty_print("======")
            DEBUG_VCTproperty_print("    INFO: VCTproperty = ["..VCTproperty.."]")
            -- --next line should be done only once for each VCT
            -- local IsRegular,VCTproperty = makeRegExUppercase(VCTproperty)
            -- print("VCTproperty = ["..VCTproperty.."]")
            
            local pNameValue = GetProperty(line)
            DEBUG_VCTproperty_print("    found pNameValue = ["..tostring(pNameValue):upper().."] at "..i)
            -- local pNameValue = nil
            -- if Xpnv ~= nil then
              -- pNameValue = Xpnv
            -- -- elseif Xvalue ~= nil then
              -- -- pNameValue = Xvalue
            -- end

            local IsFoundpNameValue = false
            
            if VCTproperty == "IGNORE" then
              IsFoundpNameValue = true
            else
              if pNameValue ~= nil then
                pNameValue = pNameValue:upper()
                if IsRegular then
                  -- we must have found the Property name/value=
                  IsFoundpNameValue = (string.match(pNameValue,VCTproperty) ~= nil)
                else
                  IsFoundpNameValue = (pNameValue == VCTproperty)
                end
              end
            end
            DEBUG_VCTproperty_print("   IsFoundpNameValue = ["..tostring(IsFoundpNameValue).."]")
            DEBUG_VCTproperty_print("======")

            -- local pName = string.upper(StripInfo(line,[[<Property name="]],[["]]))
            -- local pValue = string.upper(StripInfo(line,[[<Property value="]],[["]]))
            -- print("   pName = ["..pName.."] at "..i)
            -- print("  pValue = ["..pValue.."] at "..i)

            -- local IsFoundpName = false
            -- local IsFoundpValue = false
            
            -- if IsRegular then
              -- if pName ~= line then
                -- -- we must have found the Property name=
                -- IsFoundpName = (string.match(pName,VCTproperty) ~= nil)
              -- end
              -- if pValue ~= line then
                -- -- we must have found the Property value=
                -- IsFoundpValue = (string.match(pValue,VCTproperty) ~= nil)
              -- end
            -- else
              -- IsFoundpName = (pName == VCTproperty or VCTproperty == "IGNORE")
              -- IsFoundpValue = (pValue == VCTproperty or VCTproperty == "IGNORE")
            -- end
            -- print("   IsFoundpName = ["..tostring(IsFoundpName).."]")
            -- print("  IsFoundpValue = ["..tostring(IsFoundpValue).."]")
            -- print("======")
            
            -- if  (i == 2) or IsFoundpName or IsFoundpValue or (IsTextToAdd or IsToRemove) or (VCTproperty == "IGNORE" and (IsMath_Operation or IsReplaceAllInSection)) then
            -- if  (i == 2) or (IsFoundpName or IsFoundpValue) or (IsTextToAdd or IsToRemove) or IsMath_Operation then
            if  (i == 2) or IsFoundpNameValue or IsTextToAdd or IsToRemove or (VCTproperty == "IGNORE" and (IsMath_Operation or IsReplaceAllInSection)) then
              DEBUG_CurrentLine_print("@@@ C: USING VCTproperty=["..VCTproperty.."] === Found << THE >> line at "..i)
              
              if not IsTextToAdd and not IsToRemove then
                if IsLineOffset then
                  --process line_offset stuff
                  
                  -- doc says: If a line is found using the KEYWORDS, it is used as the starting point
                  if IsSpecialKeyWords or IsPrecedingKeyWords then
                    if i < SpecialKeyWordLine[k] then
                      -- only the first time
                      -- i should be the line found by the KEYWORDS in this section
                      i = SpecialKeyWordLine[k]
                      DEBUG_CurrentLine_print("@@@ USING SpecialKeyWordLine[k] as line to process: "..i)
                    end
                  end
                  
                  if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                    print("                >>> Current line is "..i)
                  end
                  Report("","                >>> Current line is "..i)
                  if offset_sign == "+" then
                    if #FileTable >= i + offset then
                      line = FileTable[i + offset]
                      i = i + offset --we go forward in the file
                    else
                      Report("","Problem with [current line + offset] being after the end of file","WARNING")
                    end
                  elseif offset_sign == "-" then
                    -- line = FileTable[i - offset]
                    if i-offset >= 1 then
                      line = FileTable[i - offset]
                      --i=i - offset --we do not backtrack in the file
                    else
                      Report("","Problem with [current line - offset] being before the beginning of file","WARNING")
                    end
                  end

                  local AIO = ""
                  if IsAutoIncrementOffset then
                    AIO = "auto-incremented "
                  end
                  if not gIs_LEAN_MODE then print("                >>> "..AIO.."LINE_OFFSET of ["..offset.."] forces to look starting at line "..i) end --was line_offset
                  Report("","                >>> "..AIO.."LINE_OFFSET of ["..offset.."] forces to look starting at line "..i) --was line_offset
                end
              end
              
              -- exstring is UPPERCASE
              -- exstringORG is original case
              local _,exstring,_,exstringORG = GetPropertyValue(line)
              
              -- if exstring == nil then
                -- print("line = ["..line.."] at "..i)
                -- WaitForAnyKey("<<< exstring = nil >>>, press any key...")
              -- end
              
-- local exstring = StripInfo(line,[[value="]],[["]])
-- if exstring == nil or exstring == "" then
  -- --probably a Property name=
  -- exstring = StripInfo(line,[[name="]],[["]])
-- end
              -- IMPORTANT NOTE: exstring could be "" here
              
              if gDEBUG_Before_Value_match then
                print("=======")
                if IsLineOffset then
                  --getting new value from offset line
                  print("(After offset)                        Line "..i..": line value=["..tostring(exstring).."] ["..line.."], VCTproperty=\""..VCTproperty.."\", VCTvalue=\""..VCTvalue.."\"")
                else
                  print("(NO offset used)                      Line "..i..": line value=["..tostring(exstring).."] ["..line.."], VCTproperty=\""..VCTproperty.."\", VCTValue=\""..VCTvalue.."\"")
                end
                
                print("(Before value_match)                  Line "..i..": value=["..tostring(exstring).."] ["..line.."], VCTproperty=\""..VCTproperty.."\", VCTValue=\""..VCTvalue.."\"")
                print("            IsValueMatch = ["..tostring(IsValueMatch).."]")
                print("     IsValueMatchOptions = ["..tostring(IsValueMatchOptions).."]")
                print("        value_match_type = "..value_match_type)
                print("     newIsValueMatchType = ["..tostring(newIsValueMatchType).."]")
                print("               val_match = ["..GetValueMatchInfo(val_match).."]")
                print("                exstring = ["..tostring(exstring).."]")
                if IsValueMatch then
                  print("CheckValueMatchOptions() = "..tostring(CheckValueMatchOptions(val_match,exstring)))
                end
                print("=======")
              end
              
              if not IsValueMatch or (IsValueMatch and CheckValueMatchOptions(val_match,exstring)) then
                if not newIsValueMatchType
                      or (value_match_type == "NUMBER" and type(tonumber(exstring)) == string.lower(value_match_type))
                      or (value_match_type == "STRING" and type(exstring) == string.lower(value_match_type)) then

                  if not IsTextToAdd and not IsToRemove then
                    -- print("(After value_match, value_match_type) Line "..i..": value=["..exstring.."] ["..line.."], Property=\""..VCTproperty.."\", Value=\""..VCTvalue.."\"")
                    local NewValue = nil --could be a number OR a string
                    local tmpNewValue = nil --to be able to evaluate it before IntegerIntegrity()

                    local OrgValueTypeIsNumber, OrgValueIsInteger = CheckValueType(exstring,IsInteger_to_floatFORCE)

                    if IsMath_Operation then
                      --*********************************************************************************
                      local function TestOperand1(operand1,IsLockValue,lockedValue,IsLookup)
                        if operand1 == nil then operand1 = 0 end
                        if IsLookup == nil then IsLookup = false end
                        if IsLockValue then
                          if lockedValue == nil then
                            lockedValue = operand1
                            if not gIs_LEAN_MODE then print("                >>> Locked value is ["..tostring(lockedValue).."]") end
                            Report("","                >>> Locked value is ["..tostring(lockedValue).."]")
                          end
                          operand1 = lockedValue
                        elseif IsLookup then
                          if not gIs_LEAN_MODE then print("                >>> Lookup value is ["..tostring(operand1).."]") end
                          Report("","                >>> Lookup value is ["..tostring(operand1).."]")
                        end
                        return operand1,lockedValue
                      end
                      --*********************************************************************************
                      
                      local currentValue = VCTvalue
                      local scriptValue = exstring
                      local scriptmath_operation = math_operation

                      if string.find(math_operation,"$",1,true) then
                        --swap order of operands
                        currentValue,scriptValue = scriptValue,currentValue
                      end
                      --always remove the "$", if any
                      scriptmath_operation = string.gsub(scriptmath_operation,"%$","")
                      
                      if not IsLockValue and string.find(math_operation,"!",1,true) then
                        --preserve the value
                        IsLockValue = true
                      end
                      --always remove the "!", if any
                      scriptmath_operation = string.gsub(scriptmath_operation,"!","")

                      -- if string.len(scriptmath_operation) == 1 then -- {+, -, *, /} only
                      if string.len(scriptmath_operation) < 3 then -- {+, -, *, /, %, //, ^} only
                        tmpNewValue = ExecuteMathOperation(
                                        scriptmath_operation,
                                        tonumber(scriptValue), --does scriptValue - currentValue
                                        tonumber(currentValue)
                                      )
                        NewValue =  IntegerIntegrity(tmpNewValue,OrgValueIsInteger)

                      elseif string.find(string.sub(scriptmath_operation, 2, 3),"F:") then --"*F:endString"
                        local operand1 = tonumber(TranslateMathOperatorCommandAndGetValue(FileTable, string.sub(scriptmath_operation, 4), --currentValue to look for
                                            i, --from this line
                                            "forward"
                                          )
                                        )
                        operand1,lockedValue = TestOperand1(operand1,IsLockValue,lockedValue)
                        
                        tmpNewValue = ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        operand1,
                                        tonumber(currentValue)
                                      )
                        NewValue =  IntegerIntegrity(tmpNewValue,OrgValueIsInteger)

                      elseif string.find(string.sub(scriptmath_operation, 2, 4),"FB:") then
                        local operand1 = tonumber(TranslateMathOperatorCommandAndGetValue(FileTable, string.sub(scriptmath_operation, 5), 
                                            i, 
                                            "backward"
                                          )
                                        )
                        operand1,lockedValue = TestOperand1(operand1,IsLockValue,lockedValue)
                        
                        tmpNewValue = ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        operand1,
                                        tonumber(currentValue)
                                      )
                        NewValue =  IntegerIntegrity(tmpNewValue,OrgValueIsInteger)

                      elseif string.find(string.sub(scriptmath_operation, 2, 3),"L:") then
                        -- print("=====")
                        -- print("%% math_operation = ["..string.sub(scriptmath_operation, 1, 1).."]")
                        -- print("%% offset = ["..tonumber(string.sub(scriptmath_operation, 4)).."]")
                        -- print("%% current line i = "..i)
                        -- print("%% currentline = ["..FileTable[i].."]")
                        -- print("%% Lookup line = ["..FileTable[i + tonumber(string.sub(scriptmath_operation, 4))].."]")
                        -- print("%% value on Lookup line = ["..tostring(tonumber(StripInfo(FileTable[i + tonumber(string.sub(scriptmath_operation, 4))],[[value="]],[["]]))).."]")
                        -- print("%% ["..tonumber(currentValue).."]")
                        -- print("=====")
                        
                        local operand1 = tonumber(StripInfo(FileTable[i + tonumber(string.sub(scriptmath_operation, 4))],[[value="]],[["]]))
                        operand1,lockedValue = TestOperand1(operand1,IsLockValue,lockedValue,true)
                        
                        tmpNewValue = ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        operand1,
                                        tonumber(currentValue)
                                      )
                        -- print("%% ["..tmpNewValue.."]")
                        -- print("%% ["..tostring(OrgValueIsInteger).."]")
                        NewValue =  IntegerIntegrity(tmpNewValue,OrgValueIsInteger)
                        -- print("%% ["..NewValue.."]")
                        -- WaitForAnyKey("After MATH L, press key...")

                      elseif string.find(string.sub(scriptmath_operation, 2, 4),"LB:") then
                        local operand1 = tonumber(StripInfo(FileTable[i - tonumber(string.sub(scriptmath_operation, 5))],[[value="]],[["]]))
                        operand1,lockedValue = TestOperand1(operand1,IsLockValue,lockedValue,true)
                        
                        tmpNewValue = ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        operand1,
                                        tonumber(currentValue)
                                      )
                        NewValue =  IntegerIntegrity(tmpNewValue,OrgValueIsInteger)

                      else
                        --not a valid math_operation, keep original value
                        print(_zRED..[[>>> [WARNING] INVALID MATH_OPERATION: ]]..math_operation.._zDEFAULT)
                        Report("",[[INVALID MATH_OPERATION: ]]..math_operation,"WARNING")
                        tmpNewValue = currentValue
                        NewValue = currentValue
                      end
                    else
                      --no math_operation, keep original value
                      tmpNewValue = VCTvalue
                      NewValue = VCTvalue
                    end
-- print("tmpNewValue = <"..tmpNewValue..">")          
                    DEBUG_CurrentLine_print("@@@ A: USING: NewValue=["..NewValue.."]")

                    local tmpNewValueTypeIsNumber, tmpNewValueIsInteger = CheckValueType(tmpNewValue,IsInteger_to_floatFORCE)
                    local NewValueTypeIsNumber, NewValueIsInteger = CheckValueType(NewValue,IsInteger_to_floatFORCE)

                    -- if i == 104 then
                      -- print("line "..i..": OrgValue["..tostring(exstring).."] Number["..tostring(OrgValueTypeIsNumber).."] Integer["..tostring(OrgValueIsInteger).."] "..tostring(math.type(tonumber(exstring))))
                      -- print("line "..i..": tmpValue["..tostring(tmpNewValue).."] Number["..tostring(tmpNewValueTypeIsNumber).."] Integer["..tostring(tmpNewValueIsInteger).."] "..tostring(math.type(tonumber(tmpNewValue))))
                      -- print("line "..i..": NewValue["..tostring(NewValue).."] Number["..tostring(NewValueTypeIsNumber).."] Integer["..tostring(NewValueIsInteger).."] "..tostring(math.type(tonumber(NewValue))))
                    -- end

                    if IsMath_Operation then
                      --we only care about an INTEGER number becoming a FLOAT
                      if OrgValueTypeIsNumber and OrgValueIsInteger and not tmpNewValueIsInteger and (not IsInteger_to_floatDeclared or (IsInteger_to_floatDeclared and not IsInteger_to_floatPRESERVE)) then
                        if not IsLargeNumOfReplacement then
                          print(_zRED..[[>>> [NOTICE] Below: ORIGINAL integer value = "]]..exstring..[["  RESULT of math operation = "]]..tmpNewValue..[["  INTEGER conversion = "]]..NewValue..[["]].._zDEFAULT)
                          print(_zRED..[[    [   >>>] To override, use ["INTEGER_TO_FLOAT"] = "FORCE" or "PRESERVE"]].._zDEFAULT)
                        end
                        Report("",[[Below: ORIGINAL integer value = "]]..exstring..[["  RESULT of math operation = "]]..tmpNewValue..[["  INTEGER conversion = "]]..NewValue..[["]],"NOTICE")
                        Report("",[[To override, use ["INTEGER_TO_FLOAT"] = "FORCE" or "PRESERVE"]],"   >>>")
                      end

                      if tonumber(NewValue) ~= nil and math.abs(tonumber(NewValue)) > 2147483647 then
                        --MBINCompiler may produce a problematic MBIN that once decompiled will have a value of "1.0E+7"
                        print(_zRED..[[>>> [NOTICE] If value type is 'int32', new value is too big or small]].._zDEFAULT)
                        -- print(_zRED..[[>>> [NOTICE] MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+09"]].._zDEFAULT)
                        -- print(_zRED..[[         xxxxx Your script contains a value over "99999999" xxxxx]].._zDEFAULT)
                        -- print(_zRED..[[         A value like "100000123" will become "100000120", (it won't be exact)]].._zDEFAULT)
                        -- print(_zRED..[[         Bigger values may become like "1E+09"]].._zDEFAULT)
                        -- print(_zRED..[[         That could prevent NMS from using the mod]].._zDEFAULT)
                        Report("",[[ If value type is 'int32', new value is too big or small]],"NOTICE")
                        -- Report("",[[MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+09"]],"NOTICE")
                        -- Report("",[[       xxxxx Your script contains a value over "99999999" xxxxx]],"")
                        -- Report("",[[       A value like "100000123" will become "100000120", (it won't be exact)]],"")
                        -- Report("",[[       Bigger values may become like "1E+09"]],"")
                        -- Report("",[[       That could prevent NMS from using the mod]],"")
                      end

                    else
                      --when not a Math_Operation
                      -- print("Not MATH: NewValue=["..NewValue.."]")
                      if NewValue == "IGNORE" and not IsVCTempty then
                        --skip is intentional
                        repl_done = true
                        
                      else
                        --  we only care about a change from
                            -- (number to string)
                            -- (string to integer)
                            -- INTEGER number becoming a FLOAT
                        --and we DON'T preserve INTEGERs when not in a MATH_OPERATION
                        if OrgValueTypeIsNumber ~= NewValueTypeIsNumber then
                          print(_zRED..[[>>> [WARNING] ORIGINAL and NEW number value have mismatched types (STRING vs NUMBER)]].._zDEFAULT)
                          Report("",[[ORIGINAL and NEW number value have mismatched types (STRING vs NUMBER)]],"WARNING")
                        elseif OrgValueTypeIsNumber then
                          if OrgValueIsInteger and not NewValueIsInteger then
                            print(_zRED..[[>>> [WARNING] ORIGINAL and NEW number value have mismatched types (INTEGER->FLOAT)]].._zDEFAULT)
                            Report("",[[ORIGINAL and NEW number value have mismatched types (INTEGER->FLOAT)]],"WARNING")
                          end
                        end
                      end
                    end

                    pv("(After math_operation) Line "..i..": value=["..tostring(NewValue).."] ["..line.."], Property=\""..VCTproperty.."\", Value=\""..VCTvalue.."\"")
                    -- if value ~= "IGNORE" then
                    if NewValue ~= "IGNORE" then
                      local Ending = [[" />]]
                      if string.sub(line,-2) == [[">]] then
                        Ending = [[">]]
                      end
                      -- we CANNOT use gsub here because it could replace at wrong places like:
                      -- <Property name="_3rdPersonAngleSpeedRangePitch" value="3" />
                      -- when replacing such a value (3 with 8) it becomes:
                      -- <Property name="_8rdPersonAngleSpeedRangePitch" value="8" />
                      
                      local postValue = ""
                      local preValue = ""
                      
-- localCount = 1
-- repeat
    -- kLocal, vLocal = debug.getlocal(1, localCount)
    -- if kLocal then
        -- -- print(kLocal, vLocal)
        -- localCount = localCount + 1
    -- end
-- until nil == kLocal
-- print("AAAAAAAAAAAAAAAA   localCount = "..(localCount-1))

                      -- postV = ""
                      -- preV = ""
                      if IsAddToStringValueFlag then
                        preValue = NewValue:sub(1,NewValue:find("{:}",1,true)-1) -- before the {:}
                        postValue = NewValue:sub(NewValue:find("{:}",1,true)+3)  -- after the {:}
                        NewValue = exstringORG -- the original case value
                      end
                      -- if IsAddToEndOfStringValueFlag then
                        -- --doing a replacement adding to the end of the current value
                        -- NewValue = string.sub(postV,2) --remove the starting +
                        -- preValue = exstring
                      -- end
                      -- if IsAddToStartOfStringValueFlag then
                        -- --doing a replacement adding to the start of the current value
                        -- NewValue = string.sub(preV,1,-2) --remove the ending +
                        -- postValue = exstring
                      -- end
                      
                      -- if IsAddToEndOfStringValueFlag then
                        -- --doing a replacement adding to the end of the current value
                        -- NewValue = string.sub(NewValue,2) --remove the starting +
                        -- preValue = exstring
                      -- end
                      -- if IsAddToStartOfStringValueFlag then
                        -- --doing a replacement adding to the start of the current value
                        -- NewValue = string.sub(NewValue,1,-2) --remove the ending +
                        -- postValue = exstring
                      -- end

                      if string.find(line,[[<Property name=]],1,true) ~= nil and string.find(line,[[value=]],1,true) ~= nil then
                        --standard value replacement on a line with the VCTproperty
                        --a line with BOTH name AND value, value could be EMPTY
                        --like: <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN" />
                        --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
                        FileTable[i] = string.sub(line,1,string.find(line,[[value="]],1,true)-1)..[[value="]]..preValue..tostring(NewValue)..postValue..Ending
                        repl_done = true

                      elseif string.find(line,[[Property value=]],1,true) ~= nil then
                        -- lines with value only, CANNOT BE EMPTY
                        -- like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
                        -- could be a SIGNIFICANT KEY_WORD
                        FileTable[i] = string.sub(line,1,string.find(line,[[value="]],1,true)-1)..[[value="]]..preValue..tostring(NewValue)..postValue..Ending
                        repl_done = true

                      elseif string.find(line,[[Property name=]],1,true) ~= nil then
                        -- lines with name only, CANNOT BE EMPTY
                        -- like: <Property name="GenericTable">
                        -- like: <Property name="List" />
                        -- could be a SIGNIFICANT KEY_WORD
                        FileTable[i] = string.sub(line,1,string.find(line,[[name="]],1,true)-1)..[[name="]]..preValue..tostring(NewValue)..postValue..Ending
                        repl_done = true

                      else
                        print(_zRED..">>> [WARNING] XXX At "..i..": Found an Un-handled line type ["..line.."], check your script".._zDEFAULT)
                        Report(line,"XXX At "..i..": Check your script, found an Un-handled line type:","WARNING")

                      end
                      pv("(After replacement) Line "..i..": FileTable[i] = ["..FileTable[i].."]")
                    else
                      -- print("(value is IGNORE) Line "..i..": FileTable[i] = ["..FileTable[i].."]")
                      -- print("   >>> the line is SKIPPED")
                    end

                  else --text_to_add and/or to_remove has a value
                    local IsAddNeedsRemove = false
                    if IsTextToAdd then
                      DEBUG_TextToAdd_print("=== Preparing to ADD some text at "..i.." ["..FileTable[i].."]")
                      
                      -- we cannot have a remove operation at the same time, except for a IsAddNeedsRemove
                      IsToRemove = false
                      
                      if IsReplaceADDAFTERLINE then
                        --this is the default
                        i = SpecialKeyWordLine[k]
                        DEBUG_TextToAdd_print("===    -> Adding text after line found by SKW: "..i.." ["..FileTable[i].."]")
                      elseif IsReplaceADDAFTERSECTION then
                        -- i becomes the end of the section
                        i = GroupEndLine[k]
                        DEBUG_TextToAdd_print("===    -> Adding text after section: "..i.." ["..FileTable[i].."]")
                      elseif IsReplaceATLINE then
                        --no need to change i
                        DEBUG_TextToAdd_print("===    -> Removing existing line and Adding text at line: "..i.." ["..FileTable[i].."]")
                        --we take care of removing the line in IsToRemove below
                        if not gIs_LEAN_MODE then print([[>>> [INFO] Turning ON automatic current line removal]]) end
                        Report(add_option,[[=== >>> Turning ON automatic current line removal]],"INFO")
                        IsAddNeedsRemove = true
                        -- IsToRemove = true
                        IsToRemoveLINE = true
                      end
                      
                      if IsLineOffset then
                        DEBUG_TextToAdd_print("===    -> line before applying offset: "..i.." ["..FileTable[i].."]")
                        if offset_sign == "+" then
                          i = i + offset
                          if i > #FileTable then
                            i = #FileTable - 1
                          end
                        elseif offset_sign == "-" then
                          i = i - offset
                          if i < 3 then
                            i = 3 --it must be after the header at least
                          end
                        end
                        DEBUG_TextToAdd_print("===    -> line after applying offset: "..i.." ["..FileTable[i].."]")
                      end

                      DEBUG_TextToAdd_print("=== A: text_to_add = [\n"..text_to_add:sub(1,100).._zGREEN.."_..._".._zDEFAULT..text_to_add:sub(-100).."] of type '"..type(text_to_add).."'")
                      -- if WDEBUG then WaitForAnyKey() end
                      if IsUseSection_add_named then
                        -- print("In IsUseSection_add_named")
                        --get section content
                        for m=1,#gUseSectionName do
                          if gUseSectionName[m] == section_add_named then
                            -- print("Found section_add_named ["..section_add_named.."] as "..m)
                            --retrieve the section
                            text_to_add = gUseSectionContent[m]
                            -- print("gUseSectionContent[m] = ["..gUseSectionContent[m].."]")
                            -- print("B: ["..text_to_add.."]")
                            -- if WDEBUG then WaitForAnyKey() end
                            break
                          end
                        end
                      end
                      
                      DEBUG_TextToAdd_print("=== B: text_to_add = [\n"..text_to_add:sub(1,100).._zGREEN.."_..._".._zDEFAULT..text_to_add:sub(-100).."] of type '"..type(text_to_add).."' after UseSectionName")
                      -- if WDEBUG then WaitForAnyKey() end
                      local _,linecount = string.gsub(text_to_add,"\n","")
                      if linecount == 0 then
                        linecount = 1
                      end
                      DEBUG_TextToAdd_print("=== text_to_add: linecount = "..linecount)
                      DEBUG_TextToAdd_print("=== text_to_add: #FileTable BEFORE = "..#FileTable)
-- print("==========")
-- for z=1,#FileTable do
  -- print("="..FileTable[z].."=")
-- end
-- print("==========")
                      local textmod = table.concat(FileTable,"\n",1,i)
                      textmod = textmod.."\n"..text_to_add.."\n"
                      textmod = textmod..table.concat(FileTable,"\n",i+1,#FileTable)
                      
                      local stmp5 = string.gsub(textmod,"\n%s*\n","\n")
                      FileTable = stmp5:split("\n")
                      DEBUG_TextToAdd_print("=== text_to_add: #FileTable  AFTER = "..#FileTable)
-- print("==========")
-- for z=1,#FileTable do
  -- print("="..FileTable[z].."=")
-- end
-- print("==========")

                      -- --we need to refresh WholeTextFileTable
                      IsDirtyWholeTextFileTable = true
                      
                      if linecount > 1 then
                        if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                          -- print(_zGREEN.."    -- Lines "..(i + 1).." - "..(i + linecount + 1).._zDEFAULT.." ADDED using text in [\"ADD\"]")
                          print(_zGREEN.."    -- Lines "..(i + 1).." - "..(i + linecount).._zDEFAULT.." ADDED using text in [\"ADD\"]")
                        elseif gIs_LEAN_MODE then
                          if k%10 == 0 then
                            print("    -- "..k..[[/]]..#GroupStartLine)
                          end
                        end
                        -- Report("","    -- Lines "..(i + 1).." - "..(i + linecount + 1).." ADDED using text in [\"ADD\"]")
                        Report("","    -- Lines "..(i + 1).." - "..(i + linecount).." ADDED using text in [\"ADD\"]")
                      else
                        if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                          -- print(_zGREEN.."    -- Line "..(i + 1).." - "..(i + linecount).._zDEFAULT.." ADDED using text in [\"ADD\"]")
                          print(_zGREEN.."    -- Line "..(i + 1).._zDEFAULT.." ADDED using text in [\"ADD\"]")
                        elseif gIs_LEAN_MODE then
                          if k%10 == 0 then
                            print("    -- "..k..[[/]]..#GroupStartLine)
                          end
                        end
                        -- Report("","    -- Line "..(i + 1).." - "..(i + linecount).." ADDED using text in [\"ADD\"]")
                        Report("","    -- Line "..(i + 1).." ADDED using text in [\"ADD\"]")
                      end
                      
                      if not IsAddNeedsRemove then
                        --in case we have to replace ALL
                        GroupEndLine[k] = #FileTable --make sure we get to the new last line of the file
                        ADDcount = ADDcount + 1
                        repl_done = true

                        i = i + linecount -- - 1 --point to the last line inserted
                      else
                        --we have a REMOVE to do, reset i
                        if IsReplaceATLINE and VCTvalue == "IGNORE" then
                          -- we use the found line i
                        else
                          i = GroupStartLine[k]
                        end
                      end

                    end --if IsTextToAdd then

                    if IsToRemove or IsAddNeedsRemove then
                      local tmpAtLine = i
                      CurrentLine = i --so we remember

                      DEBUG_TextToRemove_print("=== text_to_remove: #FileTable  BEFORE = "..#FileTable)
                      pv("    -- IsToRemove starting line: " .. i)

                      if IsToRemoveSECTION then
                        --IsLineOffset is irrelevant
                        pv("    -- Removing SECTION at line: " .. i)
                        -- print(FileTable[CurrentLine])

                        local top = GroupStartLine[k] --the top of this section
                        local bottom = GroupEndLine[k] --the end of this ssection

                        -- print(top.."-"..bottom)
                        --delete section from exml
                        for m=bottom,top,-1 do
                          if #FileTable >= m then
                            table.remove(FileTable,m)
                          else
                            print(_zRED..">>> [WARNING] Remove operation aborted, line "..m.." is out of range!".._zDEFAULT)
                            Report("","Remove operation aborted, line "..m.." is out of range!","WARNING")
                            break
                          end
                        end
                        -- local linecount = bottom - top
                        if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                          if not gIs_LEAN_MODE then print(_zGREEN.."    -- Lines "..top.." - "..bottom.._zDEFAULT.." REMOVED") end
                        elseif gIs_LEAN_MODE then
                          if k%10 == 0 then
                            if not gIs_LEAN_MODE then print("    -- "..k..[[/]]..#GroupStartLine) end
                          end
                        end
                        Report("","    -- Lines "..top.." - "..bottom.." REMOVED")

                      elseif IsToRemoveLINE then
                        i = SpecialKeyWordLine[k]
                        pv("    -- Removing LINE at line: " .. i)

                        if IsLineOffset then
                          --we offset from the line found by the keywords
                          pv("    -- line before applying offset: " .. i)
                          if offset_sign == "+" then
                            i = i + offset
                            if i > #FileTable then
                              i = #FileTable - 1
                            end
                          elseif offset_sign == "-" then
                            i = i - offset
                            if i < 3 then
                              i = 3 --it must be after the header at least
                            end
                          end
                          pv("    -- line after applying offset: " .. i)
                        end

                        pv("    -- Removing LINE at line: " .. i)
                        
                        if IsReplaceATLINE then
                          --we need to adjust older i
                          i = tmpAtLine
                          if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                            print(_zGREEN.."    -- Original Line "..i.._zDEFAULT.." REMOVED")
                          elseif gIs_LEAN_MODE then
                            if k%10 == 0 then
                              print("    -- "..k..[[/]]..#GroupStartLine)
                            end
                          end
                          Report("","    -- Original Line "..i.." REMOVED")
                        else
                          if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                            print(_zGREEN.."    -- Line "..i.._zDEFAULT.." REMOVED")
                          elseif gIs_LEAN_MODE then
                            if k%10 == 0 then
                              print("    -- "..k..[[/]]..#GroupStartLine)
                            end
                          end
                          Report("","    -- Line "..i.." REMOVED")
                        end

                        --delete line i from exml
                        if #FileTable >= i then
                          table.remove(FileTable,i)
                        else
                          print(_zRED..">>> [WARNING] Remove operation aborted, line "..i.." is out of range!".._zDEFAULT)
                          Report("","Remove operation aborted, line "..i.." is out of range!","WARNING")
                          break
                        end
                      end

                      DEBUG_TextToRemove_print("=== text_to_remove: #FileTable  AFTER = "..#FileTable)

                      i = CurrentLine --point to the next line to process

                      -- --we need to refresh WholeTextFileTable, ADDED/REMOVED lines from FileTable
                      IsDirtyWholeTextFileTable = true

                      REMOVEcount = REMOVEcount + 1
                      repl_done = true
                    end --if IsTextToAdd then AND if IsToRemove then
                    
                    if not gIs_LEAN_MODE and IsLargeNumOfReplacement then
                      dotCount = dotCount + 1
                      if dotCount%10 == 0 then
                        if IsdotOn then
                          IsdotOn = false
                            print(_zUpOneLine.." <")
                        else
                          IsdotOn = true
                          print(_zUpOneLine.." >")
                        end
                      end
                    end
                    
                  end --if not IsTextToAdd and not IsToRemove then

                else
                  --no match_type
                  --REMARKED to reduce clutter in output
                  -- Report("","Line "..i..", ["..VCTproperty.."] with a value of ["..exstring.."] does not match a ["..value_match_type..
                            -- "] like ["..value.."], XXXXX this value not replaced XXXXX","WARNING")
                  if exstring ~= nil and i ~= 1 then
                    -- i ~= 1: not the 1st line of the group
                    if not gIs_LEAN_MODE then print(_zRED.."      -- Line "..i.._zDEFAULT..", ["..exstring.."] type does not match a ["..value_match_type.."]") end
                  end
                end --value_match_type == type(value) or empty
                
              end --value_match == value or empty
            end --we found THE line in the EXML file
          end --if IsReplaceRAW then

          local pr = nil
          if gDEBUG_repl_done then
            pr = print
          else
            pr = function(... )end
          end
          
          if gIs_LEAN_MODE or IsLargeNumOfReplacement then
            dotCount = dotCount + 1
            if dotCount%10 == 0 then
              if IsdotOn then
                IsdotOn = false
                  print(_zUpOneLine.." *")
              else
                IsdotOn = true
                print(_zUpOneLine.."  *")
              end
            end
          end
          
          if repl_done then
            AtLeastOneReplacementDone = true
            IsOneReplacementDoneThisValue = true
            if not (IsTextToAdd or IsToRemove) then
              if VCTvalue == "IGNORE" then
                local spacer = "    "
                local part1 = "-- On line "..i..", SKIPPED this line"
                Report("",spacer..part1)
                if not gIs_LEAN_MODE then print(_zGREEN.."      -- Line "..i.._zDEFAULT..", SKIPPED this line") end
                
              else
                local spacer = "      "
                local spacer1 = "    "
                local spacer2 = spacer1
                local part = trim(line) --for Report and cmd

                --for Report
                local Rpart1 ="-- On line "..i..", exchanged:" .. spacer1 .. "[" .. part .. "]"
                local Rpart3 = trim(FileTable[i])
                -- if string.find(line,[[<Property name=]],1,true) ~= nil and string.find(line,[[value=]],1,true) ~= nil then
                  -- if not IsReplaceRAW then
                    -- --we can cut out that part
                    -- local pos = string.find(part3,[[value=]],1,true)
                    -- if pos ~= nil then
                      -- Rpart3 = _zGREEN.."... ".._zDEFAULT..string.sub(Rpart3,pos)
                    -- end
                  -- else
                    -- Rpart3 = string.sub(part3,1,200)..[[\n..trimmed..\n]]..string.sub(Rpart3,-200)
                 -- end
                -- end

                --everything full length
                Report("",spacer..Rpart1 .. spacer1 .. "with: " .. spacer2 .. "[" .. Rpart3 .. "]")

                if numChangeTableRepl < gMaxReplNumber then
                  --for cmd
                  if string.len(part) > 100 then
                    part = string.sub(part,1,30).._zGREEN..[[ ..trimmed.. ]].._zDEFAULT..ltrim(string.sub(part,-30))
                  end

                  local part2 = _zGREEN.."-- On line "..i.._zDEFAULT..", exchanged:" .. spacer1 .. "[" .. part .. "]"
                  if string.len(part2) < 86 then
                    spacer1 = string.rep(" ",86 - string.len(part2) + string.len(spacer1))
                  end

                  local part4 = Rpart3 --for cmd
                  if not gIs_LEAN_MODE and ((gIs_DEV_MODE and not (IsLargeNumOfGroupsFound or IsLargeNumOfReplacement)) or gIs_FULL_MODE) then
                    if not IsReplaceRAW then
                      if string.len(part4) > 100 then
                        part4 = string.sub(part4,1,30).._zGREEN..[[ ..trimmed.. ]].._zDEFAULT..ltrim(string.sub(part4,-30))
                      end
                    else
                      if string.len(part4) > 200 then
                        part4 = string.sub(part4,1,50).._zGREEN..[[ ..trimmed.. ]].._zDEFAULT..ltrim(string.sub(part4,-50))
                      end
                    end
                    if not gIs_LEAN_MODE then print(spacer..part2 .. spacer1 .. "with: " .. spacer2 .. "[" .. part4 .. "]") end
                  end
                else --ReplNumber >= gMaxReplNumber
                  if not gIs_LEAN_MODE then
                    if numChangeTableRepl == gMaxReplNumber then
                      IsLargeNumOfReplacement = true
                      print(_zGREEN..">>> ".._zRED.."LARGE number".._zDEFAULT.._zGREEN.." of similar replacements detected".._zRED.." (limiting log.lua output)".._zDEFAULT)
                      print(_zRED.."               BE PATIENT".._zDEFAULT..", the output may only seem to stop at times...")
                    end
                  end
                end
                
                if i > EndLine then
                  -- if not IsReplaceFOLLOWING then
                    if not gIs_LEAN_MODE and numChangeTableRepl < gMaxReplNumber then
                      print(_zRED..">>> [NOTICE] -???- Replacement(s) outside of the search group: "..SearchGroupRange..".  Could be Ok, you decide... -???-".._zDEFAULT)
                    end
                    Report("","-???- Replacement(s) outside of the search group: "..SearchGroupRange..".  Could be Ok, you decide... -???-","NOTICE")
                  -- end
                  --update 'EndLine' so we do not repeat this NOTICE
                  EndLine = GroupEndLine[k]
                end

                numChangeTableRepl = numChangeTableRepl + 1
                ReplNumber = ReplNumber + 1
              end

              local IsWholeFileSearch = (not IsPrecedingKeyWords and not IsSpecialKeyWords) or IsReplace and (not IsReplaceAllInGroup)
              
              if IsAllTheSameChangeTable then --but not "IGNORE"
                --when #val_change_table > 1 and the val_change_table[j][1] are all the same 'name' (like "Bonus" for instance)
                --we need to auto-advance the line counter
                DEBUG_LoopBreak_print("A: IsAllTheSameChangeTable = "..tostring(IsAllTheSameChangeTable))
                DEBUG_LoopBreak_print("A: AUTO_advancing GroupStartLine by one")
                GroupStartLine[k] = i + 1 --this is going to be the new GroupStartLine when processing the next VALUE_CHANGE in this group
                DEBUG_LoopBreak_print("A: changed GroupStartLine["..k.."] to "..GroupStartLine[k])
              end

              if _mISxxx then
                print("")
                print(" + DONE: BEFORE Loop/Break")
                print(" +             IsLineOffset: ["..tostring(IsLineOffset).."]")
                print(" +                IsReplace: ["..tostring(IsReplace).."]")
                print(" +             IsReplaceRAW: ["..tostring(IsReplaceRAW).."]")
                print(" +             IsReplaceALL: ["..tostring(IsReplaceALL).."]")
                print(" +            IsReplaceONCE: ["..tostring(IsReplaceONCE).."]")
                print(" +    IsReplaceAllInSection: ["..tostring(IsReplaceAllInSection).."]")
                print(" +       IsReplaceFOLLOWING: ["..tostring(IsReplaceFOLLOWING).."]")
                print(" +   IsOrgReplace_typeEmpty: ["..tostring(IsOrgReplace_typeEmpty).."]")
                print(" +  IsAllTheSameChangeTable: ["..tostring(IsAllTheSameChangeTable).."]")
                print("")
              end

              --==================================================================================
              --here we decide if we continue down the file or break for a new val_change_table combo
              if IsReplaceRAW then
                --because we want to continue replacing values down the file until GroupEndLine[k]
                --Note: if ADD was used, we already point to the last line inserted
                DEBUG_LoopBreak_print("RAW: Looping in this group to continue replacing values down the file until GroupEndLine[k] = "..GroupEndLine[k])

              -- elseif IsReplaceFOLLOWING then
                -- DEBUG_LoopBreak_print("A: original GroupStartLine["..k.."] = "..GroupStartLine[k])

                -- if IsAllTheSameChangeTable then --but not "IGNORE"
                  -- --when #val_change_table > 1 and the val_change_table[j][1] are all the same 'name' (like "Bonus" for instance)
                  -- --we need to auto-advance the line counter
                  -- DEBUG_LoopBreak_print("A: IsAllTheSameChangeTable = "..tostring(IsAllTheSameChangeTable))
                  -- DEBUG_LoopBreak_print("A: AUTO_advancing GroupStartLine by one")
                  -- GroupStartLine[k] = i + 1 --this is going to be the new GroupStartLine when processing the next VALUE_CHANGE in this group
                  -- DEBUG_LoopBreak_print("A: changed GroupStartLine["..k.."] to "..GroupStartLine[k])
                -- else
                  -- -- because we want to continue replacing values down the file until EOF
                  -- --   we disregard the original GroupEndLine[k]
                  -- DEBUG_LoopBreak_print("A: Looping in this group to continue replacing values down the file until GroupEndLine[k] = "..#FileTable)
                  -- GroupEndLine[k] = #FileTable
                  -- DEBUG_LoopBreak_print("A: changed GroupEndLine["..k.."] to "..GroupEndLine[k])
                -- end
                
                -- -- if not IsVCTempty and #val_change_table > 1 then
                  -- -- -- a VCT exist and it has more than one entry
                  -- -- if j == #val_change_table then
                    -- -- -- we have reach the last entry of VCT
                    -- -- -- we are not going to the end of the file
                    -- -- DEBUG_LoopBreak_print("A: break on last entry(>1) of VCT to next group")
                    -- -- break
                  -- -- end
                -- -- end

              elseif IsReplaceAllInSection then
                IsLineOffset = false --turning line offset off to process the next line
                DEBUG_LoopBreak_print("A1: Looping in this group to continue replacing values down the section")
              
              elseif IsAllTheSameChangeTable then --when IGNORE is not used
                --when #val_change_table > 1 and the val_change_table[j][1] are all the same 'name' (like "Bonus" for instance)
                --we need to auto-advance the line counter
                GroupStartLine[k] = i + 1 --this is going to be the new GroupStartLine when processing the next VALUE_CHANGE in this group
                DEBUG_LoopBreak_print("B: break out of this group on IsAllTheSameChangeTable to next group to continue replacing ALL value down the file from "..LastReplacementLine.." until GroupEndLine[k] = "..GroupEndLine[k])
                break

              elseif IsReplaceONCE then
                DEBUG_LoopBreak_print("C: break out of this group on IsReplaceONCE to next VCT entry to continue replacing ONE value down the file from "..i.." until GroupEndLine[k] = "..GroupEndLine[k])
                break

              -- elseif #linesNumFound == 1 and linesNumFound[1] ~= nil then
                -- -- only handling 1st found line for now !!!
                -- DEBUG_LoopBreak_print("C0: break out of this group on using linesNumFound[1] to next group")
                -- -- linesNumFound[1] = nil -- reset for next i for now...  should break out of while loop when only one found
                -- break
                
              elseif IsReplaceALL or IsOrgReplace_typeEmpty then
                -- because we want to continue replacing values --removed: down the section until GroupEndLine[k]
                -- Note: if ADD was used, we already point to the last line inserted
                DEBUG_LoopBreak_print("D: Looping in this group to continue replacing values down the file")

              elseif not IsReplaceALL then
                -- our replacement is done, we exit this group
                DEBUG_LoopBreak_print("E: break out of this group on 'not IsReplaceALL' to next group")
                break

              else
                -- not an approved word for replace_type maybe
                -- ANYWAY, we are done for this bunch
                -- should NOT happen
                print("F: break out of this group on not an approved replace_type to next group")
                break
              end
              
            else -- IsTextToAdd or IsToRemove
              -- get to next section
              DEBUG_LoopBreak_print("G: break out of this group on IsTextToAdd or IsToRemove to next group")
              break
            end

            -- linesNumFound[1] = nil -- reset for next i for now...  should break out of while loop when only one found

          else
          --elseif not IsSkipping then
            --no repl_done on 'this line'
            if IsSpecialKeyWords and not IsPrecedingFirstTRUE and IsOnlyOnePreceding then
              --lets go down until we find VALUE_CHANGE_TABLE, even outside the bottom of the section
              DEBUG_LoopBreak_print("on line "..i..": No repl_done, but IsSpecialKeyWordsand not IsPrecedingFirstTRUE and IsOnlyOnePreceding, so continuing down in the group...")

              if i == GroupEndLine[k] and not IsOneReplacementDoneThisValue then
                --we are at the end of the group and did not find a replacement
                --we can try to go down to the end of file

                --Wbertro: this could instead go up one level in the EXML

                DEBUG_LoopBreak_print(">>> reached end of this group and 'No repl_done', so setting GroupEndLine["..k.."] to end of file...")
                GroupEndLine[k] = #FileTable
              end
            end

            -- if IsReplaceONCE and IsOneReplacementDoneThisValue then

            -- end
          end -- if repl_done then

-- localCount = 1
-- repeat
    -- kLocal, vLocal = debug.getlocal(1, localCount)
    -- if kLocal then
        -- -- print(kLocal, vLocal)
        -- localCount = localCount + 1
    -- end
-- until nil == kLocal
-- print("BBBBBBBBBBBBBBBB   localCount = "..(localCount-1))

        end -- while i <= (GroupEndLine[k] - 1) do (looping lines in a group)
        
        DEBUG_LoopBreak_print(">>> Done ALL lines, exited 'inner' <<lines in group(k)>> while and looking for next Group")
        DEBUG_LoopBreak_print("    >>> was GroupStartLine[k] - GroupEndLine[k] = "..GroupStartLine[k].." - "..GroupEndLine[k])

        -- if IsReplaceFOLLOWING and GroupEndLine[k] == #FileTable then
          -- DEBUG_LoopBreak_print("W: break out of 'ALL' Groups on IsReplaceFOLLOWING to next VCT entry")
          -- -- --restore group 'end line' for next VALUE_CHANGE
          -- -- GroupEndLine[k] = EndLineBackup
          -- break
        -- end

      end --while k <= #GroupStartLine - 1 do (looping each group)
      DEBUG_LoopBreak_print(">>> Done ALL groups, exited 'groups while', now looking for next VALUE_CHANGE")

      if not IsOneReplacementDoneThisValue then
        if IsNotice_off then
          print(_zRED..">>> NO Replacement done.".._zDEFAULT)
          Report("","'                    NO Replacement done'","")
        else
          print(_zRED..">>> [NOTICE] NO Replacement done.  Could be Ok, you decide...".._zDEFAULT)
          Report("","NO Replacement done.  Could be Ok, you decide...","NOTICE")
        end
      end

    end --while j <= (#val_change_table - 1) do (looping each VCT entry)
    DEBUG_LoopBreak_print(">>> Done ALL VCT entries: exited 'val_change_table outer' while")

    if AtLeastOneReplacementDone and IsSaveSectionTo then
      --saving the section with changes

      if #GroupStartLine > 0 then
        if IsKeepSection then
          --save the first section to a file in the SavedSections folder using the SECTION_SAVE_TO name.xml
          --we overwrite any existing file with that name
          --we save it with changes done
          local thisSection = ""
          for m=GroupStartLine[1],GroupEndLine[1] do
            local line = FileTable[m]
            thisSection = thisSection..line.."\n"
          end

          if IsKeepSection then
            DEBUG_SECTION_print("@@@@@ E: Writing section_save_to a file in the SavedSections folder after changes")
            WriteToFile(thisSection,gMASTER_FOLDER_PATH..[[SavedSections\]]..section_save_to..[[.xml]])
          end

          for m=1,#gSaveSectionName do
            if gSaveSectionName[m] == section_save_to then
              --was saved it internally, update content
              DEBUG_SECTION_print("@@@@@ E: Saving section_save_to in the internal SECTION_SAVE_TO list after changes")
              gSaveSectionContent[m] = thisSection
              IsOneReplacementDoneThisValue = true
              -- print("Z: gSaveSectionContent[m] = ["..gSaveSectionContent[m].."]")
              break
            end
          end
        end
      end
      
      if IsUpdateSection then
        --save the all of FileTable to a file in the SavedSections folder using the SECTION_SAVE_TO name.xml
        --we overwrite any existing file with that name
        --we save it with changes done
        local thisSection = ""
        for m=1,#FileTable do
          local line = FileTable[m]
          thisSection = thisSection..line.."\n"
        end

        -- if IsKeepSection then
          DEBUG_SECTION_print("@@@@@ E: Writing section_edit a file in the SavedSections folder after changes")
          WriteToFile(thisSection,gMASTER_FOLDER_PATH..[[SavedSections\]]..section_save_to..[[.xml]])
        -- end

        for m=1,#gSaveSectionName do
          if gSaveSectionName[m] == section_edit then
            --was saved it internally, update content
            DEBUG_SECTION_print("@@@@@ E: Saving section_edit in the internal SECTION_SAVE_TO list after changes")
            gSaveSectionContent[m] = thisSection
            IsOneReplacementDoneThisValue = true
            -- print("Z: gSaveSectionContent[m] = ["..gSaveSectionContent[m].."]")
            break
          end
        end
      end
      
    end
    
    if SaveSectionDone then
      ReplNumber = ReplNumber + 1
    end
    
    DEBUG_SECTION_print("@@@@@ not AtLeastOneReplacementDone and not SaveSectionDone = "..tostring(not AtLeastOneReplacementDone and not SaveSectionDone))
    if not AtLeastOneReplacementDone and not SaveSectionDone then
      --replacement NOT done
      print("")
      print(_zRED..">>> [WARNING] No action done!".._zDEFAULT)
      Report("","No action done!","WARNING")
    else
      -- this is done by the calling function
      -- pv("Saving changes to "..file)
      -- WriteToFile(ConvertLineTableToText(FileTable), file)
    end

  else
    -- -- Report(VCTproperty,"Could not find PRECEDING_KEY_WORDS or SPECIAL_KEY_WORDS!","WARNING")
  end

-- localCount = 1
-- repeat
    -- kLocal, vLocal = debug.getlocal(1, localCount)
    -- if kLocal then
        -- -- print(kLocal, vLocal)
        -- localCount = localCount + 1
    -- end
-- until nil == kLocal
-- print("MMMMMMMMMMMMMMMM   localCount = "..(localCount-1))

  return FileTable, ReplNumber, ADDcount, REMOVEcount
  -- looping to next EXML_CHANGE_TABLE
end

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

--***************************************************************************
function GetLASTsections(SectionsTable)
  --all the LAST group of sections
  local LASTSections = {}

  --all other sections
  local OtherSections = {}

  local LASTtoken = string.sub(SectionsTable[#SectionsTable],1,6)

  for j=1,#SectionsTable do
    if string.find(SectionsTable[j],LASTtoken,1,true) ~= nil then
      --the LAST group of sections
      table.insert(LASTSections,SectionsTable[j])
    else
      --lines without the LASTtoken
      table.insert(OtherSections,SectionsTable[j])
    end
  end
  return LASTSections,OtherSections
end
--***************************************************************************

-- *************************************** handles SECTION_ACTIVE ***********************************
function ProcessSECTION_ACTIVE(GSL,GEL,SKWL,SectionActive)
  --ACTIVE groups
  GSLA = {}
  GELA = {}
  SKWLA = {}

  --INACTIVE groups
  GSLI = {}
  GELI = {}
  SKWLI = {}

  if #SectionActive == 0 then
    --all groups are active
    return GSL,GEL,SKWL,GSLI,GELI,SKWLI,false
  end

  local IsSkipped = false
  for i=1,#SectionActive do
    local secActive = SectionActive[i]
    if secActive <= #GSL then
      table.insert(GSLA,GSL[secActive])
      table.insert(GELA,GEL[secActive])
      table.insert(SKWLA,SKWL[secActive])
    else
      IsSkipped = true
    end
  end

  if IsSkipped and #GSLA == 0 then
    --ALL SECTION_ACTIVE were skipped
    --all groups are active
    return GSL,GEL,SKWL,GSLI,GELI,SKWLI,false
  end

  for i=1,#GSL do
    local IsActive = false
    for j=1,#GSLA do
      if GSL[i] == GSLA[j] then
        --an active group
        IsActive = true
        break
      end
    end
    if not IsActive then
      table.insert(GSLI,GSL[i])
      table.insert(GELI,GEL[i])
      table.insert(SKWLI,SKWL[i])
    end
  end

  return GSLA,GELA,SKWLA,GSLI,GELI,SKWLI,true
end
-- *************************************** END: handles SECTION_ACTIVE ******************************

--#############################################################################################
--**************************************** FindGroup() ***********************************
function FindGroup(FileName,TextFileTable,WholeTextFileTable,prec_key_words,IsPrecedingFirstTRUE
                  ,IsSpecialKeyWords,spec_key_words,section_up_special,section_up_preceding)

  local gDEBUG_CheckUniqueness = gDEBUG_CheckUniqueness
  
  local SectionStartLine = {}
  local SectionEndLine = {}
  local PrecKeyWordLine = {}

  --***************************************************************************************************
  --template only
  local function A()
  end
  --***************************************************************************************************

  --***************************************************************************************************
  local function IsPrec_key_wordsExist(prec_key_words)
    local SearchPrec = false
    for i=1,#prec_key_words do
      if prec_key_words[i] ~= nil and prec_key_words[i] ~= "" then
        SearchPrec = true
        break
      end
    end
    return SearchPrec
  end

  --***************************************************************************************************
  --locate all Sections pointed to by PrecedingKeywords inside given section recursively
  local function LocatePrecKeywordsInSection(TextFileTable,prec_key_words,index,StartLine,EndLine,level,IsQuit,groupId)
    DEBUG_FindGroup_print("\n  Entering LocatePrecKeywordsInSection()")
    if groupId == nil then groupId = "" end
    local currentLevel = level

    DEBUG_FindGroup_print("")
    DEBUG_FindGroup_print("*** IN values for groupSection #"..groupId)
    DEBUG_FindGroup_print("   IsQuit = "..tostring(IsQuit).." ")
    DEBUG_FindGroup_print("    level = "..level.." ")
    DEBUG_FindGroup_print("StartLine = "..StartLine.." ")
    DEBUG_FindGroup_print("  EndLine = "..EndLine.." ")
    DEBUG_FindGroup_print("    index = "..index..", looking for ["..prec_key_words[index].."] ")
    DEBUG_FindGroup_print("")

    for n = StartLine,EndLine do
      local line = string.upper(TextFileTable[n])
      -- DEBUG_FindGroup_print("   Looking at: "..n..", ["..line.."]")

      if string.find(line,[[">]],1,true) ~= nil then
        --a StartOfSection line
        --let us find ALL sections at level
        level = level + 1
        -- DEBUG_FindGroup_print("level + 1 = "..level.." at "..n.." ["..line.."] ")

        if level >= currentLevel then
          local j = index
          local s = [["]]..prec_key_words[j]..[["]]
          if string.find(line,[[PROPERTY NAME=]]..s,1,true) ~= nil or string.find(line,[[PROPERTY VALUE=]]..s,1,true) ~= nil then
            DEBUG_FindGroup_print(string.rep(" ",100).."line "..n..": Found SOS: ["..prec_key_words[j].."] ")
            --found a line inside this section
            --record Section Start/End lines --and level
            if j == #prec_key_words then
              --we found the last prec_key_words in this section
              --this is a GOOD section pointed by these prec_key_words
              DEBUG_FindGroup_print(string.rep(" ",100).."line "..n..": Found LAST PK word ")

              local SectionNum = #PrecKeyWordLine + 1
              PrecKeyWordLine[SectionNum] = n
              SectionStartLine[SectionNum] = n
              SectionEndLine[SectionNum]   = GoDownToOwnerEnd(TextFileTable,n+1)
              DEBUG_FindGroup_print(string.rep(" ",120).."*** OUT values: "..SectionStartLine[SectionNum].." - "..SectionEndLine[SectionNum].." ("..PrecKeyWordLine[SectionNum]..") ")

              if j > 1 then
                --on j == 1 we do NOT break so we can go down the file to the end
                DEBUG_FindGroup_print("_BREAK_ on OUT values") --used
                break
              end

            else
              --not the last word, continue searching using the next keyword
              j = j + 1
              DEBUG_FindGroup_print("      'j' index is now = "..j.." ")
              DEBUG_FindGroup_print("\n  continuing search recursively...")
              _,_,_,IsQuit = LocatePrecKeywordsInSection(TextFileTable,prec_key_words,j,n+1,EndLine,level,IsQuit,groupId)

              DEBUG_FindGroup_print("\n      reset to 1st keyword...")
              index = 1 -- reset to first keyword

              if level == 0 or IsQuit then
                --we are done, end of file
                DEBUG_FindGroup_print("_BREAK_ on level == 0 or IsQuit")
                break
              end
            end
          end
        end

      elseif string.find(line,[[Y>]],1,true) ~= nil then
        --this is a </Property> line
        level = level - 1
        -- DEBUG_FindGroup_print("level - 1 = "..level.." | currentLevel = "..currentLevel.." at "..n.." ")

        if level < currentLevel and index == 1 then
          DEBUG_FindGroup_print("_BREAK_ on level < currentLevel and index == 1 at "..n.." ") --used
          break
        end

        if level < currentLevel and n == EndLine then
          --level is smaller, let us quit this section and continue the search with index=1
          -- could there be other sub-sections meeting the prec_key_words?
          index = 1 -- reset to first keyword
          DEBUG_FindGroup_print("\n      could not find next word, reset to 1st keyword...")
          currentLevel = level
        end

        if level <= 0 and n == EndLine then
          --we are done, end of file
          IsQuit = true
          DEBUG_FindGroup_print("_BREAK_ on level == 0 and "..n.." == "..EndLine.." ")
          break
        end
      end
    end

    DEBUG_FindGroup_print("\n  Leaving LocatePrecKeywordsInSection()")
    return SectionStartLine,SectionEndLine,PrecKeyWordLine,IsQuit
  end

  --***************************************************************************************************
  local function ReportLPKISresults(tStartLine,tEndLine,tSpecialLine,numRecord)
    DEBUG_FindGroup_print("")
    if #tStartLine == 0 then
      DEBUG_FindGroup_print("  >>> XXXX No section found XXXX")
      --return the whole file
      SectionStartLine[1] = tStartLine[1]
      SectionEndLine[1] = tEndLine[1]
      PrecKeyWordLine[1] = 0
    else
      DEBUG_FindGroup_print("  >>> "..#tStartLine.." section(s) found so far")
      DEBUG_FindGroup_print("  *** this section FINAL values ***")
      for i=numRecord + 1,#tStartLine do
        DEBUG_FindGroup_print("  *** "..tStartLine[i].." - "..tEndLine[i].." ("..tSpecialLine[i]..")")
      end
      DEBUG_FindGroup_print("")
    end
  end
  --***************************************************************************************************

  --********************************* PrecKeywordsSections() *******************************************
  --locate all Sections pointed to by ALL PREC_KEY_WORDS inside these groups
  local function PrecKeywordsSections(TextFileTable,prec_key_words,GroupStartLine,GroupEndLine)
    DEBUG_FindGroup_print("\n  Entering PrecKeywordsSections()")
    local GroupStartLine = GroupStartLine --a table
    local GroupEndLine = GroupEndLine --a table
    local PrecKeyWordLine = {0}

    local tempStartLine = {}
    local tempEndLine = {}
    local tempSpecialLine = {}

    DEBUG_FindGroup_print("\n  #PK-GROUPS = "..#GroupStartLine)
    for i=1,#GroupStartLine do
      --try to find the sections pointed to by the PREC_KEY_WORDS in this GroupSection
      local index = 1 --we start with the first PREC_KEY_WORDS
      local level = 0 --we say this GroupSection is at level 0

      local numRecord = #tempStartLine

      local tStartLine,tEndLine,tSpecialLine =
            LocatePrecKeywordsInSection(TextFileTable,prec_key_words,index,GroupStartLine[i]+1,GroupEndLine[i],level,false,i)

      ReportLPKISresults(tStartLine,tEndLine,tSpecialLine,numRecord)
      DEBUG_FindGroup_print(" LPKIS-RESULTS #= "..#tStartLine.." for PK-group #"..i)

      for k=numRecord + 1,#tStartLine do
        tempStartLine[#tempStartLine+1] = tStartLine[k]
        tempEndLine[#tempEndLine+1] = tEndLine[k]
        tempSpecialLine[#tempSpecialLine+1] = tSpecialLine[k]
      end
    end

    DEBUG_FindGroup_print("")
    DEBUG_FindGroup_print("  All PK-GROUPS RESULTS #= "..#tempStartLine)
    for i=1,#tempStartLine do
      DEBUG_FindGroup_print("  >>> "..tempStartLine[i].." - "..tempEndLine[i].." ("..tempSpecialLine[i]..")")
    end

    if #tempStartLine == 0 then
      DEBUG_FindGroup_print("  >>> No sections found")
      -- tempStartLine = {3}
      -- tempEndLine = {#TextFileTable}
      -- tempSpecialLine = {0}
    end
    DEBUG_FindGroup_print("  END RESULTS for PrecKeywordsSections()")
    DEBUG_FindGroup_print("")

    return tempStartLine,tempEndLine,tempSpecialLine
  end
  --********************************* END: PrecKeywordsSections() *******************************************

  --***************************************************************************************************
  local function FindKeywordsInLine(text)
    local KeywordsInLineTable = {}

    if string.find(text,[[me="]],1,true) ~= nil and string.find(text,[[ue=]],1,true) ~= nil then
      --a line like <Property name="" value="" />
      --"name" is a potential special_keyword
      local value = StripInfo(text,[[ue="]],[["]])
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil and string.find(value,".",1,true) == nil then
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil then
      if value ~= "" then
        local name = StripInfo(text,[[me="]],[["]])
        KeywordsInLineTable[#KeywordsInLineTable+1] = {}
        KeywordsInLineTable[#KeywordsInLineTable][1] = string.upper(name)
        KeywordsInLineTable[#KeywordsInLineTable][2] = string.upper(value)
      end
    end --if string.find(

    return KeywordsInLineTable
  end
  --*********************************** END: FindKeywordsInLine() *************************************

  --***************************************************************************************************
  --locate all Sections pointed to by SpecialKeywords at index, index+1
  local function LocateSpecialKeywordsSections(TextFileTable,index,spec_key_words,StartLine,EndLine)
    local SectionNum = 0
    local SectionStartLine = {}
    local SectionEndLine = {}
    local SpecialKeyWordLine = {}
    DEBUG_FindGroup_print("\n      LSKS: index = "..index..", ["..spec_key_words[index].."],["..spec_key_words[index+1].."] ("..StartLine.."-"..EndLine..")")

    --prepare line to search
    local bothIGNORE = false
    local searchThis = ""
    if spec_key_words[index] ~= "IGNORE" and spec_key_words[index+1] ~= "IGNORE" then
      searchThis = [[E="]]..spec_key_words[index]..[[" VALUE="]]..spec_key_words[index+1]..[["]]
    elseif spec_key_words[index] == "IGNORE" and spec_key_words[index+1] ~= "IGNORE" then
      searchThis = [[" VALUE="]]..spec_key_words[index+1]..[["]]
    elseif spec_key_words[index] ~= "IGNORE" and spec_key_words[index+1] == "IGNORE" then
      searchThis = [[E="]]..spec_key_words[index]..[[" VALUE="]]
    else
      --both are IGNORE, skip
      bothIGNORE = true
    end
    
    if not bothIGNORE then
      DEBUG_FindGroup_print("*** searchThis = ["..searchThis.."]")
      for n = StartLine,EndLine do
        local line = string.upper(TextFileTable[n])
        -- DEBUG_FindGroup_print("*** line = ["..line.."]")

        if string.find(line,searchThis,1,true) ~= nil then
          DEBUG_FindGroup_print("*** FOUND")

        -- local KeywordsInLineTable = FindKeywordsInLine(line)
        -- if #KeywordsInLineTable > 0 then
          -- -- DEBUG_FindGroup_print("  ["..KeywordsInLineTable[1][1].."]  ["..KeywordsInLineTable[1][2].."]")
          -- if (spec_key_words[index] == KeywordsInLineTable[1][1] or spec_key_words[index] == "IGNORE")
                -- and (spec_key_words[index+1] == KeywordsInLineTable[1][2] or spec_key_words[index+1] == "IGNORE") then


            -- print("found SKW at "..n)
            --found a requested SpecialKeywords line,
            --record Section Start/End lines --and level
            SectionNum = SectionNum + 1
            SpecialKeyWordLine[SectionNum] = n
            if string.sub(trim(line),-2) == [[">]] then
              --this is the start of a section
              SectionStartLine[SectionNum] = n
              --let us find the end of this section, not its parent
              SectionEndLine[SectionNum]   = GoDownToOwnerEnd(TextFileTable,n+1)
            else
              --let us find the start and end of the parent section
              SectionStartLine[SectionNum] = GoUPToOwnerStart(TextFileTable,n)
              SectionEndLine[SectionNum]   = GoDownToOwnerEnd(TextFileTable,n)
            end
          -- end
        end
      end
    end

    if SectionNum == 0 then
      DEBUG_FindGroup_print("  In LocateSpecialKeywordsSections: >>> XXXX No section found XXXX")
      --no Section found for requested pair
      --return the whole file
      SectionStartLine[1] = StartLine
      SectionEndLine[1] = EndLine
      SpecialKeyWordLine[1] = 0
    else
      DEBUG_FindGroup_print("  >>> "..SectionNum.." section(s) found")
    end

    for i=1,#SectionStartLine do
      DEBUG_FindGroup_print("   "..SectionStartLine[i].." - "..SectionEndLine[i].." ("..SpecialKeyWordLine[i]..")")
    end

    return SectionStartLine,SectionEndLine,SpecialKeyWordLine
  end

  --***************************************************************************************************
  --locate all Sections pointed to by ALL SPECIAL_KEY_WORDS
  local function SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine,SpecialKeyWordLine)
    -- local GroupStartLine = GroupStartLine --a table
    -- local GroupEndLine = GroupEndLine --a table
    -- local SpecialKeyWordLine = SpecialKeyWordLine --a table -- was {0}
    DEBUG_FindGroup_print("\n        SK-GROUPS #= "..#GroupStartLine)

    -- for each pair of SPECIAL_KEY_WORDS (1st pair already found by FastCheckUniqueness)
    -- for j=1,#spec_key_words,2 do
    for j=3,#spec_key_words,2 do
      local tempStartLine = {}
      local tempEndLine = {}
      local tempSpecialLine = {}

      for i=1,#GroupStartLine do
        local StartLine,EndLine,SpecialLine = LocateSpecialKeywordsSections(TextFileTable,j,spec_key_words,GroupStartLine[i],GroupEndLine[i])
        
        DEBUG_FindGroup_print(" LSKS-RESULTS #= "..#StartLine.." for SK-group "..j)
        for k=1,#StartLine do
          -- if SpecialLine[k] ~= nil and SpecialLine[k] > 0 then
            -- --keep new section
            -- -- DEBUG_FindGroup_print(">>> Keep section")
            tempStartLine[#tempStartLine+1] = StartLine[k]
            tempEndLine[#tempEndLine+1] = EndLine[k]
            tempSpecialLine[#tempSpecialLine+1] = SpecialLine[k]
          -- end
        end
      end

      GroupStartLine = {}
      GroupEndLine = {}
      SpecialKeyWordLine = {}
      
      DEBUG_FindGroup_print("B-RESULTS #= "..#tempStartLine)
      for k=1,#tempStartLine do
        -- DEBUG_FindGroup_print("tempSpecialLine["..k.."] = "..tempSpecialLine[k])
        if tempSpecialLine[k] > 0 then
          -- DEBUG_FindGroup_print(">>> Keep section")
          GroupStartLine[#GroupStartLine+1] = tempStartLine[k]
          GroupEndLine[#GroupEndLine+1] = tempEndLine[k]
          SpecialKeyWordLine[#SpecialKeyWordLine+1] = tempSpecialLine[k]
        end
      end
    end

    DEBUG_FindGroup_print("All SK-GROUPS RESULTS #= "..#GroupStartLine)
    for i=1,#GroupStartLine do
      DEBUG_FindGroup_print("   "..GroupStartLine[i].." - "..GroupEndLine[i].." ("..SpecialKeyWordLine[i]..")")
    end

    if #GroupStartLine == 0 then
      DEBUG_FindGroup_print(">>> No sections found in SpecialKeywordsSections()")
      GroupStartLine = {3}
      GroupEndLine = {#TextFileTable}
      SpecialKeyWordLine = {0}
    end
    DEBUG_FindGroup_print("END RESULTS for SpecialKeywordsSections()")
    DEBUG_FindGroup_print("")

    return GroupStartLine,GroupEndLine,SpecialKeyWordLine
  end

  --***************************************************************************************************
  --for each section in reverse order (because we remove unwanted ones)
  --remove overlapping ones
  local function PurgeOverlappingSections(GroupStartLine,GroupEndLine,KeyWordLine,KeepOuterSections)
    for i=#GroupStartLine,2,-1 do
      if KeepOuterSections then
        --keep outer sections only
        if GroupStartLine[i] <= GroupEndLine[i-1] then
          --section i is inside section i-1
          --remove section i
          table.remove(GroupStartLine,i)
          table.remove(GroupEndLine,i)
          table.remove(KeyWordLine,i)
        end
      else
        --keep inner sections only
        if GroupStartLine[i] <= GroupEndLine[i-1] then
          --section i is inside section i-1
          --remove section i-1
          table.remove(GroupStartLine,i-1)
          table.remove(GroupEndLine,i-1)
          table.remove(KeyWordLine,i-1)
        end
      end
    end

    return GroupStartLine,GroupEndLine,KeyWordLine
  end

  --**************************************** CreateSectionsFromFastCheckUniqueness() ***********************************
  local function CreateSectionsFromFastCheckUniqueness(linesNumFound,TextFileTable,PKWstartline)
    local newGSL = {}
    local newGEL = {}
    local newSKL = {}
    
    if PKWstartline == nil then PKWstartline = 0 end
    
    for p = 1,#linesNumFound do
      local thisLine = PKWstartline + linesNumFound[p]
      if gDEBUG_CheckUniqueness then pv("--- CreateSectionsFromFastCheckUniqueness found line: "..(thisLine)) end
      if gDEBUG_CheckUniqueness then pv("--- CreateSectionsFromFastCheckUniqueness line = ["..TextFileTable[thisLine].."]") end
      
      if TextFileTable[thisLine]:sub(-2) == [[">]] then
        -- this is the top of a section
        table.insert(newGSL,thisLine)
        table.insert(newGEL,GoDownToOwnerEnd(TextFileTable,thisLine + 1)) -- to stay inside this section
      else
        -- this is inside a section
        table.insert(newGSL,GoUPToOwnerStart(TextFileTable,thisLine))
        table.insert(newGEL,GoDownToOwnerEnd(TextFileTable,thisLine))
      end
      table.insert(newSKL,thisLine)
    end
    return newGSL,newGEL,newSKL
  end
  --************************************* END: CreateSectionsFromFastCheckUniqueness() *********************************

  --***************************************************************************************************
  local function FastCheckUniqueness(TextFile,spec_key_words)
    if gDEBUG_CheckUniqueness then pv("In FastCheckUniqueness: #SKW = "..#spec_key_words) end
    -- print(string.sub(TextFile,1,50))
    
    local linesNumFound = {}
    local uniqueState = 0 -- not found
    local lineNumber = nil

    -- this is HINTS proof
    local s = [[<PROPERTY NAME="]]..spec_key_words[1]..[[" VALUE="]]..spec_key_words[2]..[["]] --the end could be [[ />]] or [[>]]
    s = s:upper()
    if gDEBUG_CheckUniqueness then pv("Check for ["..s.."]") end
    
    --fastest way!!! --gsub and gmatch take too long
    local _,firstPosEnd = string.find(TextFile,s,1,true)
    if firstPosEnd ~= nil then
      _,lineNumber = TextFile:sub(1,firstPosEnd):gsub('>','>')
      table.insert(linesNumFound,lineNumber + 1)
      
      local secondPos,nextPos = string.find(TextFile,s,firstPosEnd+1,true)
      
      if secondPos == nil then
        uniqueState = 1
        if gDEBUG_CheckUniqueness then pv("FastCheckUniqueness: Unique") end
      else
        uniqueState = 2
        if gDEBUG_CheckUniqueness then pv("FastCheckUniqueness: More than one") end
        _,lineNumber = TextFile:sub(1,nextPos):gsub('>','>')
        table.insert(linesNumFound,lineNumber + 1)

        while nextPos ~= nil do
          nextPos,endPos = string.find(TextFile,s,nextPos+1,true)
          if nextPos ~= nil then
            _,lineNumber = TextFile:sub(1,endPos):gsub('>','>')
            table.insert(linesNumFound,lineNumber + 1)
            nextPos = endPos + 1
          end
        end
      end
    end
    if gDEBUG_CheckUniqueness then
      pv("FastCheckUniqueness: #linesNumFound = "..#linesNumFound)
      for i=1, #linesNumFound do
        pv("FastCheckUniqueness: linesNumFound[..i..] = "..linesNumFound[i])
      end
    end
    if gDEBUG_CheckUniqueness then pv("Out FastCheckUniqueness") end
    return uniqueState,linesNumFound
  end
  
  -- local Uniqueness,linesNumFound = FastCheckUniqueness(WholeTextFileTable[1],FileTable,spec_key_words)

  -- --***************************************************************************************************
  -- OLD: NOT USED
  -- local function CheckUniqueness(TextFile,spec_key_words)
    -- local count = 0
    -- local s = [[<PROPERTY NAME="]]..spec_key_words[1]..[[" VALUE="]]..spec_key_words[2]..[["]] --the end could be [[ />]] or [[>]]
    -- pv("["..s.."]")
    -- --fastest way!!! --gsub and gmatch take too long
    -- local _,firstPosEnd = string.find(TextFile,s,1,true)
    -- if firstPosEnd ~= nil then
      -- local secondPos = string.find(TextFile,s,firstPosEnd+1,true)
      -- if secondPos == nil then
        -- count = 1
        -- pv("CheckUniqueness: Unique")
      -- else
        -- count = 2
        -- pv("CheckUniqueness: More than one")
      -- end
    -- -- else
      -- -- count = 0
      -- -- pv("CheckUniqueness: Not found")
    -- end
    -- return count
  -- end

  --###################################################################################################
  --###################  Start of main FindGroup() code  ##############################################
  --###################################################################################################
gVerbose = true
  DEBUG_FindGroup_print("\n    >>> Starting FindGroup()\n")

  -- make them always UPPERCASE for FastCheckUniqueness and search
  local UPPERspec_key_words = ReturnUpperCaseTable(spec_key_words)
  local UPPERprec_key_words = ReturnUpperCaseTable(prec_key_words)

  local KeepOuterSections = true --we will see if this needs to be an option in the future

  -- local NumFoundGroups = 0

  local GroupStartLine = {3}
  local GroupEndLine = {#TextFileTable}
  local SpecialKeyWordLine = {0}
  local SectionsTable = {}

  local All_Words_Found = false
  local All_SpecialWords_Found = false
  local All_PrecedingWords_Found = false

  local IsOnlyOnePreceding = false

  -- local done_All_Words = false
  -- local ReturnInfo = false

  local IsPrec_key_words = IsPrec_key_wordsExist(prec_key_words)

  DEBUG_FindGroup_print("IsPrecedingFirstTRUE = "..tostring(IsPrecedingFirstTRUE))
  DEBUG_FindGroup_print("IsSpecialKeyWords = "..tostring(IsSpecialKeyWords))
  DEBUG_FindGroup_print("IsPrec_key_words = "..tostring(IsPrec_key_words))

  if not IsSpecialKeyWords then
    --let us do as if IsPrecedingFirstTRUE was true
    IsPrecedingFirstTRUE = true
    DEBUG_FindGroup_print("   >>> no SpecialKeywords so: IsPrecedingFirstTRUE is now = "..tostring(IsPrecedingFirstTRUE))
  end

  if not IsPrecedingFirstTRUE then
    --*******************  process SpecialKeyWords FIRST if any  *********************************
    if IsSpecialKeyWords then
      local Info = GetSpecKeyWordsInfo(spec_key_words)
      DEBUG_FindGroup_print("\n"..[[  SK     >>> Trying to locate Group Start/End lines based on SPECIAL_KEY_WORDS ]]..Info.."\n")

if gDEBUG_CheckUniqueness then
  dClock()
end
      local count,linesNumFound = FastCheckUniqueness(WholeTextFileTable[1],UPPERspec_key_words)
if gDEBUG_CheckUniqueness then
  dClock()
end

      if count == 1 then
        --count == 1 >>> unique, good (SCRIPTBUILDER guaranties uniqueness, user do not)
        --    record range info
        DEBUG_FindGroup_print("\n  SK     >>> count == 1, Looking for SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1].."\n")

        GroupStartLine,GroupEndLine,SpecialKeyWordLine = CreateSectionsFromFastCheckUniqueness(linesNumFound,TextFileTable)
        
        -- UNIQUE: we pass the FOUND section already pointed to by the 1st pair of SKW
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,UPPERspec_key_words,GroupStartLine,GroupEndLine,SpecialKeyWordLine)

        SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SK1",SectionsTable)

        --**************************************** handle SECTION_UP_SPECIAL ***********************************
        if section_up_special > 0 then
          DEBUG_FindGroup_print("   Found SECTION_UP_SPECIAL = "..section_up_special)
          GroupStartLine,GroupEndLine,SpecialKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,SpecialKeyWordLine,section_up_special)
          SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"UPS",SectionsTable)
        end
        --**************************************** end: handle SECTION_UP_SPECIAL ***********************************

        -- DEBUG_FindGroup_print(type(SpecialKeyWordLine))
        -- DEBUG_FindGroup_print(#SpecialKeyWordLine)
        -- DEBUG_FindGroup_print(type(SpecialKeyWordLine[1]))
        if SpecialKeyWordLine[1] > 0 then
          -- NumFoundGroups = NumFoundGroups + 1
          -- All_Words_Found = true
          All_SpecialWords_Found = true
          DEBUG_FindGroup_print("\n  SK     count = 1, Found SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1].."\n")
        end

        if All_SpecialWords_Found then
          if IsPrec_key_words then
            DEBUG_FindGroup_print("\n  SKPK     >>> count = 1, Now looking for PREC_KEY_WORDS\n")
            --lets try with all the PREC_KEY_WORDS
            --here: only 1 section to search

            TopLine,BottomLine,PrecKeyWordLine = PrecKeywordsSections(TextFileTable,UPPERprec_key_words,GroupStartLine,GroupEndLine)
            All_PrecedingWords_Found = (#TopLine > 0)

            --All_PrecedingWords_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,GroupStartLine[1],GroupEndLine[1])

            if All_PrecedingWords_Found then
              GroupStartLine = TopLine
              GroupEndLine = BottomLine
              SpecialKeyWordLine = PrecKeyWordLine

              SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKPK1",SectionsTable)
              DEBUG_FindGroup_print("\n  SKPK     >>> count = 1, Found PREC_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1].."\n")

            else
              if #prec_key_words == 1 and prec_key_words[#prec_key_words] ~= "" then
                DEBUG_FindGroup_print("\n  SKPK     >>> count = 1, Only one PREC_KEY_WORDS and was not found in section")
                --we have a single PRECEDING_KEY_WORDS
                --let us try to find it in the current section

                -- look for the last prec_key_words line in the SpecialWords range
                for n = GroupStartLine[1], GroupEndLine[1] do
                  local line = string.upper(TextFileTable[n])
                  if string.find(line,[["]]..string.upper(prec_key_words[#prec_key_words])..[["]],1,true) then
                    --found the line, replace the Group Start/End lines
                    SpecialKeyWordLine[1] = n -- 'the' line
                    GroupStartLine[1] = GoUPToOwnerStart(TextFileTable,n)
                    GroupEndLine[1] = GoDownToOwnerEnd(TextFileTable,GroupStartLine[1]+1)
                    DEBUG_FindGroup_print("SpecialKeyWordLine[1] = "..SpecialKeyWordLine[1])
                    DEBUG_FindGroup_print("\n  SKPK     >>> count = 1, Found last PREC_KEY_WORDS "..[["]]..prec_key_words[#prec_key_words]..[["]].." at line "..SpecialKeyWordLine[1].."\n")
                    All_PrecedingWords_Found = true
                    IsOnlyOnePreceding = true
                    break
                  end
                end

                if not All_PrecedingWords_Found then
                  print("")
                  print(_zRED..">>> [WARNING] PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] NOT found in the current section, IGNORING IT".._zDEFAULT)
                  Report("","PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] NOT found in the current section, IGNORING IT","WARNING")

                  -- --let us just do as if prec_key_words was not there
                  -- All_PrecedingWords_Found = true
                else
                  --update sections
                  SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKPKL",SectionsTable)
                end

              else --multiple prec_key_words NOT FOUND
                print("")
                print(_zRED..">>> [WARNING] PRECEDING_KEY_WORDS NOT found in the current section, IGNORING THEM".._zDEFAULT)
                Report("","PRECEDING_KEY_WORDS NOT found in the current section, IGNORING THEM","WARNING")
              end
            end

            --**************************************** handle SECTION_UP_PRECEDING ***********************************
            if section_up_preceding > 0 then
              DEBUG_FindGroup_print("   Found SECTION_UP_PRECEDING = "..section_up_preceding)
              GroupStartLine,GroupEndLine,PrecKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,PrecKeyWordLine,section_up_preceding)
              SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,PrecKeyWordLine,"UPP",SectionsTable)
            end
            --**************************************** end: handle SECTION_UP_PRECEDING ***********************************

          end

        else
          local Info = GetSpecKeyWordsInfo(spec_key_words)
          Report("",[[Should have found SPECIAL_KEY_WORDS: ]]..Info,"WARNING")
          print(_zRED.."\n"..[[>>> [WARNING] Should have found SPECIAL_KEY_WORDS: ]]..Info.._zDEFAULT)
        end

      elseif count > 1 then
        --count > 1 >>> not unique, maybe good or bad (not a SCRIPTBUILDER script)
        DEBUG_FindGroup_print("\n  SK     >>> count > 1 (NOT UNIQUE), SPECIAL_KEY_WORDS ["..spec_key_words[1].."] and ["..spec_key_words[2].."] are not unique in file!\n")

        GroupStartLine,GroupEndLine,SpecialKeyWordLine = CreateSectionsFromFastCheckUniqueness(linesNumFound,TextFileTable)

        GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,UPPERspec_key_words,GroupStartLine,GroupEndLine,SpecialKeyWordLine)
        DEBUG_FindGroup_print([[A ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = PurgeOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)

        SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKx",SectionsTable)
        -- ShowSections(SectionsTable)

        --**************************************** handle SECTION_UP_SPECIAL ***********************************
        if section_up_special > 0 then
          DEBUG_FindGroup_print("   Found SECTION_UP_SPECIAL = "..section_up_special)
          GroupStartLine,GroupEndLine,SpecialKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,SpecialKeyWordLine,section_up_special)
          SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"UPS",SectionsTable)
        end
        --**************************************** end: handle SECTION_UP_SPECIAL ***********************************

        -- --here we have all the sections (or the whole file) pointed by the spec_key_words
        -- pv(">>> BASED on SPECIAL_KEY_WORDS, #Sections = "..#GroupStartLine)
        -- for i=1,#GroupStartLine do
          -- pv("   "..i..": "..GroupStartLine[i].."-"..GroupEndLine[i]..", "..SpecialKeyWordLine[i])
        -- end

        if SpecialKeyWordLine[1] > 0 then
          -- NumFoundGroups = #SpecialKeyWordLine
          -- All_Words_Found = true
          All_SpecialWords_Found = true

          if IsPrec_key_words then
            local tmpGroupStartLine = {}
            local tmpGroupEndLine = {}
            local tmpSpecialKeyWordLine = {}

            All_PrecedingWords_Found = false

            --lets try with all the PREC_KEY_WORDS
            TopLine,BottomLine,PrecKeyWordLine = PrecKeywordsSections(TextFileTable,UPPERprec_key_words,GroupStartLine,GroupEndLine)
            All_PrecedingWords_Found = (#TopLine > 0)

            --All_PrecedingWords_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,GroupStartLine[i],GroupEndLine[i])

            if All_PrecedingWords_Found then
              for j=1,#TopLine do
                table.insert(tmpSpecialKeyWordLine,PrecKeyWordLine[j])
                table.insert(tmpGroupStartLine,TopLine[j])
                table.insert(tmpGroupEndLine,BottomLine[j])
                -- DEBUG_FindGroup_print("  SKPK     >>> count > 1, Found PREC_KEY_WORDS between lines "..tmpGroupStartLine[j].." and "..tmpGroupEndLine[j])
              end

              SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKxPKx",SectionsTable)

            else
              if #prec_key_words == 1 and prec_key_words[#prec_key_words] ~= "" then
                --look for the last prec_key_words line in that range
                --for all sections found
                for i=1,#GroupStartLine do
                  for n = GroupStartLine[i], GroupEndLine[i] do
                    local line = string.upper(TextFileTable[n])
                    if string.find(line,[["]]..string.upper(prec_key_words[#prec_key_words])..[["]],1,true) then
                      --found the line, save the Group Start/End lines
                      table.insert(tmpSpecialKeyWordLine,n) -- 'the' line
                      table.insert(tmpGroupStartLine,GoUPToOwnerStart(TextFileTable,n))
                      table.insert(tmpGroupEndLine,GoDownToOwnerEnd(TextFileTable,tmpGroupStartLine[#tmpGroupStartLine])) --the end of the section defined by SPECIAL_KEYWORDS
                      All_PrecedingWords_Found = true
                      DEBUG_FindGroup_print("  SKPK     >>> count > 1, Found last PREC_KEY_WORDS "..[["]]..prec_key_words[#prec_key_words]..[["]].." at line "..tmpGroupStartLine[1])

                      IsOnlyOnePreceding = true
                      break
                    end
                  end
                end --for i=1,#GroupStartLine do

                SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKxPKL",SectionsTable)

                if All_PrecedingWords_Found then
                  --at least one section was found
                else
                  SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKxPK0",SectionsTable)
                  ShowSections(SectionsTable)

                  print(_zRED..">>> [WARNING] PRECEDING_KEY_WORDS NOT found in any section, IGNORING IT".._zDEFAULT)
                  Report("","PRECEDING_KEY_WORDS NOT found in any section, IGNORING IT","WARNING")
                end

              else
                SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"SKxPK00",SectionsTable)
                ShowSections(SectionsTable)

                print("")
                print(_zRED..">>> [WARNING] ALL PRECEDING_KEY_WORDS NOT found in any section, IGNORING THEM".._zDEFAULT)
                Report("","ALL PRECEDING_KEY_WORDS NOT found in any section, IGNORING THEM","WARNING")
              end
            end

            -- GroupStartLine,GroupEndLine,SpecialKeyWordLine = SectionsTableToLines(SectionsTable)

            -- ReturnInfo = true -- return range info

            if #tmpSpecialKeyWordLine > 0 then
              --remove old sections
              for j=1,#SpecialKeyWordLine do
                table.remove(SpecialKeyWordLine)
                table.remove(GroupStartLine)
                table.remove(GroupEndLine)
              end

              --these tables are now empty

              --add the new sections
              for j=1,#tmpSpecialKeyWordLine do
                table.insert(SpecialKeyWordLine,tmpSpecialKeyWordLine[j])
                table.insert(GroupStartLine,tmpGroupStartLine[j])
                table.insert(GroupEndLine,tmpGroupEndLine[j])
              end
            else
              --just keep the old tables
            end

            --**************************************** handle SECTION_UP_PRECEDING ***********************************
            if section_up_preceding > 0 then
              DEBUG_FindGroup_print("   Found SECTION_UP_PRECEDING = "..section_up_preceding)
              GroupStartLine,GroupEndLine,PrecKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,PrecKeyWordLine,section_up_preceding)
              SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,PrecKeyWordLine,"UPP",SectionsTable)
            end
            --**************************************** end: handle SECTION_UP_PRECEDING ***********************************

          end --if IsPrec_key_words then

        else
          if #SpecialKeyWordLine == 0 then
            Report("",[[Should have found all SPECIAL_KEY_WORDS]],"ERROR")
            print(_zRED.."\n"..[[>>> [ERROR] Should have found all SPECIAL_KEY_WORDS]].._zDEFAULT)
            -- ReturnInfo = true
          end
        end

      else --count = 0 >>> not found, problem (not a SCRIPTBUILDER script)
        --    user has a problem with his/her script spec_key_words (SCRIPTBUILDER guaranties it can be found)
        --    Report WARNING, skip this change
        Report("","SPECIAL_KEY_WORDS cannot be found.  Skipping this change!","WARNING")
        print(_zRED.."\n>>> [WARNING] SPECIAL_KEY_WORDS cannot be found.  Skipping this change!".._zDEFAULT)
        All_SpecialWords_Found = false
        -- ReturnInfo = true
      end --if count...
    end

  else -- PRECEDING_FIRST = "True"
    --*******************  process PrecedingKeyWords FIRST if any  *********************************
    if IsPrec_key_words then
      DEBUG_FindGroup_print("\n  PK     >>> INTO: PRECEDING_FIRST: find all SECTIONs with ALL PRECEDING_KEY_WORDS...\n")

      --lets try with all the PREC_KEY_WORDS
      TopLine,BottomLine,PrecKeyWordLine = PrecKeywordsSections(TextFileTable,UPPERprec_key_words,GroupStartLine,GroupEndLine)
      All_PrecedingWords_Found = (#TopLine > 0)

      if All_PrecedingWords_Found then
        GroupStartLine = TopLine
        GroupEndLine = BottomLine
        SpecialKeyWordLine = PrecKeyWordLine

      else
        --let us just do as if prec_key_words was not there
        -- print("")
        -- print(_zRED..">>> [WARNING] NOT found ALL PRECEDING_KEY_WORDS "..GetPrecKeyWordsInfo(prec_key_words).." in the current section, IGNORING IT".._zDEFAULT)
        -- Report("","NOT found ALL PRECEDING_KEY_WORDS "..GetPrecKeyWordsInfo(prec_key_words).." in the current section, IGNORING IT","WARNING")

        -- --we should check if this PrecedingKeyWord points to a range that includes our SpecialKeyWords
        -- --if yes we can ignore it
        -- --if not we should report it to the user as a WARNING
        -- All_Words_Found = true
      end

      GroupStartLine,GroupEndLine,SpecialKeyWordLine = RemoveDuplicateGroups(GroupStartLine,GroupEndLine,SpecialKeyWordLine)
      SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"PK",SectionsTable)
      -- GroupStartLine,GroupEndLine,SpecialKeyWordLine = SectionsTableToLines(SectionsTable)

      -- --we could have multiple sections pointed to by PRECEDING_KEY_WORDS
      -- if #GroupStartLine > 1 and not IsReplace then
        -- Report("","PRECEDING_KEY_WORDS located more than one section!","NOTICE")
        -- print(_zRED.."\n>>> [NOTICE] PRECEDING_KEY_WORDS located more than one section!".._zDEFAULT)

      -- -- elseif NumFoundGroups == 1 and IsSpecialKeyWords then
        -- -- --found the PRECEDING_KEY_WORDS section
        -- -- --now look for SPECIAL_KEY_WORDS in it
        -- -- GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine,SpecialKeyWordLine)
        -- -- pv([[B ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)

        -- -- GroupStartLine,GroupEndLine,SpecialKeyWordLine = PurgeOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)

        -- -- --here we have all the sections (or the whole file) pointed by the spec_key_words
        -- -- pv(">>> BASED on SPECIAL_KEY_WORDS, #Sections = "..#GroupStartLine)
        -- -- for i=1,#GroupStartLine do
          -- -- pv("   "..GroupStartLine[i].."-"..GroupEndLine[i]..", "..SpecialKeyWordLine[i])
        -- -- end
      -- end

      if not All_PrecedingWords_Found then
        local Info = GetPrecKeyWordsInfo(prec_key_words)
        Report("","       >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = "..Info.." <<<<<","NOTICE")
        print(_zRED..">>> [NOTICE] -- >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = "..Info.." <<<<<".._zDEFAULT)
      end

      --**************************************** handle SECTION_UP_PRECEDING ***********************************
      if section_up_preceding > 0 then
        DEBUG_FindGroup_print("   Found SECTION_UP_PRECEDING = "..section_up_preceding)
        GroupStartLine,GroupEndLine,PrecKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,PrecKeyWordLine,section_up_preceding)
        SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,PrecKeyWordLine,"UP",SectionsTable)
      end
      --**************************************** end: handle SECTION_UP_PRECEDING ***********************************

    end

    if All_PrecedingWords_Found then
      -- PKW always only finds a section
      -- remember the section startLine
      local PKWstartline = GroupStartLine[1]
      
      if IsSpecialKeyWords then
        --now find the SpecialKeyWords inside that Section pointed to by the PRECEDING_KEY_WORDS
        local Info = GetSpecKeyWordsInfo(spec_key_words)
        DEBUG_FindGroup_print("\n"..[[  PKSK     >>> From PRECEDING_KEY_WORDS section, trying to locate Group Start/End lines based on SPECIAL_KEY_WORDS ]]..Info.."\n")

        --create a file sub-set
        local subsetTextFile = ""
        for i=GroupStartLine[1],GroupEndLine[1] do
          subsetTextFile = subsetTextFile..TextFileTable[i]
        end
        subsetTextFile = string.upper(subsetTextFile)

        local count,linesNumFound = FastCheckUniqueness(subsetTextFile,UPPERspec_key_words)

        if count == 1 then
          --count = 1 >>> unique, good (SCRIPTBUILDER guaranties uniqueness, user do not)
          --    record range info
          DEBUG_FindGroup_print("\n  PKSK    >>> count = 1, Looking for SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1].."\n")

          GroupStartLine,GroupEndLine,SpecialKeyWordLine = CreateSectionsFromFastCheckUniqueness(linesNumFound,TextFileTable,PKWstartline - 1)
          
          SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"PKSK1",SectionsTable)
          --GroupStartLine,GroupEndLine,SpecialKeyWordLine = SectionsTableToLines(SectionsTable)

          -- DEBUG_FindGroup_print(type(SpecialKeyWordLine))
          -- DEBUG_FindGroup_print(#SpecialKeyWordLine)
          -- DEBUG_FindGroup_print(type(SpecialKeyWordLine[1]))
          if SpecialKeyWordLine[1] > 0 then
            -- NumFoundGroups = NumFoundGroups + 1
            -- All_Words_Found = true
            All_SpecialWords_Found = true
            DEBUG_FindGroup_print("  PKSK    >>> count = 1, Found SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1])
          end

          if not All_SpecialWords_Found then
            local Info = GetSpecKeyWordsInfo(spec_key_words)
            Report("",[[Should have found SPECIAL_KEY_WORDS: ]]..Info,"WARNING")
            print(_zRED.."\n"..[[>>> [WARNING] Should have found SPECIAL_KEY_WORDS: ]]..Info.._zDEFAULT)
          end

          --**************************************** handle SECTION_UP_SPECIAL ***********************************
          if section_up_special > 0 then
            DEBUG_FindGroup_print("   Found SECTION_UP_SPECIAL = "..section_up_special)
            GroupStartLine,GroupEndLine,SpecialKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,SpecialKeyWordLine,section_up_special)
            SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"UPS",SectionsTable)
          end
          --**************************************** end: handle SECTION_UP_SPECIAL ***********************************

          -- ReturnInfo = true

        elseif count > 1 then
          --count > 1 >>> not unique, maybe good or bad (not a SCRIPTBUILDER script)
          DEBUG_FindGroup_print("\n  PKSK    >>> count > 1, SPECIAL_KEY_WORDS ["..spec_key_words[1].."] and ["..spec_key_words[2].."] are not unique in file!\n")

          GroupStartLine,GroupEndLine,SpecialKeyWordLine = CreateSectionsFromFastCheckUniqueness(linesNumFound,TextFileTable,PKWstartline - 1)
          
          GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,UPPERspec_key_words,GroupStartLine,GroupEndLine,SpecialKeyWordLine)
          DEBUG_FindGroup_print([[A ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
          GroupStartLine,GroupEndLine,SpecialKeyWordLine = PurgeOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)

          SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"PKSKx",SectionsTable)
          --GroupStartLine,GroupEndLine,SpecialKeyWordLine = SectionsTableToLines(SectionsTable)

          --here we have all the sections (or the whole file) pointed by the spec_key_words
          DEBUG_FindGroup_print("  PKSK    >>> BASED on SPECIAL_KEY_WORDS, #Sections = "..#GroupStartLine)
          for i=1,#GroupStartLine do
            DEBUG_FindGroup_print("   "..GroupStartLine[i].."-"..GroupEndLine[i].." ("..SpecialKeyWordLine[i]..")")
          end

          if SpecialKeyWordLine[1] > 0 then
            -- NumFoundGroups = #SpecialKeyWordLine
            -- All_Words_Found = true
            All_SpecialWords_Found = true

          else
            if #SpecialKeyWordLine == 0 then
              Report("",[[Should have found all SPECIAL_KEY_WORDS]],"ERROR")
              print(_zRED.."\n"..[[>>> [ERROR] Should have found all SPECIAL_KEY_WORDS]].._zDEFAULT)
              -- ReturnInfo = true
            end
          end

          --**************************************** handle SECTION_UP_SPECIAL ***********************************
          if section_up_special > 0 then
            DEBUG_FindGroup_print("   Found SECTION_UP_SPECIAL = "..section_up_special)
            GroupStartLine,GroupEndLine,SpecialKeyWordLine = Process_SectionUP(TextFileTable,GroupStartLine,GroupEndLine,SpecialKeyWordLine,section_up_special)
            SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"UPS",SectionsTable)
          end
          --**************************************** end: handle SECTION_UP_SPECIAL ***********************************

        else
          --count = 0 >>> not found, problem (not a SCRIPTBUILDER script)
          --    user has a problem with his/her script spec_key_words (SCRIPTBUILDER guaranties it can be found)
          --    Report WARNING, skip this change
          Report("","SPECIAL_KEY_WORDS cannot be found.  Skipping this change!","WARNING")
          print(_zRED.."\n>>> [WARNING] SPECIAL_KEY_WORDS cannot be found.  Skipping this change!".._zDEFAULT)
          -- ReturnInfo = true
        end --if count...
      end --if IsSpecialKeyWords then
    end --if All_PrecedingWords_Found then
  end --if not IsPrecedingFirstTRUE then

  DEBUG_FindGroup_print("")
  DEBUG_FindGroup_print([[FindGroup() "ending", Sanity check: ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine..[[ ]])
  GroupStartLine,GroupEndLine,SpecialKeyWordLine = PurgeOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)

  -- SectionsTable = AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,"Using ",SectionsTable)

  All_Words_Found = false
  if IsSpecialKeyWords then
    if All_SpecialWords_Found then
      if IsPrec_key_words then
        if All_PrecedingWords_Found then
          All_Words_Found = true
        end
      else
        All_Words_Found = true
      end
    end
  else
    if IsPrec_key_words and All_PrecedingWords_Found then
      All_Words_Found = true
    end
  end

  if TestNoNil("FindGroup()",All_Words_Found,GroupStartLine[1],GroupEndLine[1],SpecialKeyWordLine[1]) then
    DEBUG_FindGroup_print("")
    DEBUG_FindGroup_print("Found all Key_Words: "..tostring(All_Words_Found)..", First line: "..GroupStartLine[1]..", Last line: "..GroupEndLine[1])
    DEBUG_FindGroup_print("Found all SPECIAL_KEY_WORDS: "..tostring(All_SpecialWords_Found))
    DEBUG_FindGroup_print("Found all PRECEDING_KEY_WORDS: "..tostring(All_PrecedingWords_Found))
  end

  DEBUG_FindGroup_print("\n"..THIS.."Ending FindGroup()\n")
  gVerbose = false
  return All_Words_Found, GroupStartLine, GroupEndLine, SpecialKeyWordLine, SectionsTable, IsOnlyOnePreceding
end
--**************************************** END: FindGroup() ***********************************
--#############################################################################################

--***************************** RemoveDuplicateGroups() **********************************************
--recreate Group List and remove duplicates
function RemoveDuplicateGroups(GSL,GEL,SKWL)
  local GroupStartLine = {}
  local GroupEndLine = {}
  local SpecialKeyWordLine = {}

  if #GSL == 1 then
    table.insert(GroupStartLine,GSL[1])
    table.insert(GroupEndLine,GEL[1])
    table.insert(SpecialKeyWordLine,SKWL[1])

  elseif #GSL > 1 then
    table.insert(GroupStartLine,GSL[1])
    table.insert(GroupEndLine,GEL[1])
    table.insert(SpecialKeyWordLine,SKWL[1])

    for i=2,#GSL do
      local IsFound = false
      for j=1,#GroupStartLine do
        if GSL[i] == GroupStartLine[j] then
          IsFound = true
          break
        end
      end
      if not IsFound then
        table.insert(GroupStartLine,GSL[i])
        table.insert(GroupEndLine,GEL[i])
        table.insert(SpecialKeyWordLine,SKWL[i])
      end
    end
  end

  return GroupStartLine,GroupEndLine,SpecialKeyWordLine
end
--***************************** END: RemoveDuplicateGroups() **********************************************

--**********************************  ShowSections()  **************************************
--prints SectionsTable to cmd window if options are ON
function ShowSections(SectionsTable,tag)
  -- print("_mSHOWSECTIONS = ".._mSHOWSECTIONS)
  if tag == nil then tag = "" end
  if _mSHOWSECTIONS == "Y" then
    if #SectionsTable ~= 0 then
      local stripUSING = "Using "
      local spacer = "      "

      -- --DEBUG
      -- for i=1,#SectionsTable do
        -- local st = trim(SectionsTable[i])
        -- print("ShowSections A:                "..spacer..st)
      -- end

      local sinfo = ""
      print("")
      print(tag.."    Section(s) found: ")

      --remove duplicate sections
      local sTable = {}
      for i=1,#SectionsTable-1 do
        local st = trim(SectionsTable[i])
        local found = false
        for j=i+1,#SectionsTable do
          if st == trim(SectionsTable[j]) then
            found = true
            break
          end
        end
        if not found then
          table.insert(sTable,st)
        end
      end
      --add last entry
      table.insert(sTable,trim(SectionsTable[#SectionsTable]))

      -- --DEBUG
      -- for i=1,#SectionsTable do
        -- local st = trim(SectionsTable[i])
        -- print("ShowSections B:                "..spacer..st)
      -- end

      for i=1,#sTable do
        local st = trim(sTable[i])
        if string.find(st,"Using",1,true) == nil then
          if _mSHOWEXTRASECTIONS == "Y" then
            print(string.format("X%3d:                "..spacer..st,i))
          end
        else
          sinfo = string.gsub(st,stripUSING,"")
          print("                    "..spacer..sinfo)
        end
      end
    end
  end
end
--**********************************  END: ShowSections()  **************************************

--**************************************** SectionsTableToLines() ***********************************
--extracts GroupStartLine,GroupEndLine from SectionsTable
function SectionsTableToLines(SectionsTable)
  pv("In SectionsTableToLines()")
  local GroupStartLine = {}
  local GroupEndLine = {}
  local KeyWordLine = {}

  for i=1,#SectionsTable do
    local st = trim(SectionsTable[i])
    --now remove any text before the number
    while string.sub(st,1,1) ~= " " do
      st = string.sub(st,2)
    end

    st = trim(st)
    pv("["..st.."]")

    local gsl = tonumber(string.sub(st,1,string.find(st," - ",1,true)-1))
    local gel = tonumber(string.sub(st,string.find(st," - ",1,true)+3,string.find(st,"(",1,true)-1))
    local KWL = tonumber(string.sub(st,string.find(st,"(",1,true)+1,string.find(st,")",1,true)-1))
    table.insert(GroupStartLine,gsl)
    table.insert(GroupEndLine,gel)
    table.insert(KeyWordLine,KWL)
  end

  return GroupStartLine,GroupEndLine,KeyWordLine
end
--**************************************** END: SectionsTableToLines() ***********************************

--************************************ AddSectionsIntoTable() **************************************
--updates SectionsTable with "Tag GroupStartLine - GroupEndLine"
function AddSectionsIntoTable(GroupStartLine,GroupEndLine,SpecialKeyWordLine,Tag,SectionsTable)
  DEBUG_AddSectionsIntoTable_print("In AddSectionsIntoTable()")
  if Tag == nil then Tag = "" end
  
  --adding groups
  if GroupStartLine[1] ~= nil and GroupStartLine[1] ~= "" then
    -- local GroupRange = GroupStartLine[1].." - "..GroupEndLine[1]
    -- DEBUG_AddSectionsIntoTable_print("    Current section(s): "..Tag..GroupRange)
    for i=1,#GroupStartLine do
      if SpecialKeyWordLine[i] == "" then
        GroupRange = GroupStartLine[i].." - "..GroupEndLine[i]
      else
        GroupRange = GroupStartLine[i].." - "..GroupEndLine[i].." ("..SpecialKeyWordLine[i]..")"
      end
      -- DEBUG_AddSectionsIntoTable_print("                        ".."  "..GroupRange)
      table.insert(SectionsTable,Tag..string.rep(" ",7-string.len(Tag)).." "..GroupRange)
      DEBUG_AddSectionsIntoTable_print("  === Added to SectionTable: "..Tag..string.rep(" ",7-string.len(Tag)).." "..GroupRange)
    end
  end
  
  return SectionsTable
end
--************************************ END: AddSectionsIntoTable() **************************************

--DO NOT DELETE: kept here to execute for #CPU < 4 and DEBUG
--Only used to create MapFileTree files in HandleModScript()
--MapFileTree files are ALWAYS based on the original EXML
function DisplayMapFileTreeEXT(EXML,filename,Debug,Show)
  --******************************************************************
  --NOT THE SAME AS TestReCreatedScript.lua -> MapFileTree()
  --NOT THE SAME AS LoadAndExecuteModScript.lua -> MapFileTree()
  --this DisplayMapFileTree must only recreate all KEY_WORDS to display them in a tree
  --******************************************************************
  if Debug == nil then Debug = false end
  if Show == nil then Show = false end

  local KEY_WORDS = {}
  local TREE_LEVEL = {}
  local FILE_LINE = {}
  local COMMENT = {}
  local level = 0

  if type(EXML) ~= "table" or #EXML <= 1 then return FILE_LINE,TREE_LEVEL,KEY_WORDS end

  --***************************************************************************************************
  local function FindKeywordsInLine(TextFile,i)
    local KeywordsInRange = ""
    local text = TextFile[i]

    if string.find(text,[[me=]],1,true) ~= nil and string.find(text,[[ue=]],1,true) ~= nil then
      --a line like <Property name="" value="" />
      --"name" is a potential special_keyword
      local value = StripInfo(text,[[ue="]],[["]])
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil and string.find(value,".",1,true) == nil then
      -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil then
      if value ~= "" then
        local name = StripInfo(text,[[me="]],[["]])
        KeywordsInRange = "[*"..string.format("%8u",i)..[[: ]]..name..[[="]]..value.."\"]"
      end
    end --if string.find(

    return KeywordsInRange
  end
  --***************************************************************************************************

  local Pak_FileName = LocatePAK(filename)
  local Pak_FileNamePath = gNMS_PCBANKS_FOLDER_PATH..Pak_FileName
  local fileInfo = string.gsub(filename,[[\]],[[.]])
  local filepathname = "..\\MapFileTrees\\"..fileInfo

  if _mUSE_TXT_MAPFILETREE then
    filepathname = filepathname..".txt"

    --delete old other versions
    local OLDfilepathname = "..\\MapFileTrees\\"..fileInfo..".lua"
    --os.remove(OLDfilepathname)    --don't use, can get stuck
    local cmd = [[Del /f /q /s "]]..OLDfilepathname..[[" 1>NUL 2>NUL]]
    NewThread(cmd)

  elseif _mUSE_LUA_MAPFILETREE then
    filepathname = filepathname..".lua"

    --delete old other versions
    local OLDfilepathname = "..\\MapFileTrees\\"..fileInfo..".txt"
    --os.remove(OLDfilepathname)    --don't use, can get stuck
    local cmd = [[Del /f /q /s "]]..OLDfilepathname..[[" 1>NUL 2>NUL]]
    NewThread(cmd)

  else --set default
    _mUSE_TXT_MAPFILETREE = true
    filepathname = filepathname..".txt"

    --delete old other versions
    local OLDfilepathname = "..\\MapFileTrees\\"..fileInfo..".lua"
    --os.remove(OLDfilepathname)    --don't use, can get stuck
    local cmd = [[Del /f /q /s "]]..OLDfilepathname..[[" 1>NUL 2>NUL]]
    NewThread(cmd)
  end

  if IsFile2Newest(Pak_FileNamePath,filepathname) then
    --the MapFileTree file is newest than the NMS pak file
    --no need to update
    print("      MapFileTree is up-to-date!")
    Report("","      MapFileTree is up-to-date!")
    return FILE_LINE,TREE_LEVEL,KEY_WORDS
  end

  print("      Creating MapFileTree...")
  -- print("XYZ = "..filename)
  local WholeTextFile = LoadFileData([[MOD\]]..filename) --the EXML file as one text, for speed searching for uniqueness

  --skipping a few lines at start
  local j = 0
  repeat
    j = j + 1
    if EXML[j] == nil then break end
  until string.find(EXML[j],[[<Data template=]],1,true) ~= nil

  for i=j,#EXML do
    local text = EXML[i]

    if string.find(text,[[/>]],1,true) ~= nil then
      local Name = ""
      if string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
        Name = StripInfo(text,[[<Property name="]],[[" value=]])
      end
      if Name ~= "" then
        local result = FindKeywordsInLine(EXML,i)
        if result ~= "" then --like [*       6: Id="VEHICLE_SCAN"]
          --print("            Line "..i.." Name is ["..Name.."]")
          --like: <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN" />
          --like: <Property name="Id" value="DRONE" />
          --like: <Property name="CreatureType" value="Walker" />
          --like: ...
          --usually could be a SIGNIFICANT KEY_WORD
          table.insert(FILE_LINE,i)
          table.insert(TREE_LEVEL,level+1)

          --check for uniqueness and report
          local s = trim(text)
          --fastest way!!! --gsub and gmatch take too long
          local firstPosStart,firstPosEnd = string.find(WholeTextFile,s,1,true)
          local secondPos = string.find(WholeTextFile,s,firstPosEnd+1,true)

          value = StripInfo(result,[[=]],"]")

          local UniqueMsg = [[.S.]]
          if secondPos == nil then
            UniqueMsg = [[.SU]]
            if value == [["True"]] or value == [["False"]] or tonumber(string.sub(value,2,-2)) ~= nil then
              UniqueMsg = [[.su]]
            end

          elseif value == [["True"]] or value == [["False"]] or tonumber(string.sub(value,2,-2)) ~= nil then
            UniqueMsg = [[.s.]]
          end
          table.insert(KEY_WORDS, [[{"]]..StripInfo(result,[[: ]],[[=]])..[[",]]..value..[[,},]]) --remembers name and value
          table.insert(COMMENT, UniqueMsg)
        else
          --like: <Property name="Seed" value="0" />
          --skip it
        end
      end

    --from here, no lines with />
    elseif string.find(text,[[</Property>]],1,true) ~= nil then
      --like: </Property>
      --NOT a KEY_WORD but should remove preceding KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, "<<< }") --remembers end of section
      table.insert(COMMENT, [[   ]])
      level = level - 1

    elseif string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
      --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
      --usually NOT a KEY_WORD but may be needed to match </Property> removing a KEY_WORD
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
      --this is usually a SIGNIFICANT KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[Property name=]],[[>]])..",") --remembers name
      table.insert(COMMENT, [[P..]])

    elseif string.find(text,[[Property value=]],1,true) ~= nil then
      --like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
      --could be a SIGNIFICANT KEY_WORD
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

  local info = {}
  if _mUSE_LUA_MAPFILETREE then
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
        if string.sub(comment,1,1) == "P" or (i == 1) then
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
  else --_mUSE_TXT_MAPFILETREE
    --nothing to pre-process
  end

  --os.remove([["]]..filepathname..[["]])  --don't use, can get stuck
  local cmd = [[Del /f /q /s "]]..filepathname..[[" 1>NUL 2>NUL]]
  NewThread(cmd)

  sleep(1) --let os catchup

  local filehandle = WriteToFileEXT(filepathname)
  if filehandle ~= nil then
    filehandle:write("MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
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
    filehandle:write("MapFileTree: "..filename.." ("..Pak_FileName..") "..os.date(_mDateTimeFormat).."\n")
    filehandle:close()
  end

  print("                             done!")
  Report("","    Created MapFileTree")

  return FILE_LINE,TREE_LEVEL,KEY_WORDS
end

function TranslateMathOperatorCommandAndGetValue(TextFileTable, SearchKeyProperty, pos, direction)
  if direction == "forward" then
    for k=pos,#TextFileTable,1 do
    if (string.find(TextFileTable[k], [["]]..SearchKeyProperty..[["]]) or (SearchKeyProperty == "IGNORE")) then
        return StripInfo(TextFileTable[k],[[value="]],[["]])
      end
    end
  elseif direction == "backward" then
    for k=pos,1,-1 do
      if (string.find(TextFileTable[k], [["]]..SearchKeyProperty..[["]]) or (SearchKeyProperty == "IGNORE")) then
        return StripInfo(TextFileTable[k],[[value="]],[["]])
      end
    end
  end
end

function CheckValueType(value,IsInteger_to_floatFORCE)
  local ValueTypeIsNumber = (type(tonumber(value)) == "number")
  local ValueIsInteger = false
  if not IsInteger_to_floatFORCE and ValueTypeIsNumber then
    ValueIsInteger = (string.find(value,".",1,true) == nil)
  end
  return ValueTypeIsNumber, ValueIsInteger
end

function IntegerIntegrity(number,valueIsInteger)
  if valueIsInteger then
    return math.floor(number + 0.5)
  end
  return number
end

function ExecuteMathOperation(math_operation,operand1,operand2)
  pv("foundValue["..tostring(operand1).."]")
  pv("currentValue=["..tostring(operand2).."]")
  if operand1 == nil then
    -- print("%% operand1 is nil")
    --subtitute 0, error was already reported
    operand1 = 0
  end
  if operand2 == nil then
    -- print("%% operand2 is nil")
    --subtitute 0, error was already reported
    operand2 = 0
  end
  
  -- print("&& ["..tonumber(operand1).."]")
  -- print("&& ["..tonumber(operand2).."]")
  -- print("&& ["..math_operation.."]")
  
  local tmp = nil
  if math_operation == "*" then
    tmp = tonumber(operand1)*tonumber(operand2)
  elseif math_operation == "+" then
    tmp = tonumber(operand1)+tonumber(operand2)
  elseif math_operation == "-" then
    tmp = tonumber(operand1)-tonumber(operand2)
  elseif math_operation == "/" then
    tmp = tonumber(operand1)/tonumber(operand2)
  elseif math_operation == "//" then
    tmp = tonumber(operand1)//tonumber(operand2)
  elseif math_operation == "%" then
    tmp = tonumber(operand1)%tonumber(operand2)
  elseif math_operation == "^" then
    tmp = tonumber(operand1)^tonumber(operand2)
  else
    Report(math_operation,"Unknown MATH_OPERATION.  Please check your script!","WARNING")
    print(_zRED..">>> [WARNING] Unknown MATH_OPERATION: ["..math_operation.."]  Please check your script!".._zDEFAULT)
    return 1
  end

  if tmp == math.tointeger(tmp) then
    --this could still be a REAL integer not a float
    tmp = math.tointeger(tmp)
  end

  return tmp
end

--################  BELOW: USERSCRIPT PROCESSING  ###############################

--***************************************************************************************************
function SerializeScript(object,multiline,name)
  local r = serializeObject(object,multiline,0,name) --from Loadhelpers

  local t = {}
  for w in string.gmatch(r,"[^\n]+") do
    table.insert(t,w)
  end

  --cleanup strings
  for i=1,#t do
    local text = t[i]
    if trim(text) == "" then
      --remove empty lines
      t[i] = ""
    end
    --remove trailing whitespace
    t[i] = rtrim(text)
  end

  local w = {}
  for i=1,#t do
    if t[i] ~= "" then
      table.insert(w,t[i])
    end
  end
  t = w
  --end cleanup strings

  local i = 1
  repeat
    -- print(i.."["..t[i].."]")
    if string.find(t[i],"VALUE_CHANGE_TABLE",1,true) ~= nil then
      -- print(i.."A["..t[i].."]")
      i = i + 2
      while trim(t[i]) ~= "}," do
        -- print(i.."B["..t[i].."]")
        t[i] = t[i]..trim(t[i+1])..trim(t[i+2])..trim(t[i+3])
        t[i+1] = ""
        t[i+2] = ""
        t[i+3] = ""
        i = i + 4
      end
      i = i + 1
    elseif string.find(t[i],"SPECIAL_KEY_WORDS",1,true) ~= nil then
      if trim(t[i+1]) == "{" then
        --a table
        local anchorLine = i
        t[anchorLine] = t[anchorLine].." "..trim(t[anchorLine+1])
        t[anchorLine+1] = ""
        local pointer = 2
        repeat
          t[anchorLine] = t[anchorLine]..trim(t[anchorLine+pointer])
          t[anchorLine+pointer] = ""
          pointer = pointer + 1
        until trim(t[anchorLine+pointer]) == "},"
        t[anchorLine] = t[anchorLine]..trim(t[anchorLine+pointer])
        t[anchorLine+pointer] = ""
        i = i + pointer
      end
      i = i + 1
    elseif string.find(t[i],"PRECEDING_KEY_WORDS",1,true) ~= nil then
      if trim(t[i+1]) == "{" then
        --a table
        local anchorLine = i
        t[anchorLine] = t[anchorLine].." "..trim(t[anchorLine+1])
        t[anchorLine+1] = ""
        local pointer = 2
        repeat
          t[anchorLine] = t[anchorLine]..trim(t[anchorLine+pointer])
          t[anchorLine+pointer] = ""
          pointer = pointer + 1
        until trim(t[anchorLine+pointer]) == "},"
        t[anchorLine] = t[anchorLine]..trim(t[anchorLine+pointer])
        t[anchorLine+pointer] = ""
        i = i + pointer
      end
      i = i + 1
    else
      i = i + 1
    end
  until i > #t

  r = {}
  for i=1,#t do
    if t[i] ~= "" then
      r[#r+1] = t[i]
    end
  end

  return r
end

--***************************************************************************************************
    --[1] = ""
    --[2] = message
    --[3] = "WARNING" or "ERROR"
function SetReportData(DelayedReportData,a,b,c)
  DelayedReportData[#DelayedReportData + 1] = {}
  DelayedReportData[#DelayedReportData][1] = a
  DelayedReportData[#DelayedReportData][2] = b
  DelayedReportData[#DelayedReportData][3] = c
end

--***************************************************************************************************
function AnalyzeScript(script,scriptFilename,scriptFilenamePath)
  local problemFound = false
  local InternalFunctionProblem = false
  local possibleProblemFound = false

  print("")
  print("   @@@ ********** ".._zGREEN.."Analysing script...".._zDEFAULT.." **********")

  if script == nil then return true end

  local DelayedReportData = {}
    --[1]=""
    --[2]=message
    --[3]="Warning" or "ERROR"

  -- +++++++++ _mLUAC ++++++++
  print("")
  print("   @@@ Checking script using LUAC.exe...")
  local tmpScriptLUACFileName = "LUAC_"..scriptFilename
  local resultFileName = "LastScriptCheckResults_LUAC.lua"
  local scriptLUAC = string.gsub(script,[[\\]],[[/]]) -- just to prevent luac from complaining about bad escape sequences

  WriteToFileAppend(scriptLUAC,tmpScriptLUACFileName) --script to the tmp file

  local cmd = [[]].._mLUAC..[[ -p "]]..tmpScriptLUACFileName..[["2>"]]..resultFileName..[["]]
  -- print("["..cmd.."]")
  local r,s,n = NewThread(cmd)

  local LUACerrorTable = ParseTextFileIntoTable(resultFileName)

  problemFound = (#LUACerrorTable > 0)

  for i=1,#LUACerrorTable do
    local text = string.gsub(LUACerrorTable[i],_mLUAC,"")
    text = string.sub(text,8)
    firstPos = string.find(text,":",1,true)
    if firstPos ~= nil then
      text = string.sub(text,1,firstPos-1).." line "..string.sub(text,firstPos+1)
    end
    print(_zRED.."       - "..text.._zDEFAULT)
    SetReportData(DelayedReportData,"","LUAC.exe detected: "..text,"ERROR")
  end

  os.remove(tmpScriptLUACFileName)

  if problemFound then
    print("   @@@ Done but found problem(s)")
  else
    -- print("       DONE: Using LUAC.exe...")
    print("   @@@ Done without problem")
  end
  print("")
  -- +++++++++ END: _mLUAC ++++++++

  -- +++++++++ Scanning script for container ++++++++
  if Container_info == nil then dofile("Container_info.lua") end

  --let us try to find the start and end of NMS_MOD_DEFINITION_CONTAINER
  local containerStartLine = 0 --easy
  local containerEndLine = 0   --harder if some code after with tables in it

  local scriptTable = ParseTextFileIntoTable(scriptFilenamePath)

  if #scriptTable == 1 then
    pv("       > This script file is encoded with CR only, special handling invoked!")
    local filehandle = io.open(scriptFilenamePath,"rb")
    if filehandle ~= nil then
      local lines = filehandle:read("l")
      scriptTable = lines:split("\r")
      filehandle:close()
    end
    script = string.gsub(script,"\r","\n")
  end

  for i=1,#scriptTable do
    local t = trim(scriptTable[i])
    -- if string.find(t,"NMS_MOD_DEFINITION_CONTAINER",1,true) ~= nil then
      -- print(i,t)
    -- end
    if string.find(t,"NMS_MOD_DEFINITION_CONTAINER",1,true) == 1 then
      containerStartLine = i
      break
    end
  end

  -- local S_msg_floor_division = false --NMS_MOD_DEFINITION_CONTAINER["S_FLOOR_DIV"]
  -- for i=1,#scriptTable do
    -- local t = trim(scriptTable[i])
    -- if string.find(t,"AMUMSS_SUPPRESS_MSG",1,true) == 1 then
      -- if string.find(t,"SUPPRESS_FLOOR_DIV",1,true) == 1 then
        -- S_msg_floor_division = true
      -- end
    -- end
  -- end

  local openBracketCount = 0
  local closeBracketCount = 0
  -- local BracketLevel = 0
  local foundContainer = false
  local modified = false

  print("   @@@ Scanning script for container...")

  --***************************************************************************************************
  local function isBalanced(s,t)
    --Lua pattern matching has a 'balanced' pattern that matches sets of balanced characters.
    --Any two characters can be used.
    checkFor = '%b'..t
    print(checkFor)
    print(s:gsub(checkFor,'')=='')
    return s:gsub(checkFor,'')=='' and true or false
  end
  --***************************************************************************************************

  -- local IsScriptSingleQuotesBalanced = isBalanced(script,[['']])
  -- print(string.format([[       Are script '' balanced? %s]],IsScriptSingleQuotesBalanced))
  -- local IsScriptDoubleQuotesBalanced = isBalanced(script,[[""]])
  -- print(string.format([[       Are script "" balanced? %s]],IsScriptDoubleQuotesBalanced))
  -- local IsScriptSquareBalanced = isBalanced(script,"[]")
  -- print(string.format("       Are script [] balanced? %s",IsScriptSquareBalanced))
  -- local IsScriptCurlyBalanced = isBalanced(script,"{}")
  -- print(string.format("       Are script {} balanced? %s",IsScriptCurlyBalanced))
  -- print("")

  local S_msg_floor_division = false
  local S_msg_multiple_statements = false
  -- for i=containerStartLine,#scriptTable do
    -- local t = trim(scriptTable[i])
    -- if string.find(t,"AMUMSS_SUPPRESS_MSG",1,true) ~= nil then
      -- if string.find(t,"SUPPRESS_FLOOR_DIV",1,true) ~= nil then
        -- S_msg_floor_division = true
      -- end
      -- if string.find(t,"MULTIPLE_STATEMENTS",1,true) ~= nil then
        -- S_msg_multiple_statements = true
      -- end
    -- end
  -- end

  local longCommentFound = false
  local numOfEqualSign = 0
  for i=containerStartLine,#scriptTable do
    local skip = false
    if scriptTable[i] ~= nil then
      local t = trim(scriptTable[i]):upper()

      if longCommentFound then
        --a long comment start was found, were does it end

        --does it ends on this line?
        local searchSign = "]"..string.rep("=",numOfEqualSign).."]" --to match the opening one
        if string.find(t,searchSign,1,true) ~= nil then
          --long comment ending on this line
          longCommentFound = false
          -- print("ending ]] at "..i..": "....t)

          local commentEndCol = string.find(t,searchSign,1,true) + string.len(searchSign) + 2
          t = string.sub(t,commentEndCol)

        else
          --skip the line, it is still part of the long comment
          skip = true
        end

      else
        -- if string.find(t,"--%[") ~= nil then
          -- print("A: is it '--[' at line "..i..": <"..t..">")
        -- end
        if string.find(t,"%-%-%[=-%[") ~= nil then
          --start of a long comment on this line
          -- print("A: detected '--[[' at line "..i..": <"..t..">")

          --how many '=' are there?
          local firstBracketPos = string.find(t,"--[",1,true) + 2
          local secondBracketPos = string.find(string.sub(t,firstBracketPos+1),"[",1,true)
          numOfEqualSign = secondBracketPos - firstBracketPos - 1

          --does it ends on the same line?
          local searchSign = "]"..string.rep("=",numOfEqualSign).."]" --to match the opening one
          if string.find(t,searchSign,1,true) == nil then
            --not ending on the same line
            --signal to look for the end of the long comment down the file
            longCommentFound = true
          end

          --no skip, we still check if we find brackets before the comment
          local commentStartCol = string.find(t,"--",1,true)
          t = string.sub(t,1,commentStartCol - 1)
          -- print("A: t = ["..t.."] on line "..i)
        end
      end

      if not longCommentFound then
        if string.sub(t,1,2) == "--" then
          --a short comment at the start of the line, skip line
          skip = true

        elseif string.find(t,"--",1,true) ~= nil then
          --there is a short comment somewhere in this line, remove from the comment to end of line
          local commentStartCol = string.find(t,"--",1,true)
          t = string.sub(t,1,commentStartCol - 1)
        end
      end

      if not skip then
        --how many { and } on this line?
        local _,n = string.gsub(t,"{","{")
        -- print("B: { = ["..n.."] on line "..i)
        openBracketCount = openBracketCount + n

        local _,n = string.gsub(t,"}","}")
        -- print("B: } = ["..n.."] on line "..i)
        closeBracketCount = closeBracketCount + n

        if not foundContainer and (openBracketCount > 0 and (closeBracketCount == openBracketCount)) then
          --we have reach the end of the container or the container is malformed
          foundContainer = true
          containerEndLine = i
          print("       > CONTAINER found at lines "..containerStartLine.."-"..containerEndLine.." (found "..closeBracketCount.." {} pairs)")
          print("       > CONTAINER will be further analyzed...")
        end

        if string.find(t,"AMUMSS_SUPPRESS_MSG",1,true) ~= nil then
          if string.find(t,"SUPPRESS_FLOOR_DIV",1,true) ~= nil then
            S_msg_floor_division = true
          end
          if string.find(t,"MULTIPLE_STATEMENTS",1,true) ~= nil then
            S_msg_multiple_statements = true
          end
        end

      end
    end
  end

  if openBracketCount == 0 then
    --we have reach the end of the file and not found the container
    print("       > CONTAINER starts at line "..containerStartLine)
    print("       > CONTAINER not found!")
    SetReportData(DelayedReportData,"","CONTAINER starts at line "..containerStartLine)
    SetReportData(DelayedReportData,"","CONTAINER end not found","WARNING")
    problemFound = true
  end

  if openBracketCount > 0 and (closeBracketCount ~= openBracketCount) then
    --we have reach the end of the file and the container is malformed
    print("       > Ended file scan with "..openBracketCount.." '{' and "..closeBracketCount.." '}' brackets")
    SetReportData(DelayedReportData,"","Ended file scan with "..openBracketCount.." '{' and "..closeBracketCount.." '}' brackets")
    if openBracketCount > closeBracketCount then
      print(_zRED.."       > Check for some missing '}' ".._zDEFAULT)
      SetReportData(DelayedReportData,"","Check for some missing '}'","WARNING")
    else
      print(_zRED.."       > Check for some missing '{' ".._zDEFAULT)
      SetReportData(DelayedReportData,"","Check for some missing '{'","WARNING")
    end
    print(_zRED.."       > CONTAINER starts at line "..containerStartLine.."-(ending uncertain)".._zDEFAULT)
    print(_zRED.."       > CONTAINER is malformed!".._zDEFAULT)
    SetReportData(DelayedReportData,"","CONTAINER starts at line "..containerStartLine.."-(ending uncertain)")
    SetReportData(DelayedReportData,"","CONTAINER is malformed!","WARNING")

  end

  if containerEndLine == 0 then
    -- modified = true
  end
  print("   @@@ Done")
  print("")
  -- +++++++++ END: Scanning script for container ++++++++

  print("   @@@ Basic Syntax Analysis...")

  -- check if GUIF() and DOCONFIGGLOBAL are defined
  -- check if GUIF() is defined
  for i=1,#scriptTable do
    local s = trim(scriptTable[i])
    -- if string.find(s,"GUIF",1,true) ~= nil or string.find(s,"DOCONFIGGLOBAL",1,true) ~= nil then
    if string.find(s,"GUIF",1,true) ~= nil then
      if s:sub(1,2) ~= "--" then
        -- not a comment
        s = s:gsub("%s+","") --remove all spaces
        if s:find("localfunctionGUIF(",1,true) ~= nil or s:find("functionGUIF(",1,true) ~= nil then
          print(_zRED.."       > [ERROR] Redefine of GUIF() internal function found, it cannot be defined in your script!".._zDEFAULT)
          SetReportData(DelayedReportData,"","Redefine of GUIF() internal function found, it cannot be defined in your script!","ERROR")
          InternalFunctionProblem = true
          break
        end
        -- if s:find("DOCONFIGGLOBAL=",1,true) ~= nil and s:find("DOCONFIGGLOBAL==",1,true) == nil then
          -- print(_zRED.."       > [ERROR] Redefine of DOCONFIGGLOBAL found, it cannot be defined in your script!".._zDEFAULT)
          -- SetReportData(DelayedReportData,"","Redefine of DOCONFIGGLOBAL found, it cannot be defined in your script!","ERROR")
          -- InternalFunctionProblem = true
          -- break
        -- end
      end
    end
  end

  -- +++++++++ selene ++++++++
  local tmpScriptFileName = "UserLoadedScript.lua"
  local resultFileName = "UserLoadedScriptCheckResults.lua"

  --reset files
  os.remove(tmpScriptFileName)
  os.remove(resultFileName)

  WriteToFile([[--# selene: allow(unscoped_variables)]].."\n",tmpScriptFileName) --adding to block warning: not local in whole file
  --WriteToFile([[--# selene: allow(unused_variable)]].."\n",tmpScriptFileName) --adding to block warning: unused variable in whole file

  WriteToFileAppend([[-- selene: allow(unused_variable)]].."\n",tmpScriptFileName) --adding to block warning: not used for NMS_MOD_DEFINITION_CONTAINER
  WriteToFileAppend([[NMS_MOD_DEFINITION_CONTAINER = {}]].."\n",tmpScriptFileName) --needed for preceding selene block to work

  --extra lines in file due to selene
  local extraLines = 3

  --we do this because selene cannot handle the " - " correctly in a file name, it thinks it is an options flag
  WriteToFileAppend(script,tmpScriptFileName) --script to the tmp file

  local cmd = [[selene.exe  --display-style="quiet" "]]..tmpScriptFileName..[[">"]]..resultFileName..[["]]
  -- -- print("["..cmd.."]")
  local r,s,n = os.execute(cmd)
  print("")

  if r == nil then
    local OnFirst = true
    --we need to removed the extra lines from the results file
    local rs = ParseTextFileIntoTable(resultFileName)

    for i=1,#rs - 4 do --skip last 4 lines
      local text = rs[i]
      
      local nAfterFirstColon = string.find(text,":",1,true) + 1
      local nLineLength = string.find(string.sub(text,nAfterFirstColon),":",1,true) - 1
      local sLineNum = string.sub(text,nAfterFirstColon,nAfterFirstColon + nLineLength - 1)
      local lineNum = tonumber(sLineNum) - extraLines
      -- print("lineNum = <"..lineNum..">")
      
      local nextPart = string.sub(text,nAfterFirstColon + nLineLength + 1)
      -- print("nextPart = <"..nextPart..">")
      -- rs[i] = string.sub(text,1,nAfterFirstColon - 1)..lineNum..nextPart
      -- print("rs[i] = ["..rs[i].."]")
      
      local nColLength = string.find(string.sub(nextPart,1),":",1,true) - 1
      local sColNum = string.sub(nextPart,1,nColLength)
      -- print("sColNum = <"..sColNum..">")
      local msg = string.sub(nextPart,nColLength + 3)
      -- print("msg = <"..msg..">")
      
      -- disable these
      if string.find(msg,"error[undefined_variable]: `lfs` is not defined",1,true) ~= nil then
        msg = ""
      end

      if string.find(msg,"error[undefined_variable]: `GUIF` is not defined",1,true) ~= nil then
        msg = ""
      end

      -- NOT used in script, only internal
      -- if string.find(msg,"error[undefined_variable]: `DOCONFIGGLOBAL` is not defined",1,true) ~= nil then
        -- msg = ""
      -- end

      -- change these
      msg = string.gsub(msg,"error%[if_same_then_else%]:","warning[if_same_then_else]:")
      
      if string.find(msg,"warning[unused_variable]:",1,true) ~= nil then
        if os.getenv("_mUnusedVariable") == "Y" then
          msg = ""
        else
          msg = string.gsub(msg,"warning%[unused_variable%]:","notice[unused_variable]:")
        end
      end

      if string.find(msg,"warning[multiple_statements]: only one statement per line is allowed",1,true) ~= nil then
        if S_msg_multiple_statements then
          msg = ""
        else
          msg = string.gsub(msg,"warning%[multiple_statements%]: only one statement per line is allowed","notice[multiple_statements]: only one statement per line is preferred for debugging clarity")
        end
      end

      if string.find(msg,"error[parse_error]: unexpected token `/`",1,true) ~= nil then
        if S_msg_floor_division then
          msg = ""
        else
          msg = string.gsub(msg,"error%[parse_error%]: unexpected token `/`","notice[unexpected token `/`]: please ignore if '//' is really the floor division operator")
        end
      end

      if string.find(msg,"error",1,true) ~= nil then
        possibleProblemFound = true
      end

      if msg ~= "" then
        if OnFirst then
          OnFirst = false
          print("   @@@ Detected these other syntax problems, see also ModScriptCheck folder...")
        end
        print(_zRED.."       > line "..lineNum..", col "..sColNum..": "..msg.._zDEFAULT)
        local msgType = string.upper(string.sub(msg,1,string.find(msg,"[",1,true)-1))
        -- print("msgType = <"..msgType..">")
        SetReportData(DelayedReportData,"","Selene detected @ line "..lineNum..", col "..sColNum..": "..msg,msgType)
      end
    end

    WriteToFile(ConvertLineTableToText(rs),[[..\ModScriptCheck\]]..scriptFilename..[[.selene.txt]])
-- WaitForAnyKey("after selene, press key...")
  else
    print("   @@@ No other syntax problem detected")
  end

  print("   @@@ Done")
  print("")

  -- os.remove(tmpScriptFileName)
  -- os.remove(resultFileName)
  -- +++++++++ END: selene ++++++++

  return problemFound,possibleProblemFound,InternalFunctionProblem,modified,DelayedReportData
end

--********************************  OpenUserScript()  *************************************************
function OpenUserScript()
  local Hash = ""
  local success = false

  --***************************************************************************************************
  local function load_conf()
    local env = {
      -- DOCONFIGGLOBAL = DOCONFIGGLOBAL,
      GUIF = GUIF,
      lfs = {currentdir=lfs.currentdir,},
      assert = assert,
      coroutine = coroutine,
      getmetatable = getmetatable ,
      ipairs = ipairs,
      next = next,
      pairs = pairs,
      pcall = pcall,
      print = print,
      select = select,
      setmetatable = setmetatable,
      tonumber = tonumber,
      tostring = tostring,
      type = type,
      xpcall = xpcall,
      string = string,
      math = math,
      table = table,
      io = {open=io.open,type=io.type,input=io.input,read=io.read,close=io.close,lines=io.lines,},
      os = {clock=os.clock,date=os.date,difftime=os.difftime,time=os.time,tmpname=os.tmpname,getenv=os.getenv,},
    } --user can use anything inside this new environment in the user script

    local scriptFilenamePath = LoadFileData("CurrentModScript.txt")
    local scriptFilename = GetFilenameFromFilePath(scriptFilenamePath)

    os.remove([[..\ModScriptCheck\]]..scriptFilename..[[.selene.txt]]) --try to delete the last analysis

    local script = LoadFileData(scriptFilenamePath)
    -- print("script = ["..script.."]")

    --for backward compatibility
    script = string.gsub(script,[[REPLACE_AFTER_ENTRY]],[[PRECEDING_KEY_WORDS]])
    script = string.gsub(script,[[ADDSECTION]],[[ADDAFTERSECTION]])
    script = string.gsub(script,[[\]],[[\\]]) --preventing those nasty escape sequence when \ is used inside a ""

    --prevent the use of :write in the script (prevent injection)
    if string.find(script,[[:write]],1,true) ~= nil then
      local scriptFile = ParseTextFileIntoTable(scriptFilenamePath)
      for i=1,#scriptFile do
        if string.find(scriptFile[i],[[:write]],1,true) ~= nil then
          if string.sub(trim(scriptFile[i]),1,2) ~= [[--]] then
            return {}, "XXXXX <not allowed> Lua keyword in used on line "..i.." of the script XXXXX"
          end
        end
      end
    end

    local problemFound = false
    local modified = false
    problemFound,possibleProblemFound,InternalFunctionProblem,modified,DelayedReportData = AnalyzeScript(script,scriptFilename,scriptFilenamePath)

    if problemFound or possibleProblemFound then
      print("")
      print(_zRED.."[NOTICE]   Some problem/warning found by analyzing the script (see above)...".._zDEFAULT)
      if modified then
        print(_zRED.."          We may have MODIFIED the script to help pinpoint the problem".._zDEFAULT)
        print(_zRED.."          Please retry it to get further guidance!".._zDEFAULT)
      else
        print(_zRED.."          You could need to correct it and retry!".._zDEFAULT)
      end
      print("")
    end

    -- To be used if you want to inspect the loaded script
    if _mDEBUG ~= nil then
      WriteToFile(script, "..\\TempScript.lua")
    end

    -- if not problemFound then
      -- print(">>> Creating script Hash...")
      -- local sha1 = require 'sha1'
      -- Hash = sha1.hex(string.sub(script,1,#script - 40))

      -- gSCRIPTBUILDERscript = (Hash == string.sub(script,#script - 39))
      -- if gSCRIPTBUILDERscript then print("A SCRIPTBUILDER script!") end
    -- end

    --***************************************************************************************************
    local function MyErrHandler(x)
      print("")
      print(_zRED.."Lua Script error: "..x.._zDEFAULT)
      SetReportData(DelayedReportData,"","Lua Script error: "..x,"ERR")
      -- print(debug.traceback(nil,0))
      -- Report("", debug.traceback(nil,0),"ERR")
      LuaEndedOk(THIS)
    end

    -- --***************************************************************************************************
    -- local function GetScript()
      -- return load(script,"User Script",'t',env)
    -- end

    if not problemFound and not InternalFunctionProblem then
      print(">>> Loading script...")
      success, chunk = xpcall(load(script,"User Script",'t',env),MyErrHandler) --better
      -- local chunk, failure = load(script,"User Script",'t',env)

      if success then
          -- chunk()
      elseif chunk ~= nil then
        print("")
        print("Lua is reporting: "..chunk)
        Report("","Lua is reporting: "..chunk,"ERR")
      else
        print("xpcall problem")
      end
    else
      success = false
    end

    return env, chunk, success, InternalFunctionProblem
  end
  --***************************************************************************************************

  --###################  MAIN CODE  ###################################
  local conf,status,success,InternalFunctionProblem = load_conf()

  if success then
    if conf.NMS_MOD_DEFINITION_CONTAINER == nil or conf.NMS_MOD_DEFINITION_CONTAINER == "" then
      success = false
    end
  end

  -- if status == nil or status == false then --only use this if not using pcall above
  if success then --use this if using pcall above
    local msg1 = "USER"
    if gSCRIPTBUILDERscript then
      msg1 = "SCRIPTBUILDER"
    end

    print(_zGREEN..">>> [INFO] Success loading ".._zDEFAULT..msg1.._zGREEN.." script".._zDEFAULT)
    NMS_MOD_DEFINITION_CONTAINER = conf.NMS_MOD_DEFINITION_CONTAINER
    
    -- DOCONFIGGLOBAL = (gDoConfigGlobal == "Y")
    -- if type(conf.DOCONFIGGLOBAL) == "boolean" then
      -- -- print("Loaded script: DOCONFIGGLOBAL = "..tostring(conf.DOCONFIGGLOBAL))
      -- DOCONFIGGLOBAL = conf.DOCONFIGGLOBAL
    -- end
    
    --***************************************************************************************************
    local function SerializeLoadedScript(TableName,thisTable,indentLevel,outTable,tName) --recursive
      local tmp = ""

      if #outTable > 0 then
        tmp = string.gsub(outTable[#outTable],".  ","") --remove all ".  "
        tmp = string.gsub(tmp," --<<<<<","") --remove all " --<<<<<" --never found
        tmp = string.gsub(tmp," --<<<<","") --remove all " --<<<<"
        tmp = string.gsub(tmp," --<<<","") --remove all " --<<<"
      end

      --handles '{' only
      if tonumber(TableName) == nil then
        tName = TableName --to remember the current table name
        table.insert(outTable,string.rep(".  ",indentLevel - 2)..TableName.." = {")
        indentLevel = indentLevel + 1 --added

        if TableName == "FOREACH_SKW_GROUP" or TableName == "VALUE_CHANGE_TABLE" or TableName == "EXML_CHANGE_TABLE" or TableName == "MBIN_CHANGE_TABLE" or TableName == "MODIFICATIONS" then
          --for TABLE OF TABLES
          indentLevel = indentLevel + 1 --added
        end

      elseif trim(tmp) == "}," then
        indentLevel = indentLevel - 2
        table.insert(outTable,string.rep(".  ",indentLevel - 2).."{ --++") --never found

      else
        -- local pos = string.find(outTable[#outTable]," --",1,true)
        -- tmp = outTable[#outTable]
        -- if pos ~= nil then
          -- tmp = string.sub(outTable[#outTable],1,pos)
        -- end
        -- outTable[#outTable] = tmp.."{ --<<<<"

        indentLevel = indentLevel - 2
        if tName == "EXML_CHANGE_TABLE" then
          --to create an empty line between each sub-table of EXML_CHANGE_TABLE
          table.insert(outTable,string.rep("---",indentLevel - 3).."-- new sub-table")
        end
        
        table.insert(outTable,string.rep(".  ",indentLevel - 2).."{  --+++")
      end
      --END: handles '{' only

      --handles all fields
      for k,v in pairs(thisTable) do
        local value = ""
        if type(v) == "table" then
          indentLevel = indentLevel + 1
          SerializeLoadedScript(k,v,indentLevel,outTable,tName) --recursive
          indentLevel = indentLevel - 1
        else
          if type(v) == "nil" then
            value = "nil,"
          elseif type(v) == "string" then
            v = string.gsub(v,[[\\]],[[\]]) --remove \\ in [[...]] strings
            value = "[["..v.."]],"
          elseif type(v) == "number" then
            value = tostring(v)..","
          elseif type(v) == "boolean" then
            if v then
              value = "[[true]],"
            else
              value = "[[false]],"
            end
          end

          local info = ""
          if tonumber(k) == nil then
            info = k.." = "
          end
          table.insert(outTable,string.rep(".  ",indentLevel-1)..info..value)
        end
      end
      --END: handles all fields

      tmp = string.gsub(outTable[#outTable],".  ","") --remove all "|  "
      tmp = string.gsub(tmp," --<<<<<","") --remove all " --<<<<<" --never found
      tmp = string.gsub(tmp," --<<<<","") --remove all " --<<<<"
      tmp = string.gsub(tmp," --<<<","") --remove all " --<<<"

      --handles '}' only
      if trim(tmp) == "}," then
        indentLevel = indentLevel - 1
      end

      if TableName == "FOREACH_SKW_GROUP" or TableName == "VALUE_CHANGE_TABLE" or TableName == "EXML_CHANGE_TABLE" or TableName == "MBIN_CHANGE_TABLE" or TableName == "MODIFICATIONS" then
        --for TABLE OF TABLES
        indentLevel = indentLevel - 2 --added
      end
      -- local addCRLF = ""
      -- if TableName == "EXML_CHANGE_TABLE" then
        -- addCRLF = "\n"
      -- end
      -- table.insert(outTable,string.rep("|  ",indentLevel - 2).."}, --<<<"..addCRLF)
      table.insert(outTable,string.rep(".  ",indentLevel - 2).."}, --<<<")

      -- if trim(tmp) == "}," then
        -- outTable[#outTable] = outTable[#outTable].."}, --<<<<<" --never used?
      -- else
        -- table.insert(outTable,string.rep("|  ",indentLevel - 1).."}, --<<<")
      -- end
      --END: handles '}' only
    end
    --***************************************************************************************************

    --***************************************************************************************************
    local function PostProcessing(outTable)
      --***************************************************************************************************
      local function concatenate_1(outTable,i)
        local ss = outTable[i]:sub(1,-1)
        -- print("ss = ["..ss.."]")
        local nextLine = false
        local line = i
        for j=i+1,#outTable do
          local tt = outTable[j]
          if tt:find("},",1,true) ~= nil then
            -- end of the table
            outTable[i] = ss:sub(1,-1).."},"
            -- blank the line
            outTable[j] = ""
            line = j
            break
          else
            -- all other lines
            ss = ss..tt:gsub(".  ",""):sub(1,-1)
            -- blank the line
            outTable[j] = ""
          end
        end
        return line
      end
      --***************************************************************************************************     
      
      --***************************************************************************************************
      local function concatenate_2(outTable,i)
        local ss = outTable[i]
        print("Blank ss = "..ss)
        outTable[i] = ""
        ss = ss.."\n"
        
        local nextLine = 1
        local secondEnd = 0
        local openCount = 0
        local line = i

        for j=i+1,#outTable do
          local tt = outTable[j]
          if tt:find("},",1,true) ~= nil then
            openCount = openCount - 1
            if openCount == 1 then
              secondEnd = secondEnd + 1
              if secondEnd == 2 then
                -- end of the table
                -- outTable[i] = ss --.."\n"
                line = j
                break
              end
            end

            -- blank the line
            print("Blank outTable[j] = "..outTable[j])
            outTable[j] = ""
          
          else 
            if tt:find("{  --+++",1,true) ~= nil then
                openCount = openCount + 1
                -- blank the line
                print("Blank tt = "..tt)
                outTable[j] = ""
            else              
              if nextLine%2 == 1 then
                print("tt1 = "..tt)
                local _,n = tt:gsub(".  ","")
                ss = ss..string.rep(".  ",n).."{"..tt:gsub(".  ",""):sub(1,-1)
                -- blank the line
                print("Blank outTable[j] = "..outTable[j])
                outTable[j] = ""
              else
                print("tt2 = "..tt)
                local crlf = ""
                if secondEnd == 0 then
                  crlf = "\n"
                end
                
                ss = ss..tt:gsub(".  ",""):sub(1,-1).."},"..crlf
                outTable[j] = ss
              end
              nextLine = nextLine + 1
            end
          end
        end
        return line
      end
      --***************************************************************************************************     

      local i = 1
      repeat
        local s = outTable[i]
        
        if s ~= "" then
          if s:find("SPECIAL_KEY_WORDS") ~= nil or s:find("SKW") ~= nil then
            i = concatenate_1(outTable,i)
          end
          if s:find("VALUE_CHANGE_TABLE") ~= nil or s:find("VCT") ~= nil then
            -- .  .  .  .  .  .  .  VALUE_CHANGE_TABLE = {
            -- .  .  .  .  .  .  .  .  {  --+++
            -- .  .  .  .  .  .  .  .  .  [[R]],
            -- .  .  .  .  .  .  .  .  .  0.88,
            -- .  .  .  .  .  .  .  .  }, --<<<
            -- .  .  .  .  .  .  .  .  {  --+++
            -- .  .  .  .  .  .  .  .  .  [[G]],
            -- .  .  .  .  .  .  .  .  .  0.94,
            -- .  .  .  .  .  .  .  .  }, --<<<
            -- .  .  .  .  .  .  .  .  {  --+++
            -- .  .  .  .  .  .  .  .  .  [[B]],
            -- .  .  .  .  .  .  .  .  .  0.2,
            -- .  .  .  .  .  .  .  .  }, --<<<
            -- .  .  .  .  .  .  .  }, --<<<

            -- .  .  .  .  .  .  .  VALUE_CHANGE_TABLE = {
            -- .  .  .  .  .  .  .  .  {[[R]],1.5,},
            -- .  .  .  .  .  .  .  .  {[[G]],1.5,},
            -- .  .  .  .  .  .  .  .  {[[B]],1.5,},
            -- .  .  .  .  .  .  .  }, --<<<
            -- i = concatenate_2(outTable,i)
          end
        end
        
        i = i + 1
      until i > #outTable
 
      -- refresh outTable
      local tmp = {}
      for i=1,#outTable do
        local s = outTable[i]
        if s ~= "" and s ~= nil then
          table.insert(tmp,s)
        end
      end
      
      return tmp
    end
    --***************************************************************************************************

    if _mSerializeScript == "Y" then
      -- this serialize ALL scripts, if allowed
      print(_zGREEN..">>> [INFO] Creating scriptname.serial.lua in ModScriptCheck folder, please wait...".._zDEFAULT)
      -- print("")
      -- print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
      local indentLevel = 1
      local outTable = {}
      local TableName = "NMS_MOD_DEFINITION_CONTAINER"

      SerializeLoadedScript(TableName,NMS_MOD_DEFINITION_CONTAINER,indentLevel,outTable,TableName)
      outTable = PostProcessing(outTable)
      
      outTable[#outTable] = string.sub(outTable[#outTable],1,-2) -- remove last ,

      local scriptFilenamePath = LoadFileData("CurrentModScript.txt")
      local scriptFilename = GetFilenameFromFilePath(scriptFilenamePath)

      WriteToFile(ConvertLineTableToText(outTable), [[..\ModScriptCheck\]]..string.sub(scriptFilename,1,-5)..[[.serial.lua]])
      -- for i=1,#outTable do
        -- print(outTable[i])
      -- end

      -- print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
      -- print("")
    end

    if _bScriptCounter == _bTotalNumberScripts then
      -- we are at the last script (or maybe this is the only script)
      -- this serialize only this script, if allowed
      if _mSERIALIZING == "Y" then
        print(_zGREEN..">>> [INFO] Serializing loaded script, please wait...".._zDEFAULT)
        local scriptTable = SerializeScript(NMS_MOD_DEFINITION_CONTAINER,true,"NMS_MOD_DEFINITION_CONTAINER")
        WriteToFile(ConvertLineTableToText(scriptTable), "..\\SerializedScript.lua")
      end
    end
    print(_zGREEN..">>> [INFO] Executing now...".._zDEFAULT)
    pv("["..Hash.."]")
    print("")

  else
    NMS_MOD_DEFINITION_CONTAINER = ""
    -- print("")
    -- print(status)
    print("XXXXX Error loading USER script! XXXXX")
    print("")
    WriteToFile("", "LoadScriptAndFilenamesERROR.txt")
    if status ~= nil then
      Report(LoadFileData("CurrentModScript.txt"),tostring(status))
    end

    -- local problemFound = false
    -- problemFound = AnalyzeScript(script,scriptFilename,scriptFilenamePath)

    -- if problemFound then
      -- print("")
      -- print(_zRED.."[NOTICE]   Some problem found by analyzing the script, it was MODIFIED to help pinpoint the problem".._zDEFAULT)
      -- print(_zRED.."          Please retry it!".._zDEFAULT)
      -- print("")
    -- end
  end

  return NMS_MOD_DEFINITION_CONTAINER,DelayedReportData,InternalFunctionProblem
end
--****************************  END: OpenUserScript()  **********************************************

--***************************************************************************************************
function LookAt_MOD_PAK_SOURCE_content(flag)
  print(flag)
  local temp_MOD_PAK_SOURCE = ParseTextFileIntoTable("MOD_PAK_SOURCE.txt")
  for i=1,#temp_MOD_PAK_SOURCE do
    print("   ["..temp_MOD_PAK_SOURCE[i].."]")
  end
end

--***************************************************************************************************
function TestScript(NMS_MOD_DEFINITION_CONTAINER,IsCOMBINE_MODS_flag)
  local MaxPakNameLength = _bMaxPakNameLength
  local skipCreatingPAK = false

  local MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_AUTHOR"]
  if MOD_tmp == nil then MOD_tmp = "" end
  WriteToFile(MOD_tmp, "MOD_AUTHOR.txt")

  MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["LUA_AUTHOR"]
  if MOD_tmp == nil then MOD_tmp = "" end
  WriteToFile(MOD_tmp, "LUA_AUTHOR.txt")

  MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_MAINTENANCE"]
  if MOD_tmp == nil then MOD_tmp = "" end
  WriteToFile(MOD_tmp, "MOD_MAINTENANCE.txt")

  local mod_filename = NMS_MOD_DEFINITION_CONTAINER["MOD_FILENAME"]
  if mod_filename == nil or mod_filename == "" then
    mod_filename = "GENERIC.pak"
    if type(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]) == "table" then
      print(_zRED.."    [WARNING] MOD_FILENAME not found, using 'GENERIC.pak' as name".._zDEFAULT)
      Report("","MOD_FILENAME not found, using 'GENERIC.pak' as name","WARNING")
    elseif gIsGlobalIndividual then
      print(_zRED.."    [NOTICE] MOD_FILENAME and EXML_CHANGE_TABLE not found, skipping pak creation".._zDEFAULT)
      Report("","MOD_FILENAME and EXML_CHANGE_TABLE not found, skipping pak creation","NOTICE")
      skipCreatingPAK = true
    end
  end

  if string.find(mod_filename,".pak",1,true) == nil then
    --no .pak found
    mod_filename = string.sub(mod_filename,1,MaxPakNameLength)
    mod_filename = mod_filename..".pak"
    print(_zRED.."    [NOTICE] Added .pak extension to MOD filename".._zDEFAULT)
    Report("","Added .pak extension to MOD filename","NOTICE")
  else
    local BeforeExt = string.find(mod_filename,".pak",1,true)
    --remove the ending .pakxxxx
    mod_filename = string.sub(mod_filename,1,BeforeExt - 1)
    mod_filename = string.sub(mod_filename,1,MaxPakNameLength)
    mod_filename = mod_filename..".pak"
  end
  
  if DEBUG_ON then assert(mod_filename ~= nil,"mod_filename is nil") end
  DEBUG_ScriptContent_print("mod_filename to MOD_FILENAME.txt = ["..mod_filename.."]")
  WriteToFile(mod_filename, "MOD_FILENAME.txt")

  local mod_batchname = NMS_MOD_DEFINITION_CONTAINER["MOD_BATCHNAME"]
  if mod_batchname == nil then
    mod_batchname = ""
  end
  
  if mod_batchname ~= "" and string.sub(mod_batchname,-4) ~= ".pak" then
    mod_batchname = string.sub(mod_batchname,1,MaxPakNameLength)
    mod_batchname = mod_batchname..".pak"
  else
    mod_batchname = string.sub(mod_batchname,1,#mod_batchname-4)
    mod_batchname = string.sub(mod_batchname,1,MaxPakNameLength)
    mod_batchname = mod_batchname..".pak"
  end
  
  if mod_batchname ~= ".pak" then
    print(">>> [INFO] Current 'MOD_BATCHNAME' set to ".._zGREEN.."["..mod_batchname.."]".._zDEFAULT)
    print("")
    Report(""," Current MOD_BATCHNAME set to ["..mod_batchname.."]")
    WriteToFile(mod_batchname, "MOD_BATCHNAME.txt")
  -- elseif gIsGlobalIndividual and not IsCOMBINE_MODS_flag then
    -- --clear BATCHNAME
    -- print("gIsGlobalIndividual = "..tostring(gIsGlobalIndividual))
    -- print("IsCOMBINE_MODS_flag = "..tostring(IsCOMBINE_MODS_flag))
    -- print(_zGREEN..">>> [INFO] Clearing 'MOD_BATCHNAME'".._zDEFAULT)
    -- Report(""," Clearing 'MOD_BATCHNAME'")
    -- WriteToFile("", "MOD_BATCHNAME.txt")
  end

  local NewMBIN_FILES = {}
  --***************************************************************************************************
  local function IsNewMBIN_File(NewMBIN_FILES,candidate)
    local answer = false
    for i=1,#NewMBIN_FILES do
      if candidate == NewMBIN_FILES[i] then
        answer = true
        break
      end
    end
    return answer
  end
  --***************************************************************************************************

  local MODIFICATIONS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"]
  local abortProcessing = false

  if MODIFICATIONS ~= nil then
    if type(MODIFICATIONS) ~= "table" then
      print(_zRED.."    [ATTENTION] MODIFICATIONS is not a table.  Check your script!".._zDEFAULT)
      Report("","MODIFICATIONS is not a table.  Check your script!","ATTENTION")
      abortProcessing = true
    else
      local WordWrap1 = "\n"
      local WordWrap2 = "\n"
      -- print("@@@ type(MODIFICATIONS) = "..type(MODIFICATIONS))
      -- print("@@@ #MODIFICATIONS = "..#MODIFICATIONS)

      if #MODIFICATIONS == 0 then
        print(_zRED.."    [ATTENTION] MODIFICATIONS table is empty OR not a table of sub-tables.  Check script...".._zDEFAULT)
        Report("","MODIFICATIONS table is empty OR not a table of sub-tables.  Check script...","ATTENTION")
        WriteToFile("", "MOD_MBIN_SOURCE.txt")
        WriteToFile("", "MOD_PAK_SOURCE.txt")
        --abortProcessing = true
      else
        for n=1,#MODIFICATIONS do
          if n == #MODIFICATIONS then WordWrap1 = "" end

          local ConflictTable = {}

          -- alias
          if MODIFICATIONS[n]["MBIN_CT"] ~= nil then
            MODIFICATIONS[n]["MBIN_CHANGE_TABLE"] = MODIFICATIONS[n]["MBIN_CT"]
          end

          local MBIN_CHANGE_TABLE = MODIFICATIONS[n]["MBIN_CHANGE_TABLE"]
          -- print("@@@ type(MBIN_CHANGE_TABLE) = "..type(MBIN_CHANGE_TABLE))
          -- print("@@@ #MBIN_CHANGE_TABLE = "..#MBIN_CHANGE_TABLE)

          if MBIN_CHANGE_TABLE == nil or type(MBIN_CHANGE_TABLE) ~= "table" then
            print(_zRED.."    [ATTENTION] MBIN_CHANGE_TABLE is not a table.  Check your script!".._zDEFAULT)
            Report("","MBIN_CHANGE_TABLE is not a table.  Check your script!","ATTENTION")
            MBIN_CHANGE_TABLE = {}
            abortProcessing = true
            break
          end

          if #MBIN_CHANGE_TABLE == 0 then
            print(_zRED.."    [ATTENTION] MBIN_CHANGE_TABLE is empty OR not a table of sub-tables.  Cannot process.  Check your script!".._zDEFAULT)
            Report("","MBIN_CHANGE_TABLE is empty OR not a table of sub-tables.  Cannot process.  Check your script!","ATTENTION")
            abortProcessing = true
          else
            for m=1,#MBIN_CHANGE_TABLE do
              -- alias
              if MBIN_CHANGE_TABLE[m]["MBIN_FS"] ~= nil then
                MBIN_CHANGE_TABLE[m]["MBIN_FILE_SOURCE"] = MBIN_CHANGE_TABLE[m]["MBIN_FS"]
              end

              local MBIN_FILE_SOURCE = MBIN_CHANGE_TABLE[m]["MBIN_FILE_SOURCE"]
              -- print("@@@ type(MBIN_FILE_SOURCE) = "..type(MBIN_FILE_SOURCE))
              -- print("@@@ #MBIN_FILE_SOURCE = "..#MBIN_FILE_SOURCE)

              if MBIN_FILE_SOURCE == nil or MBIN_FILE_SOURCE == "" then
                print(_zRED.."    [ATTENTION] MBIN_FILE_SOURCE is empty.  Check your script!".._zDEFAULT)
                Report("","MBIN_FILE_SOURCE is empty.  Check your script!","ATTENTION")
                MBIN_FILE_SOURCE = ""
                abortProcessing = true
                break
              end

              if type(MBIN_FILE_SOURCE) == "table" then

                if type(MBIN_FILE_SOURCE[1]) == "table" then
                  --alternate syntax #3: a table of sub-table(s) of STRINGs
                  pv("DETECTED a table of tables MBIN_FILE_SOURCE")
                  for k=1,#MBIN_FILE_SOURCE do
                    MBIN_FILE_SOURCE[k][1] = NormalizePath(MBIN_FILE_SOURCE[k][1])
                    MBIN_FILE_SOURCE[k][2] = NormalizePath(MBIN_FILE_SOURCE[k][2])
                    pv("Writing to MOD_MBIN_SOURCE.txt, MBIN_FILE_SOURCE["..k.."][1] "..MBIN_FILE_SOURCE[k][1])
                    table.insert(NewMBIN_FILES,MBIN_FILE_SOURCE[k][2])
                    if not IsNewMBIN_File(NewMBIN_FILES,MBIN_FILE_SOURCE[k][1]) then
                      if m==#MBIN_CHANGE_TABLE and n == #MODIFICATIONS and k==#MBIN_FILE_SOURCE then --last one of the table
                        WordWrap2 = ""
                      end
                      if n==1 and m==1 and k==1 then --first time only
                        WriteToFile(MBIN_FILE_SOURCE[k][1]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                      else
                        WriteToFileAppend(MBIN_FILE_SOURCE[k][1]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                      end
                    end
                  end

                else
                  --alternate syntax #2: a table of STRINGs
                  pv("DETECTED a normal MBIN_FILE_SOURCE table")
                  for k=1,#MBIN_FILE_SOURCE do
                    MBIN_FILE_SOURCE[k] = NormalizePath(MBIN_FILE_SOURCE[k])
                    pv("MBIN_FILE_SOURCE["..k.."] "..MBIN_FILE_SOURCE[k])

                    if not IsNewMBIN_File(NewMBIN_FILES,MBIN_FILE_SOURCE[k]) then
                      pv("Writing to MOD_MBIN_SOURCE.txt, MBIN_FILE_SOURCE[k] = "..MBIN_FILE_SOURCE[k])
                      if m==#MBIN_CHANGE_TABLE and n==#MODIFICATIONS and k==#MBIN_FILE_SOURCE then --last one of the table
                        WordWrap2 = ""
                      end
                      if n==1 and m==1 and k==1 then --first time only
                        WriteToFile(MBIN_FILE_SOURCE[k]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                      else
                        WriteToFileAppend(MBIN_FILE_SOURCE[k]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                      end
                    end
                  end
                end

              else
                --alternate syntax #1: a STRING
                pv("DETECTED MBIN_FILE_SOURCE as a string or nil")
                MBIN_FILE_SOURCE = NormalizePath(MBIN_FILE_SOURCE)
                if MBIN_FILE_SOURCE == nil or MBIN_FILE_SOURCE == "" then
                  print(_zRED.."    [ATTENTION] MBIN_FILE_SOURCE["..n.."]["..m.."] is empty.  Check your script".._zDEFAULT)
                  Report("","MBIN_FILE_SOURCE["..n.."]["..m.."] is empty.  Check your script!","ATTENTION")
                  MBIN_FILE_SOURCE = ""
                  abortProcessing = true
                else
                  pv("MBIN_FILE_SOURCE["..n.."]["..m.."] "..MBIN_FILE_SOURCE)
                end

                if not IsNewMBIN_File(NewMBIN_FILES,MBIN_FILE_SOURCE) then
                  pv("Writing to MOD_MBIN_SOURCE.txt, MBIN_FILE_SOURCE = "..MBIN_FILE_SOURCE)
                  if m==#MBIN_CHANGE_TABLE and n==#MODIFICATIONS then
                    WordWrap2 = ""
                  end
                  if n==1 and m==1 then --first time only
                    WriteToFile(MBIN_FILE_SOURCE..WordWrap2,"MOD_MBIN_SOURCE.txt")
                  else
                    WriteToFileAppend(MBIN_FILE_SOURCE..WordWrap2,"MOD_MBIN_SOURCE.txt")
                  end
                end
              end
            end
          end
        end
      end

      if not abortProcessing then
        --CleanUP MOD_MBIN_SOURCE.txt
        local MBIN_SOURCE = ParseTextFileIntoTable("MOD_MBIN_SOURCE.txt")
        for i=1,#MBIN_SOURCE do
          for j=i+1,#MBIN_SOURCE do
            if MBIN_SOURCE[i] == MBIN_SOURCE[j] then
              MBIN_SOURCE[j] = ""
            end
          end
        end

        local MBIN_SOURCE_temp = {}
        for i=1,#MBIN_SOURCE do
          if MBIN_SOURCE[i] ~= "" then
            table.insert(MBIN_SOURCE_temp,MBIN_SOURCE[i])
          end
        end
        WriteToFile(ConvertLineTableToText(MBIN_SOURCE_temp),"MOD_MBIN_SOURCE.txt")

        -- print("__________________________________________")
        --check PAK_SOURCE for each MBIN_FILE_SOURCE
        local MODS_pak_list = ParseTextFileIntoTable("MODS_pak_list.txt")
        -- print("MODS_pak_list = "..#MODS_pak_list)

        local MBIN_Source = ParseTextFileIntoTable("MOD_MBIN_SOURCE.txt")
        for i=1,#MBIN_Source do
          local TempMBIN = MBIN_Source[i]
          local found = false
          --check if this file is already in MODBUILDER\MOD
          local TempEXML = string.gsub(MBIN_Source[i],[[.MBIN.PC]],[[.MBIN]])
          TempEXML = string.gsub(TempEXML,[[.MBIN]],[[.EXML]])
          if IsFileExist([[.\MOD\]]..TempEXML) then
            found = true
          else
            TempMBIN = string.gsub(MBIN_Source[i],[[\]],[[/]])
            for j=1,#MODS_pak_list do
              -- print("["..MODS_pak_list[j].."]")
              if trim(MODS_pak_list[j]) == "FROM MODS" then
                -- print(">>> break on FROM MODS")
                break
              else
                if string.find(MODS_pak_list[j],TempMBIN,1,true) ~= nil then
                  --this MBIN is in one of the ModScript paks
                  -- print(">>> Found "..TempMBIN.." in MODS_pak_list.txt at "..j)
                  found = true
                  break
                end
              end
            end
          end

          if not found then
            --this MBIN is not in any of the ModScript paks
            local found,Pak_File = LocateMOD_PAK_SOURCE(MBIN_Source[i])
            -- print("this "..Pak_File)
            if not found then
              print(_zRED.."[WARNING] NMS PAK not found for ["..MBIN_Source[i].."]. Check your file path/name!".._zDEFAULT)
              Report("","NMS PAK not found for ["..MBIN_Source[i].."]. Check your file path/name!","WARNING")
              abortProcessing = true
            end
          end
        end

        --LookAt_MOD_PAK_SOURCE_content("- BBBBB before cleanup")
        --CleanUP MOD_PAK_SOURCE.txt
        local PAK_Source = ParseTextFileIntoTable("MOD_PAK_SOURCE.txt")
        for i=1,#PAK_Source do
          for j=i+1,#PAK_Source do
            if PAK_Source[i] == PAK_Source[j] then
              PAK_Source[j] = ""
            end
          end
        end

        local PAK_Source_temp = {}
        for i=1,#PAK_Source do
          if PAK_Source[i] ~= "" then
            table.insert(PAK_Source_temp,PAK_Source[i])
          end
        end

        WriteToFile(ConvertLineTableToText(PAK_Source_temp),"MOD_PAK_SOURCE.txt")

        --LookAt_MOD_PAK_SOURCE_content("- AAAAA finally")
      end
    end
  else
    --MODIFICATIONS == nil
  end

  if abortProcessing then
    WriteToFile("", "MOD_MBIN_SOURCE.txt")
    WriteToFile("", "MOD_PAK_SOURCE.txt")
    -- WriteToFile("", "MOD_FILENAME.txt")
  end

  return abortProcessing,skipCreatingPAK,DelayedReportData,mod_filename
end --TestScript(NMS_MOD_DEFINITION_CONTAINER,IsCOMBINE_MODS_flag)

-- --***************************************************************************************************
-- function GetRelPathToScript(scriptPath)
  -- --we only keep the path where the script came from
  -- local IsSubFolder = false
  -- local scriptSourcePath = getPath(scriptPath)
  -- if scriptSourcePath == nil then
    -- scriptSourcePath = ""
    -- IsSubFolder = true
  -- end
-- -- print("X: GetRelPathToScript:          === FOR bScriptName = ["..scriptPath.."]")
-- -- print("X: GetRelPathToScript:          === FOR scriptSourcePath = ["..[[..\ModScript\]]..scriptSourcePath.."]")
  -- return [[..\ModScript\]]..scriptSourcePath,IsSubFolder
-- end

-- ****************************************************
function CreateCompositeName(start,last)
  -- Windows accepts a max of 260 char for drive/path/filename/ext length
  -- NMS accepts only 110 char + .pak = 114
  -- we need to leave room for '_(9)' so 110-4 = 106 + .pak
  local MaxPakNameLength = _bMaxPakNameLength

  local allNames = ""
  for m=start,last do
    local s = gModScriptLuaDirList[m][1]
    local RelPathToScript = GetRelPathToScript(s)

    --may not work with every folder name due to pattern not escaped
    --local cleanScriptName = string.gsub(s,RelPathToScript,"")
    local cleanScriptName = string.sub(s,string.len(RelPathToScript)+1)
    allNames = allNames..cleanScriptName.."+"
    -- print("Y: s = ["..s.."]")
    -- print("Y: RelPathToScript = ["..RelPathToScript.."]")
    -- print("Y: cleanScriptName = ["..cleanScriptName.."]")

    if string.len(allNames) > MaxPakNameLength then
      break
    end
  end

  allNames = string.gsub(allNames,".lua","") --removes .lua from all script names
  allNames = string.sub(allNames,1,-2) --removes the last +
  -- print("Y: allNames = ["..allNames.."]")

  --reset Composite_MOD_FILENAME
  DEBUG_ScriptContent_print("Resetting Composite_MOD_FILENAME.txt")
  local filename = [[Composite_MOD_FILENAME.txt]]
  os.remove(filename)

  allNames = string.sub(allNames,1,MaxPakNameLength)
  DEBUG_ScriptContent_print("new Composite_MOD_FILENAME = ["..allNames.."]")
  WriteToFileAppend(allNames..".pak",filename)
end
-- ****************************************************

--***************************************************************************************************
function ProcessScript(NMS_MOD_DEFINITION_CONTAINER,Multi_pak,_bScriptName,IsCOMBINE_MODS_flag,IsFirstCOMBINE_MODS_flag,IsEndCOMBINE_MODS_flag)
  local gIs_FULL_MODE = gIs_FULL_MODE
  local gIs_DEV_MODE = gIs_DEV_MODE
  local gIs_LEAN_MODE = gIs_LEAN_MODE

  --Wbertro
  --edge case involving combining and a certain type of scripts
  --need to signal GetFreshSources to threat REMOVE files differently
  --   if REMOVE, open fresh copy in ALT folder
  --   if REMOVE, file in ALT is to be used by TestScript above then deleted

  -- print(">>> [INFO] Checking MBIN_FILE_SOURCE validity...")
  print(">>> [INFO] Checking CONTAINER validity...")
  abortProcessing,skipCreatingPAK,DelayedReportData,mod_filename = TestScript(NMS_MOD_DEFINITION_CONTAINER,IsCOMBINE_MODS_flag)

  local MODIFICATIONS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"]
  local ADD_FILES = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
    
  if not abortProcessing then
    print(">>>        Able to process CONTAINER")

    if MODIFICATIONS ~= nil or ADD_FILES ~= nil then
      local global_integer_to_float = NMS_MOD_DEFINITION_CONTAINER["GLOBAL_INTEGER_TO_FLOAT"]

      -- _bGlobalCOMBINE_MODS:
      --    in general, a mod is named by the script MOD_FILENAME field
      --       in CreatedModPAKs and Builds: modname.pak.author
      --       in Builds\IncrementalBuilds: modname_(x).pak.author

      -- == 0, an Individual mod => modname == script MOD_FILENAME (modname.pak)
      --       or, if a patch mod, modname == PatchMod.pak
      -- == 1, a generic combined mod with the current DATE-TIME suffix: modname == CombinedMod_DATE-TIME.pak
      -- == 2, a distinct combined mod with a NUMERIC suffix: modname == CombinedMod_(x).pak
      -- == 3, a COMPOSITE combined mod with the name being like: modname == Mod1+Mod2+Mod3.pak

      --we do this for each script in the combined pak
      if gIsGlobalCombine or IsCOMBINE_MODS_flag then
        
        WriteToFileAppend("\n=====================\n",[[COMBINED_CONTENT_LIST.txt]])
        WriteToFileAppend("Original information:\n",[[COMBINED_CONTENT_LIST.txt]])

        WriteToFileAppend("    SCRIPT NAME: ".._bScriptName.."\n",[[COMBINED_CONTENT_LIST.txt]])

        local MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_FILENAME"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("   MOD FILENAME: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_BATCHNAME"]
        if MOD_tmp ~= nil then
          WriteToFileAppend("   MOD BATCHNAME: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])
        end

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_AUTHOR"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("     MOD AUTHOR: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["LUA_AUTHOR"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("     LUA AUTHOR: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_MAINTENANCE"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("MOD MAINTENANCE: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["MOD_DESCRIPTION"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("MOD DESCRIPTION: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])

        MOD_tmp = NMS_MOD_DEFINITION_CONTAINER["NMS_VERSION"]
        if MOD_tmp == nil then
          MOD_tmp = "Unknown"
        end
        WriteToFileAppend("    NMS VERSION: "..MOD_tmp.."\n",[[COMBINED_CONTENT_LIST.txt]])
      end

      -- *****************   global_integer_to_float section   ********************
      global_integer_to_float = ReturnStringFrom(global_integer_to_float)
      global_integer_to_float = string.upper(global_integer_to_float)

      local IsGlobalInteger_to_floatDeclared = (global_integer_to_float ~= "")
      local IsGlobalInteger_to_floatPRESERVE = (global_integer_to_float == "PRESERVE")
      local IsGlobalInteger_to_floatFORCE = (global_integer_to_float == "FORCE")

      if IsGlobalInteger_to_floatDeclared then
        -- print("")
        -- print(_zRED..[[>>> [NOTICE] GLOBAL_INTEGER_TO_FLOAT is "]]..global_integer_to_float..[["]].._zDEFAULT)
        -- Report(global_integer_to_float,[[>>> GLOBAL_INTEGER_TO_FLOAT is]],"NOTICE")
      end

      if IsGlobalInteger_to_floatDeclared and not (IsGlobalInteger_to_floatPRESERVE or IsGlobalInteger_to_floatFORCE) then
        print(_zRED..[[>>> [WARNING] GLOBAL_INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]].._zDEFAULT)
        Report(global_integer_to_float,[[>>> GLOBAL_INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]],"WARNING")

        global_integer_to_float = "" --not used until corrected
      end
      -- *****************   END: global_integer_to_float section   ********************

      print("--------------------------------------------------------------------------------------")

      if MODIFICATIONS ~= nil and #MODIFICATIONS ~= 0 then
        -- @@@@ GETFRESHSOURCES.bat @@@@
        Report_flush()
        if os.execute([[cmd /c GetFreshSources.bat]]) == nil then
          print(_zRED.."    [ERROR] GetFreshSources.bat ended unexpectedly".._zDEFAULT)
          table.insert(gModScriptFailed,_bScriptName..": GetFreshSources.bat ended unexpectedly")
        end
        --reset
        LuaStarting()
      end

      -- @@@@ SCRIPT PROCESSING @@@@
      HandleModScript(NMS_MOD_DEFINITION_CONTAINER,Multi_pak,global_integer_to_float)

      if CustomDateTimeFormat then
        print("")
        print(_zRED..">>> [INFO] ".._zDEFAULT.._zGREEN.."Using custom DateTime format!".._zDEFAULT)
        Report("")
        Report("","Using custom DateTime format!")
      end

      -- @@@@ CREATE MOD @@@@

      --***************************************************************************************************
      local function CreateMod(_bScriptName,NMS_MOD_DEFINITION_CONTAINER)
        Report()
        Report("","Starting final MBINCompiler and PAK phase...")
        Report()

        print("")
        print(">>>  Compiling EXML file(s) in MOD folder")
        print(">>>  MBINCompiler working...")

        local useCreateMod_bat = true
        local _,nV = GetMBINCompilerVersion(gCurrentMBINCompilerPath)
        if nV >= 3.8401 then
          --using new code
          useCreateMod_bat = false
        end

        if useCreateMod_bat then
          --do PREVIOUS code for older MBINCompiler
          os.execute([[cmd /c CreateMod.bat]])
          --reset
          LuaStarting()

        else
          -- XXXXXXXXXXXXXXXX  MBINCompiler.exe  XXXXXXXXXXXXXXXXXX
          if WDEBUG then WaitForAnyKey("Just before calling MBINCompiler_C, press key...") end
          local status,result = MBINCompiler_C([[.\MOD]],gIs_LEAN_MODE)

          if status ~= "OK" then
            print(_zRED.."@@@ MBINCompiler reported ERRORs...".._zDEFAULT)
            local scriptName = _bScriptName
            if IsCOMBINE_MODS_flag or gIsGlobalCombine then
              -- generic message
              scriptName = "Check Report"
            end
            table.insert(gModScriptFailed,scriptName..[[: Failed to compile some/all files in MODBUILDER\MOD]])
          end

          --always check the log
          arg[1] = "..\\" -- path to REPORT.lua
          arg[2] = "" -- path to MODBUILDER
          arg[3] = "Compiling" -- a message
          dofile("CheckMBINCompilerLOG.lua")

          -- --was MBINCompiler_error.txt
          -- if IsFileExist("FailedScriptList.txt") then
            -- local MBINCompilerFailedMsg = ParseTextFileIntoTable("FailedScriptList.txt")
            -- for i=1,#MBINCompilerFailedMsg do
              -- table.insert(gModScriptFailed,_bScriptName..": MBINCompiler failed to produce file: "..MBINCompilerFailedMsg[i])
            -- end
          -- end

          --***************** MBINCOMPILER is DONE ***************************

          --we should be able to get these from the CONTAINER
          --    see TestScript()
          --may have to pre-process the info
          local _cMOD_AUTHOR = NMS_MOD_DEFINITION_CONTAINER["MOD_AUTHOR"]
          if _cMOD_AUTHOR == nil then _cMOD_AUTHOR = "" end
          if string.sub(_cMOD_AUTHOR,1,1) == "+" then
            --we will use it in the final mod name, '+' becomes '.'
            _cMOD_AUTHOR = string.gsub(_cMOD_AUTHOR,"%+",".",1)
          else
            _cMOD_AUTHOR = ""
          end

          local _cMOD_FILENAME = mod_filename
          DEBUG_ScriptContent_print("A: _cMOD_FILENAME = [".._cMOD_FILENAME.."]")
          -- _bGlobalCOMBINE_MODS:
          --    in general, a mod is named by the script MOD_FILENAME field
          --       in CreatedModPAKs and Builds: modname.pak.author
          --       in Builds\IncrementalBuilds: modname_(x).pak.author

          -- == 0, treat as an Individual mod => modname == script MOD_FILENAME (modname.pak)
          --       or, if a patch mod, modname == PatchMod.pak
          -- == 1, treat as a generic combined mod with the current DATE-TIME suffix: modname == CombinedMod_DATE-TIME.pak
          -- == 2, treat as a distinct combined mod with a NUMERIC suffix: modname == CombinedMod_(x).pak
          -- == 3, treat it as an Individual mod, a COMPOSITE combined mod with the name being like: modname == Mod1+Mod2+Mod3.pak

          if IsCOMBINE_MODS_flag then
            _cMOD_AUTHOR = "" --no author for all other types
          else
            if gIsGlobalIndividual then
              _cMOD_FILENAME = _cMOD_FILENAME
            else
              _cMOD_AUTHOR = "" --no author for all other types
            end
          end

          local _cName = "CombinedMod_" --default name
          if IsPATCH then
            -- it is a patch if (PAK_MBIN defined and #SCRIPT > 0)
            -- PAK_MBIN is defined if (#PAK > 0 or #MBIN > 0)
            _cName = "PatchMod"
            if _bCOPYtoNMS == "SOME" then
              _bCOPYtoNMS = "ALL"
            end
            if gIsGlobalIndividual then
              _cMOD_FILENAME = _cName..".pak"
            end
          end
          
          if IsCOMBINE_MODS_flag then
            _cMOD_FILENAME = LoadFileData("Composite_MOD_FILENAME.txt")
          elseif gIsGlobalCombine then
            if _bGlobalCOMBINE_MODS == 1 then _cMOD_FILENAME = _cName.."_".._cDateTime..".pak" end
            if _bGlobalCOMBINE_MODS == 2 then _cMOD_FILENAME = _cName..".pak" end
            if _bGlobalCOMBINE_MODS == 3 then _cMOD_FILENAME = LoadFileData("Composite_MOD_FILENAME.txt") end
          end
          
          local _cMOD_BATCHNAME = LoadFileData("MOD_BATCHNAME.txt")
          if _cMOD_BATCHNAME ~= "" then
            if _bTotalNumberScripts > 1 then
              _cMOD_FILENAME = _cMOD_BATCHNAME
            end
          end
          
          DEBUG_ScriptContent_print("Before get list of files in MODBUILDER\\MOD")
          -- check in MOD if we really have something to pak beside the script
          local fileList = {}
          fileList = ListDir(fileList,[[.\MOD]],nil,true,false)
          local sFileList = table.concat(fileList)

          DEBUG_ScriptContent_print("After getting list of files in MODBUILDER\\MOD")
          -- first one of these EXT found, we are ok to create pak
          local searchFor = {".MBIN",".DDS",".WEM",".BIN",".JSON",".H",".FNT",".MXML",".PNG",".TTC",".TTF",".XML",".CVS"}
          local foundFilesTopak = false
          for i=1,#searchFor do
            local _,n = string.gsub(sFileList,searchFor[i],"",1)
            if n > 0 then
              foundFilesTopak = true
              break
            end
          end
          -- END: check in MOD if we really have something to pak beside the script

          if not foundFilesTopak then
            print("")
            print(_zBLACKonYELLOW.." [NOTICE] Nothing to pak. Not creating pak file for this script ".._zDEFAULT)
            print(_zBLACKonYELLOW.."          Make sure all your file extensions are UPPERCASE ".._zDEFAULT)
            Report("","Nothing to pak. Not creating pak file for this script","NOTICE")
            Report("",".         Make sure all your file extensions are UPPERCASE")
            Report()

          else --foundFilesTopak
            -- @@@@ _cMOD_FILENAME == modname.pak @@@@

            local _cDestination = [[..\Builds\IncrementalBuilds]]
            local _cFilename = string.gsub(_cMOD_FILENAME,".pak","")
            -- @@@@ _cFilename == modname @@@@
            DEBUG_ScriptContent_print("B: _cMOD_FILENAME = [".._cMOD_FILENAME.."]")
            DEBUG_ScriptContent_print("B: _cFilename = [".._cFilename.."]")

            -- ***** handle IncrementalBuilds maxIncrementalBuilds versions
            --    rename all others paks from 1->maxIncrementalBuilds to 0->maxIncrementalBuilds-1
            local maxIncrementalBuilds = 9
            local nextFilenameNum = maxIncrementalBuilds

            -- print("current dir = ["..lfs.currentdir().."]")
            local newestFilename = _cDestination..[[\]].._cFilename.."_("..maxIncrementalBuilds..").pak".._cMOD_AUTHOR
            if IsFileExist(newestFilename) then
              --we need to delete (0) and move all others down 9->0
              --to make room for the new (9)
              DeleteFile(_cFilename.."_("..maxIncrementalBuilds..").pak".._cMOD_AUTHOR)
              for i=0,maxIncrementalBuilds-1 do
                local nextFilename = _cDestination..[[\]].._cFilename..[[_(]]..(i+1)..[[).pak]].._cMOD_AUTHOR
                -- print("   nextFilename = ["..nextFilename.."]")
                if IsFileExist(nextFilename) then
                  DeleteFile(_cFilename..[[_(]]..i..[[).pak]].._cMOD_AUTHOR)
                  local cmd = [[ren ]]..nextFilename..[[ "]].._cFilename..[[_(]]..i..[[).pak]].._cMOD_AUTHOR..[[" 1>NUL 2>NUL]]
                  -- print("cmd = ["..cmd.."]")
                  NewThread(cmd)
                else
                  break
                end
              end
            else
              -- print("["..newestFilename.."] does not exist")
              --we just need to find the last one
              nextFilenameNum = 0
              for i=maxIncrementalBuilds-1,0,-1 do
                local nextFilename = _cDestination..[[\]].._cFilename..[[_(]]..i..[[).pak]].._cMOD_AUTHOR
                -- print("   nextFilename = ["..nextFilename.."]")
                if IsFileExist(nextFilename) then
                  -- print("                  exist")
                  nextFilenameNum = i + 1
                  break
                -- else
                  -- print("                  does not exist")
                end
              end
            end
            -- print("B: nextFilenameNum = ["..nextFilenameNum.."]")

            -- ***** END: handle IncrementalBuilds maxIncrementalBuilds versions

            local pakDestPathFromMODfolder = [[..\]].._cDestination
            DEBUG_ScriptContent_print(" pakDestPathFromMODfolder = ["..pakDestPathFromMODfolder.."]")

            local pakFilename = _cFilename..[[.pak]].._cMOD_AUTHOR
            local pakFilenameInc = _cFilename..[[_(]]..nextFilenameNum..[[).pak]].._cMOD_AUTHOR
            -- print("    pakFilename = ["..pakFilename.."]")
            -- print(" pakFilenameInc = ["..pakFilenameInc.."]")

            print("")
            -- ****************  psarc creates the mod pak in Builds\IncrementalBuilds  *****************
            local silent = gIs_LEAN_MODE
            local status = psarc_CL("CREATE",pakDestPathFromMODfolder,pakFilenameInc,silent)
            if status ~= "OK" then
              print(_zRED.."@@@ psarc reported: "..status.._zDEFAULT)
              table.insert(gModScriptFailed,_bScriptName..[[: Failed to pack files in MODBUILDER\MOD]])
            end
            -- @@@@ END: psarc.exe CREATE from MOD @@@@
            print("")

            -- _bGlobalCOMBINE_MODS:
            --    in general, a mod is named by the script MOD_FILENAME field
            --       in CreatedModPAKs and Builds: modname.pak.author
            --       in Builds\IncrementalBuilds: modname_(x).pak.author

            -- == 0, treat as an Individual mod => modname == script MOD_FILENAME (modname.pak)
            --       or, if a patch mod, modname == PatchMod.pak
            -- == 1, treat as a generic combined mod with the current DATE-TIME suffix: modname == CombinedMod_DATE-TIME.pak
            -- == 2, treat as a distinct combined mod with a NUMERIC suffix: modname == CombinedMod_(x).pak
            -- == 3, treat it as an Individual mod, a COMPOSITE combined mod with the name being like: modname == Mod1+Mod2+Mod3.pak

            -- source is from Builds\IncrementalBuilds
            local source = _cDestination..[[\]]..pakFilenameInc

            local param = [[/s /y /h /v /j]] --with folders and sub-folders
            if _bGlobalCOMBINE_MODS == 2 and not IsCOMBINE_MODS_flag then --like CombinedMod_(x).pak
              DEBUG_ScriptContent_print("A: saving Content for distinct")
              DEBUG_ScriptContent_print("A: pakFilename = ["..pakFilename.."]")
              -- Mod pak content required when distinct combined
              CopyFile(source,[[..\Builds\]]..pakFilename..[[*]],param)
              CopyFile("COMBINED_CONTENT_LIST.txt",[[..\Builds\]]..pakFilename..[[_content.txt]]..[[*]],param)

              --always copy to CreatedModPAKs
              CopyFile(source,[[..\CreatedModPAKs\]]..pakFilename..[[*]],param)
              CopyFile("COMBINED_CONTENT_LIST.txt",[[..\CreatedModPAKs\]]..pakFilename..[[_content.txt]]..[[*]],param)
              
              if IsFileExist([[..\Builds\]]..pakFilename) then
                Report("","Created this PAK: [["..pakFilename.."]]")
              end
              
            else --Individual or combined mods type 0, 1 or 3 or IsCOMBINE_MODS_flag
              DEBUG_ScriptContent_print("B: saving Content for Individual, Patch, Generic, Composite or FLAG combine")
              local destFilename = _cMOD_FILENAME.._cMOD_AUTHOR
              DEBUG_ScriptContent_print("B: destFilename = ["..destFilename.."]")

              CopyFile(source,[[..\Builds\]]..destFilename..[[*]],param)
              CopyFile(source,[[..\CreatedModPAKs\]]..destFilename..[[*]],param)

              if _bGlobalCOMBINE_MODS == 1 or _bGlobalCOMBINE_MODS == 3 or IsCOMBINE_MODS_flag then
                -- Mod pak content required when combined
                CopyFile("COMBINED_CONTENT_LIST.txt",[[..\Builds\]]..destFilename..[[_content.txt]]..[[*]],param)
                CopyFile("COMBINED_CONTENT_LIST.txt",[[..\CreatedModPAKs\]]..destFilename..[[_content.txt]]..[[*]],param)
              end

              if IsFileExist([[..\Builds\]]..destFilename) then
                Report("","Created this PAK: [["..destFilename.."]]")
              end
              
            end

            --***** COPYING or NOT to MODS *****
            -- print("__---__ COPYtoNMS: [".._bCOPYtoNMS.."]")
            if _bCOPYtoNMS ~= "NONE" then
              local destFolder = gNMS_MODS_FOLDER
              if _bCOPYtoNMS == "ALL" then
                -- enabling MODS in NMS
                DeleteFile(gNMS_PCBANKS_FOLDER_PATH.."DISABLEMODS.TXT")

                CopyFile([[..\CreatedModPAKs\*.*]],destFolder..[[*]],param)

                --if _bTotalNumberPAKs > 0 then
                if IsPATCH then
                  print("")
                  print(_zGREEN..">>> PATCH mod: copying original PAK to NMS MOD folder...".._zDEFAULT)
                  print("")

                  local scriptSourcePath = gPathToModScriptFromModbuilder..GetRelPathToScript(_bScriptName)

                  local param = [[/y /h /v /j]] --no /s (no folders and sub-folders)

                  for i=1,#gModScriptPakDirList do
                    CopyFile(scriptSourcePath..gModScriptPakDirList[i],destFolder..[[*]],param)
                    DEBUG_ScriptContent_print("D: gModScriptPakDirList["..i.."] = ["..scriptSourcePath..gModScriptPakDirList[i].."]")
                  end
                end

                print("")
                print(_zGREEN..">>> Copying this PAK to NMS MOD folder...".._zDEFAULT)
                print("")
                Report("","Copied this PAK to NMS MOD folder...")

              elseif _bCOPYtoNMS == "SOME" and not IsCOMBINE_MODS_flag then
                local answer = Choice(_zRED.." ??? Would you like to copy this created pak to your game folder and delete [DISABLEMODS.TXT] ".._zDEFAULT,"yn")
                if answer == "Y" then
                  -- print(_zGREEN..">>> Copying PAK to NMS MOD folder...".._zDEFAULT)
                  -- Report("","Copied PAK to NMS MOD folder...")

                  -- enabling MODS in NMS
                  DeleteFile(gNMS_PCBANKS_FOLDER_PATH.."DISABLEMODS.TXT")

                  print("")
                  print(_zGREEN..">>> Copying this PAK to NMS MOD folder...".._zDEFAULT)
                  print("")
                  Report("",[[Copied this PAK to NMS MOD folder]])

                  if _bGlobalCOMBINE_MODS == 2 then -- CopyCOMBINEDDISTINCTMODS
                    CopyFile([[..\CreatedModPAKs\]]..pakFilenameInc,destFolder..[[*]],param)
                    CopyFile([[..\CreatedModPAKs\]]..pakFilenameInc..[[_content.txt]],destFolder..[[*]],param)
                  else
                    CopyFile([[..\CreatedModPAKs\]]..pakFilename,destFolder..[[*]],param)
                    CopyFile([[..\CreatedModPAKs\]]..pakFilename..[[_content.txt]],destFolder..[[*]],param)
                  end
                end
              end --elseif _bCOPYtoNMS == "SOME" and not IsCOMBINE_MODS_flag then

            end  --if _bCOPYtoNMS ~= "NONE" then
          end --if not foundFilesTopak then
        end --if useCreateMod_bat then
      end
      --******************************** END: CreateMod() *************************************************************

      if gIsGlobalIndividual and not IsCOMBINE_MODS_flag then
        -- an Individual mod
        -- create mod after each script is processed
        if not skipCreatingPAK then
          print(_zRED..">>> [INFO] ".._zGREEN.."Building MOD pak now...".._zDEFAULT)

          CreateMod(_bScriptName,NMS_MOD_DEFINITION_CONTAINER)

        else
          print(_zRED..">>> [INFO] Skipping Building MOD pak, no EXML_CHANGE_TABLE to process".._zDEFAULT)
          print("")
          Report("","Skipping MOD pak creation, no EXML_CHANGE_TABLE to process")
        end

        if not skipCreatingPAK then
          Report("")
          Report("","Ending MBIN/PAK phase...")
        end

      elseif _bScriptCounter == _bTotalNumberScripts or IsEndCOMBINE_MODS_flag then
        --_bTotalNumberScripts is OK to use for global combine
        --otherwise, if a local folder combine, it must be the last script in this folder
        -- all other types of mod: (generic in name), (distinct in name) and Mod1+Mod2+Mod3.pak type mods
        print(_zRED..">>> [INFO] Reached LAST script of Combined Mod: ".._zGREEN.."Building MOD pak now...".._zDEFAULT)

        CreateMod(_bScriptName,NMS_MOD_DEFINITION_CONTAINER)

        Report("")
        Report("","Ending MBIN/PAK phase...")

      --*****************************************
      else
        print(_zRED..">>> [INFO] Combined Mod ACTIVE: ".._zGREEN.."Delaying Building MOD pak...".._zDEFAULT)
        print("")
        Report("","Combined Mod ACTIVE: Delaying Building MOD pak...")
      end
    end

  else
    --on abortProcessing
    print(_zRED..">>> [INFO] Processing aborted...".._zDEFAULT)
    Report("","Processing aborted...")
    table.insert(gModScriptFailed,_bScriptName..": Problem while testing script")

    WriteToFile("", "MOD_FILENAME.txt")
  end
end --ProcessScript(NMS_MOD_DEFINITION_CONTAINER,Multi_pak,_bScriptName,IsCOMBINE_MODS_flag,IsEndCOMBINE_MODS_flag)
--################  end ProcessScript  ###############################

-- ****************************************************
function SetupGENERIC_lua()
  local DoThis = true

  if _bTotalNumberScripts == 0 then
    print(_zGREEN.."  No script found and one or more EXMLs are in ModScript: Creating a generic script...".._zDEFAULT)
    _bTotalNumberScripts = _bTotalNumberScripts + 1
  -- elseif IsFileExist(gPathToModScriptFromModbuilder..[[\GENERIC.lua]]) then
    -- print(_zGREEN.."  One or more EXMLs are in ModScript: Re-creating a generic script...".._zDEFAULT)
  else
    --at least one script and no GENERIC.lua
    --we assume we don't need GENERIC.lua
    DoThis = false
  end

  if DoThis then
    local generic = ParseTextFileIntoTable([[GENERIC_template.lua]])
    for i=1,#generic do
      if string.find(generic[i],"MBIN_FILE_SOURCE",1,true) ~= nil then
        --get all EXML in ModScript with path
        gModScriptEXMLDirList = GetFilesWithExt(".EXML")

        local insertAfterLine = i + 2

        for j=1,#gModScriptEXMLDirList do
          local tmp = string.gsub(gModScriptEXMLDirList[j],".EXML",".MBIN")
          table.insert(generic,insertAfterLine,[["]]..tmp..[[",]])
          insertAfterLine = insertAfterLine + 1
        end
        break
      end
    end
    WriteToFile(ConvertLineTableToText(generic),gPathToModScriptFromModbuilder..[[\GENERIC.lua]])

    --refresh Script List
    gModScriptLuaDirList = GetFilesWithExt(".lua")

    _bTotalNumberScripts = #gModScriptLuaDirList
  end
end --SetupGENERIC_lua()

-- ****************************************************
function pre_processScripts()

  -- gModScriptLuaDirList[i][x] comes from
  --      gScriptList[i][1]: filename and path
  --      gScriptList[i][2]: path string -- folderTooDeep
  --      gScriptList[i][3]: bool -- pathTooLong
  --      gScriptList[i][4]: string -- auto-combine
  --      gScriptList[i][5]: bool -- MEFTI exist

  print("")
  print(">>> Number of scripts to build: ".._bTotalNumberScripts.." ('*' indicates that MEFTI is present)")

  --****************************  list scripts to process  *********************
  print("")
  local cutPoint = string.len(gMASTER_FOLDER_PATH..[[ModScript\]])
  for i=1,#gModScriptLuaDirList do
    local IsMEFTI = gModScriptLuaDirList[i][5]
    local MEFTIindicator = " "
    if IsMEFTI then
      MEFTIindicator = "*"
    end
    local typeLen = string.len(gModScriptLuaDirList[i][4])
    local spacer = ""
    if typeLen == 1 then
      spacer = " "
    end
    
    local size = string.len(tostring(#gModScriptLuaDirList))
    print("    - "..string.format([[%]]..size..[[u]],i).." <"..MEFTIindicator..gModScriptLuaDirList[i][4]..spacer.."> ["..string.sub(trim(gModScriptLuaDirList[i][1]),cutPoint + 1).."]")
  end
  --****************************  END: list scripts to process  *********************

  if gIsGlobalCombine then
    -- we need to clean IsMEFTIexist_flag for all 'M' and 'Z'
    --   so we do not need to copy MEFTI files more than once
    for i=1,_bTotalNumberScripts do
      if gModScriptLuaDirList[i][4] == "M" or gModScriptLuaDirList[i][4] == "Z" then
        gModScriptLuaDirList[i][5] = false
      end
    end
  end  
      
  for i=1,_bTotalNumberScripts do
    _bScriptCounter = i

    local cutPoint = string.len(gMASTER_FOLDER_PATH..[[ModScript\]])
    _bScriptName = string.sub(gModScriptLuaDirList[i][1],cutPoint + 1)

    WriteToFile(gMASTER_FOLDER_PATH..[[ModScript\]].._bScriptName, "CurrentModScript.txt")
    WriteToFile(_bScriptName, "CurrentModScript_Short.txt")

    local startScriptProcessingTime = os.clock()
    
    print("")
    print(" ".._zBLACKonYELLOW.." >>> 'Starting to process script' #".._bScriptCounter.."/".._bTotalNumberScripts.." [".._bScriptName.."] at "..dClock().." sec ".._zDEFAULT)
    print("")
    print(">>> Opening User Lua Script, Please wait...")

    --*************************************************
    gNMS_MOD_DEFINITION_CONTAINER,DelayedReportData,InternalFunctionProblem = OpenUserScript()
    --*************************************************

    -- ****************************************************
    local function ReportDelayedInfo(DelayedReportData)
      for m=1,#DelayedReportData do
        Report(DelayedReportData[m][1],DelayedReportData[m][2],DelayedReportData[m][3])
      end
    end
    -- ****************************************************

    if (_mWbertro ~= nil) and gNMS_MOD_DEFINITION_CONTAINER ~= nil then
      SaveTable("..\\TempTable.txt",gNMS_MOD_DEFINITION_CONTAINER,"NMS_MOD_DEFINITION_CONTAINER")
    end

    -- ****************************************************
    local function PrepareCombinedContent()
      local filename = [[COMBINED_CONTENT_LIST.txt]]
      os.remove(filename)

      WriteToFile("This mod contains:\n",filename)
    end
    -- ****************************************************

    --setup type of script
    local IsFirstScriptInSubFolder_flag = false
    local IsCOMBINE_MODS_flag = false
    local IsFirstCOMBINE_MODS_flag = false
    local IsEndCOMBINE_MODS_flag = false
    local IsMEFTIexist_flag = gModScriptLuaDirList[i][5]
    
    -- Wbertro: this section below can be simplified
    
    if gIsGlobalIndividual then
      --user asked for INDIVIDUAL
      --but it can be overridden if flag COMBINE exist in the folder/sub-folder
      
      -- gModScriptLuaDirList[i][x] comes from
      --      gScriptList[i][1]: filename and path
      --      gScriptList[i][2]: path string -- folderTooDeep
      --      gScriptList[i][3]: bool -- pathTooLong
      --      gScriptList[i][4]: string -- auto-combine
      --      gScriptList[i][5]: bool -- MEFTI exist
      
      if gModScriptLuaDirList[i][4] == "F" and i == _bTotalNumberScripts then
        -- special case: only one script in auto-combine
        gModScriptLuaDirList[i][4] = "FE"
      end
      
      if gModScriptLuaDirList[i][4] == "F" or gModScriptLuaDirList[i][4] == "FE" then
        --this script is flagged as AUTO_COMBINE
        IsFirstScriptInSubFolder_flag = true
        IsFirstCOMBINE_MODS_flag = true
        IsCOMBINE_MODS_flag = true

        --it is the FIRST of the COMBINED group
        --we need to reset COMBINED_CONTENT_LIST
        PrepareCombinedContent()
        
        --we could add the names of the ModExtraFilesToInclude files to the CONTENT
        --not real code
        -- for n = 1,#ModExtraFilesToInclude do
          -- WriteToFileAppend("\nOriginal information:\n",[[COMBINED_CONTENT_LIST.txt]])
        -- end

        --reset Composite_MOD_FILENAME
        DEBUG_ScriptContent_print("Resetting Composite_MOD_FILENAME.txt")
        local filename = [[Composite_MOD_FILENAME.txt]]
        os.remove(filename)

      elseif gModScriptLuaDirList[i][4] == "A" or gModScriptLuaDirList[i][4] == "AZ" then
        --1st script in a sub-folder and not auto-combine
        --we need to handle EXTRA files
        IsFirstScriptInSubFolder_flag = true --to indicate this is the 1st script in this sub-folder
        IsCOMBINE_MODS_flag = false
        
      elseif gModScriptLuaDirList[i][4] == "C" then
        --2nd or more of the COMBINED script
        IsCOMBINE_MODS_flag = true
      end

      if gModScriptLuaDirList[i][4] == "Z" or gModScriptLuaDirList[i][4] == "AZ" then
        --it is the last script of this sub-folder WITHOUT a COMBINED_FLAG
        IsCOMBINE_MODS_flag = false
        --IsEndCOMBINE_MODS_flag = true --to trigger building the mod pak for this sub-folder
      end
      
      if gModScriptLuaDirList[i][4] == "E" or gModScriptLuaDirList[i][4] == "FE" or (gModScriptLuaDirList[i][4] == "C" and i == _bTotalNumberScripts) then
        --it is the last script of this sub-folder (or the last of the list) WITH a COMBINE_FLAG
        IsCOMBINE_MODS_flag = true
        IsEndCOMBINE_MODS_flag = true --to trigger building the mod pak for this sub-folder
        
        --we need to build a COMPOSITE name for this pak
        local firstAutoCombine = i
        if gModScriptLuaDirList[i][4] == "FE" then
          firstAutoCombine = i
        else
          for m = i-1,1,-1 do
            if gModScriptLuaDirList[m][4] == "F" then
              --then m is the first of this bunch
              firstAutoCombine = m
              break
            end
          end
          -- print("Y: firstAutoCombine = ["..firstAutoCombine.."], i = ["..i.."]")
        end
        -- print("Y: gModScriptLuaDirList[firstAutoCombine][1] = ["..gModScriptLuaDirList[firstAutoCombine][1].."]")
        
        CreateCompositeName(firstAutoCombine,i)
      end
      
    else
      --user asked for COMBINED (auto-combine is superseded)
      
      --we will wait for the last script to create the mod pak
      if gModScriptLuaDirList[i][4] == "A" or gModScriptLuaDirList[i][4] == "AZ" then
        --1st script in a sub-folder and not auto-combine
        IsFirstScriptInSubFolder_flag = true --to indicate this is the 1st script in this sub-folder
        IsCOMBINE_MODS_flag = false
      end
      
      if gModScriptLuaDirList[i][4] == "F" or gModScriptLuaDirList[i][4] == "FE" then
        --this script is flagged as AUTO_COMBINE
        IsFirstScriptInSubFolder_flag = true --to indicate this is the 1st script in this sub-folder
        IsFirstCOMBINE_MODS_flag = true
        IsCOMBINE_MODS_flag = true
      end
      
      if _bScriptCounter == 1 then
        --on the FIRST of the COMBINE group
        --we need to reset COMBINED_CONTENT_LIST
        PrepareCombinedContent()

        --we could add the names of the ModExtraFilesToInclude files to the CONTENT
        --not real code
        -- for n = 1,#ModExtraFilesToInclude do
          -- WriteToFileAppend("\nOriginal information:\n",[[COMBINED_CONTENT_LIST.txt]])
        -- end
      end

      if _bGlobalCOMBINE_MODS == 3 then
        --user asked for COMPOSITE
        CreateCompositeName(1,#gModScriptLuaDirList)
      end
    end

    if gDEBUG_ScriptType then
      print("Y: on i = ["..i.."]      _bScriptName = [".._bScriptName.."]")
      print("Y:         _bGlobalCOMBINE_MODS = [".._bGlobalCOMBINE_MODS.."]")
      print("Y:              _bScriptCounter = [".._bScriptCounter.."]")
      print("Y:IsFirstScriptInSubFolder_flag = ["..tostring(IsFirstScriptInSubFolder_flag).."]")
      print("Y:          IsCOMBINE_MODS_flag = ["..tostring(IsCOMBINE_MODS_flag).."]")
      print("Y:     IsFirstCOMBINE_MODS_flag = ["..tostring(IsFirstCOMBINE_MODS_flag).."]")
      print("Y:       IsEndCOMBINE_MODS_flag = ["..tostring(IsEndCOMBINE_MODS_flag).."]")
      print("Y:                     fullpath = ["..gModScriptLuaDirList[i][1].."]")
      print("Y:                folderTooDeep = ["..gModScriptLuaDirList[i][2].."]")
      print("Y:                  pathTooLong = ["..tostring(gModScriptLuaDirList[i][3]).."]")
      print("Y:                 combine type = ["..gModScriptLuaDirList[i][4].."]")
      print("Y:            IsMEFTIexist_flag = ["..tostring(gModScriptLuaDirList[i][5]).."]")
    end
    --END: setup type of script

    if type(gNMS_MOD_DEFINITION_CONTAINER) == "table" then
      if _bAllowMapFileTreeCreator == "Y" then
        if _bTotalNumberScripts > 0 then
          if not IsFileExist("MapFileTreeSharedList.txt") then
            --must be created
            WriteToFile("","MapFileTreeSharedList.txt")
          end

          local ProcessInfo = os.capture([[tasklist /FI "ImageName eq luaM.exe"]])
          local _,numUsedSlots = string.gsub(ProcessInfo,"luaM.exe","")
          if numUsedSlots == 0 then
            --should only be this instance
            dofile("CreateMapFileTreeStarter.lua")
          else
            --otherwise CreateMapFileTreeStarter.lua is running
          end
        end
      end

      if _bScriptCounter == 1 or (not gIsGlobalCombine and ((not IsCOMBINE_MODS_flag and gIsGlobalIndividual) or (IsCOMBINE_MODS_flag and IsFirstCOMBINE_MODS_flag))) then
        --Always Cleaning MOD directory before first script
        --  If INDIVIDUAL MODs: Cleaning MOD directory each time
        --  If COMBINED MODs: Only Cleaning MOD directory before first script
        print([[>>> [INFO] ]].._zGREEN..[[Cleaning 'MODBUILDER\MOD']].._zDEFAULT)
        local cmd = [[CleanMod.bat]]
        NewThread(cmd)
        
        -- should reset MOD_BATCHNAME here
        print(">>> [INFO] ".._zGREEN.."Resetting 'MOD_BATCHNAME'".._zDEFAULT)
        Report("","\nResetting 'MOD_BATCHNAME'")
        WriteToFile("", "MOD_BATCHNAME.txt")
        
        if LoadFileData("MOD_BATCHNAME.txt") ~= "" then
          print(_zRED..[[>>> [WARNING] 'MOD_BATCHNAME.txt' could not be reset]].._zDEFAULT)
          Report("",[['MOD_BATCHNAME.txt' could not be reset]],"WARNING")
        end
      end

      --***************************************************************************************************      
      -- ############# Copy 'main' EXTRA files to MOD ##################
      -- doing this only once per AMUMSS run, this is the global EXTRA files
      local function HandleModExtraFilesToInclude()
        --get list of files in ModExtraFilesToInclude
        local FilePathSource = [[..\ModExtraFilesToInclude]]
        local cmd = [[robocopy ]]..FilePathSource..[[\. ]]..FilePathSource..[[\. *.* /S /V /L /R:1 /NS /NDL /NP /NC /NJS /NJH]]
        local robocopyResult = os.capture(cmd,true)

        local mainMEFTIlist = robocopyResult:split("\n")

        if #mainMEFTIlist > 0 then
          print("--------------------------------------------------------------------------------------")
          print(_zRED..[[>>> [INFO] Found files in ']].._zGREEN..[[ModExtraFilesToInclude]].._zRED..[[', including them in pak]].._zDEFAULT)
          Report("",[[>>> Found files in 'ModExtraFilesToInclude', including them in pak]])
        end
        
        --clean up spaces and print list
        local cutPoint = string.len(gMASTER_FOLDER_PATH..[[ModExtraFilesToInclude\]])
        local printLimit = 15
        for i=1,#mainMEFTIlist do
          if i <= printLimit then
            if mainMEFTIlist[i] ~= "" then
              print("           - ["..string.sub(trim(mainMEFTIlist[i]),cutPoint + 1).."]")
            end
          else
            print(_zGREEN..">>> ".._zRED.."LARGE number".._zDEFAULT.._zGREEN.." of files detected ("..#mainMEFTIlist..")".._zRED.." (limiting log.lua output)".._zDEFAULT)
            print(_zRED.."               BE PATIENT".._zDEFAULT..", the output may only seem to stop at times...")
            break
          end
          --we could add the names of the ModExtraFilesToInclude files to the CONTENT
          --WriteToFileAppend("\ModExtraFilesToInclude: "..string.sub(trim(mainMEFTIlist[i]),cutPoint + 1),[[COMBINED_CONTENT_LIST.txt]])
        end
        WriteToFileAppend("Found files in 'ModExtraFilesToInclude', including them in pak\n",[[COMBINED_CONTENT_LIST.txt]])
        -- print("--------------------------------------------------------------------------------------")
        -- print("")

        local param = "/s /y /h /v /j"
        CopyFile([[..\ModExtraFilesToInclude\*.*]],"MOD",param)
        skipCreatingPAK = false --???
      end
      -- ############# END: Copy 'main' EXTRA files to MOD ##################
      --***************************************************************************************************      

      --***************************************************************************************************      
      --                               Handle Extra Files In MEFTI
      local function HandleMEFTI(_bScriptName)
        local _bScriptNamePath = GetFolderPathFromFilePath(_bScriptName)
        --this is a custom folder and ((it is the 1st script and the user asked to combine) or (auto-combine is active))

        --only for backward compatibility
        --check if oldname sub-folder ModExtraFilesToInclude exist instead of sub-folder MEFTI
        local oldFilePathSource = [[..\ModScript\]].._bScriptNamePath..[[\ModExtraFilesToInclude]]
        local FilePathSource = [[..\ModScript\]].._bScriptNamePath..[[\MEFTI]]
        if IsDirExist(oldFilePathSource) then
          --directory name changed to MEFTI
          os.rename(oldFilePathSource,FilePathSource)
        end
        --END: only for backward compatibility

        -- print("FilePathSource = ["..FilePathSource.."]")

        --get list of files in this MEFTI
        local cmd = [[robocopy "]]..FilePathSource..[[\." "]]..FilePathSource..[[\." *.* /S /V /L /R:1 /NS /NDL /NP /NC /NJS /NJH]]
        local robocopyResult = os.capture(cmd,true)

        local MEFTIlist = robocopyResult:split("\n")

        if #MEFTIlist > 0 then
          print("--------------------------------------------------------------------------------------")
          print(_zRED..[[>>> [INFO] Found files in custom folder ']].._zGREEN..[[MEFTI]].._zRED..[[', including them in pak]].._zDEFAULT)
          Report("",[[>>> Found files in custom folder 'MEFTI', including them in pak]])
        end
        
        --clean up spaces and print list
        local cutPoint = string.len(gMASTER_FOLDER_PATH..[[ModScript\]])
        local printLimit = 15
        for i=1,#MEFTIlist do
          if i <= printLimit then
            print("           - ["..string.sub(trim(MEFTIlist[i]),cutPoint + 1).."]")
          else
            print(_zGREEN..">>> ".._zRED.."LARGE number".._zDEFAULT.._zGREEN.." of files detected ("..#MEFTIlist..")".._zRED.." (limiting log.lua output)".._zDEFAULT)
            print(_zRED.."               BE PATIENT".._zDEFAULT..", the output may only seem to stop at times...")
            break
          end
          --we could add the names of the MEFTI files to the CONTENT
          --WriteToFileAppend("\nMEFTI: "..string.sub(trim(MEFTIlist[i]),cutPoint + 1),[[COMBINED_CONTENT_LIST.txt]])
        end
        WriteToFileAppend("Found files in custom folder 'MEFTI', including them in pak\n",[[COMBINED_CONTENT_LIST.txt]])

       -- print("--------------------------------------------------------------------------------------")

        --copy the files to MODBUILDER\MOD excluding 
        --   if destination file exists and is the same date or newer than the source - don’t bother to overwrite it
        FolderPath = [[.\MOD]]
        local cmd = [[ROBOCOPY /s /j /XN "]]..FilePathSource..[[" "]]..FolderPath..[[" 1>NUL 2>NUL]]
        -- print("cmd = ["..cmd.."]")
        NewThread(cmd)

        -- if (not IsFirstCOMBINE_MODS_flag and IsCOMBINE_MODS_flag) or (gIsGlobalCombine and _bScriptCounter > 1) then
            -- print("--------------------------------------------------------------------------------------")
            -- print(_zRED..[[>>> [INFO] Files in custom folder ']].._zGREEN..[[MEFTI]].._zRED..[[' already included in pak]].._zDEFAULT)
            -- print("--------------------------------------------------------------------------------------")
            -- Report("",[[>>> [INFO] Files in custom folder 'MEFTI' already included in pak]])
        -- end
      end  --local function
      --                        END: Handle Extra Files In MEFTI
      --***************************************************************************************************      

      --***************************************************************************************************      
      local function HandleAllExtraFiles()
        local answer = "N"
        if _mIncludeLuaScriptInPak == "ASK" then
          answer = Choice(" ".._zBLACKonYELLOW.." Do you want to include this lua script in the pak? ".._zDEFAULT,"YN")
        end
        if _mIncludeLuaScriptInPak == "Y" or answer == "Y" then
          print([[>>> Including lua script source in pak]])
          Report("",[[>>> Including lua script source in pak]])

          --copy script to MOD folder
          FilePathSource = LoadFileData("CurrentModScript.txt")
          -- print("["..FilePathSource.."]")
          FolderPath = [[.\MOD\]]..GetFilenameFromFilePath(LoadFileData("CurrentModScript.txt"))
          -- print("["..FolderPath.."]")
          CopyFile(FilePathSource,FolderPath..[[*]],[[/y /h /v /i]])
        end

        --if not skipCreatingPAK and _bScriptNamePath ~= "" then
        if _bScriptNamePath ~= "" then
          if _bExtraFilesInPAK == "Y" then
            -- include the files in ModExtraFilesToInclude
            
            local IsAlreadyDone = false
            if gIsGlobalIndividual then
              -- building Individual paks:
              if not IsCOMBINE_MODS_flag then
                -- scripts in ModScript and in sub-folders without COMBINE_FLAG:
                -- we need to do it for each script
                HandleModExtraFilesToInclude()
              else
                -- scripts in sub-folders with COMBINE_FLAG:
                if IsFirstCOMBINE_MODS_flag or _bScriptCounter == 1 then
                  -- only needed for the 1st script
                  HandleModExtraFilesToInclude()
                else
                  IsAlreadyDone = true
                end
              end
            
            else
              -- Global Combined pak: we only do it on the 1st script
              if _bScriptCounter == 1 then
                HandleModExtraFilesToInclude()
              else
                IsAlreadyDone = true
              end
            end
            
            -- if (IsCOMBINE_MODS_flag and IsFirstCOMBINE_MODS_flag) or 
                 -- ((IsFirstScriptInSubFolder_flag or _bScriptCounter == 1) and gIsGlobalCombine) or
                 -- (not IsCOMBINE_MODS_flag and gIsGlobalIndividual)
                 -- then
              -- HandleModExtraFilesToInclude()
            -- else
            if IsAlreadyDone then
              print("--------------------------------------------------------------------------------------")
              print(_zRED..[[>>> [INFO] Found files in ']].._zGREEN..[[ModExtraFilesToInclude]].._zRED..[[', already included in pak]].._zDEFAULT)
              Report("",[[>>> Found files in 'ModExtraFilesToInclude', already included in pak]])
            end
          end

          if IsMEFTIexist_flag then 
            local IsAlreadyDone = false
            if gIsGlobalIndividual then
              -- building Individual paks:
              if not IsCOMBINE_MODS_flag then
                -- scripts in ModScript and in sub-folders without COMBINE_FLAG:
                -- we need to do it for each script
                HandleMEFTI(_bScriptName)
              else
                -- scripts in sub-folders with COMBINE_FLAG:
                if IsFirstCOMBINE_MODS_flag or _bScriptCounter == 1 then
                  -- only needed for the 1st script
                  HandleMEFTI(_bScriptName)
                else
                  IsAlreadyDone = true
                end
              end
            
            else
              -- Global Combined pak: we only do it on the 1st script
              if IsFirstScriptInSubFolder_flag or _bScriptCounter == 1 then
                HandleMEFTI(_bScriptName)
              else
                IsAlreadyDone = true
              end
            end

            -- if (IsCOMBINE_MODS_flag and IsFirstCOMBINE_MODS_flag) or 
                 -- ((IsFirstScriptInSubFolder_flag or _bScriptCounter == 1) and gIsGlobalCombine) or
                 -- (IsFirstScriptInSubFolder_flag and not IsCOMBINE_MODS_flag and gIsGlobalIndividual)
                 -- then
              -- HandleMEFTI(_bScriptName)

            if IsAlreadyDone then
              print("--------------------------------------------------------------------------------------")
              print(_zRED..[[>>> [INFO] Found files in custom folder ']].._zGREEN..[[MEFTI]].._zRED..[[', already included in pak]].._zDEFAULT)
              Report("",[[>>> Found files in custom folder 'MEFTI', already included in pak]])
            end
          end
        end
      end
      --***************************************************************************************************      
      
      if type(gNMS_MOD_DEFINITION_CONTAINER[1]) == "table" then
        --multi-table container
        local Container = gNMS_MOD_DEFINITION_CONTAINER

        for i=1,#Container do
          if i > 1 then
            print("")
            print(" ".._zBLACKonYELLOW.." >>> Still processing script #".._bScriptCounter.."/".._bTotalNumberScripts.." ".._zDEFAULT)
            print("")

            Report("")
            Report("","========================================================================================")
            Report("","Still processing script #".._bScriptCounter.."/".._bTotalNumberScripts)
          else
            Report("")
            Report("","========================================================================================")
            Report("","Processing script #".._bScriptCounter.."/".._bTotalNumberScripts)
          end

          local startScriptProcessingTime = os.clock()
          
          print(_zGREEN.."              ++++++++++  A Multi-PAK script  ++++++++++".._zDEFAULT)
          print("             ".._zBLACKonYELLOW.." >>> Processing sub-script #"..i..[[ of ]]..#Container.." [".._bScriptName.."] at "..dClock().." sec ".._zDEFAULT)
          print("")

          Report("","              ++++++++++  A Multi-PAK script  ++++++++++")
          Report("","              >>> Processing sub-script #"..i..[[ of ]]..#Container.." [[".._bScriptName.."]] {")
          ReportDelayedInfo(DelayedReportData)

          if IsCOMBINE_MODS_flag then
            print(_zRED.."    Auto-combine flag detected".._zDEFAULT)
            Report("","Auto-combine flag detected")
          end

          HandleAllExtraFiles()
          
          print("--------------------------------------------------------------------------------------")
    -->>>>>>>>>>>>>>>>>>>>>>>>
          ProcessScript(Container[i],True,_bScriptName,IsCOMBINE_MODS_flag,IsFirstCOMBINE_MODS_flag,IsEndCOMBINE_MODS_flag)
    -->>>>>>>>>>>>>>>>>>>>>>>>

          Report("","Ended sub-script "..i.." of [[".._bScriptName.."]]")
          if i == #Container then
            print(" ".._zBLACKonYELLOW.." >>> Ended script #".._bScriptCounter.."/".._bTotalNumberScripts.." [".._bScriptName.."] in "..dClock(os.clock() - startScriptProcessingTime).."sec ".._zDEFAULT)
            Report("","Ended script [[".._bScriptName.."]]")
          end
          Report("","========================================================================================}")

          --spacing for sub-script
          print("")
          Report("")
          
          if gDEBUG_StopAfterScript then WaitForAnyKey("for next script...") end
        end --for i=1,#Container do
        
      else
        --only one table in container
        Report("")
        Report("","========================================================================================")
        Report("","Starting to process script #".._bScriptCounter.."/".._bTotalNumberScripts.." [[".._bScriptName.."]] {")
        -- if _bExtraFilesInPAK == "Y" then
          -- Report("",[[Copying ModExtraFilesToInclude content to MODBUILDER\MOD...]])
        -- end

        print(_zGREEN.."              ++++++++++  A Single-PAK script  ++++++++++".._zDEFAULT)

        ReportDelayedInfo(DelayedReportData)

        if IsCOMBINE_MODS_flag then
          print(_zRED.."    Auto-combine flag detected".._zDEFAULT)
          Report("","Auto-combine flag detected")
        end

        print("")

        HandleAllExtraFiles()
                
        print("--------------------------------------------------------------------------------------")
    -->>>>>>>>>>>>>>>>>>>>>>>>
        ProcessScript(gNMS_MOD_DEFINITION_CONTAINER,false,_bScriptName,IsCOMBINE_MODS_flag,IsFirstCOMBINE_MODS_flag,IsEndCOMBINE_MODS_flag)
    -->>>>>>>>>>>>>>>>>>>>>>>>

        print(" ".._zBLACKonYELLOW.." >>> Ended script #".._bScriptCounter.."/".._bTotalNumberScripts.." [".._bScriptName.."] in "..dClock(os.clock() - startScriptProcessingTime).." sec ".._zDEFAULT)
        Report("","Ended script [[".._bScriptName.."]]")
        Report("","========================================================================================}")
        -- Report("")
        
        if gDEBUG_StopAfterScript then WaitForAnyKey("for next script...") end
      end
    else
      --BAD NMS_MOD_DEFINITION_CONTAINER
      Report("")
      Report("","========================================================================================")
      Report("","Starting to process script #".._bScriptCounter.."/".._bTotalNumberScripts.." [[".._bScriptName.."]] {")

      ReportDelayedInfo(DelayedReportData)

      table.insert(gModScriptFailed,_bScriptName..": Could not load NMS_MOD_DEFINITION_CONTAINER")

      WriteToFile("", "MOD_MBIN_SOURCE.txt")
      WriteToFile("", "MOD_PAK_SOURCE.txt")
      WriteToFile("", "MOD_FILENAME.txt")
      WriteToFile("", "MOD_AUTHOR.txt")
      WriteToFile("", "LUA_AUTHOR.txt")
      WriteToFile("", "MOD_MAINTENANCE.txt")
      WriteToFile("", "LoadScriptAndFilenamesERROR.txt")

      if InternalFunctionProblem then
        print(_zRED..">>> [ERROR] A function name conflicts with an internal one, this script has a problem!".._zDEFAULT)
        print("")
        Report("","Impossible to load USER script!","ERROR")
        Report("","A function name conflicts with an internal one, this script has a problem!","  >>>")
        Report("","Check the 'Analysis section' of the cmd window or the log.lua file for info","  >>>")
      else
        print(_zRED..">>> [ERROR] NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!".._zDEFAULT)
        print("")
        Report("","Impossible to load USER script!","ERROR")
        Report("","NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!","  >>>")
        Report("","Check the 'Analysis section' of the cmd window or the log.lua file for info","  >>>")
      end
    end

    --save _bScriptCounter for batch
    WriteToFile(tostring(_bScriptCounter), "ScriptCounter.txt")

    print("")
    print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)
    print(_zRED..">>>            Scripts processed: ".._bScriptCounter.._zDEFAULT)
    print(_zRED..">>>     Total scripts to process: ".._bTotalNumberScripts.._zDEFAULT)
    print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)

    if gIsGlobalCombine then
      --when combined mod
      if _bTotalNumberScripts == _bScriptCounter then
        print("")
        print(_zGREEN..">>> Done building ALL scripts".._zDEFAULT)
        Report("","Done building ALL scripts")

        --is this required?
        -- if _bCOPYtoNMS ~= "NONE" then
          -- print(_zGREEN..">>> Copying PAK to NMS MOD folder...".._zDEFAULT)
          -- Report("","Copied PAK to NMS MOD folder...")
        -- end
      end
    end
  end
  -- print("@@@ Before gModScriptFailed handling")
  for i=1,#gModScriptFailed do
    WriteToFileAppend(gModScriptFailed[i].."\n","FailedScriptList.txt")
  end
end --pre_processScripts()

-- ****************************************************
--        MAIN            MAIN          MAIN
-- ****************************************************
--          WE ARE IN MODBUILDER folder

if gVerbose == nil then dofile("LoadHelpers.lua") end
prn = pv --print

LDebug = false
if LDebug then print("***     STARTING LoadAndExecuteModScript.lua") end

gfilePATH = "..\\" --for Report()

THIS = "In LoadAndExecuteModScript: "

if false then WaitForAnyKey("Starting LoadAndExecuteModScript, press key...") end

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.gsub(NMS_FOLDER,"\n","") --remove line break if any

gNMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]
-- print("*************  gNMS_PCBANKS_FOLDER_PATH = ["..gNMS_PCBANKS_FOLDER_PATH.."]")

gNMS_MODS_FOLDER = gNMS_PCBANKS_FOLDER_PATH..[[MODS\]]

gMASTER_FOLDER_PATH = string.gsub(lfs.currentdir(),[[MODBUILDER]],"")
assert(lfs.currentdir() == gMASTER_FOLDER_PATH..[[MODBUILDER]],"AMUMSS folder is not correctly positioned")

gPathToModbuilderMod = [[.\MOD\]] --was [[MODBUILDER\MOD\]]
--in case it does not yet exist
mkdir(gPathToModbuilderMod)

gPathToModScriptFromModbuilder = [[..\ModScript]]

gCurrentMBINCompilerPath = [[MBINCompiler.exe]]

gMEFTI_name = [[MEFTI]]

gSCRIPTBUILDERscript = false

--to print them
--GetLuaCurrentKeyWordsAndAll(_G,"",true)

--Get all environment variables once

--all the LUA exe
_mLUA = os.getenv("_mLUA")
_mLUAM = os.getenv("_mLUAM")
_mLUAS = os.getenv("_mLUAS")
_mLUAC = os.getenv("_mLUAC")

gMaxNumberOfGroups = 50

gIs_FULL_MODE = (os.getenv("_DEV_MODE") == "F")
if gIs_FULL_MODE then
  -- # of replacments to start limiting similar output in cmd window
  gMaxReplNumber = math.maxinteger
end

gIs_DEV_MODE = (os.getenv("_DEV_MODE") == "D")
if gIs_DEV_MODE then
  -- # of replacments to start limiting similar output in cmd window
  gMaxReplNumber = 25
end

gIs_LEAN_MODE = (os.getenv("_DEV_MODE") == "L")
if gIs_LEAN_MODE then
  -- # of replacments to start limiting similar output in cmd window
  gMaxReplNumber = 0
end

_bScriptName = os.getenv("_bScriptName")
_bExtraFilesInPAK = os.getenv("_bExtraFilesInPAK")

_bGlobalCOMBINE_MODS = tonumber(os.getenv("_bCOMBINE_MODS"))
gIsGlobalIndividual = (_bGlobalCOMBINE_MODS == 0)
gIsGlobalCombine = not gIsGlobalIndividual

gDoConfigGlobal = os.getenv("-DoConfigGlobal")
if gDoConfigGlobal == "ASK" then
  gDoConfigGlobal = Choice(" ".._zBLACKonYELLOW.." Do you want to globally allow user input requests from scripts? ".._zDEFAULT,"YN")
end
DOCONFIGGLOBAL = (gDoConfigGlobal == "Y")

_bPATCH = os.getenv("_bPATCH")
IsPATCH = (_bPATCH == "1")

_mIncludeLuaScriptInPak = os.getenv("-IncludeLuaScriptInPak")

_bCOPYtoNMS = os.getenv("_bCOPYtoNMS")
-- print("LAEMS: _bCOPYtoNMS = [".._bCOPYtoNMS.."]")

_bAllowMapFileTreeCreator = os.getenv("_bAllowMapFileTreeCreator")

_bCreateMapFileTree = os.getenv("_bCreateMapFileTree") --internal only
_bReCreateMapFileTree = os.getenv("-ReCreateMapFileTree") --from OPTIONS

_mUSE_TXT_MAPFILETREE = (os.getenv("-MAPFILETREE") == "TXT") or (os.getenv("-MAPFILETREE") == "TXTPLUS")
_mUSE_LUA_MAPFILETREE = (os.getenv("-MAPFILETREE") == "LUA") or (os.getenv("-MAPFILETREE") == "LUAPLUS")

_mUSE_TXTPLUS_MAPFILETREE = os.getenv("-MAPFILETREE") == "TXTPLUS"
_mUSE_LUAPLUS_MAPFILETREE = os.getenv("-MAPFILETREE") == "LUAPLUS"

_bMaxPakNameLength = tonumber(os.getenv("_bMaxPakNameLength"))

--default date format
_mDateTimeFormat = "%Y/%m/%d-%H:%M:%S"
CustomDateTimeFormat = false

--make date format configurable
if IsFileExist([[..\DateTimeFormat.txt]]) then
  local tmpDTF = LoadFileData([[..\DateTimeFormat.txt]])
  if tmpDTF ~= nil and tmpDTF ~= _mDateTimeFormat then
    _mDateTimeFormat = tmpDTF
    CustomDateTimeFormat = true
  end
end

local now = os.date(_mDateTimeFormat)
-- WriteToFile(now,[[DateTime.txt]]) --file used by ???

local cleanedNow = string.gsub(now,[[/]],[[]])
cleanedNow = string.gsub(cleanedNow,[[\]],[[]])
cleanedNow = string.gsub(cleanedNow,[[:]],[[]])
cleanedNow = string.gsub(cleanedNow,[[*]],[[]])
cleanedNow = string.gsub(cleanedNow,[[?]],[[]])
cleanedNow = string.gsub(cleanedNow,[["]],[[]])
cleanedNow = string.gsub(cleanedNow,[[<]],[[]])
cleanedNow = string.gsub(cleanedNow,[[>]],[[]])
cleanedNow = string.gsub(cleanedNow,[[|]],[[]])
WriteToFile(cleanedNow,[[cleanedDateTime.txt]]) --file only used by CreateMod.bat

_cDateTime = cleanedNow
--END: make date format configurable

_bOS_bitness = os.getenv("_bOS_bitness")
_bCPU = os.getenv("_bCPU")
_bMinCPU = os.getenv("_bMinCPU")

_mSHOWSECTIONS = os.getenv("-SHOWSECTIONS")
if gIs_LEAN_MODE then
  _mSHOWSECTIONS = "N"
end

_mSHOWEXTRASECTIONS = os.getenv("-SHOWEXTRASECTIONS")
if gIs_LEAN_MODE then
  _mSHOWEXTRASECTIONS = "N"
end

_mSERIALIZING = os.getenv("_mSERIALIZING") -- by file trigger
_mSerializeScript = os.getenv("-SerializeScript") -- by OPTIONS
if gIs_LEAN_MODE then
  _mSerializeScript = "N"
end
--end Get all environment variables once

--always remove/reset it
os.remove(gPathToModScriptFromModbuilder..[[\GENERIC.lua]])

-- ****************************************************************************************
--refresh Script List
if #gModScriptValidContent == 0 then
  -- print("preparing the Script list...")
  GetModScriptValidContent(gPathToModScriptFromModbuilder)
end

--***
-- gModScriptLuaDirList[i][x] comes from
--      gScriptList[i][1]: filename and path
--      gScriptList[i][2]: path string -- folderTooDeep
--      gScriptList[i][3]: bool -- pathTooLong
--      gScriptList[i][4]: string -- auto-combine
--      gScriptList[i][5]: bool -- MEFTI exist
gModScriptLuaDirList = gScriptList

-- refresh ScriptList to remove 'too deep' and 'too long path' if any
local tmpScriptList = {}
for i=1,#gModScriptLuaDirList do
  -- print("=== "..i..": ["..tostring(gModScriptLuaDirList[i][2]).."] "..tostring(gModScriptLuaDirList[i][3]).." ["..gModScriptLuaDirList[i][1].."]")
  if gModScriptLuaDirList[i][2] == "" and not gModScriptLuaDirList[i][3] then
    table.insert(tmpScriptList,gModScriptLuaDirList[i])
  end
end
gModScriptLuaDirList = tmpScriptList

-- report on 'too deep' and 'too long path'
local First = true
for i=1,#gModScriptValidContent do
  -- print("=== "..i..": ["..tostring(gModScriptValidContent[i][2]).."] "..tostring(gModScriptValidContent[i][3]).." ["..gModScriptValidContent[i][1].."]")
  if gModScriptValidContent[i][2] ~= "" then
    if First then
      First = false
      Report("") 
    end
    Report("",[[>>> ModScript sub-folder >>>]]..gModScriptValidContent[i][2]..[[<<< is too deep and will not be used.]],"NOTICE")
  end
  if gModScriptValidContent[i][3] then
    if First then
      First = false
      Report("") 
    end
    Report("",[[>>> Path is probably too long (> 260 char): >>>]]..gModScriptValidContent[i][1]..[[<<< You should correct that!]],"WARNING")
  end
end
if not First then
  Report("") 
end
-- ****************************************************************************************

-- _bTotalNumberScripts = os.getenv("_bTotalNumberScripts") --not used
_bTotalNumberScripts = #gModScriptLuaDirList
if LDebug then print("XXXXX INIT _bTotalNumberScripts = ".._bTotalNumberScripts) end

--***
gModScriptPakDirList = {}
gModScriptPakDirList = GetFilesWithExt(".pak",true)

-- NOT USED
_bTotalNumberPAKs = #gModScriptPakDirList
-- print("XXXXX INIT    _bTotalNumberPAKs = ".._bTotalNumberPAKs)

--***
_bScriptCounter = 0
WriteToFile("", "ScriptCounter.txt")

gModScriptFailed = {}
gModScriptEXMLDirList = {}

_bEXML = os.getenv("_bEXML")
if _bEXML == "Y" then
  --************ an EXML was detected
  SetupGENERIC_lua()
end

--globals for all sub-scripts
gSaveSectionName = {}
gSaveSectionContent = {}
gUseSectionName = {}
gUseSectionContent = {}

  -- gVerbose = true
  -- pv("gVerbose is ON")

--DEBUGGING
DEBUG_print = function(...) print(dClock()..": "..(...)) end

gDEBUG_StopAtEachProcessing = false -- no print

function DEBUG_ScriptContent_print() end
function DEBUG_GROUPS_print() end
function DEBUG_WISS_print() end
function DEBUG_LoopBreak_print() end
function DEBUG_VCTproperty_print() end
function DEBUG_TableToStringCount_print() end
function DEBUG_CurrentLine_print() end
function DEBUG_AddSectionsIntoTable_print() end
function DEBUG_ReplaceRAW_print() end
function DEBUG_TextToAdd_print() end
function DEBUG_TextToRemove_print() end
function DEBUG_SECTION_print() end
function DEBUG_FindGroup_print() end

_mWbertro = os.getenv("_mWbertro")
_mDEBUG = os.getenv("_mDEBUG")

WDEBUG = false --no print

gDEBUG_StopAfterScript = false
gDEBUG_ScriptType = false
gDEBUG_ScriptContent = false

_mISxxx = false
gDEBUG_BeforeEXTRA_BEHAVIOR = false
gDEBUG_GROUPS = false
gDEBUG_WISS = false
gDEBUG_VCTproperty = false
gDEBUG_TableToStringCount = false
gDEBUG_Before_Value_match = false
gDEBUG_repl_done = false
gDEBUG_LoopBreak = false
gDEBUG_CurrentLine = false -- @@@
gDEBUG_AddSectionsIntoTable = false
gDEBUG_ReplaceRAW = false
gDEBUG_TextToAdd = false
gDEBUG_TextToRemove = false
gDEBUG_SECTION = false
gDEBUG_FindGroup = false
gDEBUG_CheckUniqueness = false --no print
gDEBUG_CheckPoint = false

DEBUG_ON = false

if _mWbertro == nil then
  DEBUG_ON = false
end

if DEBUG_ON then
  local Y = true
  local N = false

  WDEBUG =                       N -- SHOWS before and AFTER SAVING, will WaitForAnyKey

  -- for ExchangePropertyValue
  gDEBUG_StopAtEachProcessing =  N
  gDEBUG_StopAfterScript =       N
  gDEBUG_ScriptType =            N
  gDEBUG_ScriptContent =         N
                                 
  _mISxxx =                      N
  gDEBUG_BeforeEXTRA_BEHAVIOR =  N
  gDEBUG_GROUPS =                N
  gDEBUG_WISS =                  N
  gDEBUG_VCTproperty =           Y
  gDEBUG_TableToStringCount =    N -- ###  ----
  gDEBUG_Before_Value_match =    N
  gDEBUG_repl_done =             N
  gDEBUG_LoopBreak =             Y
  gDEBUG_CurrentLine =           Y -- @@@
  gDEBUG_AddSectionsIntoTable =  N
  gDEBUG_ReplaceRAW =            N -- @@@
  gDEBUG_TextToAdd =             Y -- ===
  gDEBUG_TextToRemove =          N
  gDEBUG_SECTION =               Y
  gDEBUG_CheckPoint =            N
  
  -- for FindGroup               
  gDEBUG_FindGroup =             N
  gDEBUG_CheckUniqueness =       N

  if gDEBUG_ScriptContent then DEBUG_ScriptContent_print = DEBUG_print end
  if gDEBUG_GROUPS then DEBUG_GROUPS_print = DEBUG_print end
  if gDEBUG_WISS then DEBUG_WISS_print = DEBUG_print end
  if gDEBUG_VCTproperty then DEBUG_VCTproperty_print = DEBUG_print end
  if gDEBUG_TableToStringCount then DEBUG_TableToStringCount_print = DEBUG_print end
  if gDEBUG_LoopBreak then DEBUG_LoopBreak_print = DEBUG_print end
  if gDEBUG_CurrentLine then DEBUG_CurrentLine_print = DEBUG_print end
  if gDEBUG_AddSectionsIntoTable then DEBUG_AddSectionsIntoTable_print = DEBUG_print end
  if gDEBUG_ReplaceRAW then DEBUG_ReplaceRAW_print = DEBUG_print end
  if gDEBUG_TextToAdd then DEBUG_TextToAdd_print = DEBUG_print end
  if gDEBUG_TextToRemove then DEBUG_TextToRemove_print = DEBUG_print end
  if gDEBUG_SECTION then DEBUG_SECTION_print = DEBUG_print end
  if gDEBUG_FindGroup then DEBUG_FindGroup_print = DEBUG_print end
end

--END: DEBUGGING

if not gDEBUG_CheckPoint then
  CheckPoint = function() end
end
CheckPoint(1)

--************
pre_processScripts()
CheckPoint(98)

Report_flush()

CheckPoint(99)
pv(THIS.."ending")
LuaEndedOk(THIS)
if LDebug then print("***     ENDING LoadAndExecuteModScript.lua") end
