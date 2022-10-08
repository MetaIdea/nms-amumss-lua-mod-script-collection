Languages =
{
    ["English"]               = "English",
    ["French"]                = "French",
    ["Italian"]               = "Italian",
    ["German"]                = "German",
    ["Spanish"]               = "Spanish",
    ["Russian"]               = "Russian",
    ["Polish"]                = "Polish",
    ["Dutch"]                 = "Dutch",
    ["Portuguese"]            = "Portuguese",
    ["LatinAmeraicanSpanish"] = "LatinAmericanSpanish", --this is not a typo
    ["BrazilianPortuguese"]   = "BrazilianPortuguese",
    ["SimplifiedChinese"]     = "SimplifiedChinese",
    ["TraditionalChinese"]    = "TraditionalChinese",
    ["TencentChinese"]        = "TencentChinese",
    ["Korean"]                = "Korean",
    ["Japanese"]              = "Japanese",
    ["USEnglish"]             = "USEnglish"
}

SubstanceOrProduct = { ["Substance"] = "Substance", ["Product"] =  "Product"}

-- Adjust this stuff to change how all of the extractors work --

-- TLDR: --
-- Speed is in SECONDS and MUST be a negative value, THE LOWER THE VALUE, THE FASTER THE EXTRACTOR FILLS
--Storage is self explanatory lol

ExtrSpeed = -3660 -- 1hr
ExtrCap = 9999 -- max cap

-- Extr Speed is calculated as a countdown, the lower the countdown value, the faster the extractor fills up. Higher Capacity + Faster ExtrSpeed = Higher Yields.
-- ExtrSpeed Default is -79200, or 22 hrs. I currently have it set to -3600, which is 1 hr
-- ExtrCap Default is 350, I set it to 9999.
-- You can adjust this stuff to suit your needs, just be aware that making the extractors too fast/too slow may break immersion


