Languages =
{
    ["English"]               = "English",
}

SubstanceOrProduct = {["Substance"] = "Substance", ["Product"] =  "Product"}

AddNewConsumableProducts =
{
	{	--										Blunits 1K					1					--
		["PTEID"]								= "BLUNITS",
		["PTEPrice"]							= "10",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"CREDITCARD",      "1", SubstanceOrProduct["Product"]},
            {"YELLOW2",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"] =
        {
            "R_BLUNITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in a Copper Shell Drive. Capable of storing up to 1,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 1,000 Units to your account."},
        }
	},
	{	--										Blunits 10K				2					--
		["PTEID"]								= "BLUNITS1",
		["PTEPrice"]							= "10",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"CREDITCARD1",      "1", SubstanceOrProduct["Product"]},
            {"RED2",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"] =
        {

            "R_BLUNITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in a Cadmium Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 1,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 10,000 Units to your account."},
        }
	},
	{	--										Blunits 100K				3					--
		["PTEID"]								= "BLUNITS2",
		["PTEPrice"]							= "10",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"CREDITCARD2",      "1", SubstanceOrProduct["Product"]},
            {"GREEN2",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"] =
        {

            "R_BLUNITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in an Emeril Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 100,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 100,000 Units to your account."},
        }
	},
	{	--										Blunits 1M				4					--
		["PTEID"]								= "BLUNITS3",
		["PTEPrice"]							= "10",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"CREDITCARD3",      "1", SubstanceOrProduct["Product"]},
            {"BLUE2",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"] =
        {

            "R_BLUNITS3",
			"GiveAll",
			{
				{"100", "1000000", "1000000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in an Indium Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 1,000,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 1,000,000 Units to your account."},
        }
	},
	{	--										Nanits 1K					5					--
		["PTEID"]								= "NANITS",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"NANITCARD",      "1", SubstanceOrProduct["Product"]},
            {"EX_YELLOW",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_NANITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 1,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000 Nanites."},
        }
	},
	{	--										Nanits 10K				6					--
		["PTEID"]								= "NANITS1",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"NANITCARD1",      "1", SubstanceOrProduct["Product"]},
            {"EX_RED",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_NANITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 10,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 10,000 Nanites."},
        }
	},
	{	--										Nanits 100K				7					--
		["PTEID"]								= "NANITS2",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"NANITCARD2",      "1", SubstanceOrProduct["Product"]},
            {"EX_GREEN",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_NANITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "100,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 100,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 100,000 Nanites."},
        }
	},
	{	--										Nanits 1M					8					--
		["PTEID"]								= "NANITS3",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"NANITCARD3",      "1", SubstanceOrProduct["Product"]},
            {"EX_BLUE",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_NANITS3",
			"GiveAll",
			{
				{"100", "1000000", "1000000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 1,000,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000,000 Nanites."},
        }
	},
	{	--										Qunits 1K					9					--
		["PTEID"]								= "QUNITS",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"QUNITCARD",      "1", SubstanceOrProduct["Product"]},
            {"ASTEROID1",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_QUNITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], " 1,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 1,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 1,000 Quicksilver to your account."},
        }
	},
	{	--										Qunits 10K				10				--
		["PTEID"]								= "QUNITS1",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"QUNITCARD1",      "1", SubstanceOrProduct["Product"]},
            {"ASTEROID2",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_QUNITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], " 10,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 10,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 10,000 Quicksilver to your account."},
        }
	},
	{	--										Qunits 100K				11				--
		["PTEID"]								= "QUNITS2",
		["PTEPrice"]							= "10", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]			= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"True",
		["PTERequirements"] =
        {
			{"QUNITCARD2",      "1", SubstanceOrProduct["Product"]},
            {"ASTEROID3",      "100", SubstanceOrProduct["Substance"]},
        },
		["RewardData"]          =
        {

            "R_QUNITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], " 100,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 100,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 100,000 Quicksilver to your account."},
        }
	}
}

