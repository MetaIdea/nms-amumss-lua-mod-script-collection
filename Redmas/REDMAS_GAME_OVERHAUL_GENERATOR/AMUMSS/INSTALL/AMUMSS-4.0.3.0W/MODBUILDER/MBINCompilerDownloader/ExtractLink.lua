function GetURL()
	local URL = ""
	local line = ""
  local filehandle = assert(io.open("RAW.txt", "r"),"io.open: Cannot open RAW.txt to load")
	
  local compilerCount = 0

  -- if [["prerelease": true,]] then experimental
  -- if [["prerelease": false,]]  then public
  --   if 1st compiler then experimental AND public
  
  local experimental = false
  local public = false
  local line = ""
  local lineCount = 0
  
  repeat
		line = filehandle:read("l")
		if line ~= nil then
      lineCount = lineCount + 1
      
      if string.find(line, [["prerelease": false,]],1,true) ~= nil then
        if compilerCount == 0 then
          experimental = true
          public = true
          -- print("found 1st compiler and >PUBLIC / EXPERIMENTAL< at "..lineCount)
        else
          public = true
          -- print("found 1st compiler and >PUBLIC< at "..lineCount)
        end
      elseif string.find(line, [["prerelease": true,]],1,true) ~= nil then
        if compilerCount == 0 then
          experimental = true
          -- print("found 1st compiler and >experimental ONLY< at "..lineCount)
        end
      end
      
			if string.find(line, "/monkeyman192/MBINCompiler/releases/download/",1,true) and string.find(line, "MBINCompiler.exe",1,true) then				
        -- print("   found a MBINCompiler.exe at "..lineCount)
				compilerCount = compilerCount + 1
        local start_pos = string.find(line,'"https',1,true)
				if start_pos ~= nil then 
          URL = string.sub(line,start_pos+1,-2)
				end	
				
        if compilerCount == 1 then
          -- print("   >>> found public compiler.exe with compilerCount == 1 at "..lineCount)
          -- print("       "..URL)
          writeToFile(URL,"temp1.txt")
          
          if public then
            -- print("   >>> setting previous compiler.exe to public at "..lineCount)
            -- print("       "..URL)
            writeToFile(URL,"temp2.txt")
            break
          end
          compilerCount = compilerCount + 1
          
        elseif public then
          -- print("   >>> found compiler.exe with compilerCount > 1 AND public at "..lineCount)
          -- print("       "..URL)
          writeToFile(URL,"temp2.txt")
          break
        end        
			end
		end
	until line == nil
  
  filehandle:close()
end

function writeToFile(output, file)
  local filehandle = assert(io.open(file, "w"),"io.open: Cannot open tempX.txt to write")
  if filehandle ~= nil then
    filehandle:write(output)
    filehandle:flush()
    filehandle:close()
  end
end

if gVerbose == nil then dofile("..\\LoadHelpers.lua") end
GetURL()