AddNewExtrRooms =
{
    {
        ["ProductID"]           = "FRE_ROOM_EMEXTR",
		["Requirements"]        =
        {
			{"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
			{"LAND3",				"40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --					language									name											subtitle																								description					--
            {Languages["English"], "Stellar Extractor: Exotic Materials", "Moar Useful Elements", "Naturally ocurring in Stars, Helium is the product of the nuclear fusion of hydrogen atoms. New synthesis tehcnologies allow for Helium to be created in refiners."}
        }
    },
	{
        ["ProductID"]           = "FRE_ROOM_GEXTR",
		["Requirements"]        =
        {
			{"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
			{"LAND3",				"40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --					language									name											subtitle																								description					--
            {Languages["English"], "Stellar Extractor: Gasses", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Gasses like Carbon, Di-Hydrogen, and Ammonia from matter-dense Nebulae."}
        }
    },
	{
        ["ProductID"]           = "FRE_ROOM_MEXTR",
		["Requirements"]        =
        {
			{"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
			{"LAND3",				"40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --					language									name											subtitle																								description					--
            {Languages["English"], "Stellar Extractor: Metals", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Metals like Pure Ferrite, Cobalt, and Salt from matter-dense Nebulae."}
        }
    },
	{
        ["ProductID"]           = "FRE_ROOM_SMEXTR",
		["Requirements"]        =
        {
			{"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
			{"LAND3",				"40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --					language									name											subtitle																								description					--
            {Languages["English"], "Stellar Extractor: Stellar Materials", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Stellar Materials like Copper, Cadmium, and Indium from matter-dense Nebulae."}
        }
    }
}

AddNewBBObjects =
{
    {
        ["BBObjectID"]           		= "FRE_ROOM_EMEXTR",
		["BBObjectFileName"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EMEXTRROOM/ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"
    },
	{
        ["BBObjectID"]           		= "FRE_ROOM_GEXTR",
		["BBObjectFileName"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/GEXTRROOM/ROOM_GEXTR_PLACEMENT.SCENE.MBIN"
    },
	{
        ["BBObjectID"]           		= "FRE_ROOM_MEXTR",
		["BBObjectFileName"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/MEXTRROOM/ROOM_MEXTR_PLACEMENT.SCENE.MBIN"
    },
	{
        ["BBObjectID"]           		= "FRE_ROOM_SMEXTR",
		["BBObjectFileName"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SMEXTRROOM/ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"
    }
}

AddNewBBParts =
{
	{
		["Floor0ID"]						= "_FRE_ROOM_EMEXTR_FLOOR0",
		["Floor0Path"]					= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EMEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
	},
	{
		["Floor0ID"]						= "_FRE_ROOM_GEXTR_FLOOR0",
		["Floor0Path"]					= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/GEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
	},
	{
		["Floor0ID"]						= "_FRE_ROOM_MEXTR_FLOOR0",
		["Floor0Path"]					= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/MEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
	},
	{
		["Floor0ID"]						= "_FRE_ROOM_SMEXTR_FLOOR0",
		["Floor0Path"]					= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SMEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
	}
}

AddNewBBPartsNavData =
{
	{
		["BBPartsNavID"] = "_FRE_ROOM_EMEXTR_FLOOR0"
	},
	{
		["BBPartsNavID"] = "_FRE_ROOM_GEXTR_FLOOR0"
	},	
	{
		["BBPartsNavID"] = "_FRE_ROOM_MEXTR_FLOOR0"
	},
	{
		["BBPartsNavID"] = "_FRE_ROOM_SMEXTR_FLOOR0"
	}
}

-- new PlacementData.Entity entry for SnapPoint_Front
AddNewPDEFront =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_Front",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_Front",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_Front",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_Front",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Back
AddNewPDEBack =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_Back",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_Back",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_Back",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_Back",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Left
AddNewPDELeft =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_Left",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_Left",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_Left",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_Left",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Right
AddNewPDERight =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_Right",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_Right",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_Right",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_Right",
    }
}
-- new PlacementData.Entity entry for SnapPoint_FrontRight
AddNewPDEFR =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontRight",
    }
}
-- new PlacementData.Entity entry for SnapPoint_FrontLeft
AddNewPDEFL =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_FrontLeft",
    }
}
-- new PlacementData.Entity entry for SnapPoint_BackRight
AddNewPDEBR =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackRight",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackRight",
    }
}
-- new PlacementData.Entity entry for SnapPoint_BackLeft
AddNewPDEBL =
{
    {
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackLeft",
    },
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_BackLeft",
    }
}

-- New PlacementData.Entity entries for Walls, Windows and Doors --
--SnapPoint_Face
AddNewSnapPTFace =
{
	{
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_Face",
	},
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_Face",
	},
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_Face",
	},
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_Face",
	}
}

--SnapPoint_SPIGN_Face1
AddNewSnapPTSpignFace =
{
	{
		["EntityId"]	=	"FRE_ROOM_EMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_Face1",
	},
	{
		["EntityId"]	=	"FRE_ROOM_GEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_Face1",
	},
	{
		["EntityId"]	=	"FRE_ROOM_MEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_Face1",
	},
	{
		["EntityId"]	=	"FRE_ROOM_SMEXTR",
		["SnapPt"]	=	"SnapPoint_SPIGN_Face1",
	}
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------		CODE LOGIC STARTS HERE, NO TOUCHY UNLESS YOU WANNA BREAKY		------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ModName 						= "NMS Moar Stellar Extractors "
Author								= "EchoTree "
LuaAuthor							= "EchoTree & Jackty89"
ModDescription				=	"Adds 4 new Stellar Extractor rooms to the game. Adds 20 New Files, Modifies METADATA/REALITY DEFAULTSAVEDATA.MBIN, DEFAULTSAVEDATACREATIVE.MBIN, /TABLES BASEBUILDINGOBJECTSTABLE.MBIN, BASEBUILDINGPARTSTABLE.MBIN, BASEBUILDINGPARTSNAVDATATABLE.MBIN, NMS_REALITY_GCPRODUCTTABLE.MBIN, and all of the PLACEMENTDATA.ENTITY.MBINS for the Industrial Rooms."
GameVersion					=	"v4.0.0"
Build									= ".1"
CustomLanguageTag		= "NMSMSE"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= Author..ModName..GameVersion..Build..".pak",
	["MOD_DESCRIPTION"]      = ModDescription.."Compatible with NMS"..GameVersion,
	["MOD_AUTHOR"]				= Author,
	["LUA_AUTHOR"]					= LuaAuthor,
	["NMS_VERSION"]				= GameVersion,
	["ADD_FILES"]           			=
	{
	},
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{		--																																												MBIN CLONING																																										--
				{		--																													CLONING FILES FROM STANDARD SE TO EXOTIC MATERIALS EXTRACTOR					1																										--
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"},
					}
				},
				{		--																															CLONING FILES FROM STANDARD SE TO GAS EXTRACTOR										2																										--
					["MBIN_FILE_SOURCE"]	=
					{
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT.SCENE.MBIN"},
					}
				},
				{		--																															CLONING FILES FROM STANDARD SE TO METAL EXTRACTOR									3																										--
					["MBIN_FILE_SOURCE"]	=
					{
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT.SCENE.MBIN"},
					}
				},
				{		--																													CLONING FILES FROM STANDARD SE TO EXOTIC MATERIALS EXTRACTOR					4																										--
					["MBIN_FILE_SOURCE"]	=
					{
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
						{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"},
					}
				},
				
					--																																										BEGIN EXML EDITING																																										--

				{	--																																								 EMEXTRACTOR PLACEMENT.SCENE.MBIN 									5																										--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
							}
						},
					}
				},
				{	-- 																																					EMEXTRACTOR PLACEMENTDATA.ENTITY.MBIN								6																										--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PartID",				"_FRE_ROOM_EMEXTR_FLOOR0"}
							}
						},
					}
				},
				{	-- 																																						EMEXTRACTOR FLOOR0_NAV.SCENE.MBIN 									7																										--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV"}
							}
						},
					}
				},
				{	-- 																																							EMEXTRACTOR FLOOR0.SCENE.MBIN 											8																										--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"}
							}
						},
					}
				},				
				{	-- 																																							EMEXTRACTORTERMINAL.ENTITY.MBIN										9																										--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{	--								YELLOW							--
							["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"ROCKETSUB"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								 GREEN								--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"ASTEROID2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  BLUE									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"ASTEROID3"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  RED									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id", "ASTEROID1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description",				"UI_FRE_ROOM_EMEXTR_DESC"}
							},
						},
					}
				},
				{	--																																								 GEXTRACTOR PLACEMENT.SCENE.MBIN 									10																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
							}
						},
					}
				},
				{	-- 																																					GEXTRACTOR PLACEMENTDATA.ENTITY.MBIN									11																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PartID",				"_FRE_ROOM_GEXTR_FLOOR0"}
							}
						},
					}
				},
				{	-- 																																						GEXTRACTOR FLOOR0_NAV.SCENE.MBIN 										12																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV"}
							}
						},
					}
				},
				{	-- 																																							GEXTRACTOR FLOOR0.SCENE.MBIN 											13																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"}
							}
						},
					}
				},				
				{	-- 																																							GEXTRACTORTERMINAL.ENTITY.MBIN											14																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{	--								YELLOW							--
							["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"OXYGEN"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								 GREEN								--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"TOXIC1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  BLUE									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"LAUNCHSUB"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  RED									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"FUEL1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description",				"UI_FRE_ROOM_GEXTR_DESC"}
							},
						},
					}
				},
				{	--																																								 MEXTRACTOR PLACEMENT.SCENE.MBIN 									15																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
							}
						},
					}
				},
				{	-- 																																					MEXTRACTOR PLACEMENTDATA.ENTITY.MBIN									16																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PartID",				"_FRE_ROOM_MEXTR_FLOOR0"}
							}
						},
					}
				},
				{	-- 																																						MEXTRACTOR FLOOR0_NAV.SCENE.MBIN 										17																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV"}
							}
						},
					}
				},
				{	-- 																																							MEXTRACTOR FLOOR0.SCENE.MBIN 											18																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"}
							}
						},
					}
				},				
				{	-- 																																							MEXTRACTORTERMINAL.ENTITY.MBIN										19																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{	--								YELLOW							--
							["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"CATALYST1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								 GREEN								--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"WATER1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  BLUE									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id", "CAVE1"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed},
							},
						},
						{	--								  RED									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"LAND2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}								
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description",				"UI_FRE_ROOM_MEXTR_DESC"}
							},
						},
					}
				},
				{	--																																								 SMEXTRACTOR PLACEMENT.SCENE.MBIN 									20																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
							}
						},
					}
				},
				{	-- 																																					SMEXTRACTOR PLACEMENTDATA.ENTITY.MBIN								21																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PartID",				"_FRE_ROOM_SMEXTR_FLOOR0"}
							}
						},
					}
				},
				{	-- 																																						SMEXTRACTOR FLOOR0_NAV.SCENE.MBIN 									22																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV"}
							}
						},
					}
				},
				{	-- 																																							SMEXTRACTOR FLOOR0.SCENE.MBIN 											23																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",				"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"}
							}
						},
					}
				},				
				{	-- 																																							SMEXTRACTORTERMINAL.ENTITY.MBIN										24																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{	--								YELLOW							--
							["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"YELLOW2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								 GREEN								--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"GREEN2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  BLUE									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"BLUE2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  RED									--
							["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",				"RED2"},
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description",				"UI_FRE_ROOM_SMEXTR_DESC"}
							},
						},
					}
				},
				{	-- 																																								EXTRACTORTERMINAL.ENTITY.MBIN										25																									--
					["MBIN_FILE_SOURCE"] =	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{	--								YELLOW							--
						    ["SPECIAL_KEY_WORDS"] = {"Id", "STELLAR2" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod",				ExtrSpeed}
							},
						},											
						{	--								 GREEN								--
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod",				 ExtrSpeed}
							},
						},
						{	--								  BLUE									--
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod", 				ExtrSpeed}
							},
						},
						{	--								  RED									--
						    ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",				ExtrCap},
								{"AmountEmptyTimePeriod",				ExtrSpeed}
							},
						},					
					}
				},
				
				
				--																																										METADATA/REALITY/TABLES																																							--
				
				{	--																																								BASEBUILDING OBJECSTS TABLE													26																									--
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
				},
				{	--																																								BASEBUILDING PARTS TABLE															27																									--
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
				},
				{	--																																						BASEBUILDINGPARTS NAV DATA TABLE												28																									--
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGPARTSNAVDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
				},
				{	--																																											PRODUCT TABLE																	29																									--
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
				},
                {	--																																										DEFAULT SAVEDATA																30																									--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
				{	--																																							ROOM PLACEMENT DATA EDITING													31																									--
                    ["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT0\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT1\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT2\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT3\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT4\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT5\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT6\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT7\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT8\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT9\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\VEHICLEROOM\ROOM_VEHICLE_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\REFINERROOM\ROOM_REFINER_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\NPCWEAROOM\ROOM_NPCWEA_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\INDUSTROOM\ROOM_INDUST_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
				{	--																																							WALL PLACEMENT DATA EDITING													32																									--
                    ["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\DOOR\A\FACE_DOOR_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\WALL\FACE_WALL_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\WINDOW\A\FACE_WINDOW_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
					},
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																																						ADDING LANG REF TO DEBUGOPTIONS												33																									--
                    ["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] 	=
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
                                </Property>
                            ]]
                        }
                    }
                },
			}
		},
	}
}

