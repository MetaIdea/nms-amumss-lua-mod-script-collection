function GetGamePassPath(outputPath)
  local searchFor = [[.GamingRoot]]
  
  for i=67,90 do
    local path = string.char(i)..[[:\]]..searchFor
    -- print("path = ["..path.."]")
    if IsFileExist(path) then
			print("  - Found .GamingRoot in drive "..string.char(i)..":")
      
      -- print("path = ["..path.."]")
      local data = LoadFileData(path,"b")
      -- print("data = ["..data.."]")
      
      local da = data:sub(6)
      local d = ""
      -- handle UTF-8 to ASCII
      for i=4,#da,2 do
          d = d..da:sub(i,i)
      end
      d = d:sub(1,-2)

			print("       Points to folder "..string.char(i)..[[:\]]..d)
      path = string.char(i)..[[:\]]..d..[[\No Man's Sky\Content\GAMEDATA\PCBANKS\BankSignatures.bin]]
      if IsFileExist(path) then       
        print([[       SUCCESS: Found GamePass in ]]..string.char(i)..[[:\]]..d..[[\No Man's Sky\Content]])
        print()
        WriteToFile(string.char(i)..[[:\]]..d..[[\No Man's Sky\Content]],outputPath)
        break
      end      
    end
  end
  
end

if gVerbose == nil then dofile([[.\MODBUILDER\LoadHelpers.lua]]) end

outputPath = [[NMS_FOLDER.txt]]
GetGamePassPath(outputPath)