AddNewBlunitProducts =
{
	{	--										CreditCard				1					--
		["PTEID"]								= "CREDITCARD",
		["PTEPrice"]							= "1000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Credit Card", "Currency Storage Device", "An advanced microchip with a super processor, designed to process and store Units."}
        }
	},
	{	--										CreditCard1				2					--
		["PTEID"]								= "CREDITCARD1",
		["PTEPrice"]							= "10000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "High Capacity Credit Card", "Currency Storage Device", "Utilizing superior data compression techniques, Currency Cards can now store more Units."}
        }
	},
	{	--										CreditCard2				3					--
		["PTEID"]								= "CREDITCARD2",
		["PTEPrice"]							= "100000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Compressed HC Credit Card", "Currency Storage Device", "Utilization of the extreme Gravity found in black holes allows for hundreds of Currency Cards to be stored in the space of one."}
        }
	},
	{	--										CreditCard3				4					--
		["PTEID"]								= "CREDITCARD3",
		["PTEPrice"]							= "1000000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Spatial Credit Card", "Currency Storage Device", "Utilization of miniature black holes allows for thousands of Currency Cards to be stored in the space of one."}
        }
	}
}

AddNewNanitProducts =
{
	{	--										NanitCard					1					--
		["PTEID"]								= "NANITCARD",
		["PTEPrice"]							= "1000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Nanite Card", "Currency Storage Device", "Introducing Nanites into the crafting sequence of a Credit Card yielded a Currency Card Capable of storing Nanites."}
        }
	},
	{	--										NanitCard1				2					--
		["PTEID"]								= "NANITCARD1",
		["PTEPrice"]							= "10000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "High Capacity Nanite Card", "Currency Storage Device", "Utilizing superior data compression techniques, Currency Cards can now store more Nanites."}
        }
	},
	{	--										NanitCard2				3					--
		["PTEID"]								= "NANITCARD2",
		["PTEPrice"]							= "100000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Compressed HC Nanite Card", "Currency Storage Device", "Utilization of the extreme Gravity found in black holes allows for hundreds of Currency Cards to be stored in the space of one"}
        }
	},
	{	--										NanitCard3				4					--
		["PTEID"]								= "NANITCARD3",
		["PTEPrice"]							= "1000000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Spatial Nanite Card", "Currency Storage Device", "Utilization of miniature black holes allows for thousands of Currency Cards to be stored in the space of one."}
        }
	}
}

AddNewQunitProducts =
{
	{	--										QUNITCARD				1					--
		["PTEID"]								= "QUNITCARD",
		["PTEPrice"]							= "1000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Quicksilver Card", "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies."}
        }
	},
	{	--										QUNITCARD1			2					--
		["PTEID"]								= "QUNITCARD1",
		["PTEPrice"]							= "10000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "High Capacity Quicksilver Card", "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies"}
        }
	},
	{	--										QUNITCARD2			3					--
		["PTEID"]								= "QUNITCARD3",
		["PTEPrice"]							= "100000", 
		["PTEIcon"]							= "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Component",
		["PTERarity"]						= "Common",
		["PTEIsConsumable"]			= "False",
		["PTEStackSize"]					= "25",
		["PTETradeCat"]					= "None",
		["PTEIsCraftable"]				=	"False",
		["Languages"] =
        {
            {Languages["English"], "Compressed HC Quicksilver Card",  "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies"}
        }
	}
}

