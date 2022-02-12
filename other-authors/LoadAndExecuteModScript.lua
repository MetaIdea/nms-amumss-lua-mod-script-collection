-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function HandleModScript(MOD_DEF,Multi_pak)
  pv(THIS.."From HandleModScript()")
  
  if Multi_pak == nil then Multi_pak = false end

  local file = ""
  local FullPathFile = ""
  local AtLeastOne_EXML_CHANGE_TABLE = false
  
  local NumReplacements = 0
  local NumFilesAdded = 0
  
  local UserScriptName = LoadFileData("CurrentModScript.txt")
  UserScriptName = string.sub(UserScriptName,string.len(gMASTER_FOLDER_PATH..[[ModScript\]])+1)
  
  --***************************************************************************************************  
  local function ExecuteREGEX(From,Command)
    -- print("")
    local spacer = "      "
    if _bOS_bitness == "64" then
      print(spacer..From..": Using 64bit version")
      Report("","  "..From.."  : Using 64bit version")
      os.execute([[sed-4.7-x64.exe ]]..Command)
    else
      print(spacer..From..": Using 32bit version")
      Report("","  "..From.."  : Using 32bit version")
      os.execute([[sed-4.7.exe ]]..Command)
    end
    print(spacer..From..": "..Command)
    Report("","  "..From.."  : "..Command)
  end
  --***************************************************************************************************  

  local say = LoadFileData("CurrentModScript.txt")
  -- because string.gsub pattern does not work with all folder names (ex.: ".")
  if string.find(say,gMASTER_FOLDER_PATH..[[ModScript\]],1,true) ~= nil then
    local start = string.find(say,gMASTER_FOLDER_PATH..[[ModScript\]],1,true)
    say = string.sub(say,1,start - 1)..string.sub(say,string.len(gMASTER_FOLDER_PATH..[[ModScript\]]) + start)
  end
  Report(say,">>>>>>> Loaded script")
  
  if MOD_DEF["MODIFICATIONS"]~=nil then
    for n=1,#MOD_DEF["MODIFICATIONS"] do
      local EXML_CHANGE_TABLE_fields_IsNil = false
      local EXML_CHANGE_TABLE_fields_IsString = false
      for m=1,#MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"] do
      
        local NEW_FILEPATH_AND_NAME = {}
        local REMOVE_FLAG = {}
        local mbin_file_source = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"]
        
        --=================== Test which mbin_file_source alt syntax is used ========================
        if type(mbin_file_source) ~= "table" then
          --alternate syntax #1
          pv("alt syntax #1: only a string.  Make it a table, we want a table!")
          mbin_file_source = {}
          mbin_file_source[1] = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"]
          NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = ""
          REMOVE_FLAG[#REMOVE_FLAG+1] = ""
          
          --for Conflicts
          pv("#1 [a String]: "..mbin_file_source[1]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
          WriteToFileAppend(mbin_file_source[1]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
        else
          local tempTable = {}
          local tempConflicts = {}
          for i=1,#mbin_file_source do
            if type(mbin_file_source[i]) == "table" then
              --alternate syntax #3
              --handle MBIN_FILE_SOURCE as a table of tables
              pv("alt syntax #3: Convert mbin_file_source to a simple table")
              tempTable[#tempTable+1] = mbin_file_source[i][1]
              
              --and save info for NEW_FILEPATH_AND_NAME
              NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = mbin_file_source[i][2]
              if mbin_file_source[i][3] == nil then
                REMOVE_FLAG[#REMOVE_FLAG+1] = ""
              else
                REMOVE_FLAG[#REMOVE_FLAG+1] = mbin_file_source[i][3]
              end
              
              --for Conflicts
              if REMOVE_FLAG[#REMOVE_FLAG] == "" then
                pv("#3.1: Adding to tempConflicts "..mbin_file_source[i][1])
                tempConflicts[#tempConflicts+1] = mbin_file_source[i][1]
              else
                pv("["..REMOVE_FLAG[#REMOVE_FLAG].."]")
                --let us remove any sign of mbin_file_source[i][1] in tempConflicts
                for tC=#tempConflicts,-1 do
                  if tempConflicts[tC] == mbin_file_source[i][1] then
                    table.remove(tempConflicts,tC)
                  end
                end
              end
              pv("#3.2 [T of T]: "..mbin_file_source[i][2]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
              WriteToFileAppend(mbin_file_source[i][2]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
            
            else
              --alternate syntax #2
              pv("alt syntax #2: Handle MBIN_FILE_SOURCE as a table only")
              tempTable[#tempTable+1] = mbin_file_source[i]
              NEW_FILEPATH_AND_NAME[#NEW_FILEPATH_AND_NAME+1] = ""
              REMOVE_FLAG[#REMOVE_FLAG+1] = ""
              
              --for Conflicts
              pv("#2 [T of String(s)]: "..mbin_file_source[i]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
              WriteToFileAppend(mbin_file_source[i]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
            end            
          end

          --if some were left, register them
          pv("#tempConflicts = "..#tempConflicts)
          for tC=1,#tempConflicts do
            pv("#3.1 [T of T]: "..tempConflicts[tC]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"])
            WriteToFileAppend(tempConflicts[tC]..", "..UserScriptName..": "..MOD_DEF["MOD_FILENAME"].."\n", "MBIN_PAKS.txt")
          end
          
          mbin_file_source = tempTable
        end
        --=================== end: Test which mbin_file_source alt syntax is used ========================
        
        for u=1,#mbin_file_source do
          --change MBIN.PC/MBIN to EXML
          file = string.gsub(mbin_file_source[u],[[%.MBIN%.PC]],[[.MBIN]])
          file = string.gsub(file,[[%.MBIN]],[[.EXML]])
          
          file = string.gsub(file,[[/]],[[\]])
          file = string.gsub(file,[[\\]],[[\]])
          
          FullPathFile = gMASTER_FOLDER_PATH..gLocalFolder..file
          print("--------------------------------------------------------------------------------------")
          print("\n".._zRED..">>> " .. file.._zDEFAULT)
          Report("",">>> " .. file)
          
          --MBINCompiler handles:
          --    *.MBIN -> *.EXML -> *.MBIN  
          --    *.GEOMETRY.MBIN.PC -> *.GEOMETRY.EXML -> *.GEOMETRY.MBIN.PC  
          --    *.GEOMETRY.DATA.MBIN.PC -> *.GEOMETRY.DATA.EXML -> *.GEOMETRY.DATA.MBIN.PC
          
          if #NEW_FILEPATH_AND_NAME > 0 and NEW_FILEPATH_AND_NAME[u] ~= nil and NEW_FILEPATH_AND_NAME[u] ~= "" then
            --user asked to create a new file
            --try to change all / to \
            NEW_FILEPATH_AND_NAME[u] = NormalizePath(NEW_FILEPATH_AND_NAME[u])
            -- print()
            print("    => Copying/renaming this file to ["..NEW_FILEPATH_AND_NAME[u].."]")
            Report("","=> Copying/renaming this file to ["..NEW_FILEPATH_AND_NAME[u].."]")
            --change MBIN.PC/MBIN to EXML
            NEW_FILEPATH_AND_NAME[u] = string.gsub(NEW_FILEPATH_AND_NAME[u],[[%.MBIN%.PC]],[[.MBIN]])
            NEW_FILEPATH_AND_NAME[u] = string.gsub(NEW_FILEPATH_AND_NAME[u],[[%.MBIN]],[[.EXML]])
            --xcopy original file to its new folder in MOD with new name
            local FilePathSource = [[MOD\]]..file
            local FilePathDestination = [[MOD\]]..NEW_FILEPATH_AND_NAME[u]..[[*]]
            -- print("*** ["..FilePathSource.."]")
            -- print("*** ["..FilePathDestination.."]")
            os.execute([[START /wait "" /B /MIN cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FilePathDestination..[[" 1>NUL 2>NUL]])	
            
            if REMOVE_FLAG[u] == "REMOVE" then
              --delete original file from its folder
              print("    => Removing this file")
              Report("","=> Removing this file")
              os.remove(FilePathSource)
              --remove original empty folder(s), if any
              local FolderPath = [[MOD\]]..GetFolderPathFromFilePath(file)
              -- print("["..FolderPath.."]")
              repeat
                --to remove all empty folders in the path
                os.execute([[START /wait "" /B /MIN cmd /c rd /q "]]..FolderPath..[[" 1>NUL 2>NUL]])	
                -- os.execute([[START /wait "" /B /MIN cmd /c rd /q "]]..FolderPath..[["]])
                FolderPath = GetFolderPathFromFilePath(FolderPath)
                -- print("["..FolderPath.."]")
              until FolderPath == ""
            end
          end
          
          --=================== REGEXBEFORE ========================
          if MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["REGEXBEFORE"] ~= nil then
            local regexbefore = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["REGEXBEFORE"]
            if type(regexbefore) ~= "table" then
              print("")
              print(">>> ERROR: REGEXBEFORE is not a table, please correct your script")
              Report("","REGEXBEFORE is not a table, please correct your script","ERROR")
            end
            for i=1,#regexbefore do
              local ToFindRegex = string.gsub(regexbefore[i][1],[[\\]],[[\]])
              ToFindRegex = string.gsub(regexbefore[i][1],[["]],[[\"]])
              local ToReplaceRegex = string.gsub(regexbefore[i][2],[[\\]],[[\]])
              ToReplaceRegex = string.gsub(regexbefore[i][2],[["]],[[\"]])
              if ToFindRegex == nil or ToReplaceRegex == nil then
                print("")
                print(">>> ERROR: missing REGEXBEFORE member, please correct your script")
                Report("","missing REGEXBEFORE member, please correct your script","ERROR")
              else
                if ToFindRegex ~= "" then
                  local From = "REGEXBEFORE"
                  local Command = [[-i -r "s/]]..ToFindRegex..[[/]]..ToReplaceRegex..[[/" "]]..FullPathFile..[["]]
                  --for debug purposes
                  -- Command = string.sub(Command,4)..[[ > "]]..From..[[_output.txt"]]
                  ExecuteREGEX(From,Command)
                end
              end
            end
          end
          --=================== end REGEXBEFORE ========================
          
          --=================== XLST ========================
          if MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["XLST"] ~= nil then
            local xlst = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["XLST"]
            local tempXslFileName = os.tmpname()
            local tempXslFile = io.open(tempXslFileName, "w")
            tempXslFile:write(xlst)
            io.close(tempXslFile)
            os.execute([[powershell.exe .\transform-xml.ps1 ]]..tempXslFileName..[[ ]]..FullPathFile)
            os.remove(tempXslFileName)
          end
          --=================== end XLST ========================

          local TextFileTable = ParseTextFileIntoTable(FullPathFile) --the EXML file in MOD
          
          if #TextFileTable == 0 then
            if REMOVE_FLAG[u] ~= "REMOVE" then
              --this file does not exist, skip it
              print(">>> ERROR: file does not exist!")
              Report("","file does not exist! See above for source...","ERROR")
            end
          else
            
            --=================== create MapFileTrees of original EXML only... ========================
            local src = [[.\_TEMP\DECOMPILED\]]..file
            if IsFileExist(src) then
              if _bRecreateMapFileTrees ~= nil then
                if _bAllowMapFileTreeCreator ~= nil then
                  print("    MapFileTree creation/update on 2nd thread...")
                  Report("","    MapFileTree creation/update done by 2nd thread")
                  
                  --copy it to a temp folder for processing
                  --because it may be removed later before creation is started/completed
                  local src = [[.\_TEMP\DECOMPILED\]]..file
                  local dest = [[.\_TEMP_MAP\]]..file
                  CopyFile(src,dest)
                  
                  if IsFileExist([[MapFileTreeSharedList.txt]]) then
                    WriteToFileAppend(file.."\n",[[MapFileTreeSharedList.txt]])
                  else
                    WriteToFile(file.."\n",[[MapFileTreeSharedList.txt]])
                  end
                else
                  --in this thread processing
                  DisplayMapFileTreeEXT(ParseTextFileIntoTable([[.\_TEMP\DECOMPILED\]]..file),file)
                end
              else
                print("    Skipping MapFileTree creation/update")
                -- Report("","    Skipping MapFileTree creation/update")
              end
            else
              print("    Skipping MapFileTree creation/update, comes from a PAK")
              Report("","    Skipping MapFileTree creation/update, comes from a PAK")
            end
            --=================== end create MapFileTrees ========================
            
            local ReplaceNumber = 0
            local ADDNumber = 0
            local REMOVENumber = 0
            
            if MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"] ~= nil then
              AtLeastOne_EXML_CHANGE_TABLE = true
              MissingCurlyBracketsWarning = false
              if type(MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][1]) ~= "table" then
                MissingCurlyBracketsWarning = true
              end
            
              for i=1,#MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"] do
                if type(MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"]) == "string" then
                  print([[>>> WARNING: EXML_CHANGE_TABLE entry is a STRING, verify your script"]])
                  Report("",[[>>> EXML_CHANGE_TABLE entry is a STRING, verify your script]],"WARNING")          
                  EXML_CHANGE_TABLE_fields_IsString = true
                  break
                end
                
                local EXML_CHANGE_TABLE_fields = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]

                EXML_CHANGE_TABLE_fields_IsTableOfTables = false
                if EXML_CHANGE_TABLE_fields == nil then
                  print([[>>> WARNING: EXML_CHANGE_TABLE entry is NIL, verify your script"]])
                  Report("",[[>>> EXML_CHANGE_TABLE entry is NIL, verify your script]],"WARNING")          
                  EXML_CHANGE_TABLE_fields_IsNil = true
                  break
                else
                  if EXML_CHANGE_TABLE_fields[1] ~= nil then
                    EXML_CHANGE_TABLE_fields_IsTableOfTables = true
                  end
                end
                
                local ReplNumber,ADDcount,REMOVEcount = ExchangePropertyValue(
                      FullPathFile,
                      EXML_CHANGE_TABLE_fields["VALUE_CHANGE_TABLE"],
                      EXML_CHANGE_TABLE_fields["SPECIAL_KEY_WORDS"],
                      EXML_CHANGE_TABLE_fields["PRECEDING_KEY_WORDS"],
                      EXML_CHANGE_TABLE_fields["PRECEDING_FIRST"],
                      EXML_CHANGE_TABLE_fields["SECTION_UP"],
                      EXML_CHANGE_TABLE_fields["WHERE_IN_SECTION"],
                      EXML_CHANGE_TABLE_fields["SAVE_SECTION_TO"],
                      EXML_CHANGE_TABLE_fields["SAVE_SECTION_ACROSS"],
                      EXML_CHANGE_TABLE_fields["USE_SECTION"],
                      EXML_CHANGE_TABLE_fields["MATH_OPERATION"],
                      EXML_CHANGE_TABLE_fields["INTEGER_TO_FLOAT"],
                      EXML_CHANGE_TABLE_fields["VALUE_MATCH"],
                      EXML_CHANGE_TABLE_fields["REPLACE_TYPE"],
                      EXML_CHANGE_TABLE_fields["VALUE_MATCH_TYPE"],
                      EXML_CHANGE_TABLE_fields["VALUE_MATCH_OPTIONS"],
                      EXML_CHANGE_TABLE_fields["LINE_OFFSET"],
                      EXML_CHANGE_TABLE_fields["ADD"],
                      EXML_CHANGE_TABLE_fields["REMOVE"],
                      EXML_CHANGE_TABLE_fields_IsTableOfTables,
                      MissingCurlyBracketsWarning
                    )					
                ReplaceNumber = ReplaceNumber + ReplNumber
                ADDNumber = ADDNumber + ADDcount
                REMOVENumber = REMOVENumber + REMOVEcount
              end
              
              if EXML_CHANGE_TABLE_fields_IsNil or EXML_CHANGE_TABLE_fields_IsString then
                break
              end
              
              print("")
              if ADDNumber > 0 then
                Report(ADDNumber.." ADD(s) made","  Ended processing with")
                print("    >>>>> "..ADDNumber.." ADD(s) made <<<<<")
              end
              if REMOVENumber > 0 then
                Report(REMOVENumber.." REMOVE(s) made","  Ended processing with")
                print("    >>>>> "..REMOVENumber.." REMOVE(s) made <<<<<")
              end
              if (ADDNumber > 0 or REMOVENumber > 0 ) and ReplaceNumber > 0 then
                Report(ReplaceNumber.." EXCHANGED made","  Ended processing with")
                print("    >>>>> "..ReplaceNumber.." EXCHANGED made <<<<<")
              end
              Report(file,"  File ")
              Report("","  Ended with a total of "..(ReplaceNumber + ADDNumber + REMOVENumber).." action(s) made")
              print("    >>>>> Ended with a total of "..(ReplaceNumber + ADDNumber + REMOVENumber).." action(s) made <<<<<\n")
              NumReplacements = NumReplacements + ReplaceNumber + ADDNumber + REMOVENumber
              if THIS == "In TestReCreatedScript: " then CheckReCreatedEXMLAgainstOrg(file) end
            -- else
              -- NoEXML_CHANGE_TABLE = true
              -- -- print("[INFO] [\"MODIFICATIONS\"] has no [\"EXML_CHANGE_TABLE\"]")
              -- -- Report("","[\"MODIFICATIONS\"] has no [\"EXML_CHANGE_TABLE\"]")
            end
            -- print("   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
          end
          
          --=================== REGEXAFTER ========================
          if MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["REGEXAFTER"] ~= nil then
            local regexafter = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["REGEXAFTER"]
            if type(regexafter) ~= "table" then
              print("")
              print(">>> ERROR: REGEXAFTER is not a table, please correct your script")
              Report("","REGEXAFTER is not a table, please correct your script","ERROR")
            end
            for i=1,#regexafter do
              local ToFindRegex = string.gsub(regexafter[i][1],[[\\]],[[\]])
              ToFindRegex = string.gsub(regexafter[i][1],[["]],[[\"]])
              local ToReplaceRegex = string.gsub(regexafter[i][2],[[\\]],[[\]])
              ToReplaceRegex = string.gsub(regexafter[i][2],[["]],[[\"]])
              if ToFindRegex == nil or ToReplaceRegex == nil then
                print("")
                print(">>> ERROR: missing REGEXAFTER member, please correct your script")
                Report("","missing REGEXAFTER member, please correct your script","ERROR")
              else
                if ToFindRegex ~= "" then
                  print("")
                  local From = "REGEXAFTER"
                  local Command = [[-i -r "s/]]..ToFindRegex..[[/]]..ToReplaceRegex..[[/" "]]..FullPathFile..[["]]
                  --for debug purposes
                  -- Command = string.sub(Command,4)..[[ > "]]..From..[[_output.txt"]]
                  ExecuteREGEX(From,Command)
                end
              end
            end
          end
          --=================== end REGEXAFTER ========================
        end --for u=1,#mbin_file_source do
      end --for m=1,#MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"] do

      if EXML_CHANGE_TABLE_fields_IsNil or EXML_CHANGE_TABLE_fields_IsString then
        break
      end
      
    end --for n=1,#MOD_DEF["MODIFICATIONS"] do
  end --if MOD_DEF["MODIFICATIONS"]~=nil then

	--Add new files
	if MOD_DEF["ADD_FILES"]~=nil then
    print("")
    print(">>> Adding files:")
    Report("")
    Report("",">>> Adding files:")
		for i=1,#MOD_DEF["ADD_FILES"] do
      local ShortFilenamePath = NormalizePath(MOD_DEF["ADD_FILES"][i]["FILE_DESTINATION"])
			local FolderPath = gMASTER_FOLDER_PATH .. gLocalFolder .. GetFolderPathFromFilePath(ShortFilenamePath)..[[\]]
			local FilePath = gMASTER_FOLDER_PATH .. gLocalFolder .. ShortFilenamePath
			local _,count = string.gsub(ShortFilenamePath,[[\]],"")	
			if count > 0 then
        if not FolderExists(string.gsub(FolderPath,[[\]],[[\\]])) then
          print("      create folder: " .. FolderPath)
          Report("","      create folder: " .. FolderPath)
          FolderPath = string.gsub(FolderPath,[[\]],[[\\]])
          os.execute([[START /wait "" /B /MIN cmd /c mkdir ]]..[["]]..FolderPath..[["]])	
        end
			end 
			print("        create file: "..FilePath)
			Report("","        create file: "..[["]]..FilePath..[["]])
			if MOD_DEF["ADD_FILES"][i]["EXTERNAL_FILE_SOURCE"]==nil or MOD_DEF["ADD_FILES"][i]["EXTERNAL_FILE_SOURCE"]=="" then
        FilePath = string.gsub(FilePath,[[\]],[[\\]])
				local FileData = MOD_DEF["ADD_FILES"][i]["FILE_CONTENT"]
				WriteToFile(string.gsub(FileData,"\n","",1), FilePath)
			else
				local FilePathSource = GetFolderPathFromFilePath(LoadFileData("CurrentModScript.txt")) .. [[\]] .. MOD_DEF["ADD_FILES"][i]["EXTERNAL_FILE_SOURCE"]
				--local FileData = LoadFileData(FilePathSource)
				--WriteToFile(FileData, FilePath)
				os.execute([[START /wait "" /B /MIN cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FolderPath..[[*"]])	
			end
			NumFilesAdded=NumFilesAdded+1
		end
    print("\n    >>>>> Ended with "..NumFilesAdded .. " files added <<<<<\n")
    Report("","\n    >>>>> Ended with "..NumFilesAdded .. " files added <<<<<\n")
	end
  
  if AtLeastOne_EXML_CHANGE_TABLE and MOD_DEF["MODIFICATIONS"]~=nil and NumReplacements == 0 then
    print(">>> WARNING: No replacement done. Please verify your script, if not intended")
    Report(say," No replacement done. Please verify your script, if not intended","WARNING")
  end
  if MOD_DEF["ADD_FILES"]~=nil and NumFilesAdded == 0 then
    print(">>> WARNING: No file added. Please verify your script")
    Report(say," No file added. Please verify your script","WARNING")
  end
  
  if AtLeastOne_EXML_CHANGE_TABLE then
    if Multi_pak then
      Report(NumReplacements.." action(s), "..NumFilesAdded .. " files added","Ended sub-script processing with")
    else
      Report(NumReplacements.." action(s), "..NumFilesAdded .. " files added","Ended script processing with")
    end
    
    print("\n*************************************************************************")
    print("    >>>>> Ended all with "..NumReplacements.." action(s) made and "..NumFilesAdded .. " files added <<<<<")
    print("*************************************************************************\n")
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
  -- *file (ORG EXML)        gMASTER_FOLDER_PATH..[[\SCRIPTBUILDER\MOD\]]..string.gsub(MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"],"%.MBIN",".EXML"),
  local temp = gMASTER_FOLDER_PATH..gLocalFolder..file
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
  
  temp = string.gsub(temp,gLocalFolder,[[\Modified_PAK\DECOMPILED\]])

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
  print()
  Report("")
  pv(THIS.."From end of CheckReCreatedEXMLAgainstOrg()")
end

--***************************************************************************************************
function GetSpecKeyWordsInfo(spec_key_words)
  local Info = ""
  for i=1,#spec_key_words,2 do
    Info = Info.."(["..spec_key_words[i].."],["..spec_key_words[i+1].."]), "
  end
  Info = string.sub(Info,1,-3)
  return Info
end

--***************************************************************************************************
function GetPrecKeyWordsInfo(prec_key_words)
  local Info = ""
  for i=1,#prec_key_words do
    Info = Info.."["..prec_key_words[i].."], "
  end
  return string.sub(Info,1,#Info - 2)
end

--***************************************************************************************************
function GetWhereInSectionInfo(WhereKeyWords)
  local Info = ""
  for i=1,#WhereKeyWords,2 do
    Info = Info.."(["..WhereKeyWords[i][1].."],["..WhereKeyWords[i][2].."]), "
  end
  Info = string.sub(Info,1,-3)
  return Info
end

--***************************************************************************************************
function MapFileTreeSharedListPING()
  if IsFileExist([[MapFileTreeSharedList.txt]]) then
    WriteToFileAppend("PING".."\n",[[MapFileTreeSharedList.txt]])
  end
end

--[=[
ExchangePropertyValue(
*file (ORG EXML)            gMASTER_FOLDER_PATH..gLocalFolder..string.gsub(MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["MBIN_FILE_SOURCE"],".MBIN",".EXML")
*value_change_table         ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_CHANGE_TABLE"]
*special_key_words          ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SPECIAL_KEY_WORDS"]
*preceding_key_words        ,PRECEDING_KEY_WORDS_SUB [==]PRECEDING_KEY_WORDS_SUB = MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["PRECEDING_KEY_WORDS"][==]
preceding_first             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["PRECEDING_FIRST"]
section_up                  ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SECTION_UP"]
where_key_words             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["WHERE_IN_SECTION"]
save_section_to             ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SAVE_SECTION_TO"]
save_section_across         ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["SAVE_SECTION_ACROSS"]
use_section                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["USE_SECTION"]
math_operation              ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["MATH_OPERATION"]
integer_to_float            ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["INTEGER_TO_FLOAT"]
value_match                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH"]
replace_type                ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["REPLACE_TYPE"]
value_match_type            ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH_TYPE"]
value_match_options         ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["VALUE_MATCH_OPTIONS"]
line_offset                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["LINE_OFFSET"]
text_to_add                 ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["ADD"]
to_remove                   ,MOD_DEF["MODIFICATIONS"][n]["MBIN_CHANGE_TABLE"][m]["EXML_CHANGE_TABLE"][i]["REMOVE"]
EXML_CHANGE_TABLE_fields_IsTableOfTables        ,EXML_CHANGE_TABLE_fields_IsTableOfTables
MissingCurlyBracketsWarning ,MissingCurlyBracketsWarning
)
* = needed for SCRIPTBUILDER script.lua					
--]=]

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
--called each time with all property/value combo in value_change_table
function ExchangePropertyValue(file,value_change_table,special_key_words,preceding_key_words,preceding_first,section_up,where_key_words
          ,save_section_to,save_section_across,use_section
          ,math_operation,integer_to_float
          ,value_match,replace_type,value_match_type,value_match_options
          ,line_offset,text_to_add,to_remove
          ,EXML_CHANGE_TABLE_fields_IsTableOfTables,MissingCurlyBracketsWarning)

  print("")
  print("   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
  print("                         processing, please wait...")
  
  if EXML_CHANGE_TABLE_fields_IsTableOfTables then
    print([[>>> WARNING: EXML_CHANGE_TABLE entry is a 'table of tables' instead of a simple table: probably too many {} in your script"]])
    Report("",[[>>> EXML_CHANGE_TABLE entry is a 'table of tables' instead of a simple table: probably too many {} in your script]],"WARNING")
  end
          
  if MissingCurlyBracketsWarning then
    print([[>>> WARNING: EXML_CHANGE_TABLE entry is Missing Curly Brackets, in your script"]])
    Report("",[[>>> EXML_CHANGE_TABLE entry is Missing Curly Brackets, in your script]],"WARNING")
  end
          
  -- *****************   IsMath_Operation section   ********************
  local IsMath_Operation = false
  if math_operation == nil then math_operation = "" end
  if string.len(math_operation) > 0 then
    IsMath_Operation = true
  end
  --***************************************************************************************************  
  
  -- *****************   value_change_table section   ********************
  local val_change_table = {{"",""}}
  local IsChangeTable = false
  
  if value_change_table == nil then
    val_change_table[1][1] = "IGNORE"
    val_change_table[1][2] = "IGNORE"
  else 
    if type(value_change_table) ~= "table" then
      --not a table, just one word
      if value_change_table == "" then
        val_change_table[1][1] = "IGNORE"
        val_change_table[1][2] = "IGNORE"
      else
        --Make it a table, we want a table!
        val_change_table[1][1] = value_change_table
        val_change_table[1][2] = value_change_table
      end
    else
      --already a table, use it
      val_change_table = value_change_table
    end
  end
  
  if (#val_change_table > 0) and (val_change_table[1] ~= "" or val_change_table[2] ~= "") then
    IsChangeTable = true
  end

  for i=1,#val_change_table do
    val_change_table[i][1] = tostring(val_change_table[i][1])
    pv(val_change_table[i][1])
    if val_change_table[i][1] == "nil" then
      --we have a problem, should not be nil
      print([[>>> ERROR: In your script, a VALUE_CHANGE_TABLE "Property name/value" below is NIL, please correct!]])
      Report("",[[>>> In your script, a VALUE_CHANGE_TABLE "Property name/value" below is NIL, please correct!]],"ERROR")
      if IsMath_Operation then
        val_change_table[i][1] = "0" --to prevent a crash
      else
        val_change_table[i][1] = "NIL" --to prevent a crash
      end
    end
    val_change_table[i][2] = tostring(val_change_table[i][2])
    pv(val_change_table[i][2])
    if val_change_table[i][2] == "nil" then
      --we have a problem, should not be nil
      print([[>>> ERROR: In your script, VALUE_CHANGE_TABLE "newvalue" (for "]]..val_change_table[i][1]..[[" below) is NIL, please correct!]])
      Report("",[[>>> In your script VALUE_CHANGE_TABLE "newvalue" (for "]]..val_change_table[i][1]..[[" below) is NIL, please correct!]],"ERROR")
      if IsMath_Operation then
        val_change_table[i][2] = "NIL" --to prevent a crash
      else
        val_change_table[i][2] = "NIL" --to prevent a crash
      end
    end
    val_change_table[i][1] = string.gsub(val_change_table[i][1],[[\\]],[[\]])
    val_change_table[i][2] = string.gsub(val_change_table[i][2],[[\\]],[[\]])
  end
  
  --  *******************************************************
  -- FROM HERE ON [value_change_table] is know as [val_change_table] (a table)
  --  *******************************************************
  
  -- *****************   integer_to_float section   ********************
  if integer_to_float == nil or integer_to_float == "" then
    integer_to_float = "PRESERVE" 
  end
  integer_to_float = string.upper(integer_to_float)
  
  local IsInteger_to_float = (integer_to_float ~= "")
  local IsInteger_to_floatPRESERVE = (integer_to_float == "PRESERVE")
  local IsInteger_to_floatFORCE = (integer_to_float == "FORCE")
  if IsInteger_to_float and not (IsInteger_to_floatPRESERVE or IsInteger_to_floatFORCE) then
    print([[>>> WARNING: INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]])
    Report(integer_to_float,[[>>> INTEGER_TO_FLOAT value is incorrect, should be "", "FORCE" or "PRESERVE"]],"WARNING")
  end
    
    -- *****************   save_section_to section   ********************
  if save_section_to == nil then
    save_section_to = "" 
  end
  local IsSaveSectionTo = (save_section_to ~= "")
  if save_section_to ~= "" and tonumber(save_section_to) ~= nil then 
    print([[>>> WARNING: SAVE_SECTION_TO is not a valid user_name_of_section STRING, it won't be used!]])
    Report(save_section_to,[[>>> SAVE_SECTION_TO is not a valid user_name_of_section STRING, it won't be used!]],"WARNING")
    save_section_to = ""
  end
  
  if IsSaveSectionTo then
    gSaveSectionName[#gSaveSectionName+1] = save_section_to
    gSaveSectionContent[#gSaveSectionContent+1] = ""
  end
  
  -- *****************   save_section_across section   ********************
  if save_section_across == nil then
    save_section_across = "" 
  end
  save_section_across = string.upper(save_section_across)
  
  local IsSaveSectionAcross = (save_section_across ~= "")
  local IsSaveSectionAcrossTRUE = (save_section_across == "TRUE")
  local IsSaveSectionAcrossFALSE = (save_section_across == "FALSE")
  if IsPrecedingFirst and not (IsPrecedingFirstTRUE or IsPrecedingFirstFALSE) then
    print([[>>> WARNING: SAVE_SECTION_ACROSS value is incorrect, should be "", "TRUE" or "FALSE"]])
    Report(save_section_across,[[>>> SAVE_SECTION_ACROSS value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

    -- *****************   use_section section   ********************
  if use_section == nil then
    use_section = "" 
  end
  local IsUseSection = (use_section ~= "")
  if use_section ~= "" and tonumber(use_section) ~= nil then 
    print([[>>> WARNING: USE_SECTION is not a valid user_name_of_section STRING, it won't be used!]])
    Report(use_section,[[>>> USE_SECTION is not a valid user_name_of_section STRING, it won't be used!]],"WARNING")
    use_section = ""
  end
  
  if IsUseSection then
    --check if this section name already exist in internal USE_SECTION list
    local SectionAlreadyExist = false
    for m=1,#gUseSectionName do
      if gUseSectionName[m] == use_section then
        --nothing more to do right now
        print("@@@@@ Found use_section in internal USE_SECTION list")
        SectionAlreadyExist = true
        break
      end
    end
    
    if not SectionAlreadyExist then        
      --check if it is in the internal SAVE_SECTION_TO list
      local found = false
      for m=1,#gSaveSectionName do
        if gSaveSectionName[m] == use_section then
          --retrieve the section
          print("@@@@@ Found use_section in the internal SAVE_SECTION_TO list")
          gUseSectionName[#gUseSectionName+1] = use_section
          gUseSectionContent[#gUseSectionContent+1] = gSaveSectionContent[m]
          found = true
          break
        end
      end
      
      if not found then
        --try to read back the lines from a file in the SavedSections folder using the USE_SECTION name.txt
        if IsFileExist(gMASTER_FOLDER_PATH..[[SavedSections\]]..use_section..[[.txt]]) then
          print("@@@@@ Found use_section in a file in the SavedSections folder using the USE_SECTION name.txt")
          gUseSectionName[#gUseSectionName+1] = use_section
          gUseSectionContent[#gUseSectionContent+1] = LoadFileData(gMASTER_FOLDER_PATH..[[SavedSections\]]..use_section..[[.txt]])
        else
          --no such named section exist
          print("@@@@@ DID NOT find use_section: BAD NAME?")
          gUseSectionName[#gUseSectionName+1] = use_section
          gUseSectionContent[#gUseSectionContent+1] = ""
        end
      end
    end
  end
  
    -- *****************   text_to_add section   ********************
  if text_to_add == nil then
    text_to_add = "" 
  end
  text_to_add = string.gsub(text_to_add,[[\\]],[[\]])
  local IsTextToAdd = (text_to_add ~= "")
  
  -- *****************   to_remove section   ********************
  if to_remove == nil then
    to_remove = "" 
  end
  to_remove = string.upper(to_remove)
  
  local IsToRemove = (to_remove ~= "")
  local IsToRemoveLINE = (to_remove == "LINE")
  local IsToRemoveSECTION = (to_remove == "SECTION")
  if IsToRemove and not (IsToRemoveLINE or IsToRemoveSECTION) then
    print([[>>> WARNING: REMOVE value is incorrect, should be "", "LINE" or "SECTION"]])
    Report(to_remove,[[>>> REMOVE value is incorrect, should be "", "LINE" or "SECTION"]],"WARNING")
  elseif IsTextToAdd and IsToRemove then
    print([[>>> WARNING: BOTH ADD and REMOVE are used in this EXML_CHANGE_TABLE section]])
    Report("",[[>>> BOTH ADD and REMOVE are used in this EXML_CHANGE_TABLE section]],"WARNING")
  end
    
  -- *****************   preceding_first section   ********************
  if preceding_first == nil then
    preceding_first = "" 
  end
  preceding_first = string.upper(preceding_first)
  
  local IsPrecedingFirst = (preceding_first ~= "")
  local IsPrecedingFirstTRUE = (preceding_first == "TRUE")
  local IsPrecedingFirstFALSE = (preceding_first == "FALSE")
  if IsPrecedingFirst and not (IsPrecedingFirstTRUE or IsPrecedingFirstFALSE) then
    print([[>>> WARNING: PRECEDING_FIRST value is incorrect, should be "", "TRUE" or "FALSE"]])
    Report(preceding_first,[[>>> PRECEDING_FIRST value is incorrect, should be "", "TRUE" or "FALSE"]],"WARNING")
  end

  -- *****************   replace_type section   ********************
  if replace_type == nil then
    replace_type = "" 
  end
  replace_type = string.upper(replace_type)
  
  local IsReplaceALL = (replace_type == "ALL")
  local IsReplaceALLFOLLOWING = (replace_type == "ALLFOLLOWING")
  local IsReplaceRAW = (replace_type == "RAW")
  local IsReplaceADDAFTERSECTION = (replace_type == "ADDAFTERSECTION") and IsTextToAdd
  
  --Wbertro: ALLFOLLOWING may not be working yet?
  if IsReplaceALLFOLLOWING then
    print([[>>> WARNING: REPLACE_TYPE value of "ALLFOLLOWING" may not be working yet]])
    Report(replace_type,[[>>> REPLACE_TYPE value of "ALLFOLLOWING" may not be working yet]],"WARNING")    
  end
  
  local IsReplace = (replace_type ~= "")
  if IsReplace then
    if not IsTextToAdd and not (IsReplaceALL or IsReplaceALLFOLLOWING or IsReplaceRAW) then
      print([[>>> WARNING: REPLACE_TYPE value is incorrect, should only be "", "ALL", "ALLFOLLOWING" or "RAW"]])
      Report(replace_type,[[>>> REPLACE_TYPE value is incorrect, should only be "", "ALL", "ALLFOLLOWING" or "RAW"]],"WARNING")
    end
    if IsTextToAdd and not IsReplaceADDAFTERSECTION then
      print([[>>> WARNING: REPLACE_TYPE value is incorrect, should only be "" or "ADDAFTERSECTION"]])
      Report(replace_type,[[>>> REPLACE_TYPE value is incorrect, should only be "" or "ADDAFTERSECTION"]],"WARNING")
    end
    IsReplace = false
  end
  
  -- *****************   value_match section   ********************
  if value_match == nil then
    value_match = "" 
  end
  value_match = string.gsub(value_match,[[\\]],[[\]])
  local IsValueMatch = (value_match ~= "")
  
  local IsNumberValue_Match, IsIntegerValue_Match = CheckValueType(value_match,IsInteger_to_floatFORCE)
  
  -- *****************   value_match_type section   ********************
  if value_match_type == nil then
    value_match_type = "" 
  end
  value_match_type = string.upper(value_match_type)
  
  local IsValueMatchType = (value_match_type ~= "")
  local IsValueMatchTypeNumber = (value_match_type == "NUMBER")
  local IsValueMatchTypeString = (value_match_type == "STRING")

  if IsValueMatch and IsValueMatchType and not (IsValueMatchTypeNumber or IsValueMatchTypeString) then
    print([[>>> WARNING: VALUE_MATCH_TYPE value is incorrect, should be "", "NUMBER" or "STRING"]])
    Report(value_match_type,[[>>> VALUE_MATCH_TYPE value is incorrect, should be "", "NUMBER" or "STRING"]],"WARNING")
    IsValueMatchType = false
  end
  
  -- *****************   value_match_options section   ********************
  if value_match_options == nil or value_match_options == "" then
    value_match_options = "=" 
  end
  value_match_options = string.upper(value_match_options)
  
  local IsValueMatchOptions = (value_match_options ~= "")
  local IsValueMatchOptionsMatch = (value_match_options == "=")
  local IsValueMatchOptionsNoMatch = (value_match_options == "~=")
  local IsValueMatchOptionsLSS = (value_match_options == "<")
  local IsValueMatchOptionsLEQ = (value_match_options == "<=")
  local IsValueMatchOptionsGTR = (value_match_options == ">")
  local IsValueMatchOptionsGEQ = (value_match_options == ">=")

  if IsValueMatch and IsValueMatchOptions 
      and not (IsValueMatchOptionsMatch 
            or IsValueMatchOptionsNoMatch
            or IsValueMatchOptionsLSS
            or IsValueMatchOptionsLEQ
            or IsValueMatchOptionsGTR
            or IsValueMatchOptionsGEQ) then
    print([[>>> WARNING: VALUE_MATCH_OPTIONS value is incorrect, should be "", "=", "~=", "<", "<=", ">" or ">="]])
    Report(IsValueMatchOptions,[[>>> VALUE_MATCH_OPTIONS value is incorrect, should be "", "=", "~=", "<", "<=", ">" or ">="]],"WARNING")
    IsValueMatchOptions = false
  end
  if not IsNumberValue_Match and (
               IsValueMatchOptionsLSS
            or IsValueMatchOptionsLEQ
            or IsValueMatchOptionsGTR
            or IsValueMatchOptionsGEQ) then
    print([[>>> WARNING: Incorrect value of VALUE_MATCH_OPTIONS used with VALUE_MATCH, should be "", "=" or "~="]])
    Report(IsValueMatchOptions,[[>>> Incorrect value of VALUE_MATCH_OPTIONS used with VALUE_MATCH, should be "", "=" or "~="]],"WARNING")
    IsValueMatchOptions = false
  end
  
  --***************************************************************************************************  
  local function CheckValueMatchOptions(value_match,value)
    local result = false
    local valueIsNumber, valueIsInteger = CheckValueType(value,false)
    local value_matchIsNumber, value_matchIsInteger = CheckValueType(value_match,false)
    
    local IsNumber = false
    local IsString = false
    if valueIsNumber and value_matchIsNumber then
      --ok to compare as NUMBER
      IsNumber = true
      if not valueIsInteger then
        value = string.round(value)
        value_match = string.round(value_match)        
      end
    elseif not valueIsNumber and not value_matchIsNumber then
      --ok to compare as STRING
      IsString = true
    end
    
    if IsString then
      if IsValueMatchOptionsMatch then
        result = (value == value_match)
      elseif IsValueMatchOptionsNoMatch then
        result = (value ~= value_match)
      end
    elseif IsNumber then
      if IsValueMatchOptionsMatch then
        result = (tonumber(value) == tonumber(value_match))
      elseif IsValueMatchOptionsNoMatch then
        result = (tonumber(value) ~= tonumber(value_match))
      elseif IsValueMatchOptionsLSS then
        result = (tonumber(value) < tonumber(value_match))
      elseif IsValueMatchOptionsLEQ then
        result = (tonumber(value) <= tonumber(value_match))
      elseif IsValueMatchOptionsGTR then
        result = (tonumber(value) > tonumber(value_match))
      elseif IsValueMatchOptionsGEQ then
        result = (tonumber(value) >= tonumber(value_match))
      end
    end
    return result
  end

  -- *****************   IsLineOffset section   ********************
  local IsLineOffset = (line_offset ~= nil and line_offset ~= "")
  local line_offsetNumber = (tonumber(line_offset) or math.huge)
  if IsLineOffset and line_offsetNumber == math.huge then
    print([[>>> WARNING: LINE_OFFSET value type is incorrect, should be "" or "+/- a number"]])
    Report(line_offset,[[>>> LINE_OFFSET value type is incorrect, should be "" or "+/- a number"]],"WARNING")
  end
  
  local offset = 0
  local offset_sign = "+"
  if IsLineOffset then
    if line_offsetNumber < 0 then
      offset_sign = "-"
    end
    offset = math.abs(math.tointeger(line_offsetNumber))
  end
  
  -- *****************   special_key_words section   ********************
  local IsWholeFileSearch = false
  local IsSomeKeyWords = false
  local IsOneWordOnly = false
  local FirstNotEmptyWord = 0

  local spec_key_words = {}
  local IsSpecialKeyWords = false
  
  if special_key_words == nil then
    pv("special_key_words is nil")
    spec_key_words[1] = ""
    spec_key_words[2] = ""
  else 
    if type(special_key_words) ~= "table" then
      pv("special_key_words is not a table")
      if special_key_words == "" then
        --nothing to do
      else
        --Not a table AND only one value: problem
        pv("special_key_words == Only one value, problem!")
        spec_key_words[1] = special_key_words
      end
    else
      --already a table, use it
      pv("special_key_words is a table")
      spec_key_words = special_key_words
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
  
  -- print(spec_key_words[1],spec_key_words[2])
  if #spec_key_words > 0 then
    if (#spec_key_words >= 2) and spec_key_words[1] ~= "" and spec_key_words[2] ~= "" then
      IsSpecialKeyWords = true
    end
    if #spec_key_words == 1 then
      --only one spec_key_words: problem
      print()
      print(">>> WARNING: SPECIAL_KEY_WORDS will be IGNORED: ONLY ONE (name or value).  Please correct your script!")
      Report("","SPECIAL_KEY_WORDS will be IGNORED: ONLY ONE (name or value).  Please correct your script!","WARNING")
    end
    if #spec_key_words%2 ~= 0 then
      --odd number of spec_key_words: problem
      print()
      print(">>> WARNING: SPECIAL_KEY_WORDS will be IGNORED: ODD number of (name or value).  Please correct your script!")
      Report("","SPECIAL_KEY_WORDS will be IGNORED: ODD number of (name or value).  Please correct your script!","WARNING")
    end
    
    if IsSpecialKeyWords and (spec_key_words[1] == "" or spec_key_words[2] == "") then
      --one or both keywords are empty
      print()
      print(">>> WARNING: SPECIAL_KEY_WORDS will be IGNORED: empty string found.  Please correct your script!")
      Report("","SPECIAL_KEY_WORDS will be IGNORED: empty string found.  Please correct your script!","WARNING")
    end

    local Empty
    for i=1,#spec_key_words do
      if spec_key_words[i] == "" then
        Empty = true
        break
      end
    end
    
    if IsSpecialKeyWords and Empty then
      --at least one keyword is empty
      print()
      print(">>> WARNING: SPECIAL_KEY_WORDS may be IGNORED: at least one empty string found.  Please correct your script!")
      Report("","SPECIAL_KEY_WORDS may be IGNORED: at least one empty string found.  Please correct your script!","WARNING")
    end
  end
  -- print(tostring(IsSpecialKeyWords))
  
  pv("# spec_key_words = "..#spec_key_words)
  for i=1,#spec_key_words do
    pv(spec_key_words[i])
  end
  
  --  *******************************************************
  -- FROM HERE ON [special_key_words] is know as [spec_key_words] (a table)
  --  *******************************************************
  
  -- *****************   preceding_key_words section   ********************
  if preceding_key_words == nil then preceding_key_words = "" end
  local prec_key_words = {}
  if type(preceding_key_words) ~= "table" then
    --not a table, just one word
    --Make it a table, we want a table!
    prec_key_words[1] = preceding_key_words
    IsOneWordOnly = true

    if prec_key_words[1] == "" then 
      IsOneWordOnly = false
      IsSomeKeyWords = false
    else
      IsSomeKeyWords = true
      FirstNotEmptyWord = 1
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
      IsOneWordOnly = false
      FirstNotEmptyWord = 1
      IsSomeKeyWords = true
    elseif #prec_key_words == 1 then
      --only one word
      IsOneWordOnly = true
      IsSomeKeyWords = true
      FirstNotEmptyWord = 1
    else
      IsSomeKeyWords = false
      prec_key_words[1] = ""
    end
  end
  
  pv("# prec_key_words = "..#prec_key_words)
  for i=1,#prec_key_words do
    pv(prec_key_words[i])
  end
  
  --  *******************************************************
  -- FROM HERE ON [preceding_key_words] is know as [prec_key_words] (a table)
  --  *******************************************************
  
  -- *****************   section_up section   ********************
  if section_up == nil then
    section_up = 0
  else
    if type(section_up) ~= "number" then
      print(">>> WARNING: SECTION_UP is not a proper number, please correct your script!")
      Report("",">>> SECTION_UP is not a proper number, please correct your script!","WARNING")
      section_up = 0
    end
  end
  section_up = math.tointeger(math.abs(tonumber(section_up)))
  pv("section_up = "..section_up)
  
  -- *****************   where_key_words section   ********************
  local WhereKeyWords = {{"",""}}
  local IsWhereKeyWords = false
  
  if where_key_words == nil or where_key_words == "" then
    WhereKeyWords[1][1] = "IGNORE"
    WhereKeyWords[1][2] = "IGNORE"
  else 
    if type(where_key_words) ~= "table" then
      --not a table, make it a table
      print(">>> WARNING: WHERE_IN_SECTION is not a proper table of tables, please correct your script!")
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
        print(">>> WARNING: WHERE_IN_SECTION is not a proper table of tables, please correct your script!")
        Report("",">>> WHERE_IN_SECTION is not a proper table of tables, please correct your script!","WARNING")        
      end
      if NotTwoItems then
        print(">>> WARNING: WHERE_IN_SECTION tables should have two items each, please correct your script!")
        Report("",">>> WHERE_IN_SECTION tables should have two items each, please correct your script!","WARNING")        
      end
      if not NotTableOfTables and not NotTwoItems then
        --we can use it
        WhereKeyWords = where_key_words
      end
    end
  end
  
  for i=1,#WhereKeyWords do
    if WhereKeyWords[i][1] == nil then
      --we have a problem, should not be nil
      print([[>>> ERROR: A WHERE_IN_SECTION "Property name/value" is nil, please correct your script!]])
      Report("",[[>>> A WHERE_IN_SECTION "Property name/value" is nil, please correct your script!]],"ERROR")
      WhereKeyWords[i][1] = "IGNORE" --to prevent a crash
    end
    if WhereKeyWords[i][2] == nil then
      --we have a problem, should not be nil
      print([[>>> ERROR: A WHERE_IN_SECTION "newvalue" is nil, please correct your script!]])
      Report("",[[>>> A WHERE_IN_SECTION "newvalue" is nil, please correct your script!]],"ERROR")
      WhereKeyWords[i][2] = "IGNORE" --to prevent a crash
    end
    WhereKeyWords[i][1] = string.gsub(WhereKeyWords[i][1],[[\\]],[[\]])
    WhereKeyWords[i][2] = string.gsub(WhereKeyWords[i][2],[[\\]],[[\]])
  end
  
  if (#WhereKeyWords > 0) and (WhereKeyWords[1][1] ~= "IGNORE" or WhereKeyWords[1][2] ~= "IGNORE") then
    IsWhereKeyWords = true
  end

  --  *******************************************************
  -- FROM HERE ON [where_key_words] is know as [WhereKeyWords] (a table of tables)
  --  *******************************************************

  -- *****************   ISxxx section   ********************
  local IsReplaceAllInGroup = ((IsReplaceRAW or IsReplaceALL) and ((IsSomeKeyWords and (not IsOneWordOnly)) or IsSpecialKeyWords))
  IsWholeFileSearch = (not IsSomeKeyWords and not IsSpecialKeyWords) or ((IsReplaceRAW or IsReplaceALL) and not IsReplaceAllInGroup)

  -- if IsReplaceRAW or (IsReplaceALL and not IsReplaceAllInGroup) then
    -- IsWholeFileSearch = true
  -- end
  
  if _mISxxx ~= nil then
    print("")
    print(" + [Key_words Info]".."                              IsReplaceRAW: "..tostring(IsReplaceRAW))
    print(" +           IsSomeKeyWords: "..tostring(IsSomeKeyWords).."           IsSpecialKeyWords: "..tostring(IsSpecialKeyWords))
    print(" +            IsOneWordOnly: "..tostring(IsOneWordOnly).."           IsWholeFileSearch: "..tostring(IsWholeFileSearch))
    print(" +        FirstNotEmptyWord: "..FirstNotEmptyWord.."           IsReplaceALLFOLLOWING: "..tostring(IsReplaceALLFOLLOWING))
    print(" +              IsTextToAdd: "..tostring(IsTextToAdd).."    IsReplaceADDAFTERSECTION: "..tostring(IsReplaceADDAFTERSECTION))
    print(" +      IsReplaceAllInGroup: "..tostring(IsReplaceAllInGroup).."               IsReplaceALL: "..tostring(IsReplaceALL))
    print(" +      IsValueMatchOptions: "..tostring(IsValueMatchOptions).."         value_match_options: ["..value_match_options.."]")
    print(" +          IsWhereKeyWords: "..tostring(IsWhereKeyWords))
  end
  
  -- *****************   SCRIPTBUILDERscript section   ********************
  local ScriptType = "User"
  if gSCRIPTBUILDERscript then
    --treat this script as a SCRIPTBUILDER script
    ScriptType = "SCRIPTBUILDER"
  end

  -- *****************   main section   ********************
  local TextFileTable = ParseTextFileIntoTable(file) --the EXML file
  
  local size = GetFileSize(file)
  pv("size of "..file.." is "..size)

  WholeTextFile = LoadFileData(file) --the EXML file as one text, for speed searching for uniqueness

  --returns ALL the Tree without SpecialKeyWords
  --do it only once
  local FILE_LINE,TREE_LEVEL,KEY_WORDS = MapFileTree(TextFileTable)
  
  local GroupStartLine = {}
  local GroupEndLine = {}
  local SpecialKeyWordLine = {}

  local Group_Found = false  
  local FoundNum = 0
  local LastResort = false
  
  local k = 1 --to iterate thru GroupStartLine/GroupEndLine values
    
  -- if gVerbose then Report(prec_key_words,"from user lua script","INFO") end
  
  --Note: all property/value combo in val_change_table use the Same_KEY_WORDS
  
  --************************************************************ FINDGROUP **************************************
  --find group(s) where key_words lead
  local FileName = string.sub(file,#gMASTER_FOLDER_PATH + #gLocalFolder + 1)
  Group_Found,GroupStartLine,GroupEndLine,FoundNum,SpecialKeyWordLine,LastResort,SectionsTable
          = FindGroup(FileName,TextFileTable,WholeTextFile,prec_key_words,IsPrecedingFirstTRUE
                    ,IsSpecialKeyWords,spec_key_words,IsReplaceALL,section_up,FILE_LINE,TREE_LEVEL,KEY_WORDS)
  pv("Searching in lines "..GroupStartLine[1].."-"..GroupEndLine[1]..", found "..FoundNum.." group(s), SpecialKeyWordLine is "..tostring(SpecialKeyWordLine[1]))
  
  --***************************************************************************************************  
  local function ShowSections(SectionsTable)
    if _mSHOWSECTIONS == nil then
      return
    end
    if #SectionsTable >= 1 then
      print("    Section(s) found: "..SectionsTable[1])
      for i=2,#SectionsTable-1 do
        print("                      "..SectionsTable[i])
      end
      print("                  "..SectionsTable[#SectionsTable])
    end
  end
  --***************************************************************************************************  
  
  local RememberNumberOfGroups = #GroupStartLine
  if Group_Found and IsWhereKeyWords then
    -- print("In Group_Found and IsWhereKeyWords")
    -- print("#GroupStartLine = "..#GroupStartLine)
    local GroupState = {}
    for i=1,#GroupStartLine do
      --for each group
      local FoundInSection = true
      local WhereKeyWordsState = {}
      for k=1,#WhereKeyWords,2 do
        --for each pair of WhereKeyWords
        --check if WhereKeyWords are found in this group
        WhereKeyWordsState[k] = false
        for j=GroupStartLine[i],GroupEndLine[i] do
          --for each line in this group
          local text = TextFileTable[j]
          if (string.find(text,[[="]]..WhereKeyWords[k][1]..[["]],1,true) or WhereKeyWords[k][1] == "IGNORE")
                and (string.find(text,[[value="]]..WhereKeyWords[k][2]..[["]],1,true) or WhereKeyWords[k][2] == "IGNORE") then
            -- print("At group #"..i..", WhereKeyWords["..k.."] is found")
            WhereKeyWordsState[k] = true
            break
          end
        end
        if not WhereKeyWordsState[k] then
          --word 'k' not found in this group
          FoundInSection = false
          break
        end
      end
      
      -- for m=1,#WhereKeyWordsState do
        -- -- print(WhereKeyWordsState[m])
        -- FoundInSection = (FoundInSection and WhereKeyWordsState[m])
      -- end
      -- print("FoundInSection "..i.." is "..tostring(FoundInSection))
      GroupState[i] = FoundInSection      
    end
      
    --clean unwanted groups
    for i=#GroupStartLine,1,-1 do
      if not GroupState[i] then
        table.remove(GroupStartLine,i)
        table.remove(GroupEndLine,i)
      end
    end

    -- if IsSaveSectionTo then
      -- for i=GroupStartLine[1],GroupEndLine[1] do
        -- gSaveSectionContent = gSaveSectionContent..TextFileTable[i].."\n"
      -- end
    -- end
    
    -- for i=1,#GroupStartLine do
      -- print(GroupStartLine[i].." - "..GroupEndLine[i])
    -- end
    -- print("#GroupStartLine = "..#GroupStartLine)
    
    FoundNum = #GroupStartLine
    Group_Found = (FoundNum > 0)
  end
  --************************************************************ end FINDGROUP **********************************

  if not Group_Found then
    print()
    print(">>> WARNING: PRECEDING_KEY_WORDS not found, skipping this change!, see REPORT.txt")

    local Info = GetPrecKeyWordsInfo(prec_key_words)
    print("      PRECEDING_KEY_WORDS: "..Info)
    Report(Info,"PRECEDING_KEY_WORDS not found, skipping this change!","WARNING")
  else
    pv("Found "..#GroupStartLine.." group(s)")  
  end
  
  if IsSpecialKeyWords and SpecialKeyWordLine[1] == 0 then
    local ThreeDots = ""
    if #spec_key_words > 2 then ThreeDots = "... " end
    print()
    print(">>> WARNING: SPECIAL_KEY_WORDS: "..ThreeDots.."["..spec_key_words[#spec_key_words-1].."] and ["..spec_key_words[#spec_key_words].."] not found, skipping this change!, see REPORT.txt")
    Report(ThreeDots..[["]]..spec_key_words[#spec_key_words-1]..[[", "]]..spec_key_words[#spec_key_words]..[["]],"SPECIAL_KEY_WORDS not found, skipping this change!","WARNING")
    Group_Found = false
    
    -- print(tostring(Group_Found),FoundNum,#GroupStartLine,tostring(LastResort))
    -- for i=1,#GroupStartLine do
      -- print(GroupStartLine[i],GroupEndLine[i])
    -- end
  end

  local ReplNumber = 0
  local ADDcount = 0
  local REMOVEcount = 0
  
  if Group_Found then
    pv("Entering Group_Found...")
    
    --used by ALLFOLLOWING
    local LastReplacementLine = GroupStartLine[1] - 1
    
    local AtLeastOneReplacementDone = false

    --we have val_change_table that has all {property, value} to be changed with these prec_key_words
    local j = 0 --to iterate the val_change_table
    
    while j <= (#val_change_table - 1) do
      MapFileTreeSharedListPING()
      
      --point to next property/value combo
      j = j + 1
      local property = val_change_table[j][1]
      local value = val_change_table[j][2]
      
--Wbertro: RETHINK this IGNORE handling

      if string.upper(property) == "IGNORE" and string.upper(value) == "IGNORE" then
        pv([[In property="IGNORE" and value="IGNORE"]])
        if IsSpecialKeyWords then
          pv("   with SPECIAL_KEY_WORDS")

          if #prec_key_words == 1 and IsSomeKeyWords then
            pv("      and one PRECEDING_KEY_WORDS")
            property = prec_key_words[1]
          else  
            property = spec_key_words[#spec_key_words-1]
          end
          -- value = spec_key_words[#spec_key_words]
          
          local Info = GetSpecKeyWordsInfo(spec_key_words)
          Report("","-- Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
          print("\nBased on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")

          if IsSomeKeyWords then
            local Info = GetPrecKeyWordsInfo(prec_key_words)
            Report("","            and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            print("         and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          end
          
       -- elseif #prec_key_words >= 2 then                --bertro change 2020-02-26
        elseif #prec_key_words > 2 then
          --TODO: works with text_to_add, we could check
          -- pv("   with PRECEDING_KEY_WORDS >= 2")       --bertro change 2020-02-26
          pv("   with PRECEDING_KEY_WORDS > 2")
          property = prec_key_words[#prec_key_words - 1]
          value = prec_key_words[#prec_key_words]
        
          if IsSomeKeyWords then
            local Info = GetPrecKeyWordsInfo(prec_key_words)
            Report("","-- Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            print("\nBased on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          end

        elseif #prec_key_words >= 1 then                --bertro change 2019-05-23
          pv("   with PRECEDING_KEY_WORDS >= 1")
          property = prec_key_words[#prec_key_words]    --bertro change 2019-05-23
          --value = prec_key_words[#prec_key_words]

          if IsSomeKeyWords then
            local Info = GetPrecKeyWordsInfo(prec_key_words)
            Report("","-- Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            print("\nBased on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          end

        end
        
      elseif string.upper(property) == "IGNORE" then
        pv([[In property="IGNORE"]])
        if IsSpecialKeyWords then
          pv("   with SPECIAL_KEY_WORDS")
          property = spec_key_words[#spec_key_words-1]
        
          local Info = GetSpecKeyWordsInfo(spec_key_words)
          Report("","-- Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
          print("\nBased on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
          
          if IsSomeKeyWords then
            local Info = GetPrecKeyWordsInfo(prec_key_words)
            Report("","            and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            print("         and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          end
          
        elseif #prec_key_words >= 1 and prec_key_words[1] ~= "" then
          --TODO: probably using a math_operation, we could check
          if IsMath_Operation then
            --keep the "IGNORE" property
          else
            pv("   with PRECEDING_KEY_WORDS >= 1")
            property = prec_key_words[#prec_key_words] --use the last PRECEDING_KEY_WORDS

            if IsSomeKeyWords then
              local Info = GetPrecKeyWordsInfo(prec_key_words)
              Report("","-- Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
              print("\nBased on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            end
          end
        end
        
      elseif j == 1 and not LastResort then --only the first time
      -- elseif j == 1 then --only the first time
        pv("First time and not LastResort")
        if IsSpecialKeyWords then
          pv("   with SPECIAL_KEY_WORDS")
          -- local ThreeDots = ""
          -- if #spec_key_words > 2 then ThreeDots = "... " end
          -- local Info = ThreeDots.."["..spec_key_words[#spec_key_words-1].."], ["..spec_key_words[#spec_key_words].."]"

          local Info = GetSpecKeyWordsInfo(spec_key_words)
          Report("","-- Based on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
          print("\nBased on SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")

          if #spec_key_words%2 ~= 0 then
            --not an even number of spec_key_words: problem
            -- print()
            print(">>> WARNING: SPECIAL_KEY_WORDS: NOT an even number of (name/value).  LAST entry will be IGNORED.  Please correct your script!")
            Report("","SPECIAL_KEY_WORDS: NOT an even number of (name/value).  LAST entry will be IGNORED.  Please correct your script!","WARNING")
          end
          
          if IsSomeKeyWords then
            local Info = GetPrecKeyWordsInfo(prec_key_words)
            Report("","            and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
            print("         and PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          end
          
        elseif IsSomeKeyWords then
          pv("   with SomeKeyWords")

          local Info = GetPrecKeyWordsInfo(prec_key_words)
          Report("","-- Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
          print("\nBased on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")

        else --no key_words
          pv("   without KeyWords")
          Report("","-- No key_word specified...")
          print("\nNo key_word specified...")
        end
        
        -- for i=1,FoundNum do
          -- Report("","    -- Points to "..GroupStartLine[i].." to "..GroupEndLine[i])
          -- print("    -- Points to "..GroupStartLine[i].." to "..GroupEndLine[i])
        -- end
      end
      
      if j == 1 then
        if section_up > 0 then
          if section_up == 1 then
            Report("","    -- Going UP "..section_up.." parent section...")
            print("    -- Going UP "..section_up.." parent section...")
          else
            Report("","    -- Going UP "..section_up.." parent sections...")
            print("    -- Going UP "..section_up.." parent sections...")
          end
        end
        
        ShowSections(SectionsTable)
        
        if IsSaveSectionTo then
          --save the first section to a file in the SavedSections folder using the SAVE_SECTION_TO name.txt
          --we overwrite any existing file with that name
          local section = ""
          for m=GroupStartLine[1],GroupEndLine[1] do
            local line = TextFileTable[m]
            section = section..line.."\n"
          end
          
          print("@@@@@ Writing save_section_to a file in the SavedSections folder")
          WriteToFile(section,gMASTER_FOLDER_PATH..[[SavedSections\]]..save_section_to..[[.txt]])
          
          for m=1,#gSaveSectionName do
            if gSaveSectionName[m] == save_section_to then
              --save it internally
              print("@@@@@ Saving save_section_to in the internal SAVE_SECTION_TO list")
              gSaveSectionContent[m] = Section
              break
            end
          end
        end
      end
      
      pv("A: property=["..property.."] ".."value=["..value.."]")
      local newIsValueMatchType = IsValueMatchType
      if not IsValueMatchType then
        --none specified by the user
        --let us force it to be of the same type as the new value
        local ValueTypeIsNumber, ValueIsInteger = CheckValueType(value,false)
        if ValueTypeIsNumber then
          value_match_type = "NUMBER"
        else
          value_match_type = "STRING"
        end
        newIsValueMatchType = true
      end
            
      do --prepare info to inform user
        local spacer = 0
        local msg0 = ""
        local msg1 = ""
        local msg2 = ""
        local msg3 = ""
        local msg4 = ""
        local msg5 = ""
        
        if IsMath_Operation then
          msg1 = "Math_operation "
          msg2 = "("..math_operation..")"
        end
        
        if IsValueMatch then
          if IsValueMatchOptionsMatch then
            msg3 = " matching ["..value_match.."]"
          else
            msg3 = " not matching ["..value_match.."]"
          end
        end
        
        if newIsValueMatchType then
          msg3 = msg3.." of type ["..value_match_type.."]"
        end
        
        if IsLineOffset then
          if IsSpecialKeyWords then
            local ThreeDots = ""
            if #spec_key_words > 2 then ThreeDots = "... " end
            msg5 = " after "..ThreeDots.."["..spec_key_words[#spec_key_words-1].."] and ["..spec_key_words[#spec_key_words].."]"
          else
            msg5 = " after ["..prec_key_words[#prec_key_words].."]"
          end
          msg4 = " with a line offset of "..line_offset
        end
        
        if IsTextToAdd then
          if IsReplaceADDAFTERSECTION then
            Report("","    Looking to >>> add some text <<< after SECTION with Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            print("\n    Looking to >>> add some text <<< after SECTION with Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            spacer = 11
          else
            Report("","    Looking to >>> add some text <<< after Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            print("\n    Looking to >>> add some text <<< after Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            spacer = 11
          end
        elseif IsToRemove then
          if IsToRemoveLINE then
            Report("","    Looking to >>> remove LINE <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            print("\n    Looking to >>> remove LINE <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            spacer = 11
          elseif IsToRemoveSECTION then
            Report("","    Looking to >>> remove SECTION <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            print("\n    Looking to >>> remove SECTION <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            spacer = 11
          else
            Report("","    Looking to >>> remove some text <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            print("\n    Looking to >>> remove some text <<< at Property name ["..property.."] and value ["..value.."]"..msg3..msg4)
            spacer = 11
          end
        else
          Report("","    Looking for >>> ["..property.."]: New value will be >>> "..msg1.."["..msg2..value.."]"..msg3..msg4..msg5)
          print("\n    Looking for >>> ["..property.."]: New value will be >>> "..msg1.."["..msg2..value.."]"..msg3..msg4..msg5)
          spacer = 12
        end
        
        if IsWhereKeyWords then
          local Info = GetWhereInSectionInfo(WhereKeyWords)
          msg0 = string.rep(" ",spacer).."    >>> using WHERE_IN_SECTION "..Info.." to restrict search..."
          Report("",msg0)
          print(msg0)
          msg0 = string.rep(" ",spacer).."    >>> Evaluated "..RememberNumberOfGroups.." sections against WHERE_IN_SECTION keywords..."
          Report("",msg0)
          print(msg0)
        end

        if IsReplace then
          -- if IsReplaceADDAFTERSECTION then
            -- msg0 = string.rep(" ",spacer).."    >>> Replace operation is ["..replace_type.."]"
            -- if IsSomeKeyWords then
              -- msg0 = msg0.." based on ".."["..prec_key_words[#prec_key_words].."]"
            -- end
          -- else
            msg0 = string.rep(" ",spacer).."    >>> Replace operation is ["..replace_type.."]"
            if IsSomeKeyWords then
              local Info = GetPrecKeyWordsInfo(prec_key_words)
              -- local Info = ""
              -- for i = 1,#prec_key_words do
                -- Info = Info.."["..prec_key_words[i].."], "
              -- end
              -- Info = string.sub(Info,1,#Info - 2)
              msg0 = msg0.." based on key_words: "..Info
            end
          -- end
          Report("",msg0)
          print(msg0)
        end        
      end
      
      if tonumber(value) ~= nil and tonumber(value) >= 10000000 then
        --MBINCompiler may produce a problematic MBIN that once decompiled will have a value of "1.0E+7"
        print([[>>> WARNING: MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+07"]])
        print([[         xxxxx Your script contains a value over "9999999" xxxxx]])
        print([[         Any value over "9999999" like "10000123" will become "1.000012E+07"]])
        print([[         That could prevent NMS from using the mod]])
        Report("",[[MBINCompiler may generate a MBIN that once decompiled will have a value like "1E+07"]],"WARNING")
        Report("",[[       xxxxx Your script contains a value over "9999999" xxxxx]],"")
        Report("",[[       Any value over "9999999" like "10000123" will become "1.000012E+07"]],"")
        Report("",[[       That could prevent NMS from using the mod]],"")
      end
      
      if FoundNum > 0 then
        All_Words_Found = true
        if FoundNum > 1 then
          Report("","    --                    >>>>> Found "..FoundNum.." valid candidate instances.")
          print("        >>>>> Found "..FoundNum.." valid candidate instances.")
          if IsReplaceALL then
            Report("","    --                    >>>>> ALL valid instances where requested to be processed <<<<<")
            print("\n    --                    >>>>> ALL valid instances where requested to be processed <<<<<")
          else
            Report("",[[    --     >>>>> REPLACE_TYPE = "]]..replace_type..[[": Only FIRST instance will be processed <<<<<]])
            print("\n"..[[    --     >>>>> No REPLACE_TYPE = "]]..replace_type..[[": Only FIRST instance will be processed <<<<<]])
          end
          -- Report("","You may want to check your [\"PRECEDING_KEY_WORDS\" and/or \"SPECIAL_KEY_WORDS\"] if the replacements are faulty!","WARNING")
          -- print("    -- >>> WARNING: You may want to check your [\"PRECEDING_KEY_WORDS\" and/or \"SPECIAL_KEY_WORDS\"] if the replacements are faulty!")
        end
      end

      k = 0 --to iterate thru GroupStartLine/GroupEndLine values
      
      if #GroupStartLine > 1 and (IsTextToAdd or IsToRemove) then
        --reversing the order of the Groups
        --so that we add or remove from the bottom up
        pv("Reversing the order of the Groups for ADD/REMOVE")
        local Gs = {}
        local Ge = {}
        for i=#GroupStartLine,1,-1 do
          Gs[#Gs+1] = GroupStartLine[i]
          Ge[#Ge+1] = GroupEndLine[i]
        end
        GroupStartLine = Gs
        GroupEndLine = Ge
      end
      
      while k <= #GroupStartLine - 1 do
        MapFileTreeSharedListPING()
        
        --go explore next group for the current property/value combo
        k = k + 1
        pv(">>> Entering outer while at group #"..k)
        pv("GroupEndLine[k] = "..GroupEndLine[k])
        local i = GroupStartLine[k] - 1
        
        if IsSpecialKeyWords and IsLineOffset then
          i = SpecialKeyWordLine[k] - 1 --this is the line to offset from
        elseif IsReplaceALLFOLLOWING then
          pv("LastReplacementLine: "..LastReplacementLine)
          i = LastReplacementLine
        end
        
        local CurrentLine = i --used with text_to_add and to_remove
        local InWhile = false

        --using while because we can change the value of i and GroupEndLine
        --that is useful with line_offset, text_to_add and maybe other manipulations

        if IsTextToAdd or IsToRemove then
          --respect end of section
          pv("IsTextToAdd or IsToRemove: respecting end of section")
        elseif (not IsReplaceAllInGroup) and IsReplaceAll then
          --we need to replace more than in that group
          pv("(not IsReplaceAllInGroup) and IsReplaceAll: continuing to eof")
          GroupEndLine[k] = #TextFileTable
        elseif IsReplaceALLFOLLOWING then
          --we need to replace ALL that follow, even outside the bottom of the section
          pv("IsReplaceALLFOLLOWING: continuing to eof")
          GroupEndLine[k] = #TextFileTable
        end
        
        local EndLine = GroupEndLine[k] --to remember the section end

        local SearchGroupRange = tostring(i + 1).." to "..tostring(GroupEndLine[k])
        pv("SearchGroupRange = "..SearchGroupRange)
        if not IsTextToAdd and not IsToRemove then
          print("                >>> Searching in lines "..SearchGroupRange..[[...]])
          Report("","                >>> Searching in lines "..SearchGroupRange..[[...]])
        end

        -- print("Just before the BIG INNER WHILE: ["..property.."] ["..value.."], about to process line "..i + 1)
        while i <= (GroupEndLine[k] - 1) do
          if not InWhile then
            pv(">>> Entering inner while...")
            InWhile = true
          end
          
          local repl_done = false
          i = i + 1 --next line
          CurrentLine = i
          
          local line = TextFileTable[i]
          -- print(line)
          if line == nil then
            print(">>> WARNING: Problem with [current line] being nil")            
            Report("","Problem with [current line] being nil","WARNING")
            break
          end
          
          -- if IsOneWordOnly and IsWholeFileSearch then
            -- --only one prec_key_words is supplied
            -- if StripInfo(line,[[<Property name="]],[["]]) == prec_key_words[1] then
              -- --found a SoS 
            -- end
          -- end
          
          if IsReplaceRAW then
            if string.find(line,property,1,true) ~= nil then 
              -- print("Found a line at "..i..": "..property)
              --we found A line containing the property string
              --it is "anything goes here", free for all!
              --if we searched [[oper]], it will find [[Property]] ==> all lines
              print("RAW replacement of: [" .. property .. "] with: [" .. value.."]")
              
              --fix-up pattern first to prevent side-effects
              pattern = string.gsub (property, "[%%%]%^%-$().[*+?]", "%%%1")
              
              TextFileTable[i] = string.gsub(line,pattern,value) 
              repl_done = true
            end
          else --replace_type ~= "RAW"
            -- pv("Entering not IsReplaceRAW...")
            -- pv("B: property=["..property.."] ".."value=["..value.."]")
            -- pv(line)
            --(i == 2) is a special case where the whole EXML content was removed
            if (i == 2) 
                  or StripInfo(line,[[<Property name="]],[["]]) == property 
                  or StripInfo(line,[[<Property value="]],[["]]) == property 
                  or (property == "IGNORE" and (IsTextToAdd or IsToRemove))
                  or (property == "IGNORE" and IsMath_Operation) then
              
              pv("Found << THE >> line at "..i..": "..property)
              
              local exstring = StripInfo(line,[[value="]],[["]])
              
              --why do this, value CAN be ""
              -- if exstring == nil or exstring == "" then
                -- --retrieve the name= instead of the value=
                -- --TODO: is it ok to do this? In what circumstances?
                -- pv("   >>>  INFO: Using StripInfo(line,[[name=\"]],[[\"]]) to get in...")
                -- exstring = StripInfo(line,[[name="]],[["]])
              -- end
              pv("(Before value_match)                  Line "..i..": value=["..exstring.."] ["..line.."], Property=\""..property.."\", Value=\""..value.."\"")
              
              if not IsTextToAdd and not IsToRemove then
                --process line_offset stuff
                if IsLineOffset then
                  if offset_sign == "+" then 
                    if #TextFileTable >= i+offset then
                      line=TextFileTable[i+offset] 
                      i=i+offset --we go forward in the file
                    else
                      Report("","Problem with [current line + offset] being after end of file","WARNING")
                    end
                  elseif offset_sign == "-" then 
                    line=TextFileTable[i-offset]
                    if i-offset >= 1 then
                      line=TextFileTable[i-offset]
                      --i=i-offset --we do not backtrack in the file
                    else
                      Report("","Problem with [current line - offset] being before the beginning of file","WARNING")                      
                    end
                  end
                  --we get the new value from offset line
                  exstring = StripInfo(line,[[value="]],[["]])
                  
                  if exstring == nil or exstring == "" then
                    --TODO: is it ok to do this? In what circumstances?
                    pv("   >>>  INFO: Using StripInfo(line,[[name=\"]],[[\"]]) after applying offset...")
                    exstring = StripInfo(line,[[name="]],[["]])
                  end
                  pv("(After offset)                        Line "..i..": value=["..exstring.."] ["..line.."], Property=\""..property.."\", Value=\""..value.."\"")
                end
              end
              
              if not IsValueMatch or (IsValueMatchOptions and CheckValueMatchOptions(value_match,exstring)) then
                    -- or (IsValueMatchOptionsMatch and exstring == value_match) 
                    -- or (IsValueMatchOptionsNoMatch and exstring ~= value_match) then
                if not newIsValueMatchType 
                      or (value_match_type == "NUMBER" and type(tonumber(exstring)) == string.lower(value_match_type)) 
                      or (value_match_type == "STRING" and type(exstring) == string.lower(value_match_type)) then 
                  
                  if not IsTextToAdd and not IsToRemove then
                    pv("(After value_match, value_match_type) Line "..i..": value=["..exstring.."] ["..line.."], Property=\""..property.."\", Value=\""..value.."\"")
                    local NewValue = nil --could be a number OR a string
                    
                    local OrgValueTypeIsNumber, OrgValueIsInteger = CheckValueType(exstring,IsInteger_to_floatFORCE)
                    
                    if IsMath_Operation then
                      local currentValue = value
                      local scriptValue = exstring
                      local scriptmath_operation = math_operation
                      
                      if string.find(math_operation,"$",1,true) then
                        --swap order of math operation
                        currentValue,scriptValue = scriptValue,currentValue
                        --remove the "$"
                        scriptmath_operation = string.gsub(scriptmath_operation,"%$","")
                      end
                      
                      if string.len(scriptmath_operation) == 1 then -- {+, -, *, /} only
                        NewValue =  IntegerIntegrity(
                                      ExecuteMathOperation(
                                        scriptmath_operation,
                                        tonumber(scriptValue), --does scriptValue - currentValue
                                        tonumber(currentValue)
                                      ),
                                      OrgValueIsInteger
                                    )
                      elseif string.find(string.sub(scriptmath_operation, 2, 3),"F:") then --"*F:endString"
                        NewValue =  IntegerIntegrity(
                                      ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        tonumber(
                                          TranslateMathOperatorCommandAndGetValue(
                                            TextFileTable,
                                            string.sub(scriptmath_operation, 4), --currentValue to look for
                                            i, --from this line
                                            "forward"
                                          )
                                        ),
                                        tonumber(currentValue)
                                      ),
                                      OrgValueIsInteger
                                    )
                      elseif string.find(string.sub(scriptmath_operation, 2, 4),"FB:") then
                        NewValue =  IntegerIntegrity(ExecuteMathOperation(string.sub(scriptmath_operation, 1, 1)
                            ,tonumber(TranslateMathOperatorCommandAndGetValue(TextFileTable, string.sub(scriptmath_operation, 5), i, "backward"))
                            ,tonumber(currentValue)),OrgValueIsInteger)	
                      elseif string.find(string.sub(scriptmath_operation, 2, 3),"L:") then 
                        NewValue =  IntegerIntegrity(
                                      ExecuteMathOperation(
                                        string.sub(scriptmath_operation, 1, 1),
                                        tonumber(
                                          StripInfo(TextFileTable[i+tonumber(string.sub(scriptmath_operation, 4))],[[value="]],[["]])
                                        ),
                                        tonumber(currentValue)
                                      ),
                                      OrgValueIsInteger
                                    )							
                      elseif string.find(string.sub(scriptmath_operation, 2, 4),"LB:") then 
                        NewValue =  IntegerIntegrity(ExecuteMathOperation(string.sub(scriptmath_operation, 1, 1)
                            ,tonumber(StripInfo(TextFileTable[i-tonumber(string.sub(scriptmath_operation, 5))],[[value="]],[["]]))
                            ,tonumber(currentValue)),OrgValueIsInteger)
                      else
                        --not a valid math_operation, keep original value
                        print([[>>> WARNING: INVALID MATH_OPERATION: ]]..math_operation)            
                        Report("",[[INVALID MATH_OPERATION: ]]..math_operation,"WARNING")
                       NewValue = currentValue
                      end
                    else  
                      --no math_operation, keep original value
                      NewValue = value
                    end
                    
                    local NewValueTypeIsNumber, NewValueIsInteger = CheckValueType(NewValue,IsInteger_to_floatFORCE)
                    pv("line "..i..": OrgValue["..tostring(exstring).."] Number["..tostring(OrgValueTypeIsNumber).."] Integer["..tostring(OrgValueIsInteger).."]")
                    pv("line "..i..": NewValue["..tostring(NewValue).."] Number["..tostring(NewValueTypeIsNumber).."] Integer["..tostring(NewValueIsInteger).."]")

                    if IsMath_Operation then
                      --we only care about an INTEGER number becoming a FLOAT
                      if OrgValueTypeIsNumber and OrgValueIsInteger and not NewValueIsInteger then
                        print([[>>> WARNING: ORIGINAL value is INTEGER.  To override, use ["INTEGER_TO_FLOAT"] = "FORCE",]])            
                        Report("",[[ORIGINAL value is INTEGER.  To override, use ["INTEGER_TO_FLOAT"] = "FORCE",]],"WARNING")
                      end              
                    else
                      --we only care about a change from (number to string) or (string to integer)
                      --or an INTEGER number becoming a FLOAT
                      --and we DON'T preserve INTEGERs when not a MATH_OPERATION
                      if (OrgValueTypeIsNumber ~= NewValueTypeIsNumber) or (OrgValueTypeIsNumber and OrgValueIsInteger and not NewValueIsInteger) then
                        print([[>>> WARNING: ORIGINAL and NEW number value have mismatched types (INTEGER vs FLOAT or STRING vs NUMBER)]])            
                        Report("",[[ORIGINAL and NEW number value have mismatched types (INTEGER vs FLOAT or STRING vs NUMBER)]],"WARNING")
                      end
                    end

                    pv("(After math_operation) Line "..i..": value=["..tostring(NewValue).."] ["..line.."], Property=\""..property.."\", Value=\""..value.."\"")                    
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
                      
                      if string.find(line,[[<Property name=]],1,true) ~= nil and string.find(line,[[value=]],1,true) ~= nil then
                        --standard value replacement on a line with the property
                        --a line with BOTH name AND value, value could be EMPTY
                        --like: <Property name="Filename" value="MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN" />
                        --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
                        
                        TextFileTable[i] = string.sub(line,1,string.find(line,[[value="]],1,true)-1)..[[value="]]..tostring(NewValue)..Ending
                        repl_done = true
                      elseif string.find(line,[[Property value=]],1,true) ~= nil then
                        -- lines with value only, CANNOT BE EMPTY
                        -- like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
                        -- could be a SIGNIFICANT KEY_WORD
                        TextFileTable[i] = string.sub(line,1,string.find(line,[[value="]],1,true)-1)..[[value="]]..tostring(NewValue)..Ending
                        repl_done = true
                      elseif string.find(line,[[Property name=]],1,true) ~= nil then
                        -- lines with name only, CANNOT BE EMPTY
                        -- like: <Property name="GenericTable">
                        -- like: <Property name="List" />
                        -- could be a SIGNIFICANT KEY_WORD
                        TextFileTable[i] = string.sub(line,1,string.find(line,[[name="]],1,true)-1)..[[name="]]..tostring(NewValue)..Ending
                        repl_done = true
                      else
                        print("XXX At "..i..": Found an Un-handled line type ["..line.."], check your script")
                        Report(line,"XXX At "..i..": Check your script, found an Un-handled line type:","WARNING")
                      end
                      pv("(After replacement) Line "..i..": TextFileTable[i] = ["..TextFileTable[i].."]")
                    else
                      pv("(value is IGNORE) Line "..i..": TextFileTable[i] = ["..TextFileTable[i].."]")
                    end
                  else --text_to_add and/or to_remove has a value
                    if IsLineOffset then
                      if offset_sign == "+" then
                        i = i + offset
                        if i > #TextFileTable then
                          i = #TextFileTable - 1
                        end
                      elseif offset_sign == "-" then
                        i = i - offset
                        if i < 3 then
                          i = 3 --it must be after the header at least
                        end
                      end
                    end	

                    if IsTextToAdd then
                      pv("Preparing to ADD some text...")
                      if IsReplaceADDAFTERSECTION then
                        
                        local bottom = GroupEndLine[k]

                        -- local bottom = GoDownToOwnerEnd(TextFileTable,CurrentLine)

                        -- print(bottom)
                        i = bottom
                      end
                      local _,linecount = string.gsub(text_to_add,"\n","")
                      pv("text_to_add:linecount = "..linecount)
                      pv("    -- Adding text after line: " .. i)
                      CurrentLine = i --so we remember
                      local textmod = table.concat(TextFileTable,"\n",1,i)
                      textmod = textmod.."\n"..text_to_add.."\n"
                      textmod = textmod..table.concat(TextFileTable,"\n",i+1,#TextFileTable)
                      WriteToFile(string.gsub(textmod,"\n\n","\n"), file)

                      TextFileTable = ParseTextFileIntoTable(file) --reload the EXML file
                      WholeTextFile = LoadFileData(file) --the EXML file as one text, for speed searching for uniqueness
                      FILE_LINE,TREE_LEVEL,KEY_WORDS = MapFileTree(TextFileTable)

                      --in case we have to replace ALL
                      i = i + linecount - 1 --point to the last line inserted
                      GroupEndLine[k] = #TextFileTable --make sure we get to the new last line of the file
                      print("    -- Lines "..(CurrentLine + 1).." - "..(i+1).." ADDED using text in [\"ADD\"]")
                      Report("","    -- Lines "..(CurrentLine + 1).." - "..(i+1).." ADDED using text in [\"ADD\"]")
                      ADDcount = ADDcount + 1
                      repl_done = true
                    end --if IsTextToAdd then

                    if IsToRemove then
                      pv("    -- Removing text at line: " .. i)
                      CurrentLine = i --so we remember
                      if IsToRemoveSECTION then
                        -- print(TextFileTable[CurrentLine])

                        local top = GroupStartLine[k]
                        local bottom = GroupEndLine[k]
                        
                        -- local top = GoUPToOwnerStart(TextFileTable,CurrentLine)
                        -- local bottom = GoDownToOwnerEnd(TextFileTable,CurrentLine)

                        -- print(top.."-"..bottom)
                        --delete section from exml
                        for m=bottom,top,-1 do
                          table.remove(TextFileTable,m)
                        end
                        -- local linecount = bottom - top
                        print("    -- Lines "..top.." - "..bottom.." REMOVED")
                        Report("","    -- Lines "..top.." - "..bottom.." REMOVED")
                      
                      elseif IsToRemoveLINE then
                        --delete line i from exml
                        table.remove(TextFileTable,i)
                        print("    -- Line "..i.." REMOVED")
                        Report("","    -- Line "..i.." REMOVED")
                      end
                      
                      i = CurrentLine --point to the next line to process
                      
                      
                      --Wbertro: is this always ok? >>> NO.........
                      --or should we do it bottom up!
                      
                      GroupEndLine[k] = #TextFileTable --make sure we get to the new last line of the file
                      REMOVEcount = REMOVEcount + 1
                      repl_done = true
                    end --if IsToRemove then
                  end --if not IsTextToAdd and not IsToRemove then
                  
                else
                  --no match_type
                  --REMARKED to reduce clutter in output
                  -- Report("","Line "..i..", ["..property.."] with a value of ["..exstring.."] does not match a ["..value_match_type..
                            -- "] like ["..value.."], XXXXX this value not replaced XXXXX","WARNING")
                  -- print("    -- Line "..i..", ["..exstring.."] type does not match a ["..value_match_type
                      -- .."],                           XXXXX this value not replaced >>> WARNING:")
                end --value_match_type == type(value) or empty
              end --value_match == value or empty
            end --we found THE line in the EXML file
          end --if IsReplaceRAW then
          
          if repl_done then
            AtLeastOneReplacementDone = true
            if not (IsTextToAdd or IsToRemove) then
              if value == "IGNORE" then
                local spacer = "    "
                local part1 = "-- On line "..i..", SKIPPED this value"
                Report("",spacer..part1)
                print(spacer..part1)              
              else
                local spacer = "      "
                local spacer1 = "    "
                local spacer2 = spacer1
                local part1 = "-- On line "..i..", exchanged:" .. spacer1 .. "[" .. trim(line) .. "]"
                if string.len(part1) < 86 then spacer1 = string.rep(" ",86 - string.len(part1) + string.len(spacer1)) end
                Report("",spacer..part1 .. spacer1 .. "with: " .. spacer2 .. "[" .. trim(TextFileTable[i]) .. "]")
                print(spacer..part1 .. spacer1 .. "with: " .. spacer2 .. "[" .. trim(TextFileTable[i]) .. "]")
                
                if i > EndLine then
                  --a replacement outside/after the end of the current group
                  print("-???- This replacement is outside of the search group: "..SearchGroupRange..".  Could be Ok, you decide... -???-")
                  Report("","Replacement on line "..i.." is outside of the search group: "..SearchGroupRange..".  Could be Ok, you decide...","WARNING")
                end
                
                ReplNumber = ReplNumber + 1
              end
            
              --here we decide if we continue down the file or break for a new val_change_table combo
              -- if (not IsSomeKeyWords and IsReplaceALL) or IsReplaceAllInGroup or IsReplaceRAW then
              if IsReplaceALL or IsReplaceAllInGroup or IsReplaceRAW then
                --because we want to continue replacing values down the file until GroupEndLine[k]
                --Note: if ADD was used, we already point to the last line inserted
                pv("Looping to continue replacing values down the file until GroupEndLine[k] = "..GroupEndLine[k])
              elseif IsReplaceALLFOLLOWING then
                LastReplacementLine = i + 1 --the line following the last replacement
                pv("break on IsReplaceALLFOLLOWING")
                break
              elseif not IsReplaceALL then
                --our replacement is done, we exit this group
                pv("break on not IsReplaceALL")
                break
              else
                --not an approved word for replace_type maybe
                --or no more property/value combo to process
                --ANYWAY, we are done for this bunch
                pv("break on not an approved word")
                break
              end
            else --IsTextToAdd or IsToRemove
              --get to next section
              break
            end

          else --not repl_done 
            if IsSpecialKeyWords and IsOneWordOnly then
              --lets go down until we find VALUE_CHANGE_TABLE, even outside the bottom of the section
              pv("on line "..i..": No repl_done, but IsSpecialKeyWords and IsOneWordOnly, so continuing down...")
              
              if i == GroupEndLine[k] and not AtLeastOneReplacementDone then
                --we are at the end of the group and did not find a replacement
                --we can try to go down to the end of file
                
                --Wbertro: this could instead go up one level in the EXML
                
                pv("reached end of group and No repl_done, so setting GroupEndLine[k] to #TextFileTable...")
                GroupEndLine[k] = #TextFileTable
              end
            end
          end --if repl_done then     
        end --while i <= (GroupEndLine[k] - 1) do
        
        pv("GroupEndLine[k] = "..GroupEndLine[k])
        pv(">>> Exiting inner while...")
        
      end --while k <= #GroupStartLine - 1 do
    end --while j <= (#val_change_table - 1) do
    
    if not AtLeastOneReplacementDone then
      --replacement NOT done
      print("")
      print(">>> WARNING: No action done!")
      Report("","No action done!","WARNING")
    else 
      -- if ReplNumber > 0 or ADDcount > 0 or REMOVEcount > 0 then
      pv("Saving changes to "..file)
      WriteToFile(ConvertLineTableToText(TextFileTable), file)	
    end
    
  else
    Report(property,"Could not find PRECEDING_KEY_WORDS or SPECIAL_KEY_WORDS!","WARNING")
  end
  
  return ReplNumber, ADDcount, REMOVEcount
end

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
function FindGroup(FileName,TextFileTable,WholeTextFile,prec_key_words,IsPrecedingFirstTRUE
                  ,IsSpecialKeyWords,spec_key_words,IsReplaceALL,section_up,FILE_LINE,TREE_LEVEL,KEY_WORDS)
  
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
  local function GoUPToOwnerStart(lineInSection)
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
    pv("   U.OwnerStartLine = "..OwnerStartLine)
    return OwnerStartLine
  end

  --***************************************************************************************************
  local function GoDownToOwnerEnd(lineInSection)
    local level = 0
    local OwnerEndLine = 0
    pv("      D.lineInSection = "..lineInSection)
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
    pv("      D.OwnerEndLine = "..OwnerEndLine)
    assert(OwnerEndLine ~= nil,"FindGroup:GoDownToOwnerEnd:OwnerEndLine == nil")
    if OwnerEndLine == 0 then OwnerEndLine = #TextFileTable end
    return OwnerEndLine
  end

  --***************************************************************************************************
  local function GetLevel(ExmlLineText)
    if ExmlLineText == nil or ExmlLineText == "" then
      return -1
    end    
    local level = string.find(ExmlLineText,[[<]],1,true)
    level = (level - 1) / 2
    return level
  end

  --***************************************************************************************************
  local function RecordSections(GroupStartLine,GroupEndLine,Tag,SectionsTable)
    if Tag == nil then Tag = "  " end
    if GroupStartLine[1] ~= nil or GroupStartLine[1] ~= "" then
      -- local GroupRange = GroupStartLine[1].." - "..GroupEndLine[1]
      -- print("    Current section(s): "..Tag..GroupRange)
      for i=1,#GroupStartLine do
        GroupRange = GroupStartLine[i].." - "..GroupEndLine[i]
        -- print("                        ".."  "..GroupRange)
        table.insert(SectionsTable,Tag..GroupRange)
      end
    end
  end

  --***************************************************************************************************
  local function LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,StartLine,BottomLine)
    local TopLine = 1
    -- local StayInsideRange = false
    
    if BottomLine == nil then
      BottomLine = FILE_LINE[#FILE_LINE]
    -- else
      -- StayInsideRange = true
    end
    pv("  Trying to locate prec_key_words using MapFileTree() info, in range "..StartLine.." - "..BottomLine)
    
    -- local Strict = true
    
    local j = 1 --to iterate prec_key_words
    local level = 1
    
    local All_Words_Found = false
    local done_All_Words = false
    local pointer = 0
    
    for i=1,#FILE_LINE do
      if FILE_LINE[i] >= StartLine then
        pointer = i - 1
        break
      end
    end
    if pointer == 0 then pointer = 1 end
    
    local ReachedLastFileLine = false
    for i=pointer,#FILE_LINE do
      -- pv("["..FILE_LINE[i].."]\t ["..TREE_LEVEL[i].."]"..string.rep("  ",TREE_LEVEL[i]*2).."["..KEY_WORDS[i].."]")
      if i == #FILE_LINE then
        pv("  terminated on 'reached last file line'")
      end
      
      -- if StayInsideRange and i > BottomLine then
      if i > BottomLine then
        --not in range anymore
        pv("  break on 'out of range'")
        break
      end
      
      local text = KEY_WORDS[i]
      
      -- local DoIt = false
      if not (All_Words_Found or done_All_Words) then
        if TREE_LEVEL[i] >= level and string.find(text,[["]]..prec_key_words[j]..[["]],1,true) ~= nil then
          --could be at/or in the next level
          
          --we are at the right level AND we have found one of the key_word(s)
          level = TREE_LEVEL[i]
          pv("  Line "..FILE_LINE[i]..", level "..level..", "..text.." - "..prec_key_words[j]..", j = "..j)
          
          if j == #prec_key_words then
            pv("  processing last word")
            --this is the last key_word
            --it is a section head NOT a value in this section
            All_Words_Found = true
            -- FoundNum = 1
            -- TopLine = GoUPToOwnerStart(FILE_LINE[i])
            TopLine = FILE_LINE[i] --this is the top line pointed to by the prec_key_words
            -- if StayInsideRange then
              -- --we can modify the BottomLine
              BottomLine = GoDownToOwnerEnd(FILE_LINE[i] + 1) --maybe we will change it later
            -- end
            pv("  Tree level = "..level..", Lines = "..TopLine.."-"..BottomLine)
          else
            --let us look for the next one
            j = j + 1
          end        
        else
          pv("Line "..i.." skipped")
        end
        
        if j > #prec_key_words then
          --we may have or NOT found all the key_words but there are no more prec_key_words
          done_All_Words = true
        end
      else
        --All_Words_Found or done_All_Words
        --now we need to find the end of this group
        pv("Looking for Tree level "..(level - 1).." (Tree Map shows "..TREE_LEVEL[i].." at line "..i..")")
        -- if (level - 1) == TREE_LEVEL[i] then
          -- BottomLine = GoDownToOwnerEnd(FILE_LINE[i])
          -- pv("New BottomLine = "..BottomLine)
          pv(" break on 'All_Words_Found or done_All_Words'")
          break
        -- end
      end
    end --for i=StartLine,#FILE_LINE do
    -- pv("pointer = "..pointer)
    return All_Words_Found,TopLine,BottomLine
  end
    
  --***************************************************************************************************
  --locate all Sections pointed to by SpecialKeywords at index, index+1
  local function LocateSpecialKeywordsSections(TextFileTable,index,spec_key_words,StartLine,EndLine)
    local Section = 0
    local SectionStartLine = {}
    local SectionEndLine = {}
    local SpecialKeyWordLine = {}
    pv("  LSKS: index = "..index..", ["..spec_key_words[index].."],["..spec_key_words[index+1].."]")

    for n = StartLine,EndLine do
      local line = TextFileTable[n]
      if (string.find(line,[["]]..spec_key_words[index]..[["]],1,true) ~= nil or spec_key_words[index] == "IGNORE")
            and (string.find(line,[["]]..spec_key_words[index+1]..[["]],1,true) ~= nil or spec_key_words[index+1] == "IGNORE") then
        --found a line, 
        --record Section Start/End lines --and level
        Section = Section + 1
        SpecialKeyWordLine[Section] = n
        SectionStartLine[Section] = GoUPToOwnerStart(n)
        SectionEndLine[Section]   = GoDownToOwnerEnd(n)
      end
    end          

    if Section == 0 then
      pv("  >>> XXXX No section found XXXX")
      --no Section found for requested pair
      --return the whole file
      SectionStartLine[1] = StartLine
      SectionEndLine[1] = EndLine
      SpecialKeyWordLine[1] = 0
    else
      pv("  >>> "..Section.." section(s) found")
    end
    
    for i=1,#SectionStartLine do
      pv("   "..SectionStartLine[i].." - "..SectionEndLine[i].." ("..SpecialKeyWordLine[i]..")")
    end

    return SectionStartLine,SectionEndLine,SpecialKeyWordLine
  end

  --***************************************************************************************************
  --locate all Sections pointed to by ALL SPECIAL_KEY_WORDS
  local function SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine)
    local GroupStartLine = GroupStartLine
    local GroupEndLine = GroupEndLine
    local SpecialKeyWordLine = {0}
    
    --each pair of SPECIAL_KEY_WORDS
    for j=1,#spec_key_words,2 do      
      local tempStartLine = {}
      local tempEndLine = {}
      local tempSpecialLine = {}
      pv("A-GROUPS: "..#GroupStartLine)
      for i=1,#GroupStartLine do
        local StartLine,EndLine,SpecialLine = 
              LocateSpecialKeywordsSections(TextFileTable,j,spec_key_words,GroupStartLine[i],GroupEndLine[i])
        pv(" A-RESULTS: "..#StartLine)
        for k=1,#StartLine do
          -- if SpecialLine[k] ~= nil and SpecialLine[k] > 0 then
            -- --keep new section
            -- -- pv(">>> Keep section")
            tempStartLine[#tempStartLine+1] = StartLine[k]
            tempEndLine[#tempEndLine+1] = EndLine[k]
            tempSpecialLine[#tempSpecialLine+1] = SpecialLine[k]
          -- end
        end        
      end
      GroupStartLine = {}
      GroupEndLine = {}
      SpecialKeyWordLine = {}
      -- pv("B-RESULTS: "..#tempStartLine)
      for k=1,#tempStartLine do
        -- pv("tempSpecialLine["..k.."] = "..tempSpecialLine[k])
        if tempSpecialLine[k] > 0 then
          -- pv(">>> Keep section")
          GroupStartLine[#GroupStartLine+1] = tempStartLine[k]
          GroupEndLine[#GroupEndLine+1] = tempEndLine[k]
          SpecialKeyWordLine[#SpecialKeyWordLine+1] = tempSpecialLine[k]
        end
      end        
    end
    
    pv("C-RESULTS: "..#GroupStartLine)
    for i=1,#GroupStartLine do
      pv("   "..GroupStartLine[i].." - "..GroupEndLine[i].." ("..SpecialKeyWordLine[i]..")")
    end
    pv("END RESULTS")
    
    if #GroupStartLine == 0 then
      pv(">>> No sections found")
      GroupStartLine = {3}
      GroupEndLine = {#TextFileTable}
      SpecialKeyWordLine = {0}          
    end
    
    return GroupStartLine,GroupEndLine,SpecialKeyWordLine

    -- GroupStartLine,GroupEndLine,SpecialKeyWordLine = 
          -- LocateSpecialKeywordsSections(TextFileTable,1,spec_key_words,GroupStartLine[1],GroupEndLine[1])
    -- --now we have all sections pointed to by the 1st pair of SPECIAL_KEY_WORDS
    
    -- --for each section
    -- local tempStartLine = {}
    -- local tempEndLine = {}
    -- local tempSpecialLine = {}
    -- for i=1,#GroupStartLine do
      -- for j=3,#spec_key_words,2 do --retain only sub-sections with SPECIAL_KEY_WORDS 2nd pair and higher
        -- local StartLine,EndLine,SpecialLine = 
              -- LocateSpecialKeywordsSections(TextFileTable,j,spec_key_words,GroupStartLine[i],GroupEndLine[i])
        -- for k=1,#StartLine do
          -- if SpecialLine[k] ~= nil and SpecialLine[k] > 0 then
            -- --keep new section
            -- pv(">>> Keep section")
            -- tempStartLine[#tempStartLine] = StartLine[k]
            -- tempEndLine[#tempEndLine] = EndLine[k]
            -- tempSpecialLine[#tempSpecialLine] = SpecialLine[k]
          -- end
        -- end
      -- end
    -- end

    -- local tempStartLine = {}
    -- local tempEndLine = {}
    -- local tempSpecialLine = {}
    -- for i=1,#tempStartLine do
      
    -- end
    
    -- if #GroupStartLine == 0 then
      -- pv("No sections found")
      -- GroupStartLine = {3}
      -- GroupEndLine = {#TextFileTable}
      -- SpecialKeyWordLine = {0}          
    -- end
    
    -- return GroupStartLine,GroupEndLine,SpecialKeyWordLine
  end
    
  --***************************************************************************************************
  --for each section in reverse order (because we remove unwanted ones)
  --remove overlapping ones
  local function CheckOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)
    for i=#GroupStartLine,2,-1 do
      if KeepOuterSections then
        --keep outer sections only
        if GroupStartLine[i] <= GroupEndLine[i-1] then
          --section i is inside section i-1
          --remove section i
          table.remove(GroupStartLine,i)
          table.remove(GroupEndLine,i)
          table.remove(SpecialKeyWordLine,i)
        end
      else
        --keep inner sections only
        if GroupStartLine[i] <= GroupEndLine[i-1] then
          --section i is inside section i-1
          --remove section i-1
          table.remove(GroupStartLine,i-1)
          table.remove(GroupEndLine,i-1)
          table.remove(SpecialKeyWordLine,i-1)
        end
      end
    end
    
    return GroupStartLine,GroupEndLine,SpecialKeyWordLine
  end

  --#####################################  Start of main code  ##############################################################
  pv("\n    >>> Starting FindGroup()")
  
  local KeepOuterSections = true --we will see if this needs to be an option in the future
  local LastResort = false
  local FoundNum = 0
  local GroupStartLine = {3}
  local GroupEndLine = {#TextFileTable}
  local SpecialKeyWordLine = {0}
  local SectionsTable = {}
  
  local All_Words_Found = false
  local All_SpecialWords_Found = false
  -- local done_All_Words = false
  local ReturnInfo = false
  
  local IsPrec_key_words = IsPrec_key_wordsExist(prec_key_words)

  pv("IsPrecedingFirstTRUE = "..tostring(IsPrecedingFirstTRUE))
  pv("IsSpecialKeyWords = "..tostring(IsSpecialKeyWords))
  pv("IsPrec_key_words = "..tostring(IsPrec_key_words))
  
  -- --returns ALL the Tree without SpecialKeyWords
  -- --do it only once
  -- local FILE_LINE,TREE_LEVEL,KEY_WORDS = MapFileTree(TextFileTable)

  if not IsPrecedingFirstTRUE then
    --*******************  process SpecialKeyWords FIRST  *********************************
    if IsSpecialKeyWords then
      local Info = GetSpecKeyWordsInfo(spec_key_words)
      pv("\n"..[[>>> Trying to locate Group Start/End lines based on SPECIAL_KEY_WORDS ]]..Info)

      --Check Uniqueness
      local s = [[<Property name="]]..spec_key_words[1]..[[" value="]]..spec_key_words[2]..[["]] --the end could be [[ />]] or [[>]]
      pv(s)
      --fastest way!!! --gsub and gmatch take too long
      local firstPosStart,firstPosEnd = string.find(WholeTextFile,s,1,true)
      local secondPos = nil
      if firstPosEnd ~= nil then
        secondPos = string.find(WholeTextFile,s,firstPosEnd+1,true)
        if secondPos == nil then
          count = 1
          pv("CheckUniqueness: Unique")
        else
          count = 2
          pv("CheckUniqueness: More than one")
        end
      else
        count = 0
        pv("CheckUniqueness: Not found")     
      end
      --end Check Uniqueness

      if count == 1 then
        --count = 1 >>> unique, good (SCRIPTBUILDER guaranties uniqueness, user do not)
        --    record range info
        pv(">>> count = 1, Looking for SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1])
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine)
        
        RecordSections(GroupStartLine,GroupEndLine,"A ",SectionsTable)
        
        -- print(type(SpecialKeyWordLine))
        -- print(#SpecialKeyWordLine)
        -- print(type(SpecialKeyWordLine[1]))
        if SpecialKeyWordLine[1] > 0 then        
          FoundNum = FoundNum + 1
          -- All_Words_Found = true
          All_SpecialWords_Found = true
          pv("count = 1, Found SPECIAL_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1])
        end
        
        if All_SpecialWords_Found then
          if IsPrec_key_words then
            --lets try with all the PREC_KEY_WORDS
            All_Words_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,GroupStartLine[1],GroupEndLine[1])
            if All_Words_Found then
              GroupStartLine[1] = TopLine
              pv("count = 1, Found PREC_KEY_WORDS between lines "..GroupStartLine[1].." and "..GroupEndLine[1])
            else
              -- print(">>> WARNING: NOT found ALL PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] in the current section")
              -- Report("","NOT found ALL PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] in the current section","WARNING")
            end
          end
          
          if not All_Words_Found then
            --let's try with the last PREC_KEY_WORDS only
            if IsPrec_key_words then
              -- look for the last prec_key_words line in that range
              for n = GroupStartLine[1], GroupEndLine[1] do
                local line = TextFileTable[n]
                if string.find(line,[["]]..prec_key_words[#prec_key_words]..[["]],1,true) then
                  --found the line, replace the Group Start/End lines
                  SpecialKeyWordLine[1] = n --Wbertro: was remarked
                  GroupStartLine[1] = GoUPToOwnerStart(n)
                  GroupEndLine[1]   = GoDownToOwnerEnd(n)
                  -- FoundNum = FoundNum + 1 --no need to add one more count
                  All_Words_Found = true
                  pv("count = 1, Found last PRECEDING_KEY_WORDS "..[["]]..prec_key_words[#prec_key_words]..[["]].." at line "..GroupStartLine[1])
                  break
                end
              end
            
              RecordSections(GroupStartLine,GroupEndLine,"B ",SectionsTable)
              
              if All_Words_Found then
                --ok
              else
                --let us just do as if prec_key_words was not there
                print("")
                print(">>> WARNING: PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] NOT found in the current section, IGNORING IT")
                Report("","PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] NOT found in the current section, IGNORING IT","WARNING")
                
                --we should check if this PrecedingKeyWord points to a range that includes our SpecialKeyWords
                --if yes we can ignore it
                --if not we should report it to the user as a WARNING
                All_Words_Found = true
              end
            else
              All_Words_Found = true
            end
          end
          
          ReturnInfo = true
          --    return range info
        else
          local Info = GetSpecKeyWordsInfo(spec_key_words)      
          Report("",[[Should have found SPECIAL_KEY_WORDS: ]]..Info,"WARNING")
          print("\n"..[[>>> WARNING: Should have found SPECIAL_KEY_WORDS: ]]..Info)
          ReturnInfo = true
        end

      elseif count > 1 then
        --count > 1 >>> not unique, maybe good or bad (not a SCRIPTBUILDER script)
        pv(">>> count > 1, SPECIAL_KEY_WORDS ["..spec_key_words[1].."] and ["..spec_key_words[2].."] are not unique in file!")

        local Done = false
        
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine)
        pv([[A ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = CheckOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)
        
        RecordSections(GroupStartLine,GroupEndLine,"C ",SectionsTable)
        
        --here we have all the sections (or the whole file) pointed by the spec_key_words
        pv(">>> BASED on SPECIAL_KEY_WORDS, #Sections = "..#GroupStartLine)          
        for i=1,#GroupStartLine do
          pv("   "..GroupStartLine[i].."-"..GroupEndLine[i]..", "..SpecialKeyWordLine[i])
        end
        
        if IsPrec_key_words then
          for i=1,#GroupStartLine do
            if SpecialKeyWordLine[1] ~= 0 then
              pv("count > 1, Found SPECIAL_KEY_WORDS between lines "..GroupStartLine[i].." and "..GroupEndLine[i])
              FoundNum = FoundNum + 1
              All_Words_Found = false
              if prec_key_words[#prec_key_words] ~= "" then
                --    look for the last prec_key_words line in that range
                for n = GroupStartLine[i], GroupEndLine[i] do
                  local line = TextFileTable[n]
                  if string.find(line,[["]]..prec_key_words[#prec_key_words]..[["]],1,true) then
                    --found the line, replace the Group Start/End lines
                    SpecialKeyWordLine[i] = n
                    GroupStartLine[i] = n
                    GroupEndLine[i] = GoDownToOwnerEnd(n)
                    All_Words_Found = true
                    pv("count > 1, Found last PRECEDING_KEY_WORDS "..[["]]..prec_key_words[#prec_key_words]..[["]].." at line "..GroupStartLine[1])
                    break
                  end
                end
                if All_Words_Found then
                  --ok
                else
                  --let us just do as if prec_key_words was not there
                  print("")
                  print(">>> WARNING: NOT found ALL PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] in the current section, IGNORING IT")
                  Report("","NOT found ALL PRECEDING_KEY_WORDS ".."["..prec_key_words[#prec_key_words].."] in the current section, IGNORING IT","WARNING")
                  
                  --we should check if this PrecedingKeyWord points to a range that includes our SpecialKeyWords
                  --if yes we can ignore it
                  --if not we should report it to the user as a WARNING
                  All_Words_Found = true
                end
              else
                All_Words_Found = true
              end
              
              RecordSections(GroupStartLine,GroupEndLine,"D ",SectionsTable)
              
              ReturnInfo = true -- return range info
              
            else
              if FoundNum == 0 then
                Report("",[[Should have found all SPECIAL_KEY_WORDS]],"ERROR")
                print("\n"..[[>>> ERROR: Should have found all SPECIAL_KEY_WORDS]])
                ReturnInfo = true
              end
              Done = true
            end
            
            if not Done and IsReplaceALL then
              pv("we should find ALL sections, not just the first one!")
              i = i + 1
              GroupStartLine[i] = GroupEndLine[i - 1]
              GroupEndLine[i] = #TextFileTable
              pv("In not Done and IsReplaceALL")
              pv("i = "..i)
            else
              pv("finding first section only!")
              break
            end
            
          end --for i=1,#GroupStartLine do
        end --if prec_key_words[#prec_key_words] ~= "" then
        
      else
        --count = 0 >>> not found, problem (not a SCRIPTBUILDER script)
        --    user has a problem with his/her script spec_key_words (SCRIPTBUILDER guaranties it can be found)
        --    Report WARNING, skip this change
        Report("","SPECIAL_KEY_WORDS cannot be found.  Skipping this change!","WARNING")
        print("\n>>> WARNING: SPECIAL_KEY_WORDS cannot be found.  Skipping this change!")
        ReturnInfo = true
      end --if count...
    end
  else -- PRECEDING_FIRST = "True"
    --*******************  process PrecedingKeyWords FIRST  *********************************
    if IsPrec_key_words then
      --find the SECTION using TreeMap
      pv(">>> INTO: find the SECTION with ALL PRECEDING_KEY_WORDS using TreeMap...")
      
      -- local LocateSectionWithPrecKeywords()
      
      local StartLine = 1
      while true do
        All_Words_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,StartLine)
        pv("TreeMap section: Start-Bottom Line: "..TopLine.." - "..BottomLine)
        if All_Words_Found then
          FoundNum = FoundNum + 1
          GroupStartLine[FoundNum] = TopLine
          GroupEndLine[FoundNum] = BottomLine
          StartLine = BottomLine + 1
          ReturnInfo = true
          if StartLine >= #TextFileTable then
            break
          end
        else
          if ReturnInfo then
            All_Words_Found = true
          end
          break
        end
      end
      
      RecordSections(GroupStartLine,GroupEndLine,"E ",SectionsTable)
      
      --here we should have only one section pointed to by PRECEDING_KEY_WORDS
      if FoundNum > 1 then
        Report("","TreeMAP: PRECEDING_KEY_WORDS located more than one section!","WARNING")
        print("\n>>> WARNING: TreeMAP: PRECEDING_KEY_WORDS located more than one section!")
      elseif FoundNum == 1 then
        --found the PRECEDING_KEY_WORDS section
        --now look for SPECIAL_KEY_WORDS in it
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = SpecialKeywordsSections(TextFileTable,spec_key_words,GroupStartLine,GroupEndLine)
        pv([[B ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
        GroupStartLine,GroupEndLine,SpecialKeyWordLine = CheckOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)
        
        --here we have all the sections (or the whole file) pointed by the spec_key_words
        pv(">>> TreeMAP: BASED on SPECIAL_KEY_WORDS, #Sections = "..#GroupStartLine)          
        for i=1,#GroupStartLine do
          pv("   "..GroupStartLine[i].."-"..GroupEndLine[i]..", "..SpecialKeyWordLine[i])
        end
        
      else
        local Info = GetPrecKeyWordsInfo(prec_key_words)
        Report("","    -- >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = "..Info.." by following file tree map!!! <<<<<")
        print(  "    -- >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = "..Info.." by following file tree map!!! <<<<<")
      end
      
    end
  end
  
  --****************  prec_key_words section  ***********************
  pv("\n>>> INTO prec_key_words section...")

  local SearchPrec = IsPrec_key_words
  
  if not SearchPrec then
    --no prec or special keywords supplied
    pv("No keywords supplied!")
    All_Words_Found = true
    ReturnInfo = true
  end
  
  local currentLine = 0
  local TopLine = 0
  local BottomLine = 0
  
  if not ReturnInfo and SearchPrec then
    --maybe we can locate the line with the prec_key_words using the Tree Map
    pv(">>> INTO not ReturnInfo and SearchPrec...")
    if IsReplaceALL or IsReplaceALLFOLLOWING then
      if #prec_key_words >= 1 then --was > wbertro
        --find ALL lines using TreeMap
        pv(">>> INTO find ALL sections using TreeMap...")
        local StartLine = 1
        while true do
          All_Words_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,StartLine)
          pv("    Found section: "..TopLine.." - "..BottomLine)
          if All_Words_Found then
            FoundNum = FoundNum + 1
            GroupStartLine[FoundNum] = TopLine
            GroupEndLine[FoundNum] = BottomLine
            StartLine = BottomLine + 1
            -- ReturnInfo = true
            if StartLine >= #TextFileTable then
              break
            end
          else
            if #GroupStartLine > 0 then
              All_Words_Found = true
              ReturnInfo = true
            end
            -- if ReturnInfo then
              -- All_Words_Found = true
            -- end
            break
          end
        end
      else
        --find ALL lines using LastResort
      end
    else
      --find first line only
      pv(">>> INTO find one section using TreeMap...")
      All_Words_Found,TopLine,BottomLine = LocatePrecKeywordsWithTreeMap(FILE_LINE,TREE_LEVEL,KEY_WORDS,1)
      
      pv("One section: Start-Bottom Line: "..TopLine.." - "..BottomLine)
      if All_Words_Found then
        FoundNum = 1
        GroupStartLine[FoundNum] = TopLine
        GroupEndLine[FoundNum] = BottomLine
        ReturnInfo = true
      end
    end
    
    RecordSections(GroupStartLine,GroupEndLine,"F ",SectionsTable)
  end
  
  if IsPrecedingFirstTRUE or (not ReturnInfo and not All_Words_Found and SearchPrec) then
    pv("\n>>> INTO last resort!!!...")
    pv("      A         >>> Searching in lines "..tostring(GroupStartLine[1]).." to "..tostring(GroupEndLine[1])..[[...]].." FoundNum = "..FoundNum)

    --last resort!!!
    --look for the last KEY_WORD only
    LastResort = true
    FoundNum = 0
    All_SpecialWords_Found = false
    local Found = false
    
    Info = GetPrecKeyWordsInfo(prec_key_words)
    
    Report("","  Processing file: "..FileName)
    Report("","    Based on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
    print("\nBased on PRECEDING_KEY_WORDS: >>> "..Info.." <<< ")
    
    local word = prec_key_words[#prec_key_words]
    local word_before = ""
    if #prec_key_words > 1 then
      word_before = prec_key_words[#prec_key_words - 1]
    end
    
    if not IsPrecedingFirstTRUE then
      Report("","    -- >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = ["..word.."] by following file tree map!!! <<<<<")
      Report("","    -- Looking up the last KEY_WORD only: ["..word.."]")
      print(  "    -- >>>>> Could not find [\"PRECEDING_KEY_WORDS\"] = ["..word.."] by following file tree map!!! <<<<<")
      print("\n>>> WARNING -???- Using Last_Resort algorithm... (You may want to review your key_words) -???-")
      Report("","-???- Using Last_Resort algorithm... (You may want to review your key_words) -???-","WARNING")
    end
    
    print("    -- Looking up the last KEY_WORD only: ["..word.."]")

    for i=1,#TextFileTable do
      local text = TextFileTable[i]
      
      if string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[ value=]],1,true) == nil then
        -- pv("just a [Property name=] by itself")
        local name = StripInfo(text,[[Property name="]],[[>]])
        if string.find(name,"/",1,true) then
          name = string.sub(name,1,#name-3)
        else
          name = string.sub(name,1,#name-1)
        end
        -- pv("name = ["..name.."]")
        
        if name == word then
          Report("","    -- Found KEY_WORD ["..word.."] as a [Property name] alone on line "..i)
          print("    -- Found KEY_WORD ["..word.."] as a [Property name] alone on line "..i)
          Found = true
        end
      elseif string.find(text,[[<Property name=]],1,true) == nil and string.find(text,[[ value=]],1,true) ~= nil then
        -- pv("just a [Property value=] by itself")
        if StripInfo(text,[[Property value="]],[[">]]) == word then
          Report("","    -- Found KEY_WORD ["..word.."] as a [Property value] alone on line "..i)
          print("    -- Found KEY_WORD ["..word.."] as a [Property value] alone on line "..i)
          Found = true
        end
      elseif string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[ value=]],1,true) ~= nil then
        -- pv("a [Property name=] with a [value=]")
        local value = StripInfo(text,[[ value="]],[[>]])
        if string.find(value,"/",1,true) then
          value = string.sub(value,1,#value-3)
        else
          value = string.sub(value,1,#value-1)
        end
        -- pv("value = ["..value.."]")
        
        if StripInfo(text,[[<Property name="]],[[" value=]]) == word then
          -- pv("the [Property name] is the KEY_WORD")
          if word_before == "" or value == word_before then
            Report("","    -- On line "..i..", found it as a PROPERTY NAME with a value of ["..value.."]")
            print("    -- On line "..i..", found it as a PROPERTY NAME with a value of ["..value.."]")
            Found = true
          else
            Report("","    -- On line "..i..", found it as a PROPERTY NAME with a value of ["..value.."], DISCARDED")
            print("    -- On line "..i..", found it as a PROPERTY NAME with a value of ["..value.."], DISCARDED")
          end
        elseif value == word then
          -- pv("the [value] is the KEY_WORD")
          Report("","    -- On line "..i..", found it as a VALUE with a Property name of ["
                  ..StripInfo(text,[[Property name="]],[[" value=]]).."]")
          print("    -- On line "..i..", found it as a VALUE with a Property name of ["
                  ..StripInfo(text,[[Property name="]],[[" value=]]).."]")
          Found = true
        else
          --not found yet
        end
      else
        --a header, Data or /Property line
        --skip it
      end
        
      if Found then
        --found one, GOOD!
        --record position, that line i
        All_Words_Found = true
        FoundNum = FoundNum + 1
        SpecialKeyWordLine[FoundNum] = i
        GroupStartLine[FoundNum] = GoUPToOwnerStart(i)
        if GroupStartLine[FoundNum] == i then
          --i is already a SoS, go find EoS
          GroupEndLine[FoundNum] = GoDownToOwnerEnd(i)
        else
          GroupEndLine[FoundNum] = #TextFileTable --ok to go down to the last line
        end
        Found = false
      end
    end --for i=1,#TextFileTable do    
    pv([[F ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)

    RecordSections(GroupStartLine,GroupEndLine,"G ",SectionsTable)
    
    if IsSpecialKeyWords then
      local Info = GetSpecKeyWordsInfo(spec_key_words)      
      Report("","    Using SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
      print("    -- Using SPECIAL_KEY_WORDS pairs: >>> "..Info.." <<< ")
      
      --let us try to find these SpecialKeyWords inside the groups
      pv([[Trying to locate Group Start/End lines based on SPECIAL_KEY_WORDS "]]..spec_key_words[1]..[[" and "]]..spec_key_words[2]..[["]])
      for k = 1, #GroupStartLine do
        pv("Using SPECIAL_KEY_WORDS between lines "..GroupStartLine[k].." and "..GroupEndLine[k])
        for n = GroupStartLine[k], GroupEndLine[k] do
          local line = TextFileTable[n]
          if string.find(line,[["]]..spec_key_words[1]..[["]],1,true) 
              and string.find(line,[["]]..spec_key_words[2]..[["]],1,true) then
            --found the line, replace the Group Start/End lines
            SpecialKeyWordLine[k] = n
            GroupStartLine[k] = GoUPToOwnerStart(n)
            GroupEndLine[k]   = GoDownToOwnerEnd(n)
            -- FoundNum = FoundNum + 1 --no need to add one more count
            All_Words_Found = true
            All_SpecialWords_Found = true
            break
          end
        end
      end
      pv([[E ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
    end
  
    RecordSections(GroupStartLine,GroupEndLine,"H ",SectionsTable)    
  
  end --if not All_Words_Found then

  pv([[D ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
  if section_up > 0 then
    pv("Processing SECTION_UP = "..section_up)
    for n =1,#GroupStartLine do
      local Section_UP = section_up
      local currentLine = GroupStartLine[n]
      pv("  SECTION_UP: Current line = "..currentLine)
      repeat
        GroupStartLine[n] = GoUPToOwnerStart(currentLine)
        GroupEndLine[n] = GoDownToOwnerEnd(GroupStartLine[n]+1)
        -- SpecialKeyWordLine[n] = 
        currentLine = GroupStartLine[n]
        Section_UP = Section_UP - 1
      until Section_UP == 0 
    end          
  end
  
  pv([[C ]]..#GroupStartLine..[[ ]]..#GroupEndLine..[[ ]]..#SpecialKeyWordLine)
  GroupStartLine,GroupEndLine,SpecialKeyWordLine = CheckOverlappingSections(GroupStartLine,GroupEndLine,SpecialKeyWordLine,KeepOuterSections)
  
  RecordSections(GroupStartLine,GroupEndLine,"Using ",SectionsTable)
  
  if TestNoNil("FindGroup()",All_Words_Found,GroupStartLine[1],GroupEndLine[1],FoundNum) then
    pv("Found all Key_Words: "..tostring(All_Words_Found)..", First line: "..GroupStartLine[1]..", Last line: "..GroupEndLine[1]..", Found: "..FoundNum)
    pv("Found all SPECIAL_KEY_WORDS: "..tostring(All_SpecialWords_Found))
  end
  pv(THIS.."Ending FindGroup()")
  return All_Words_Found, GroupStartLine, GroupEndLine, FoundNum, SpecialKeyWordLine, LastResort, SectionsTable
end

function LocatePAK(filename)
  pv("In LocatePAK()")

  local Pak_FileName = ""
  
  filename = string.gsub(filename,[[%.EXML]],[[.MBIN]])
  filename = string.gsub(filename,[[\]],[[/]])
  -- pv("["..filename.."]")
  local pak_listTable = gpak_listTable
  -- pv(#pak_listTable.." lines")
  for i=1,#pak_listTable,1 do
		local line = pak_listTable[i]
		if (line ~= nil) then
      if string.find(line,"Listing ",1,true) ~= nil then
        local start,stop = string.find(line,"Listing ",1,true)
        --remember Pak_FileName for when we find the filename
        Pak_FileName = string.sub(line, stop+1)
        -- pv("["..Pak_FileName.."]")
      else
        if string.find(line,filename,1,true) ~= nil then
          break
        end
      end
		end
	end
  return Pak_FileName
end

--DO NOT DELETE: kept here to execute for #CPU < 4 and DEBUG
--Only used to create MapFileTree files in HandleModScript()
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
  local level = 0
  
  if type(EXML) ~= "table" or #EXML <= 1 then return FILE_LINE,TREE_LEVEL,KEY_WORDS end

  --***************************************************************************************************  
  local function FindKeywordsInRange(TextFile,StartRange,EndRange)
    if EndRange == nil then EndRange = StartRange end
    local KeywordsInRangeTable = {}
    -- print(StartRange,EndRange)
    for i=StartRange,EndRange do
      local text = TextFile[i]
      -- print(text)
      if string.find(text,[[ />]],1,true) ~= nil and string.find(text,[[ue=]],1,true) ~= nil then
        --a line like <Property name="" value="" /> 
        --"name" is a potential special_keyword
        local value = StripInfo(text,[[value="]],[["]])
        -- if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil and string.find(value,".",1,true) == nil then
        if value ~= "" and value ~= "True" and value ~= "False" and tonumber(value) == nil then
          --could be one, if unique
          local name = StripInfo(text,[[name="]],[["]])
          table.insert(KeywordsInRangeTable,"[*"..string.format("%8u",i)..[[: ]]..name..[[="]]..value.."\"]")
          break
        end
      end --if string.find(
    end --for i=
    if #KeywordsInRangeTable == 0 then
      KeywordsInRangeTable[1] = ""
    end
    -- print("#KeywordsInRangeTable "..#KeywordsInRangeTable)
    -- for i=1,#KeywordsInRangeTable do
      -- if KeywordsInRangeTable[i] == nil then KeywordsInRangeTable[i] = [[*        : unknown="",]] end
    -- end
    --the nearest one
    -- print("one = ["..KeywordsInRangeTable[1].."]")
    return KeywordsInRangeTable[1]
  end
  --***************************************************************************************************  

  local Pak_FileName = LocatePAK(filename)
  local Pak_FileNamePath = gNMS_PCBANKS_FOLDER_PATH..Pak_FileName
  local fileInfo = string.gsub(filename,[[\]],[[.]])
  local filepathname = "..\\MapFileTrees\\"..fileInfo..".txt"
  
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
  until string.find(EXML[j],[[<Data template=]],1,true) ~= nil
  
  for i=j,#EXML do
    local text = EXML[i]
    
    if string.find(text,[[/>]],1,true) ~= nil then
      local Name = ""
      if string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
        Name = StripInfo(text,[[<Property name="]],[[" value=]])
      end
      if Name ~= "" then
        local result = FindKeywordsInRange(EXML,i)
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
          local UniqueMsg = ""
          if secondPos == nil then
            UniqueMsg = " UNIQUE"
          end
          -- table.insert(KEY_WORDS, [[SPECIALNAME: "]]..Name..[[", ]]..StripInfo(text,[[" value=]],[[ />]])) --remembers name and value
          table.insert(KEY_WORDS, [[SPECIALNAME]]..UniqueMsg..[[: {"]]..StripInfo(result,[[: ]],[[=]])..[[",]]..StripInfo(result,[[=]],"]")..[[,},]]) --remembers name and value
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
      table.insert(TREE_LEVEL,level+1)
      table.insert(KEY_WORDS, "<<<") --remembers end of section
      level = level - 1
      
    elseif string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
      --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
      --usually NOT a KEY_WORD but may be needed to match </Property> removing a KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[<Property name=]],[[ value=]])) --remembers name
      
    elseif string.find(text,[[Property name=]],1,true) ~= nil then
      --like: <Property name="Landmarks">
      --this is usually a SIGNIFICANT KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[Property name=]],[[>]])) --remembers name
      
    elseif string.find(text,[[Property value=]],1,true) ~= nil then
      --like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
      --could be a SIGNIFICANT KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[Property value=]],[[>]])) --remembers value
      
    elseif string.find(text,[[<Data template=]],1,true) ~= nil then
      --like: <Data template="GcExternalObjectList">
      --encountered only once at first line
      --NEVER a KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[<Data template=]],[[>]])) --remembers template
      
    elseif string.find(text,[[</Data>]],1,true) ~= nil then
      --like: </Data>
      --encountered only once at end of file
      --NEVER a KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, "/Data") --remembers "/Data"
      
    end
  end  

  os.remove([["]]..filepathname..[["]])

  local filehandle = WriteToFileEXT(filepathname)
  if filehandle ~= nil then
    filehandle:write("MapFileTree: "..filename.." ("..Pak_FileName..")".."\n")
    filehandle:write("   LINE   LEVEL     KEYWORDS".."\n")    
    for i=1,#KEY_WORDS do
      if KEY_WORDS[i] ~= "<<<" then
        local line = string.format("%8u",FILE_LINE[i])
        local level = string.format("%2u",TREE_LEVEL[i])
        local info = "["..line.."] ["..level.."]"..string.rep("  ",TREE_LEVEL[i])..KEY_WORDS[i]
        filehandle:write(info.."\n")
      end
    end
    filehandle:close()
  end

  print("                             done!")
  Report("","    Created MapFileTree")

  return FILE_LINE,TREE_LEVEL,KEY_WORDS
end

--Used by FindGroup()
function MapFileTree(TextFileTable,file)
  --******************************************************************
  --NOT THE SAME AS LoadBothEXML.lua -> DisplayMapFileTree()
  --this MapFileTree must recreate the correct KEY_WORDS list for FindGroup() to work correctly
  --******************************************************************
  pv(THIS..">>> Executing MapFileTree()")
  
  local KEY_WORDS = {}
  local TREE_LEVEL = {}
  local FILE_LINE = {}
  local level = 0
  
  --skipping a few lines at start
  local j = 0
  repeat
    j = j + 1
  until string.find(TextFileTable[j],[[<Data template=]],1,true) ~= nil
  
  for i=j,#TextFileTable do
    local text = TextFileTable[i]
    
    if string.find(text,[[/>]],1,true) ~= nil then
      --it is never the start of a section
      --can be name or name + value
      
    --from here on, no lines with />
    --can be name, value or name + value    
    elseif string.find(text,[[</Property>]],1,true) ~= nil then
      --like: </Property>
      --NOT a KEY_WORD but should remove preceding KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, "<<<")
      level = level - 1
      
    elseif string.find(text,[[<Property name=]],1,true) ~= nil and string.find(text,[[value=]],1,true) ~= nil then
      --lines with BOTH name AND value
      --like: <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
      --usually NOT a KEY_WORD but may be needed to match </Property> removing a KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[<Property name=]],[[ value=]]))
      
    elseif string.find(text,[[Property name=]],1,true) ~= nil then
      --lines with name only
      --like: <Property name="Landmarks">
      --this is usually a SIGNIFICANT KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[Property name=]],[[>]]))
      
    elseif string.find(text,[[Property value=]],1,true) ~= nil then
      --lines with value only
      --like: <Property value="TkProceduralTextureChosenOptionSampler.xml">
      --could be a SIGNIFICANT KEY_WORD
      level = level + 1
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, StripInfo(text,[[Property value=]],[[>]]))
      
    elseif string.find(text,[[<Data template=]],1,true) ~= nil then
      --start line
      --like: <Data template="GcExternalObjectList">
      --encountered only once at first line
      --NEVER a KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, [[Data template]] )
      -- table.insert(KEY_WORDS,StripInfo(text,[[Data template=]],[[>]])) --wbertro
      
    elseif string.find(text,[[</Data>]],1,true) ~= nil then
      --ending line
      --like: </Data>
      --encountered only once at end of file
      --NEVER a KEY_WORD
      table.insert(FILE_LINE,i)
      table.insert(TREE_LEVEL,level)
      table.insert(KEY_WORDS, "/Data")
      
    end
  end  

  -- pv(THIS.."From end of MapFileTree()")
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
  --this needs MAINTENANCE !!!
	--if string.find(property,"Amount") or string.find(property,"Cost") or string.find(property,"Time") then return math.floor(number+0.5)

  --this one: no maintenance
  if valueIsInteger then
    return math.floor(number+0.5)
  end
	return number
end

function ExecuteMathOperation(math_operation,operand1,operand2)
	pv("["..tostring(operand1).."]")
	pv("["..tostring(operand2).."]")
  if operand1 == nil then
    --subtitute 0, error was already reported
    operand1 = 0
  end
  if operand2 == nil then
    --subtitute 0, error was already reported
    operand2 = 0
  end
  if math_operation == "*" then 
		return tonumber(operand1)*tonumber(operand2)
	elseif math_operation == "+" then 
		return tonumber(operand1)+tonumber(operand2)			
	elseif math_operation == "-" then 
		return tonumber(operand1)-tonumber(operand2)			
	elseif math_operation == "/" then 
		return tonumber(operand1)/tonumber(operand2)
	-- elseif math_operation == "=" then 
		-- return tonumber(operand2)
	else
    Report(math_operation,"Unknown MATH_OPERATION.  Please check your script!","WARNING")
    print(">>> WARNING: Unknown MATH_OPERATION: ["..math_operation.."]  Please check your script!","WARNING")
		return 1
	end
end

--################  USERSCRIPT PROCESSING  ###############################
function SerializeScript(object,multiline,name)
  local r = serialize(object,multiline,0,name)
  
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

function OpenUserScript()
  local Hash = ""
  
  --***************************************************************************************************  
  local function load_conf()
    local env = {
    string = string,
    math = math,
    table = table,
    tonumber = tonumber,
    tostring = tostring,
    type = type,
    print = print,
    assert = assert,
    io = {open=io.open,type=io.type,input=io.input,read=io.read,close=io.close,lines=io.lines,},
    os = {clock=os.clock,date=os.date,difftime=os.difftime,time=os.time,tmpname=os.tmpname,getenv=os.getenv,},
    pairs = pairs,
    ipairs = ipairs,
    } --user can use anything inside this new environment in the user script
    
    local script = LoadFileData(LoadFileData("CurrentModScript.txt"))
    
    --for backward compatibility
    script = string.gsub(script,[[REPLACE_AFTER_ENTRY]],[[PRECEDING_KEY_WORDS]])
    script = string.gsub(script,[[ADDSECTION]],[[ADDAFTERSECTION]])
    local script = string.gsub(script,[[\]],[[\\]])
    
    if string.find(script,[[:write]],1,true) ~= nil then
      local scriptFile = ParseTextFileIntoTable(LoadFileData("CurrentModScript.txt"))
      for i=1,#scriptFile do
        if string.find(scriptFile[i],[[:write]],1,true) ~= nil then
          if string.sub(trim(scriptFile[i]),1,2) ~= [[--]] then
            return {}, "XXXXX <not allowed> Lua keyword in used on line "..i.." of the script XXXXX"
          end
        end
      end
    end
    
    -- To be used if you want to inspect the loaded script
    if _mDEBUG ~= nil then
      WriteToFile(script, "..\\TempScript.lua")
    end
    
    local sha1 = require 'sha1'
    Hash = sha1.hex(string.sub(script,1,#script - 40)) 

    gSCRIPTBUILDERscript = (Hash == string.sub(script,#script - 39))
    if gSCRIPTBUILDERscript then print("A SCRIPTBUILDER script!") end
    
    --***************************************************************************************************  
    local function MyErrHandler(x)
      print("")
      print("Lua Script error: "..x)
      Report("","Lua Script error: "..x,"ERR")
      -- print(debug.traceback(nil,0))
      -- Report("", debug.traceback(nil,0),"ERR")
      LuaEndedOk(THIS)
    end

    -- --***************************************************************************************************        
    -- local function GetScript()
      -- return load(script,"User Script",'t',env)
    -- end
    
    local success, chunk = xpcall(load(script,"User Script",'t',env),MyErrHandler) --better
    -- local chunk, failure = load(script,"User Script",'t',env)
    
    if success then
        -- chunk()
    elseif chunk ~= nil then
      print("")
      print("Lua is reporting: "..chunk)
      Report("","Lua is reporting: "..chunk,"ERR")
    end

    return env, chunk, success
  end
  --***************************************************************************************************  

  --###################  MAIN CODE  ###################################
  local conf,status,success = load_conf()

  -- if status == nil or status == false then --only use this if not using pcall above
  if success then --use this if using pcall above
    local msg1 = "USER"
    if gSCRIPTBUILDERscript then
      msg1 = "SCRIPTBUILDER"
    end
    
    print(_zGREEN..">>> INFO: Success loading ".._zDEFAULT..msg1.._zGREEN.." script".._zDEFAULT)
    NMS_MOD_DEFINITION_CONTAINER = conf.NMS_MOD_DEFINITION_CONTAINER

    if _bScriptCounter == _bNumberScripts then
      --we are at the last script
      if _mSKIP_SERIALIZING == nil then
        print(_zGREEN..">>> INFO: Serializing loaded script, please wait...".._zDEFAULT)
        local scriptTable = SerializeScript(NMS_MOD_DEFINITION_CONTAINER,true,"NMS_MOD_DEFINITION_CONTAINER")
        WriteToFile(ConvertLineTableToText(scriptTable), "..\\SerializedScript.lua")
      end
    end
    print(_zGREEN..">>> INFO: Executing now...".._zDEFAULT)
    pv("["..Hash.."]")
    print()
  else
    NMS_MOD_DEFINITION_CONTAINER = ""
    -- print("")
    -- print(status)
    print("XXXXX Error loading USER script! XXXXX")
    print("")
    WriteToFile("", "LoadScriptAndFilenamesERROR.txt")
    Report(LoadFileData("CurrentModScript.txt"),"Error loading USER script!","ERROR")
    if status ~= nil then
      Report(LoadFileData("CurrentModScript.txt"),tostring(status))
    end
  end
  
  return NMS_MOD_DEFINITION_CONTAINER
end

function LocateMOD_PAK_SOURCE(file,first)
  local TextFileTable = gpak_listTable
  local TempMBIN = string.gsub(file,[[\]],[[/]])
  
  local Pak_File = ""
  local found = false
  
  for i=1,#TextFileTable,1 do
    local line = TextFileTable[i]
    if (line ~= nil) then
      if (string.find(line,"Listing ",1,true) ~= nil) then
        local start,stop = string.find(line,"Listing ",1,true)
        Pak_File = string.sub(line, stop+1)
        pv("["..Pak_File.."]")
      elseif (string.find(line,TempMBIN,1,true) ~= nil) then
        found = true
        if first then
          WriteToFile(Pak_File.."\n", "MOD_PAK_SOURCE.txt")
        else
          WriteToFileAppend(Pak_File.."\n", "MOD_PAK_SOURCE.txt")
        end
        break
      end
    end
  end
  return found,Pak_File
end

function TestScript(NMS_MOD_DEFINITION_CONTAINER)
  local MaxPakNameLength = _bMaxPakNameLength

  local mod_filename = NMS_MOD_DEFINITION_CONTAINER["MOD_FILENAME"]
  if mod_filename == nil or mod_filename == "" then
    print("WARNING: MOD filename not found, using 'GENERIC.pak' as name")
    Report("","MOD filename not found, using 'GENERIC.pak' as name","WARNING")
    mod_filename = "GENERIC.pak"
  end
  if mod_filename ~= "" and string.sub(mod_filename,-4) ~= ".pak" then
    mod_filename = string.sub(mod_filename,1,MaxPakNameLength)
    mod_filename = mod_filename..".pak"
    print("WARNING: Added .pak extension to MOD filename")
    Report("","Added .pak extension to MOD filename","WARNING")
  else
    mod_filename = string.sub(mod_filename,1,#mod_filename-4)
    mod_filename = string.sub(mod_filename,1,MaxPakNameLength)
    mod_filename = mod_filename..".pak"
  end
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
    print("INFO: Current MOD batchname set to ".._zGREEN.."["..mod_batchname.."]".._zDEFAULT)
    print()
    Report(""," Current MOD batchname set to ["..mod_batchname.."]")
    WriteToFile(mod_batchname, "MOD_BATCHNAME.txt")
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
  
  local mod_def = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"]
  if mod_def~=nil then
    local WordWrap1 = "\n"
    local WordWrap2 = "\n"

    for n=1,#mod_def,1 do
      if n == #mod_def then WordWrap1 = "" end	

      local ConflictTable = {}
      local mod_def_change_table = mod_def[n]["MBIN_CHANGE_TABLE"]
      for m=1,#mod_def_change_table,1 do	
        local mbin_file_source = mod_def_change_table[m]["MBIN_FILE_SOURCE"]
        if type(mbin_file_source) == "table" then
        
          if type(mbin_file_source[1]) == "table" then
            --alternate syntax #3
            pv("DETECTED a table of tables MBIN_FILE_SOURCE")
            for k=1,#mbin_file_source,1 do
              mbin_file_source[k][1] = NormalizePath(mbin_file_source[k][1])
              mbin_file_source[k][2] = NormalizePath(mbin_file_source[k][2])
              pv("Writing to MOD_MBIN_SOURCE.txt, MBIN_FILE_SOURCE["..k.."][1]: "..mbin_file_source[k][1])
              table.insert(NewMBIN_FILES,mbin_file_source[k][2])
              if not IsNewMBIN_File(NewMBIN_FILES,mbin_file_source[k][1]) then
                if m==#mod_def_change_table and n == #mod_def and k==#mbin_file_source then --last one of the table
                  WordWrap2 = ""
                end
                if n==1 and m==1 and k==1 then --first time only
                  WriteToFile(mbin_file_source[k][1]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                else
                  WriteToFileAppend(mbin_file_source[k][1]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                end
              end
            end
          
          else
            --alternate syntax #2
            pv("DETECTED a normal MBIN_FILE_SOURCE table")
            for k=1,#mbin_file_source,1 do
              mbin_file_source[k] = NormalizePath(mbin_file_source[k])
              pv("MBIN_FILE_SOURCE["..k.."]: "..mbin_file_source[k])
              
              if not IsNewMBIN_File(NewMBIN_FILES,mbin_file_source[k]) then
                pv("Writing to MOD_MBIN_SOURCE.txt, mbin_file_source[k] = "..mbin_file_source[k])
                if m==#mod_def_change_table and n==#mod_def and k==#mbin_file_source then --last one of the table
                  WordWrap2 = ""
                end
                if n==1 and m==1 and k==1 then --first time only
                  WriteToFile(mbin_file_source[k]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                else
                  WriteToFileAppend(mbin_file_source[k]..WordWrap2,"MOD_MBIN_SOURCE.txt")
                end
              end
            end
          end

        else
          --alternate syntax #1
          pv("DETECTED MBIN_FILE_SOURCE as a string")
          mbin_file_source = NormalizePath(mbin_file_source)
          pv("MBIN_FILE_SOURCE: "..mbin_file_source)

          if not IsNewMBIN_File(NewMBIN_FILES,mbin_file_source) then
            pv("Writing to MOD_MBIN_SOURCE.txt, mbin_file_source = "..mbin_file_source)
            if m==#mod_def_change_table and n==#mod_def then
              WordWrap2 = ""
            end
            if n==1 and m==1 then --first time only
              WriteToFile(mbin_file_source..WordWrap2,"MOD_MBIN_SOURCE.txt")
            else
              WriteToFileAppend(mbin_file_source..WordWrap2,"MOD_MBIN_SOURCE.txt")
            end		
          end
        end		
      end
    end
    
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
    
    --Get PAK_SOURCE for each MBIN_FILE_SOURCE
    local MBIN_Source = ParseTextFileIntoTable("MOD_MBIN_SOURCE.txt")
    for i=1,#MBIN_Source do
      local found,Pak_File = LocateMOD_PAK_SOURCE(MBIN_Source[i],(i==1))
      if not found then
        print("WARNING: NMS PAK not found for "..MBIN_Source[i]..". Check your file path/name, if it is a NMS file!")
        Report("","NMS PAK not found for "..MBIN_Source[i]..". Check your file path/name, if it is a NMS file!","WARNING")
      end
    end
    
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
    
  else
    WriteToFile("", "MOD_MBIN_SOURCE.txt")
    WriteToFile("", "MOD_PAK_SOURCE.txt")
    -- WriteToFile("", "MOD_FILENAME.txt")
  end
end

function ProcessScript(NMS_MOD_DEFINITION_CONTAINER,Multi_pak)
  if Multi_pak == nil then Multi_pak = false end
  
  print(">>> INFO: Checking MBIN_FILE_SOURCE validity...")
  TestScript(NMS_MOD_DEFINITION_CONTAINER)
  
  print("--------------------------------------------------------------------------------------")

  --START /wait /B did not work on win7
  --START /B /wait works on win7 maybe
  -- if os.execute([[START /B /wait "" /MIN cmd /c GetFreshSources.bat]]) == nil then
  if os.execute([[cmd /c GetFreshSources.bat]]) == nil then
    print("    [ERROR] GetFreshSources.bat ended unexpectedly")
  end
  --reset
  LuaStarting()
  
  HandleModScript(NMS_MOD_DEFINITION_CONTAINER,Multi_pak)
  
  WriteToFile(os.date("%y%m%d-%H%M%S"),[[DateTime.txt]]) --used by CreateMod.bat
  if _bCOMBINE_MODS == "0" then
    -- an Individual mod
    -- create mod after each script is processed
    print(_zRED..">>> INFO: Building MOD now...".._zDEFAULT)
    os.execute([[cmd /c CreateMod.bat]])
    --reset
    LuaStarting()
  elseif _bNumberScripts == _bScriptCounter then
    -- all other types of mod: (generic in name), (distinct in name) and Mod1+Mod2+Mod3.pak type mods
    print(_zRED..">>> INFO: Reached LAST script of Combined Mod, Building MOD now...".._zDEFAULT)
    os.execute([[cmd /c CreateMod.bat]])
    --reset
    LuaStarting()
  else
    print(_zRED..">>> INFO: Combined Mod ACTIVE: Delaying Building MOD until the end...".._zDEFAULT)
    Report("","Combined Mod ACTIVE: Delaying Building MOD until the end...")
  end
end
--################  end USERSCRIPT PROCESSING  ###############################

-- ****************************************************
-- main (above should be like SCRIPTBUILDER\TestReCreatedScript.lua)
--      (below not at all)
-- ****************************************************

if gVerbose == nil then dofile("LoadHelpers.lua") end
pv(">>>     In LoadAndExecuteModScript.lua")
gfilePATH = "..\\" --for Report()

THIS = "In LoadAndExecuteModScript: "

NMS_FOLDER = LoadFileData("NMS_FOLDER.txt")
NMS_FOLDER = string.gsub(NMS_FOLDER,"\n","") --remove line break if any
gNMS_PCBANKS_FOLDER_PATH = NMS_FOLDER..[[\GAMEDATA\PCBANKS\]]
-- print("*************  ["..gNMS_PCBANKS_FOLDER_PATH.."]")

gMASTER_FOLDER_PATH = LoadFileData("MASTER_FOLDER_PATH.txt")
gLocalFolder = [[MODBUILDER\MOD\]]

gSCRIPTBUILDERscript = false
  
--global for all sub-scripts
gSaveSectionContent = {}
gSaveSectionName = {}
gUseSectionContent = {}
gUseSectionName = {}

--to print them
-- GetLuaCurrentKeyWordsAndAll(_G,"",false)

--Get all environment variables once
_bScriptCounter = os.getenv("_bScriptCounter")
_bNumberScripts = os.getenv("_bNumberScripts")
_bScriptName = os.getenv("_bScriptName")

_bCOMBINE_MODS = os.getenv("_bCOMBINE_MODS")
_mScriptInPAK = os.getenv("_mScriptInPAK")
_bAllowMapFileTreeCreator = os.getenv("_bAllowMapFileTreeCreator")
_bRecreateMapFileTrees= os.getenv("_bRecreateMapFileTrees")
_mSKIP_SERIALIZING = os.getenv("_mSKIP_SERIALIZING")

_bMaxPakNameLength = os.getenv("_bMaxPakNameLength")

_mWbertro = os.getenv("_mWbertro")
_bOS_bitness = os.getenv("_bOS_bitness")
_bCPU = os.getenv("_bCPU")
_bMinCPU = os.getenv("_bMinCPU")
_mISxxx = os.getenv("_mISxxx")
_mSHOWSECTIONS = os.getenv("_mSHOWSECTIONS")
_mDEBUG = os.getenv("_mDEBUG")
--end Get all environment variables once

gpak_listTable = ParseTextFileIntoTable("pak_list.txt")

gModScriptDirList = {}
gModScriptDirList = ListDir(gModScriptDirList,[[..\ModScript]],true,false)

--clean and keep only .lua scripts
local tempList = {}
for i=1,#gModScriptDirList do
  if string.sub(gModScriptDirList[i],-4) == ".lua" then
    tempList[#tempList+1] = gModScriptDirList[i]
  end
end
gModScriptDirList = tempList

_bNumberScripts = #gModScriptDirList
for i=1,#gModScriptDirList do
  -- print(gModScriptDirList[i])
  _bScriptCounter = i
  _bScriptName = gModScriptDirList[i]

  -- echo|set /p="%%G">CurrentModScript.txt
  -- echo|set /p="%%~nxG">CurrentModScript_Short.txt
  WriteToFile(gMASTER_FOLDER_PATH..[[ModScript\]].._bScriptName, "CurrentModScript.txt")
  WriteToFile(_bScriptName, "CurrentModScript_Short.txt")

  
  print()
  print(_zRED..">>> Starting to process script #".._bScriptCounter.." of ".._bNumberScripts
                .." [".._bScriptName.."]".._zDEFAULT)
  print()
  print(">>> Opening User Lua Script, Please wait...")

  --*************************************************
  gNMS_MOD_DEFINITION_CONTAINER = OpenUserScript()
  --*************************************************

  if (_mWbertro ~= nil) and gNMS_MOD_DEFINITION_CONTAINER ~= nil then
    SaveTable("..\\TempTable.txt",gNMS_MOD_DEFINITION_CONTAINER,"NMS_MOD_DEFINITION_CONTAINER") 
  end

  if type(gNMS_MOD_DEFINITION_CONTAINER) == "table" then    
    if _bAllowMapFileTreeCreator ~= nil then
      if _bNumberScripts > 0 then
        if not IsFileExist("MapFileTreeSharedList.txt") then
          WriteToFile("","MapFileTreeSharedList.txt")
        end
        dofile("CreateMapFileTreeStarter.lua")
      end
    end

    if _bCOMBINE_MODS == "0" or _bScriptCounter == 1 then
      --INDIVIDUAL MODs: Cleaning directory MOD each time
      --COMBINED MOD: Cleaning directory MOD before first script only
      os.execute([[START /wait "" /B /MIN cmd /c CleanMod.bat]])
    end

    if type(gNMS_MOD_DEFINITION_CONTAINER[1]) == "table" then
      local Container = gNMS_MOD_DEFINITION_CONTAINER

      for i=1,#Container do
        if i > 1 then
          print()
          print(_zRED..">>> Still processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]".._zDEFAULT)
          print()

          Report("")
          Report("","========================================================================================")
          Report("","Still processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]")
        else
          Report("")
          Report("","========================================================================================")
          Report("","Processing script #".._bScriptCounter.." of ".._bNumberScripts
                        .." [".._bScriptName.."]")
        end
        
        print(_zGREEN.."              ++++++++++  A Multi-PAK script  ++++++++++".._zDEFAULT)
        print(_zGREEN.."              >>> Processing sub-script #"..i..[[ of ]]..#Container.._zDEFAULT)
        print()

        Report("","              ++++++++++  A Multi-PAK script  ++++++++++")
        Report("","              >>> Processing sub-script #"..i..[[ of ]]..#Container)
        
        if _mScriptInPAK ~= nil then
          print(">>> Copying script source to MOD")
          Report("","Copying script source to MOD")

          --copy script to MOD folder
          FilePathSource = LoadFileData("CurrentModScript.txt")
          -- print("["..FilePathSource.."]")
          FolderPath = [[.\MOD\]]..LoadFileData("CurrentModScript_Short.txt")
          -- print("["..FolderPath.."]")
          os.execute([[START /wait "" /B /MIN cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FolderPath..[[*" 1>NUL 2>NUL]])          
        end

        ProcessScript(Container[i],True)
        
        Report("","Ending MBIN/PAK phase...")
        if _bCOMBINE_MODS == "0" then
          --individual mod
          Report("","Copied PAKs to NMS MOD folder...")
        end
        Report("","Ended sub-script "..i.." of [".._bScriptName.."]")
        if i == #Container then
          Report("","Ended script [".._bScriptName.."]")
        end
        Report("","========================================================================================")

        --spacing for sub-script
        print()
        Report("")
      end
    else
      --only one entry
      Report("")
      Report("","========================================================================================")
      Report("","Starting to process script #".._bScriptCounter.." of ".._bNumberScripts
                    .." [".._bScriptName.."]")

      print(_zGREEN.."              ++++++++++  A Single-PAK script  ++++++++++".._zDEFAULT)
      print()

      if _mScriptInPAK ~= nil then
        print(">>> Copying script source to MOD")
        Report("","Copying script source to MOD")

        --copy script to MOD folder
        FilePathSource = LoadFileData("CurrentModScript.txt")
        -- print("["..FilePathSource.."]")
        FolderPath = [[.\MOD\]]..LoadFileData("CurrentModScript_Short.txt")
        -- print("["..FolderPath.."]")
        os.execute([[START /wait "" /B /MIN cmd /c xcopy /y /h /v /i "]]..FilePathSource..[[" "]]..FolderPath..[[*" 1>NUL 2>NUL]])          
      end

      ProcessScript(gNMS_MOD_DEFINITION_CONTAINER)

      Report("","Ending MBIN/PAK phase...")
      if _bCOMBINE_MODS == "0" then
        --individual mod
        Report("","Copied PAKs to NMS MOD folder...")
      end
      Report("","Ended script [".._bScriptName.."]")
      Report("","========================================================================================")
      Report("")
    end
    
  else
    WriteToFile("", "MOD_MBIN_SOURCE.txt")
    WriteToFile("", "MOD_PAK_SOURCE.txt")
    WriteToFile("", "MOD_FILENAME.txt")
    WriteToFile("", "LoadScriptAndFilenamesERROR.txt")
    print(">>> ERROR: NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!")
    print("")
    Report(LoadFileData("CurrentModScript.txt"),"NMS_MOD_DEFINITION_CONTAINER is not a table, this script has a problem!","ERROR")
  end

  print()
  print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)
  print(_zRED..">>>            Scripts processed: ".._bScriptCounter.._zDEFAULT)
  print(_zRED..">>>     Total scripts to process: ".._bNumberScripts.._zDEFAULT)
  print(_zDARKGRAY.."-----------------------------------------------------------".._zDEFAULT)

  if _bCOMBINE_MODS ~= "0" then
    --combined mod
    if _bNumberScripts == _bScriptCounter then
      print()
      print(_zGREEN..">>> Done building ALL scripts".._zDEFAULT)
      print(_zGREEN..">>> Copying PAK to NMS MOD folder...".._zDEFAULT)

      Report("","Done building ALL scripts")
      Report("","Copied PAK to NMS MOD folder...")
      -- Report("")
    end
  end
end

pv(THIS.."ending")
LuaEndedOk(THIS)