function CreateNewProduct(NewProductID, NewProductName, NewProductNameLc, NewProductSub, NewProductDesc, NewProductRequirements)
    local RequirementsString = ""
    if NewProductRequirements ~= "" then
        RequirementsString = [[<Property name="Requirements">]]..NewProductRequirements..[[</Property>]]
    else
        RequirementsString = [[<Property name="Requirements" />]]
    end

    local result =
    [[
    <Property value="GcProductData.xml">
      <Property name="ID" value="]]..NewProductID..[[" />
      <Property name="Name" value="]]..NewProductName..[[" />
      <Property name="NameLower" value="]]..NewProductNameLc..[[" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="]]..NewProductSub..[[" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="]]..NewProductDesc..[[" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/FREIGHTERBASE/FREIGHTERBASE_ROOM.EXTR.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.17254902" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.62352943" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="BuildingPart" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="BuildingPart" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="False" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="0" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      ]]..RequirementsString..[[
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0" />
      <Property name="NormalisedValueOffWorld" value="0" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Construction" />
      <Property name="IsCraftable" value="True" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="" />
      <Property name="PinObjectiveTip" value="" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="False" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="False" />
      <Property name="IsTechbox" value="False" />
    </Property>
    ]]

    return result
end

function CreateProductRequirement(IngredientID, IngredientType, IngredientAmount)
    return
    [[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]]..IngredientID..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..IngredientType..[[" />
          </Property>
          <Property name="Amount" value="]]..IngredientAmount..[[" />
        </Property>
    ]]
