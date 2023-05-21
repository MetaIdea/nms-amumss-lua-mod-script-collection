MainDiffuse = "TEXTURES/SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE_HFHANGARCRANE_BRUSHEDSTAINLESS.DDS" -- MAIN TEXTURE DIFFUSE MAP
MainMasks = "TEXTURES/SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE_HFHANGARCRANE_BRUSHEDSTAINLESS.MASKS.DDS" -- MAIN MASKS MAP
MainNormal = "TEXTURES/SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE_HFHANGARCRANE_BRUSHEDSTAINLESS.NORMAL.DDS" -- MAIN NORMAL MAP

TileDiffuse = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE_HFHANGARCRANE.DDS" -- TILING DIFFUSE MAP
TileMasks = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE_HFHANGARCRANE.MASKS.DDS" -- TILING MASKS MAP
TileNormal = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE_HFHANGARCRANE.NORMAL.DDS" -- TILING NORMAL MAP

Version = "1.0"
Game_Version = "4.23"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fCrane_BrushedStainless_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fCrane: Brushed Stainless Steel Freighter Hangar Cranes",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=	"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARCRANE/PIRATETRIMMAT1.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainDiffuse } --Original "SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE.1.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainMasks } --Original "SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE.1.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", MainNormal } --Original "SPACE/SPACESTATION/PIRATES/PIRATETRIM.BASE.1.NORMAL.DDS"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialParamsVec4"},	
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}-- Original "0.9"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARCRANE/TILINGTEXTURE_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", TileDiffuse } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMasksMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", TileMasks } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE.MASKS.DDS" 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gNormalMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", TileNormal } --Original "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/TILINGTEXTURE.NORMAL.DDS"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialParamsVec4"},	
							["INTEGER_TO_FLOAT"]    = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",		"0"}, 	-- Original "0.9"
							}
						}
					}
				}	
			}
		}
	}	
}