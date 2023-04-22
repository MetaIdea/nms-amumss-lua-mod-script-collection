Author			= "Gumsk" -- just reduced to the flyover prevention by youngneil1
ModName			= "gLonely_NoFlyoverOnly"
ModNameSub		= ""
BaseDescription	= "Stop these random, landscape colliding flyovers by normals ships (not frigates). Landing pad based traffic for various structures on planet as well as traffic on trade routes or in space still intact."
GameVersion		= "423"
ModVersion		= "a"

FileSource5 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
			
			
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						
			--=============================================================================
			--Disable Random AI Ship Flyovers by Gumsk
			--=============================================================================
						{
							["PRECEDING_KEY_WORDS"] = {"FlybySpawns","Count"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 	--1
								{"y",0}, 	--3
							},
						},	

					}
				},
			
			}
		}
	}
}
