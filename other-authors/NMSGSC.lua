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

AddNewConsumableProducts =
{
    {
        ["ProductID"]           = "BLUNITS",
        ["Requirements"]        =
        {
			{"YELLOW2",      "10", SubstanceOrProduct["Substance"]},
            {"CREDITCARD",      "1", SubstanceOrProduct["Substance"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.BLUNITS.DDS",
		["RewardData"]          =
        {

            "R_BLUNTIS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000U CREDIT ", "Galactic Standard Currency", "An Encrypted Microchip, encased in copper. The data within the Credit contains 1,000 units.", "Acquire Units", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000 Units."}
        }
    },
	{
        ["ProductID"]           = "BLUNITS1",
        ["Requirements"]        =
        {
			{"RED2",      "10", SubstanceOrProduct["Substance"]},
            {"CREDITCARD1",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.BLUNITS.DDS",
		["RewardData"]          =
        {

            "R_BLUNTIS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000U CREDIT", "Galactic Standard Currency", "Upgraded storage allows for the Credit to store more currency, allowing for a much higher yield when used. This Credit can store 10,000 units.", "Acquire Units", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 10,000 Units."}
        }
    },
	{
        ["ProductID"]           = "BLUNITS2",
        ["Requirements"]        =
        {
			{"GREEN2",      "10", SubstanceOrProduct["Substance"]},
            {"CREDITCARD2",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.BLUNITS.DDS",
		["RewardData"]          =
        {

            "R_BLUNTIS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"],  "100,000U CREDIT", "Galactic Standard Currency", "Improvements in storage technology allow for currency storage in the hundred thousands. This Credit can store 100,000 units.", "Acquire Units", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 100,000 Units."}
        }
    },
	{
        ["ProductID"]           = "BLUNITS3",
        ["Requirements"]        =
        {
			{"BLUE2",      "10", SubstanceOrProduct["Substance"]},
            {"CREDITCARD3",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.BLUNITS.DDS",
		["RewardData"]          =
        {

            "R_BLUNTIS3",
			"GiveAll",
			{
				{"100", "1000000", "1000000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"],  "1,000,000U CREDIT", "Galactic Standard Currency", "Improvements in storage technology allow for currency storage in the millions. This Credit can store 1,000,000 units.", "Acquire Units", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000,000 Units."}
        }
    },
	{
        ["ProductID"]           = "NANITS",
        ["Requirements"]        =
        {
			{"EX_YELLOW",      "10", SubstanceOrProduct["Substance"]},
            {"NANITCARD",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.NANITEZ.DDS",
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
            {Languages["English"],  "1,000N CREDIT", "Galactic Standard Currency", "Special compression techniques, along with utilization of activated materials allows for an Encrypted Microchip to store Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000 Nanites."}
        }
    },
	{
        ["ProductID"]           = "NANITS1",
        ["Requirements"]        =
        {
			{"EX_RED",      "10", SubstanceOrProduct["Substance"]},
            {"NANITCARD1",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.NANITEZ.DDS",
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
            {Languages["English"],  "10,000N CREDIT", "Galactic Standard Currency", "Special compression techniques and an increased storage capacity allows for higher storage of Nanite Clusters. This Credit can store 10,000 Nanites.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 10,000 Nanites."}
        }
    },
	{
        ["ProductID"]           = "NANITS2",
        ["Requirements"]        =
        {
			{"EX_GREEN",      "10", SubstanceOrProduct["Substance"]},
            {"NANITCARD2",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.NANITEZ.DDS",
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
            {Languages["English"],  "100,000N CREDIT", "Galactic Standard Currency", "Special compression techniques and an increased storage capacity allows for higher storage of Nanite Clusters. This Credit can store 100,000 Nanites.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 100,000 Nanites."}
        }
    },
	{
        ["ProductID"]           = "NANITS3",
        ["Requirements"]        =
        {
			{"EX_BLUE",      "10", SubstanceOrProduct["Substance"]},
            {"NANITCARD3",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.NANITEZ.DDS",
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
            {Languages["English"],  "1,000,000N CREDIT", "Galactic Standard Currency", "Special compression techniques and an increased storage capacity allows for higher storage of Nanite Clusters. This Credit can store 1,000,000 Nanites.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000,000 Nanites."}
        }
    },
	{
        ["ProductID"]           = "QUNITS",
        ["Requirements"]        =
        {
			{"ASTEROID1",      "10", SubstanceOrProduct["Substance"]},
            {"QUNITCARD",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.QUICKSILVER.DDS",
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
            {Languages["English"],  "1,000Q CREDIT", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion, each one yields 1,000 Quicksilver..", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000 Quicksilver."}
        }
    },
	{
        ["ProductID"]           = "QUNITS1",
        ["Requirements"]        =
        {
			{"ASTEROID2",      "10", SubstanceOrProduct["Substance"]},
            {"QUNITCARD1",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.QUICKSILVER.DDS",
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
            {Languages["English"],  "10,000Q CREDIT", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion, each one yields 10,000 Quicksilver..", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 10,000 Quicksilver."}
        }
    },
	{
        ["ProductID"]           = "QUNITS2", 
        ["Requirements"]        =
        {
			{"ASTEROID3",      "10", SubstanceOrProduct["Substance"]},
            {"QUNITCARD2",      "1", SubstanceOrProduct["Product"]},
        },
        ["Stacksize"]           = "10",
		["Price"]               = "1",
		["Cat"]				= "None",
		["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/CURRENCIES/CURRENCIES.QUICKSILVER.DDS",
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
            {Languages["English"],  "100,000Q CREDIT", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion, each one yields 100,000 Quicksilver..", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 100,000 Quicksilver."}
        }
    }
}

AddNewBlunitProducts =
{
    {
        ["ProductID"]           = "CREDITCARD",
        ["Stacksize"]           = "25",
        ["Price"]               = "1000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Credit Card", "Currency Storage Device", "An advanced microchip with a super processor, designed to process and store Units."}
        }
    },
	{
        ["ProductID"]           = "CREDITCARD1",
        ["Stacksize"]           = "25",
        ["Price"]               = "10000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "High Capacity Credit Card", "Currency Storage Device", "Utilizing superior data compression techniques, Currency Cards can now store more Units."}
        }
    },
	{
        ["ProductID"]           = "CREDITCARD2",
        ["Stacksize"]           = "25",
        ["Price"]               = "100000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Compressed HC Credit Card", "Currency Storage Device", "Utilization of the extreme Gravity found in black holes allows for hundreds of Currency Cards to be stored in the space of one."}
        }
    },
	{
        ["ProductID"]           = "CREDITCARD3",
        ["Stacksize"]           = "25",
        ["Price"]               = "1000000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Spatial Credit Card", "Currency Storage Device", "Utilization of miniature black holes allows for thousands of Currency Cards to be stored in the space of one."}
        }
    }
}

AddNewNanitProducts =
{
  {
        ["ProductID"]           = "NANITCARD",
        ["Stacksize"]           = "25",
        ["Price"]               = "1000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Nanite Card", "Currency Storage Device", "Introducing Nanites into the crafting sequence of a Credit Card yielded a Currency Card Capable of storing Nanites."}
        }
    },
	{
        ["ProductID"]           = "NANITCARD1",
        ["Stacksize"]           = "25",
        ["Price"]               = "10000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "High Capacity Nanite Card", "Currency Storage Device", "Utilizing superior data compression techniques, Currency Cards can now store more Nanites."}
        }
    },
	{
        ["ProductID"]           = "NANITCARD2",
        ["Stacksize"]           = "25",
        ["Price"]               = "100000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Compressed HC Nanite Card", "Currency Storage Device", "Utilization of the extreme Gravity found in black holes allows for hundreds of Currency Cards to be stored in the space of one"}
        }
    },
	{
        ["ProductID"]           = "NANITCARD3",
        ["Stacksize"]           = "25",
        ["Price"]               = "1000000",
		["Cat"]				= "None",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Spatial Nanite Card", "Currency Storage Device", "Utilization of miniature black holes allows for thousands of Currency Cards to be stored in the space of one."}
        }
    }
}

AddNewQunitProducts =
{
	{
        ["ProductID"]           = "QUNITCARD",
        ["Stacksize"]           = "25",
        ["Price"]               = "1000",
		["Cat"]				= "SpecialShop",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Quicksilver Card", "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies."}
        }
    },
	{
        ["ProductID"]           = "QUNITCARD1",
        ["Stacksize"]           = "25",
        ["Price"]               = "10000",
		["Cat"]				= "SpecialShop",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "High Capacity Quicksilver Card", "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies"}
        }
    },
	{
        ["ProductID"]           = "QUNITCARD2",
        ["Stacksize"]           = "25",
        ["Price"]               = "100000",		
		["Cat"]				= "SpecialShop",
        ["NewProductIcon"]      = "TEXTURES/UI/FRONTEND/ICONS/UPDATE3/FARMPROD.9.DDS",
        ["Languages"] =
        {
            {Languages["English"], "Compressed HC Quicksilver Card",  "Currency Storage Device", "A Currency Card created by Polo's Quicksilver Synthesis Companion to store special currencies"}
        }
    }
}
----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
ModName                 				= "NMS Galactic Standard Currency"
GameVersion							= " v3.99.1."
Build					 						= "14"
Author                  						= "EchoTree "
LuaAuthor									= "Jackty89"
ModDescription          			= "Adds Craftable, Tradable Consumable Currencies to NMS"
CustomLanguageTag       		= "NMSGSC"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]       		= Author..ModName..GameVersion..Build..".pak",
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
                {	--																											DEFAULTSAVEDATACREATIVE																											6																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																														DEFAULTREALITY																														7																							--
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
                {	--																													  GCDEBUGOPTIONS																													8																							--
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

function CreateNewProduct(NewProductID, NewProductName, NewProductNameLc, NewProductSub, NewProductDesc, NewProductStackSize, NewProductValue, NewProductIcon, NewProductRequirements, NewProdTradeCat)
    local RequirementsString = ""
    if NewProductRequirements ~= "" then
        RequirementsString = [[<Property name="Requirements">]]..NewProductRequirements..[[</Property>]]
    else
        RequirementsString = [[<Property name="Requirements" />]]
    end

    local result =
    [[
        <Property value="GcProductData.xml">
            <Property name="Id" value="]]..NewProductID..[[" />
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
            </Property>
            <Property name="BaseValue" value="]]..NewProductValue..[[" />
            <Property name="Level" value="0" />
            <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="]]..NewProductIcon..[[" />
            </Property>
            <Property name="HeroIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="]]..NewProductIcon..[[" />
            </Property>
            <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.101960786" />
            <Property name="G" value="0.15294118" />
            <Property name="B" value="0.2" />
            <Property name="A" value="1" />
            </Property>
            <Property name="Category" value="GcRealitySubstanceCategory.xml">
                <Property name="SubstanceCategory" value="Exotic" />
            </Property>
            <Property name="Type" value="GcProductCategory.xml">
                <Property name="ProductCategory" value="Curiosity" />
            </Property>
            <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Rare" />
            </Property>
            <Property name="Legality" value="GcLegality.xml">
                <Property name="Legality" value="Legal" />
            </Property>
            <Property name="Consumable" value="True" />
            <Property name="ChargeValue" value="0" />
            <Property name="StackMultiplier" value="]]..NewProductStackSize..[[" />
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
            <Property name="NormalisedValueOnWorld" value="0.008012757" />
            <Property name="NormalisedValueOffWorld" value="0.008012757" />
            <Property name="TradeCategory" value="GcTradeCategory.xml">
                <Property name="TradeCategory" value="]]..NewProdTradeCat..[[" />
            </Property>
            <Property name="WikiCategory" value="Tech" />
            <Property name="IsCraftable" value="True" />
            <Property name="DeploysInto" value="" />
            <Property name="EconomyInfluenceMultiplier" value="0" />
            <Property name="PinObjective" value="UI_FIND_OBJ" />
            <Property name="PinObjectiveTip" value="" />
            <Property name="CookingIngredient" value="False" />
            <Property name="CookingValue" value="0" />
            <Property name="GoodForSelling" value="False" />
            <Property name="GiveRewardOnSpecialPurchase" value="" />
            <Property name="EggModifierIngredient" value="False" />
            <Property name="IsTechBox" value="False" />
        </Property>
    ]]

    return result
end

function CreateProductRequirement(IngedientID, IngredientType, IngredientAmount)
    return
    [[
        <Property value="GcTechnologyRequirement.xml">
            <Property name="ID" value="]]..IngedientID..[[" />
            <Property name="InventoryType" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]]..IngredientType..[[" />
            </Property>
        <Property name="Amount" value="]]..IngredientAmount..[[" />
        </Property>
    ]]
end

function CreateNewConsumable(NewProductID, NewProductConsumeRewardID)
    return
    [[
        <Property value="GcConsumableItem.xml">
            <Property name="ID" value="]]..NewProductID..[[" />
            <Property name="RewardID" value="]]..NewProductConsumeRewardID..[[" />
            <Property name="TutorialRewardID" value="" />
            <Property name="ButtonLocID" value="UI_CONSUME_]]..NewProductID..[[" />
            <Property name="ButtonSubLocID" value="UI_CONSUME_]]..NewProductID..[[_SUB" />
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

function CreateRewardEntry(NewId, RewardChoice, Rewards)
    return [[
        <Property value="GcGenericRewardTableEntry.xml">
            <Property name="Id" value="]]..NewId..[[" />
            <Property name="List" value="GcRewardTableItemList.xml">
                <Property name="RewardChoice" value="]]..RewardChoice..[[" />
                <Property name="OverrideZeroSeed" value="False" />
                <Property name="List">
                    ]]..Rewards..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function CreateCurrecyRewardItem(PercentageChance, AmountMin, AmountMax, CurrencyType)
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
for i = 1, #AddNewConsumableProducts do
    local Requirements        = {}
    local ProductRequirements = ""
    local ProductID           = string.upper(AddNewConsumableProducts[i]["ProductID"])
    local ProductName         = string.upper(ProductID).."_NAME"
    local ProductNameLC       = string.upper(ProductID).."_NAME_L"
    local ProductDesc         = string.upper(ProductID).."_DESC"
    local ProductSub          = string.upper(ProductID).."_SUB"

    local ProductStackSize    = AddNewConsumableProducts[i]["Stacksize"]
    local ProductValue        = AddNewConsumableProducts[i]["Price"]
	local ProdTradeCat		= AddNewConsumableProducts[i]["Cat"]
    local ProductIcon         = AddNewConsumableProducts[i]["NewProductIcon"]

	local RequirementsList    = AddNewConsumableProducts[i]["Requirements"]

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
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, ProductStackSize, ProductValue, ProductIcon, ProductRequirements, ProdTradeCat)
    }
end

-------------------------------     Non-Consumable Product   -------------------------------------

local AddToSpecialShop	= NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local AddToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][7]["EXML_CHANGE_TABLE"]
for i = 1, #AddNewBlunitProducts do
    local ProductID = string.upper(AddNewBlunitProducts[i]["ProductID"])
    local ProductName         = string.upper(ProductID).."_NAME"
    local ProductNameLC       = string.upper(ProductID).."_NAME_L"
    local ProductDesc         = string.upper(ProductID).."_DESC"
    local ProductSub          = string.upper(ProductID).."_SUB"

    local ProductStackSize    = AddNewBlunitProducts[i]["Stacksize"]
    local ProductValue        = AddNewBlunitProducts[i]["Price"]
	local ProdTradeCat		= AddNewBlunitProducts[i]["Cat"]
    local ProductIcon         = AddNewBlunitProducts[i]["NewProductIcon"]

	local ProductRequirements = ""

    --adds product to product table
    AddToProductTable[#AddToProductTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, ProductStackSize, ProductValue, ProductIcon, ProductRequirements, ProdTradeCat)
    }

    -------- Adds products to store  this can be added to a seperate loop if not all products should be added------------
    local ShopEntry = CreateShopEntry(ProductID)
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
    local ProductID = string.upper(AddNewNanitProducts[j]["ProductID"])
    local ProductName         = string.upper(ProductID).."_NAME"
    local ProductNameLC       = string.upper(ProductID).."_NAME_L"
    local ProductDesc         = string.upper(ProductID).."_DESC"
    local ProductSub          = string.upper(ProductID).."_SUB"

    local ProductStackSize    = AddNewNanitProducts[j]["Stacksize"]
    local ProductValue        = AddNewNanitProducts[j]["Price"]
	local ProdTradeCat		=	AddNewNanitProducts[j]["Cat"]
    local ProductIcon         = AddNewNanitProducts[j]["NewProductIcon"]

	local ProductRequirements = ""

    --adds product to product table
    AddToProductTable[#AddToProductTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, ProductStackSize, ProductValue, ProductIcon, ProductRequirements, ProdTradeCat)
    }

    local ShopEntry = CreateShopEntry(ProductID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
end

for k = 1, #AddNewQunitProducts do
    local ProductID			 = string.upper(AddNewQunitProducts[k]["ProductID"])
    local ProductName         = string.upper(ProductID).."_NAME"
    local ProductNameLC       = string.upper(ProductID).."_NAME_L"
    local ProductDesc         = string.upper(ProductID).."_DESC"
    local ProductSub          = string.upper(ProductID).."_SUB"

    local ProductStackSize    = AddNewQunitProducts[k]["Stacksize"]
    local ProductValue        = AddNewQunitProducts[k]["Price"]
	local ProdTradeCat		= AddNewQunitProducts[k]["Cat"]
    local ProductIcon         = AddNewQunitProducts[k]["NewProductIcon"]
	local SSID						= string.upper(AddNewQunitProducts[k]["ProductID"])
	local ProductRequirements = ""

    --adds product to product table
    AddToProductTable[#AddToProductTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, ProductStackSize, ProductValue, ProductIcon, ProductRequirements, ProdTradeCat)
    }

    AddToSpecialShop[#AddToSpecialShop + 1] =
	{
		["PRECEDING_KEY_WORDS"]	=	{"Table"},
		["ADD"] = CreateSpecialsShopEntry(SSID)
	}
	
	local ShopEntry = CreateShopEntry(ProductID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"NeverSellableItems"},
        ["ADD"] = ShopEntry
    }
end

----------------------------------------------------------------------------------------------
-------------------------------     Consumable and reward creation     -----------------------
----------------------------------------------------------------------------------------------
------------------------------- This also adds the recipe to known recipes -------------------

local AddToConsumableTable   		  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local AddToRewardTable        		  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local AddToDefaultSaveData    		  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]
local AddToDefaultSaveDataCreative    = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]