----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
ModName                 				= "Galactic Standard Currency "
GameVersion							= "v4.06.0"
Build					 						= ".1"
Author                  						= "EchoTree"
LuaAuthor									= "EchoTree and Jackty89"
ModDescription          			= "Adds Craftable, Tradable Consumable Currencies to NMS"
CustomLanguageTag       		= "NMSGSC"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]       		= Author.."'s "..ModName..GameVersion..Build..".pak",
    ["MOD_DESCRIPTION"]		= "Lua Written by"..LuaAuthor..ModDescription.."Compatible with NMS "..GameVersion,
    ["MOD_AUTHOR"]          		= Author,
    ["ADD_FILES"]           			=
    {
    },
    ["MODIFICATIONS"] 			=
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {	--																														PRODUCT TABLE																														1																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																												CONSUMABLEITEMTABLE																												2																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																														REWARDTABLE																															3																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																												PURCHASEABLESPECIALS																												4																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/PURCHASEABLESPECIALS.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																													DEFAULTSAVEDATA																													5																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																														DEFAULTREALITY																														6																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"TradeSettings", "GcTradeSettings.xml", "SuitTechSpecialist", "GcTradeData.xml", },
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor",				"10"},
								{"Average",				"25"},
								{"Wealthy",				"50"},
								{"Pirate",				"5"},								
							},
						},
					}
                },
                {	--																													  GCDEBUGOPTIONS																													7																							--
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
        }
    }
}

