Author = "PyronoxOmega"
ModName = "NoMoreWires-teleport"
GameVersion = "4"
ModVersion = "1.2"
Description = "Makes short teleporter wires invisible"

FileSource1 = {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/CONDUIT_PORTALWIRE/TELEPORTERSCROLLEFFECTMAT.MATERIAL.MBIN"}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName .. "" .. GameVersion .. ModVersion .. ".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] = Description,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource1,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map",	""},
								{"Shader",	""},								
							}
						},
					}
				},		
			}
		}
	}	
}