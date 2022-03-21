GameVersion = "3_8X"
ModName = "NewDescriptionFlavour"
Author = "jackty89" --IE GameMaster-BE on the discord
Description = "This mod allows you to add new custom descriptions to any product"

CustomLanguageTag = "CustomFoodDesc"

Languages =
{
	["English"] = "English",
	["French"] = "French",
	["Italian"] = "Italian",
	["German"] = "German",
	["Spanish"] = "Spanish",
	["Russian"] = "Russian",
	["Polish"] = "Polish",
	["Dutch"] = "Dutch",
	["Portuguese"] = "Portuguese",
	["LatinAmeraicanSpanish"] = "LatinAmericanSpanish", --this is not a typo
	["BrazilianPortuguese"] = "BrazilianPortuguese",
	["SimplifiedChinese"] = "SimplifiedChinese",
	["TraditionalChinese"] = "TraditionalChinese",
	["TencentChinese"] = "TencentChinese",
	["Korean"] = "Korean",
	["Japanese"] = "Japanese",
	["USEnglish"] = "USEnglish"
}

-- Product Id's can be found really easy with ModdingStation (see nexus)
-- Product ID, customDescriptionID, Language, languagefile location, custom description
--ChangeDescIDandDescriptionForProductsArray Structure
-- {
-- 	{
-- 		ProductId,
-- 		CustomDescriptionID,
-- 		LanguageArray
-- 		{
-- 			{Language[language], Customdescript},
-- 			{Language[language], Customdescript},
-- 			...
-- 		}
-- 	},...
-- }
--End Strcture
ChangeDescIDandDescriptionForProductsArray =
{
	{
		"FOOD_JAM_CRAB",
		"FOOD_JAM_CRAB_DESC",
		{
			{Languages["English"], "Somehow we were able to jammify a crab... who would've thought that was even possible. Still delicious."},
			{Languages["French"], "C'est une text en francais"}
		}
	},
	{
		"FOOD_R_BCREAM",
		"FOOD_R_BCREAM_DESC",
		{
			{Languages["English"], "Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."},
			{Languages["Italian"], "ITALIAN Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."},
			{Languages["USEnglish"], "some desription in said language"}
		}
	}
}

---------------------------------------------------------------------------------
----------START OF CODE MAGIC, NO NEED TO DO ANYTHING ANYMORE--------------------
---------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= "",
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["ADD_FILES"] 				=
	{
	},
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
					}
				},
				{
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
				}
			}
		}
	}
}

function NewLanguagueFile(DescriptionEntries)
	return
	[[
		<?xml version="1.0" encoding="utf-8"?>
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

function FillCustomlangFile()
	local DescriptionEntries = {}
	for i = 1, #ChangeDescIDandDescriptionForProductsArray do
		local NewDescriptionID = ChangeDescIDandDescriptionForProductsArray[i][2]
		local LanguageEntries = {}

		if(not(NewDescriptionID == ""))
		then
			local Languages = ChangeDescIDandDescriptionForProductsArray[i][3]
			for j = 1, #Languages do

				local Language = Languages[j][1]
				local NewDescription = Languages[j][2]
				table.insert(LanguageEntries, NewLanguageEntry(Language, NewDescription))
			end
			table.insert(DescriptionEntries, NewDescriptionText(NewDescriptionID, table.concat(LanguageEntries)))
		end
	end
	return NewLanguagueFile(table.concat(DescriptionEntries))
end

local AddCsutomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for Key , Language in pairs(Languages) do
	AddCsutomLanguageFiles[#AddCsutomLanguageFiles +1] =
	{
		["FILE_DESTINATION"] 	=	"LANGUAGE\\NMS_"..CustomLanguageTag.."_"..Key..".EXML",
		["FILE_CONTENT"] 		=	FillCustomlangFile()
	}
end

--This loop changes the description ID in producttbale
local ChangeDescriptionID = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #ChangeDescIDandDescriptionForProductsArray do


	local NewDescriptionID = ChangeDescIDandDescriptionForProductsArray[i][2]

	if(not(NewDescriptionID == ""))
	then
		local FoodID = ChangeDescIDandDescriptionForProductsArray[i][1]
		local temp_table =
		{
			["SPECIAL_KEY_WORDS"] = {"Id", FoodID },
			["PRECEDING_KEY_WORDS"] = {"Subtitle", "Description"},
			["VALUE_CHANGE_TABLE"] =
			{
				{"Value", NewDescriptionID}
			}
		}
		ChangeDescriptionID[#ChangeDescriptionID + 1] = temp_table
	end
end