end

local AddToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][29]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewExtrRooms do
    local Requirements        = {}
    local ProductRequirements = ""
    local ProductID           = string.upper(AddNewExtrRooms[i]["ProductID"])
    local ProductName         = "BLD_"..string.upper(ProductID).."_NAME"
    local ProductNameLC       = "BLD_"..string.upper(ProductID).."_NAME_L"
    local ProductDesc         = "BLD_"..string.upper(ProductID).."_DESC"
    local ProductSub          = "BLD_"..string.upper(ProductID).."_SUB"

	local RequirementsList    = AddNewExtrRooms[i]["Requirements"]

    for k = 1, #RequirementsList  do
        local RequirementID     = ""
        local RequirementType   = ""
        local RequirementAmount = ""

        RequirementID           = RequirementsList[k][1]
        RequirementType         = RequirementsList[k][3]
        RequirementAmount       = RequirementsList[k][2]
        table.insert(Requirements, CreateProductRequirement(RequirementID, RequirementType, RequirementAmount))
    end
    ProductRequirements = table.concat(Requirements)

    AddToProductTable[#AddToProductTable + 1]  =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "FRE_ROOM_EXTR",},
		["ADD_OPTION"] = "ADDafterSECTION",
        ["ADD"] = CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, ProductRequirements)
    }