for i = 1, #AddNewConsumableProducts do
    local ProductID         = string.upper(AddNewConsumableProducts[i]["ProductID"])
    local ProductRewardData = AddNewConsumableProducts[i]["RewardData"]

    local RewardId          = string.upper(ProductRewardData[1])
    local RewardChoice      = ProductRewardData[2]
    local RewardData        = ProductRewardData[3]
    local Rewards           = {}

    for k = 1, #RewardData  do
        local PercentageChance = ""
        local AmountMin        = ""
        local AmountMax        = ""
        local CurrencyType     = ""

        PercentageChance       = RewardData[k][1]
        AmountMin              = RewardData[k][2]
        AmountMax              = RewardData[k][3]
        CurrencyType           = RewardData[k][4]

        table.insert(Rewards, CreateCurrecyRewardItem(PercentageChance, AmountMin, AmountMax, CurrencyType))
    end
    -- Create new reward entry
    AddToRewardTable[#AddToRewardTable + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
        ["ADD"] = CreateRewardEntry(RewardId, RewardChoice,  table.concat(Rewards))
    }
    --Adds recipe to know products
    AddToDefaultSaveData[#AddToDefaultSaveData + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["ADD"] = CreateKnownProduct(ProductID)
    }
	AddToDefaultSaveDataCreative[#AddToDefaultSaveDataCreative + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["ADD"] = CreateKnownProduct(ProductID)
    }
    --- Adds the new consumable
    AddToConsumableTable[#AddToConsumableTable + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = CreateNewConsumable(ProductID, RewardId)
    }