function CreateProductTableEntry(NewPTEID, NewPTEName, NewPTENameLc, NewPTESub, NewPTEDesc, NewPTEPrice, NewPTEIcon, NewPTESubCat, NewPTEProdCat, NewPTERarity, NewPTEIsConsumable, NewPTEStackSize, NewPTETradeCat, NewPTEIsCraftable, NewPTERequirements)
    local RequirementsString = ""
    if NewPTERequirements ~= "" then
        RequirementsString = [[<Property name="Requirements">]]..NewPTERequirements..[[</Property>]]
    else
        RequirementsString = [[<Property name="Requirements" />]]
    end

    local result =
    [[
    <Property value="GcProductData.xml">
      <Property name="ID" value="]]..NewPTEID..[[" />
      <Property name="Name" value="]]..NewPTEName..[[" />
      <Property name="NameLower" value="]]..NewPTENameLc..[[" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="]]..NewPTESub..[[" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="]]..NewPTEDesc..[[" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="]]..NewPTEPrice..[[" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]]..NewPTEIcon..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="]]..NewPTEIcon..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.1" />
        <Property name="G" value="0.1" />
        <Property name="B" value="0.2" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="]]..NewPTESubCat..[[" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="]]..NewPTEProdCat..[[" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="]]..NewPTERarity..[[" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="]]..NewPTEIsConsumable..[[" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="]]..NewPTEStackSize..[[" />
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
      <Property name="SpecificChargeOnly" value="True" />
      <Property name="NormalisedValueOnWorld" value="5.121795E-05" />
      <Property name="NormalisedValueOffWorld" value="5.121795E-05" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="]]..NewPTETradeCat..[[" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="]]..NewPTEIsCraftable..[[" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="1" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_]]..NewPTEID..[[_OBJ_TIP" />
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

function CreatePTERequirement(IngredientID, IngredientType, IngredientAmount)
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

function CreateConsumableTableEntry(NewCTEID, NewCTERewardID)
    return
    [[
        <Property value="GcConsumableItem.xml">
            <Property name="ID" value="]]..NewCTEID..[[" />
            <Property name="RewardID" value="]]..NewCTERewardID..[[" />
            <Property name="TutorialRewardID" value="" />
            <Property name="ButtonLocID" value="UI_CONSUME_]]..NewCTEID..[[" />
            <Property name="ButtonSubLocID" value="UI_CONSUME_]]..NewCTEID..[[_SUB" />
            <Property name="CloseInventoryWhenUsed" value="False" />
            <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
            <Property name="DestroyItemWhenConsumed" value="True" />
            <Property name="AddCommunityTierClassIcon" value="False" />
            <Property name="SuppressResourceMessage" value="False" />
            <Property name="CustomOSD" value="" />
        </Property>
    ]]
end

function CreateRewardTableEntry(NewRTEID, NewRTERewardChoice, NewRTERewards)
    return [[
        <Property value="GcGenericRewardTableEntry.xml">
            <Property name="Id" value="]]..NewRTEID..[[" />
            <Property name="List" value="GcRewardTableItemList.xml">
                <Property name="RewardChoice" value="]]..NewRTERewardChoice..[[" />
                <Property name="OverrideZeroSeed" value="False" />
                <Property name="List">
                    ]]..NewRTERewards..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function CreateRTERewardsList(PercentageChance, AmountMin, AmountMax, CurrencyType)
    return [[
        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="]]..AmountMin..[[" />
            <Property name="AmountMax" value="]]..AmountMax..[[" />
            <Property name="RoundNumber" value="False" />
            <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..CurrencyType..[[" />
            </Property>
            </Property>
            <Property name="LabelID" value="" />
        </Property>
    ]]
end

function CreateKnownProduct(ProductID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..ProductID..[[" />
        </Property>
    ]]
end

function CreateShopEntry(NewId)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

function CreateSpecialsShopEntry(NewSSID)
	return
	[[
		<Property value="GcPurchaseableSpecial.xml">
		  <Property name="ID" value="]]..NewSSID..[[" />
		  <Property name="ShopNumber" value="1" />
		  <Property name="MissionTier" value="-1" />
		  <Property name="IsConsumable" value="True" />
		</Property>
	]]
end

----------------------------------------------------------------------------------------------
-------------------------------     Product creation     -------------------------------------
----------------------------------------------------------------------------------------------

-------------------------------     Consumable Product   -------------------------------------
local AddToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local AddToSpecialShop	= NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local AddToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]
local PTETable = {}

for i = 1, #AddNewConsumableProducts do
	local Requirements 							= {}
	local PTEID										= string.upper(AddNewConsumableProducts[i]["PTEID"])
	local PTEName									= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc									= string.upper(PTEID).."_DESC"
	local PTESub										= string.upper(PTEID).."_SUB"
	local PTEPrice									= AddNewConsumableProducts[i]["PTEPrice"]
	local PTEIcon									= AddNewConsumableProducts[i]["PTEIcon"]
	local PTESubCat								= AddNewConsumableProducts[i]["PTESubCat"]
	local PTEProdCat								= AddNewConsumableProducts[i]["PTEProdCat"]
	local PTERarity									= AddNewConsumableProducts[i]["PTERarity"]
	local PTEIsConsumable					= AddNewConsumableProducts[i]["PTEIsConsumable"]
	local PTEStackSize							= AddNewConsumableProducts[i]["PTEStackSize"]
	local PTETradeCat							= AddNewConsumableProducts[i]["PTETradeCat"]
	local PTEIsCraftable						= AddNewConsumableProducts[i]["PTEIsCraftable"]
	
	local RequirementsList 					= AddNewConsumableProducts[i]["PTERequirements"]
	
	for k = 1, #RequirementsList  do
        local RequirementID     				= ""
        local RequirementType				= ""
        local RequirementAmount			= ""

        RequirementID								= RequirementsList[k][1]
        RequirementType						= RequirementsList[k][3]
        RequirementAmount					= RequirementsList[k][2]
        table.insert(Requirements, CreatePTERequirement(RequirementID, RequirementType, RequirementAmount))
    end
	
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))
	
end

for i = 1, #AddNewBlunitProducts do
	local Requirements 							= {}
	local PTEID										= string.upper(AddNewBlunitProducts[i]["PTEID"])
	local PTEName									= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc									= string.upper(PTEID).."_DESC"
	local PTESub										= string.upper(PTEID).."_SUB"
	local PTEPrice									= AddNewBlunitProducts[i]["PTEPrice"]
	local PTEIcon									= AddNewBlunitProducts[i]["PTEIcon"]
	local PTESubCat								= AddNewBlunitProducts[i]["PTESubCat"]
	local PTEProdCat								= AddNewBlunitProducts[i]["PTEProdCat"]
	local PTERarity									= AddNewBlunitProducts[i]["PTERarity"]
	local PTEIsConsumable					= AddNewBlunitProducts[i]["PTEIsConsumable"]
	local PTEStackSize							= AddNewBlunitProducts[i]["PTEStackSize"]
	local PTETradeCat							= AddNewBlunitProducts[i]["PTETradeCat"]
	local PTEIsCraftable						= AddNewBlunitProducts[i]["PTEIsCraftable"]

	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    -------- Adds products to store  this can be added to a seperate loop if not all products should be added------------
    local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
		["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Shop", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
end

for j = 1, #AddNewNanitProducts do
	local Requirements 							= {}
	local PTEID										= string.upper(AddNewNanitProducts[j]["PTEID"])
	local PTEName									= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc									= string.upper(PTEID).."_DESC"
	local PTESub										= string.upper(PTEID).."_SUB"
	local PTEPrice									= AddNewNanitProducts[j]["PTEPrice"]
	local PTEIcon									= AddNewNanitProducts[j]["PTEIcon"]
	local PTESubCat								= AddNewNanitProducts[j]["PTESubCat"]
	local PTEProdCat								= AddNewNanitProducts[j]["PTEProdCat"]
	local PTERarity									= AddNewNanitProducts[j]["PTERarity"]
	local PTEIsConsumable					= AddNewNanitProducts[j]["PTEIsConsumable"]
	local PTEStackSize							= AddNewNanitProducts[j]["PTEStackSize"]
	local PTETradeCat							= AddNewNanitProducts[j]["PTETradeCat"]
	local PTEIsCraftable						= AddNewNanitProducts[j]["PTEIsCraftable"]
	
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
end

for k = 1, #AddNewQunitProducts do
	local Requirements 							= {}
	local PTEID										= string.upper(AddNewQunitProducts[k]["PTEID"])
	local SSID											= string.upper(AddNewQunitProducts[k]["PTEID"])
	local PTEName									= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc									= string.upper(PTEID).."_DESC"
	local PTESub										= string.upper(PTEID).."_SUB"
	local PTEPrice									= AddNewQunitProducts[k]["PTEPrice"]
	local PTEIcon									= AddNewQunitProducts[k]["PTEIcon"]
	local PTESubCat								= AddNewQunitProducts[k]["PTESubCat"]
	local PTEProdCat								= AddNewQunitProducts[k]["PTEProdCat"]
	local PTERarity									= AddNewQunitProducts[k]["PTERarity"]
	local PTEIsConsumable					= AddNewQunitProducts[k]["PTEIsConsumable"]
	local PTEStackSize							= AddNewQunitProducts[k]["PTEStackSize"]
	local PTETradeCat							= AddNewQunitProducts[k]["PTETradeCat"]
	local PTEIsCraftable						= AddNewQunitProducts[k]["PTEIsCraftable"]
	
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    AddToSpecialShop[#AddToSpecialShop + 1] =
	{
		["PRECEDING_KEY_WORDS"]	=	{"Table"},
		["ADD"] = CreateSpecialsShopEntry(SSID)
	}
	
	local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"NeverSellableItems"},
        ["ADD"] = ShopEntry
    }
end

AddToProductTable[#AddToProductTable + 1]  =
{
	["PRECEDING_KEY_WORDS"] = {"Table"},
	["ADD"] = table.concat(PTETable)
}	

local AddToConsumableTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local AddToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local AddToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]
local CITETable								= {}
local RewardTable						= {}
local KnownProdTable				= {}

for i = 1, #AddNewConsumableProducts do
	local Rewards 								= {}
    local ProductID							= string.upper(AddNewConsumableProducts[i]["PTEID"])
    local ProductRewardData			= AddNewConsumableProducts[i]["RewardData"]
    local RewardId								= string.upper(ProductRewardData[1])
    local RewardChoice						= ProductRewardData[2]
    local RewardData						= ProductRewardData[3]

    for k = 1, #RewardData  do
        local PercentageChance			= ""
        local AmountMin						= ""
        local AmountMax						= ""
        local CurrencyType					= ""

        PercentageChance					= RewardData[k][1]
        AmountMin								= RewardData[k][2]
        AmountMax								= RewardData[k][3]
        CurrencyType							= RewardData[k][4]

        table.insert(Rewards, CreateRTERewardsList(PercentageChance, AmountMin, AmountMax, CurrencyType))
    end	
	
	table.insert(RewardTable, CreateRewardTableEntry(RewardId, RewardChoice, table.concat(Rewards)))
	table.insert(CITETable, CreateConsumableTableEntry(ProductID, RewardId))
	table.insert(KnownProdTable, CreateKnownProduct(ProductID))
end	   
 --- Adds the new consumable
AddToConsumableTable[#AddToConsumableTable + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"Table"},
	["ADD"] = table.concat(CITETable)
}
-- Create new reward entry
AddToRewardTable[#AddToRewardTable + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"GenericTable"},
	["ADD"] = table.concat(RewardTable)
}
--Adds recipe to know products
AddToDefaultSaveData[#AddToDefaultSaveData + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
	["ADD"] = table.concat(KnownProdTable)
}

----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
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
        local ProductID = string.upper(Data[i]["PTEID"])
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}
		local ButtonNameEntries = {}
		local ButtonSubEntries = {}

        local LanguagesData = Data[i]["Languages"]

        local NameID = ProductID.."_NAME"
        local NameLCID = ProductID.."_NAME_L"
        local SubID = ProductID.."_SUB"
        local DescID = ProductID.."_DESC"
		local ButtonID = "UI_CONSUME_"..ProductID
		local ButtonSubID = "UI_CONSUME_"..ProductID.."_SUB"

        for j = 1, #LanguagesData do
            local Language = LanguagesData[j][1]

            local Name = string.upper(LanguagesData[j][2])
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NameLC = LanguagesData[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local NewSubTitle = LanguagesData[j][3]
            table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            local NewDescription = LanguagesData[j][4]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
			
			local NewButtonName = LanguagesData[j][5]
				print("NewButtonName = LanguagesData[j][5] is ["..tostring(NewButtonName).."]")
				if NewButtonName ~= nil then
				table.insert(ButtonNameEntries, NewLanguageEntry(Language, NewButtonName))
			end
	
			local NewButtonSub = LanguagesData[j][6]
				print("NewButtonSub = LanguagesData[j][6] is ["..tostring(NewButtonSub).."]")
				if NewButtonSub ~= nil then
				table.insert(ButtonSubEntries, NewLanguageEntry(Language, NewButtonSub))
			end
        end

        table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(SubID, table.concat(SubtitleEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(ButtonID, table.concat(ButtonNameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(ButtonSubID, table.concat(ButtonSubEntries)))

    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for Language in pairs(Languages) do

    --- Creating a singulare list that contains all new productID's and their langauge strings
    local LanguageData = { ["PTEID"] = "" , ["Languages"] = {}}
    for i = 1, #AddNewConsumableProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["PTEID"] = AddNewConsumableProducts[i]["PTEID"],
            ["Languages"] = AddNewConsumableProducts[i]["Languages"] ,
        }
    end
	
	for j = 1, #AddNewBlunitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["PTEID"] = AddNewBlunitProducts[j]["PTEID"],
            ["Languages"] = AddNewBlunitProducts[j]["Languages"] ,
        }
    end

	for k = 1, #AddNewNanitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["PTEID"] = AddNewNanitProducts[k]["PTEID"],
            ["Languages"] = AddNewNanitProducts[k]["Languages"] ,
        }
    end
	
	for l = 1, #AddNewQunitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["PTEID"] = AddNewQunitProducts[l]["PTEID"],
            ["Languages"] = AddNewQunitProducts[l]["Languages"] ,
        }
    end
	
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] 	=	"LANGUAGE\\NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"] 		=	FillCustomlangFile(LanguageData)
    }

end