function GetDotnetPath(outputPath)
  local dotnetList = ParseTextFileIntoTable([[.\MODBUILDER\DOTNET.txt]])
  for i=1,#dotnetList do
    local installDrive = ""
    local s = dotnetList[i]
    local searchFor = [[\program files\dotnet\shared\Microsoft.WindowsDesktop.App]]
    local pos = s:upper():find(searchFor:upper(),1,true)
    if pos ~= nil then
      installDrive = s:sub(pos-2,pos)
      WriteToFile(installDrive:upper(),outputPath)
      break
    end
  end
end

if gVerbose == nil then dofile([[.\MODBUILDER\LoadHelpers.lua]]) end

outputPath = [[.\MODBUILDER\DotnetPath.txt]]
GetDotnetPath(outputPath)