end
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
        local ProductID = string.upper(Data[i]["ProductID"])
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}
		local ButtonNameEntries = {}
		local ButtonSubEntries = {}

        local Languages = Data[i]["Languages"]

        local NameID = ProductID.."_NAME"
        local NameLCID = ProductID.."_NAME_L"
        local SubID = ProductID.."_SUB"
        local DescID = ProductID.."_DESC"
		local ButtonID = "UI_CONSUME_"..ProductID
		local ButtonSubID = "UI_CONSUME_"..ProductID.."_SUB"

        for j = 1, #Languages do
            local Language = Languages[j][1]

            local Name = string.upper(Languages[j][2])
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NameLC = Languages[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local NewSubTitle = Languages[j][3]
            table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            local NewDescription = Languages[j][4]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
			
			local NewButtonName = Languages[j][5]
				print("NewButtonName = Languages[j][5] is ["..tostring(NewButtonName).."]")
				if NewButtonName ~= nil then
				table.insert(ButtonNameEntries, NewLanguageEntry(Language, NewButtonName))
			end
	
			local NewButtonSub = Languages[j][6]
				print("NewButtonSub = Languages[j][6] is ["..tostring(NewButtonSub).."]")
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
for Key , Language in pairs(Languages) do

    --- Creating a singulare list that contains all new productID's and their langauge strings
    local LanguageData = { ["ProductID"] = "" , ["Languages"] = {}}
    for i = 1, #AddNewConsumableProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["ProductID"] = AddNewConsumableProducts[i]["ProductID"],
            ["Languages"] = AddNewConsumableProducts[i]["Languages"] ,
        }
    end
	
	for j = 1, #AddNewBlunitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["ProductID"] = AddNewBlunitProducts[j]["ProductID"],
            ["Languages"] = AddNewBlunitProducts[j]["Languages"] ,
        }
    end

	for k = 1, #AddNewNanitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["ProductID"] = AddNewNanitProducts[k]["ProductID"],
            ["Languages"] = AddNewNanitProducts[k]["Languages"] ,
        }
    end
	
	for l = 1, #AddNewQunitProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["ProductID"] = AddNewQunitProducts[l]["ProductID"],
            ["Languages"] = AddNewQunitProducts[l]["Languages"] ,
        }
    end
	
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] 	=	"LANGUAGE\\NMS_"..CustomLanguageTag.."_"..Key..".EXML",
        ["FILE_CONTENT"] 		=	FillCustomlangFile(LanguageData)
    }

end