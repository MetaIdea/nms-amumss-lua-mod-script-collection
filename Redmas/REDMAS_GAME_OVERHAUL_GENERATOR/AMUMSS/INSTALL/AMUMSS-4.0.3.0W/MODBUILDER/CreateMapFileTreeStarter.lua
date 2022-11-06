-- ****************************************************
-- main
-- ****************************************************
if gVerbose == nil then dofile("LoadHelpers.lua") end

if os.getenv("_gVERBOSE") == "Y" then
  print("   @@@ Detected _gVERBOSE=Y @@@")
  gVerbose = true
end

pv("In CreateMapFileTreeStarter.lua")

if not IsFileExist("MapFileTreeRequested.txt") then
  pv("MapFileTreeRequested.txt does not exist!")
  WriteToFile("","MapFileTreeRequested.txt")
  pv("Starting 2nd thread cmd...")
  os.execute([[START "CreateMapFileTree" /MIN ]]..os.getenv("_mLUAM")..[[ CreateMapFileTree.lua]])
  
  --to debug, see file MapFileTreeRunner.lua
else
  pv("MapFileTreeRequested.txt exist already!")
  
end

pv("Exit from CreateMapFileTreeStarter.lua")