end

function CreateNewBBObjects(NewBBObjectID, NewBBObjectFileName)
	return [[
		<Property value="GcBaseBuildingEntry.xml">
      <Property name="ID" value="]]..NewBBObjectID..[[" />
      <Property name="IsTemporary" value="False" />
      <Property name="IsFromModFolder" value="False" />
      <Property name="Style" value="GcBaseBuildingPartStyle.xml">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource.xml">
        <Property name="Filename" value="]]..NewBBObjectFileName..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes.xml">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="False" />
      <Property name="IsDecoration" value="False" />
      <Property name="Biome" value="GcBiomeType.xml">
        <Property name="Biome" value="Lush" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="False" />
      <Property name="BuildableOnSpaceBase" value="False" />
      <Property name="BuildableOnFreighter" value="True" />
      <Property name="BuildableOnPlanet" value="False" />
      <Property name="BuildableOnPlanetWithProduct" value="False" />
      <Property name="BuildableUnderwater" value="True" />
      <Property name="BuildableAboveWater" value="True" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CheckPlaceholderCollision" value="False" />
      <Property name="CheckPlayerCollision" value="True" />
      <Property name="CanRotate3D" value="False" />
      <Property name="CanScale" value="False" />
      <Property name="Groups">
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_IND" />
          <Property name="SubGroupName" value="FRE_IND_SUB" />
          <Property name="SubGroup" value="0" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="ColourPaletteGroupId" value="FREIGHTERBASE" />
      <Property name="DefaultColourPaletteId" value="FREIGHTERBASE0" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="True" />
      <Property name="CanChangeMaterial" value="False" />
      <Property name="CanPickUp" value="False" />
      <Property name="ShowInBuildMenu" value="True" />
      <Property name="CompositePartObjectIDs" />
      <Property name="FamilyIDs">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FRE_INDUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FRE_COR" />
        </Property>
      </Property>
      <Property name="BuildEffectAccelerator" value="3" />
      <Property name="RemovesAttachedDecoration" value="True" />
      <Property name="RemovesWhenUnsnapped" value="False" />
      <Property name="EditsTerrain" value="False" />
      <Property name="BaseTerrainEditShape" value="Cube" />
      <Property name="MinimumDeleteDistance" value="2.4" />
      <Property name="IsSealed" value="True" />
      <Property name="CloseMenuAfterBuild" value="False" />
      <Property name="LinkGridData" value="GcBaseLinkGridData.xml">
        <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
          <Property name="Network" value="GcLinkNetworkTypes.xml">
            <Property name="LinkNetworkType" value="Resources" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="2" />
          <Property name="ConnectionDistance" value="3" />
          <Property name="UseMinDistance" value="False" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="100" />
        <Property name="Storage" value="360000" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections">
          <Property value="GcBaseLinkGridConnectionDependency.xml">
            <Property name="Connection" value="GcBaseLinkGridConnectionData.xml">
              <Property name="Network" value="GcLinkNetworkTypes.xml">
                <Property name="LinkNetworkType" value="Power" />
              </Property>
              <Property name="NetworkSubGroup" value="4" />
              <Property name="NetworkMask" value="1464" />
              <Property name="ConnectionDistance" value="5" />
              <Property name="UseMinDistance" value="False" />
              <Property name="LinkSocketPositions" />
              <Property name="LinkSocketSubGroups" />
            </Property>
            <Property name="DependentRate" value="-50" />
            <Property name="DependentEffect" value="EnablesRate" />
            <Property name="DisableWhenOffline" value="False" />
            <Property name="TransfersConnections" value="True" />
          </Property>
        </Property>
      </Property>
      <Property name="GhostsCountOverride" value="1" />
      <Property name="ShowGhosts" value="False" />
      <Property name="SnappingDistanceOverride" value="0.1" />
      <Property name="RegionSpawnLOD" value="1" />
      <Property name="NPCInteractionScene" value="TkModelResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
    </Property>
    ]]
