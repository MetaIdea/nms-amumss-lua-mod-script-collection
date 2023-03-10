MOD_DEF_MAIN_1 =
[[NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fSails_Black.pak",
["MOD_AUTHOR"]		= "hemis FEAR",
["NMS_VERSION"]		= "1",
["MOD_DESCRIPTION"]	= "",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "SAIL_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
]]

MOD_DEF_MAIN_2 =
[[							}
						}
					}
				}
			}
		}
	}	
}	
]]

function CreateModDefinitionFile(file1,file2)
	local ValueNameVanilla, ValueVanilla, ValueNameMod, ValueMod, LineMod, LineVanilla
	ModDef = ""
	TextFileTableVanilla = ParseTextFileIntoTable(file1)
	TextFileTableMod = ParseTextFileIntoTable(file2)
	for i=1,getn(TextFileTableVanilla),1 do
		ValueNameVanilla, ValueVanilla = ExtractNameAndValueFromLine(TextFileTableVanilla[i])
		ValueNameMod, ValueMod = ExtractNameAndValueFromLine(TextFileTableMod[i])
		if ValueNameVanilla~=nil and ValueVanilla ~=nil and ValueNameMod~=nil and ValueMod~=nil then	
			if not strfind(ValueMod, ValueVanilla) and strfind(ValueNameMod, ValueNameVanilla) then
				print("Value: " .. ValueNameVanilla .. ", Original: " .. ValueVanilla .. ", Modded: " .. ValueMod)
				local ValueNameVanilla_ = strsub(ValueNameVanilla,2,strlen(ValueNameVanilla)-1)
				local ValueMod_ = strsub(ValueMod,2,strlen(ValueMod)-1)
				local ValueVanilla_ = strsub(ValueVanilla,2,strlen(ValueVanilla)-1)				
				local TabString1 = strrep("\t", 9-floor((strlen(ValueNameVanilla_)/4)+0.5))
				local TabString2 = strrep("\t", 2-floor((strlen(ValueMod_)/4)+0.5))
				ModDef = ModDef .. strrep("\t",8) .."{ " .. [["]] .. ValueNameVanilla_ .. [["]] .. ", " 
          .. TabString1 .. [["]] .. ValueMod_ .. [["]] .. " }, " 
          .. TabString2 .. [[--Original ]] .. [["]] .. ValueVanilla_ .. [["]] .. "\n"		
			end
		end
	end
	ModDef = MOD_DEF_MAIN_1 .. ModDef .. MOD_DEF_MAIN_2
	WriteToFile(ModDef, "ModScript.lua")
end

function ExtractNameAndValueFromLine(line)
	--print(line)
	local start_pos1, end_pos1, exstring1, start_pos2, end_pos2, exstring2 
	start_pos1 = strfind(line, "name=")
	if start_pos1 == nil then return end
	end_pos1 = strfind(line, '"', start_pos1+6)
	exstring1 = strsub(line, start_pos1+5, end_pos1)
	start_pos2 = strfind(line, "value=", end_pos1)
	if start_pos2 == nil then return end
	end_pos2 = strfind(line, '"', start_pos2+7)
	exstring2 = strsub(line, start_pos2+6, end_pos2)
	--print(exstring1, exstring2)
	return exstring1, exstring2
end

function ParseTextFileIntoTable(file)
	local filehandle = openfile(file, 'r')
	local LineTable = {}
	local LineCount = 0
	line = read(filehandle, '*l')
	while line ~= nil do 
		LineCount=LineCount+1
		tinsert(LineTable, line) 
		line = read(filehandle, '*l') 
	end
	closefile(filehandle)	
	return LineTable, LineCount
end

function WriteToFile(output,file)
   local filehandle = openfile(file, 'w')
   if filehandle ~= nil then
      write(filehandle, output)
   end
   flush(filehandle)
   closefile(filehandle)
end

Path = ""
CreateModDefinitionFile(Path .. "1.ORIGINAL.EXML", Path .. "2.MODDED.EXML")

print("mod script created as " .. "ModScript.lua")