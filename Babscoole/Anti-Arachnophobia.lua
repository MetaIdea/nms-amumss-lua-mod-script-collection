DelCreature = {"SPIDER","FLOATSPIDER","ROCKCREATURE","SCUTTLER","CRAB"}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "Anti-Arachnophobia.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN", 
					["EXML_CHANGE_TABLE"] = 
					{
					
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN", 
					["EXML_CHANGE_TABLE"] = 
					{
					
					},
				},					
			},
		},
	},	
}

local DelCreatureTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local DelCreatureTable2 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
for i=1,#DelCreature do
	local value = DelCreature[i]
    DelCreatureTable[#DelCreatureTable +1 ] = 
						{
							["SPECIAL_KEY_WORDS"] = {"Id",value},	
							["REMOVE"] = "SECTION"
						}
    DelCreatureTable2[#DelCreatureTable2 +1 ] = 
						{
							["SPECIAL_KEY_WORDS"] = {"ID",value},	
							["REMOVE"] = "SECTION"
						}							
end