end

local AddToBBObjectsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][26]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewBBObjects do
    local BBObjectID         				= string.upper(AddNewBBObjects[i]["BBObjectID"])
    local BBObjectFileName          = string.upper(AddNewBBObjects[i]["BBObjectFileName"])

    AddToBBObjectsTable[#AddToBBObjectsTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Objects"},
        ["ADD"] = CreateNewBBObjects(BBObjectID, BBObjectFileName)
    }
end

function CreateNewBBParts(NewFloor0ID, NewFloor0Path)
    return [[
	<Property value="GcBaseBuildingPart.xml">
      <Property name="ID" value="]]..NewFloor0ID..[[" />
      <Property name="StyleModels">
        <Property value="GcBaseBuildingPartStyleModel.xml">
          <Property name="Style" value="GcBaseBuildingPartStyle.xml">
            <Property name="Style" value="None" />
          </Property>
          <Property name="Model" value="TkModelResource.xml">
            <Property name="Filename" value="]]..NewFloor0Path..[[" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Inactive" value="TkModelResource.xml">
            <Property name="Filename" value="]]..NewFloor0Path..[[" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    ]]
end

local AddToBBPartsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][27]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewBBParts do
    local Floor0ID         				= string.upper(AddNewBBParts[i]["Floor0ID"])
	local Floor0Path					= string.upper(AddNewBBParts[i]["Floor0Path"])

    AddToBBPartsTable[#AddToBBPartsTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Parts"},
        ["ADD"] = CreateNewBBParts(Floor0ID, Floor0Path)
    }
end

