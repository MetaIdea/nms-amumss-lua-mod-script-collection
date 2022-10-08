Author = "Gumsk,Devilin Pixy,Jasondude"
ModName = "gMech"
ModNameSub = "Only No Damage"
BaseDescription = "Removes AI Combat Damage"
GameVersion = "401"
ModVersion = "a"
FileSource2 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"
	
	DamageTechNumHitsRequired					= 9999999			--20


NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"]	= FileSource2,
					["EXML_CHANGE_TABLE"]	= {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"DamageTechNumHitsRequired",DamageTechNumHitsRequired},
							},
						},
					},
				},
			}
		}
	}
}