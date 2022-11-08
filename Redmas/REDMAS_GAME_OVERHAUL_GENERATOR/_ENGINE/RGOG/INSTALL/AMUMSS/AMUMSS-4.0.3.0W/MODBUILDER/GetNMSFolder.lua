--arg[1] == path to Steam folder
--arg[2] == path to MODBUILDER

if gVerbose == nil then dofile(arg[2]..[[LoadHelpers.lua]]) end
pv(">>>     In GetNMSFolder.lua")
gSteamPATH = arg[1]
THIS = "In GetNMSFolder: "

local SteamLibrariesListPathFilename = gSteamPATH..[[\steamapps\libraryfolders.vdf]]

local SteamLibrariesList = ParseTextFileIntoTable(SteamLibrariesListPathFilename)

if #SteamLibrariesList > 0 then
  print("Found Steam Library path(s):")
end

local found = false
for i=5,#SteamLibrariesList-1 do
  -- local LibPath = string.sub(SteamLibrariesList[i],8,-2)
  local LibPath = string.sub(SteamLibrariesList[i],1,-2)
  LibPath = string.gsub(LibPath,[[\\]],[[\]])
  
  if string.find(LibPath,[["path"]],1,true) ~= nil then
    local pos = string.find(LibPath,[["path"]],1,true) + 6
    LibPath = trim(string.sub(LibPath,pos))
    LibPath = string.sub(LibPath,2)
    
    print("   ["..LibPath.."]")
    
    if IsFileExist(LibPath..[[\steamapps\common\No Man's Sky\GAMEDATA\PCBANKS\BankSignatures.bin]]) then
      print(">>> Found NMS_FOLDER")
      print()
      found = true
      WriteToFile(LibPath..[[\steamapps\common\No Man's Sky]],[[NMS_FOLDER.txt]])
      break
    end
  end
end

-- if not found then
  -- --maybe it is a Windows Store / GamePass PC / UWP version of the game
  
  -- --and the user executed https://www.nexusmods.com/nomanssky/mods/1751
  -- local APath = [[%localappdata%\Packages\]]
  -- --or [[C:\Program Files\WindowsApps\]]
  -- --find the NMS folder like 'HelloGames.NoMansSky_x' where x is something
  -- local NMSPath = [[HelloGames.NoMansSky_x]]
  
  -- local BPath = [[LocalCache\Local\Microsoft\WritablePackageRoot]]
  
  -- local FullPath = APath..NMSPath..BPath
  
  -- -- FullPath = string.gsub(FullPath,[[\\]],[[\]])
  -- print("   "..FullPath)
  
  -- if IsFileExist(FullPath..[[\GAMEDATA\PCBANKS\BankSignatures.bin]]) then
    -- print("Found NMS_FOLDER")
    -- WriteToFile(FullPath]],[[NMS_FOLDER.txt]])
    -- break
  -- end
-- end

Report_flush()

LuaEndedOk(THIS)