function CreateNewBBPartsNavData(NewBBPartsNavID)
	return 
	[[
		<Property value="GcBaseBuildingPartNavData.xml">
      <Property name="PartID" value="]]..NewBBPartsNavID..[[" />
      <Property name="SharedInteractions" />
      <Property name="NavNodeData">
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="4" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="-1" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="10" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="-4" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="1" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="6" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="-4" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="1" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="4" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="4" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="-1" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="8" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="-2.6" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="0" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="1" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="2" />
            <Property value="5" />
            <Property value="11" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="-2.1" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="-2.2" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0.707107" />
            <Property name="y" value="0" />
            <Property name="z" value="0.707107" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="6" />
            <Property value="4" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="-2.89228" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="1" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="1" />
            <Property value="7" />
            <Property value="5" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="2.1" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="-2.2" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="-0.707107" />
            <Property name="y" value="0" />
            <Property name="z" value="0.707107" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="8" />
            <Property value="6" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="2.6" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="0" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="-1" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="3" />
            <Property value="9" />
            <Property value="7" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="2" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="2.2" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="-0.707107" />
            <Property name="y" value="0" />
            <Property name="z" value="-0.707107" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="8" />
            <Property value="10" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="2.89228" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="-1" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="12" />
            <Property value="9" />
            <Property value="11" />
            <Property value="0" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="-2" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="2.2" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0.707107" />
            <Property name="y" value="0" />
            <Property name="z" value="-0.707107" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property value="4" />
            <Property value="10" />
          </Property>
        </Property>
        <Property value="GcBaseBuildingPartNavNodeData.xml">
          <Property name="Type" value="GcNPCNavSubgraphNodeType.xml">
            <Property name="NPCNavSubgraphNodeType" value="PointOfInterest" />
          </Property>
          <Property name="LocalPos" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="-0.5" />
            <Property name="z" value="2.336289" />
          </Property>
          <Property name="ArriveDist" value="1" />
          <Property name="AtDir" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="-1" />
          </Property>
          <Property name="InteractionID" value="TERMINAL" />
          <Property name="ConnectedNodeIndices">
            <Property value="10" />
          </Property>
        </Property>
      </Property>
    </Property>
	]]
end

local AddToBBPartsNavDataTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][28]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewBBPartsNavData do
    local BBPartsNavID   				= string.upper(AddNewBBPartsNavData[i]["BBPartsNavID"])

    AddToBBPartsNavDataTable[#AddToBBPartsNavDataTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Parts"},
        ["ADD"] = CreateNewBBPartsNavData(BBPartsNavID)
    }
end


function CreateKnownProduct(ProductID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..ProductID..[[" />
        </Property>
    ]]
end

local AddToDefaultSaveData    		  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][30]["EXML_CHANGE_TABLE"]

for i = 1, #AddNewExtrRooms do
    local ProductID         = string.upper(AddNewExtrRooms[i]["ProductID"])

    AddToDefaultSaveData[#AddToDefaultSaveData + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["ADD"] = CreateKnownProduct(ProductID)
    }
end

function CreateNewPDEntity(NewEntityId, NewSnapPt)
    return
    [[
		<Property value="GcSnapPointCondition.xml">
		  <Property name="SnapPoint" value="]]..NewSnapPt..[[" />
		  <Property name="SnapState" value="GcBaseSnapState.xml">
			<Property name="SnapState" value="NotSnapped" />
		  </Property>
		  <Property name="ObjectId" value="]]..NewEntityId..[[" />
		  <Property name="SnapPointIndex" value="0" />
		</Property>
	]]
end

local AddToPDEFront = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEFront do
    local EntityId           = (AddNewPDEFront[i]["EntityId"])
	local SnapPt			  = (AddNewPDEFront[i]["SnapPt"])
    AddToPDEFront[#AddToPDEFront + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{5,7,11,20,23,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
	}
end

local AddToPDEBack = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEBack do
    local EntityId           = (AddNewPDEBack[i]["EntityId"])
	local SnapPt			  = (AddNewPDEBack[i]["SnapPt"])
    AddToPDEBack[#AddToPDEBack + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{1,3,9,14,17,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDELeft = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDELeft do
    local EntityId           = (AddNewPDELeft[i]["EntityId"])
	local SnapPt			  = (AddNewPDELeft[i]["SnapPt"])
    AddToPDELeft[#AddToPDELeft + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{4,6,12,18,21,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDERight = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDERight do
    local EntityId           = (AddNewPDERight[i]["EntityId"])
	local SnapPt			  = (AddNewPDERight[i]["SnapPt"])
    AddToPDERight[#AddToPDERight + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{2,8,10,15,24,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDEFR = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEFR do
    local EntityId           = (AddNewPDEFR[i]["EntityId"])
	local SnapPt			  = (AddNewPDEFR[i]["SnapPt"])
    AddToPDEFR[#AddToPDEFR + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{22,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDEFL = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEFL do
    local EntityId           = (AddNewPDEFL[i]["EntityId"])
	local SnapPt			  = (AddNewPDEFL[i]["SnapPt"])
    AddToPDEFL[#AddToPDEFL + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{19,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDEnBR = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEBR do
    local EntityId           = (AddNewPDEBR[i]["EntityId"])
	local SnapPt			  = (AddNewPDEBR[i]["SnapPt"])
    AddToPDEnBR[#AddToPDEnBR + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{13,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end

local AddToPDEBL = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewPDEBL do
    local EntityId           = (AddNewPDEBL[i]["EntityId"])
	local SnapPt			  = (AddNewPDEBL[i]["SnapPt"])
    AddToPDEBL[#AddToPDEBL + 1]  =
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{16,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewPDEntity(EntityId, SnapPt)
    }
end


function CreateNewFaceSnaps(NewEntityID, NewSnapPt)
	return
	[[
		<Property value="GcSnapPointCondition.xml">
		  <Property name="SnapPoint" value="]]..NewSnapPt..[[" />
		  <Property name="SnapState" value="GcBaseSnapState.xml">
			<Property name="SnapState" value="IsSnapped" />
		  </Property>
		  <Property name="ObjectId" value="]]..NewEntityID..[[" />
		  <Property name="SnapPointIndex" value="0" />
		</Property>
	]]
end

local AddToFaceSnaps = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][32]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewSnapPTFace do
    local EntityId           = (AddNewSnapPTFace[i]["EntityId"])
	local SnapPt			  = (AddNewSnapPTFace[i]["SnapPt"])
	
    AddToFaceSnaps[#AddToFaceSnaps + 1]  =
	
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{1, 2,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewFaceSnaps(EntityId, SnapPt)
    }	
end

for j = 1, #AddNewSnapPTSpignFace do
    local EntityId           = (AddNewSnapPTSpignFace[j]["EntityId"])
	local SnapPt			  = (AddNewSnapPTSpignFace[j]["SnapPt"])
	
    AddToFaceSnaps[#AddToFaceSnaps + 1]  =
	
    {
		["SPECIAL_KEY_WORDS"] 				=		{"ObjectId", "FRE_ROOM_EXTR",},
		["SECTION_ACTIVE"] 						= 		{1, 2,},
		["ADD_OPTION"]								=		"ADDafterSECTION",
		["ADD"]												= 		CreateNewFaceSnaps(EntityId, SnapPt)
    }	
end

function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="VariableSizeString.xml">
            <Property name="Value" value="]]..NewDescription..[[" />
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile(Data)
    local NewProductLangEntries = {}

    for i = 1, #Data do
        local ProductID = string.upper(Data[i]["ProductID"])
		local UIDescEntries = {}
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}

        local Languages = Data[i]["Languages"]

        local NameID = ProductID.."_NAME"
        local NameLCID = "BLD_"..ProductID.."_NAME_L"
        local SubID = "BLD_"..ProductID.."_SUB"
        local DescID = "BLD_"..ProductID.."_DESC"
		local UIDescID = "BLD_"..ProductID.."_DESC"

        for j = 1, #Languages do
            local Language = Languages[j][1]

            local NameLC = Languages[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local Name = string.upper(NameLC)
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NewSubTitle = Languages[j][3]
            table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            local NewDescription = Languages[j][4]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
			
			local NewUIDesc = Languages[j][2]
			table.insert(UIDescEntries, NewLanguageEntry(Language, NewUIDesc))
        end

        table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(SubID, table.concat(SubtitleEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))
		table.insert(NewProductLangEntries, NewDescriptionText(UIDescID, table.concat(UIDescEntries)))
    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for Key , Language in pairs(Languages) do

    local LanguageData = { ["ProductID"] = "" , ["Languages"] = {}}
    for i = 1, #AddNewExtrRooms do
        LanguageData[#LanguageData+1] = 
        {
            ["ProductID"] = AddNewExtrRooms[i]["ProductID"],
            ["Languages"] = AddNewExtrRooms[i]["Languages"] ,
        }
    end

    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] 	=	"LANGUAGE\\NMS_"..CustomLanguageTag.."_"..Key..".EXML",
        ["FILE_CONTENT"] 		=	FillCustomlangFile(LanguageData)
    }

end