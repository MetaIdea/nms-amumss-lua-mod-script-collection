GameVersion = "3_53"
ModName = "NewDescriptionFlavour"
Author = "jackty89" --IE GameMaster-BE on the discord
Description = "This mod allows you to add new custom descriptions to any product"

-- Choose one of these fe. english would be Languages[1], french Languages[2] ...
Languages = 
{
	"English",
	"French",
	"Italian",
	"German",
	"Spanish",
	"Russian",
	"Polish",
	"Dutch",
	"Portuguese",
	"LatinAmericanSpanish",
	"BrazilianPortuguese",
	"SimplifiedChinese",
	"TraditionalChinese",
	"TencentChinese",
	"Korean",
	"Japanese",
	"USEnglish"
}

-- Make sure to choose the correct language file 
-- NMS has LOC1, LOC4, LOC5, LOC6 and UPDATE3 of each language file (food seem to be in LOC4)
-- "languagefile location" doesn't really matter as you're adding a brand new ID unless you want to keep things organized

-- ID, New description id, lamguage, custom description
LOC1 = "LOC1"
LOC2 = "LOC2"
LOC4 = "LOC4"
LOC5 = "LOC5"
LOC6 = "LOC6"
UPDATE3 = "UPDATE3"

-- Product Id's can be found really easy with ModdingStation (see nexus)
-- Product ID, customDescriptionID, Language, languagefile location, custom description
--ChangeDescIDandDescriptionForProductsArray Structure
-- {
-- 	{
-- 		ProductId,
-- 		CustomDescriptionID,
-- 		LanguageArray
-- 		{
-- 			{Language[X], LOC, Customdescript},
-- 			{Language[X], LOC, Customdescript},
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
			{Languages[1], LOC4, "Somehow we were able to jammify a crab... who would've thought that was even possible. Still delicious."},
			{Languages[2], LOC4, "C'est une text en francais"}
		}
	},
	{
		"FOOD_R_BCREAM", 
		"FOOD_R_BCREAM_DESC",
		{
			{Languages[1], LOC4, "Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."}, 
			{Languages[3], LOC4, "ITALIAN Bone cream... BONE cream... What bone, from where, so many questions such few awnsers and how do you even 'creamefy' bones. Yet another question with no awnser."}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= "",   
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	= 
                    {
											
                    }
				}
            }
        }
    }
}

function newDescriptionText(newDescId)
	local result =
	[[
	<Property value="TkLocalisationEntry.xml">
		<Property name="Id" value="]]..newDescId..[[" />
		<Property name="English" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="French" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Italian" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="German" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Spanish" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Russian" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Polish" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Dutch" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Portuguese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="BrazilianPortuguese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="SimplifiedChinese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="TraditionalChinese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="TencentChinese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Korean" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="Japanese" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
		<Property name="USEnglish" value="VariableSizeString.xml">
			<Property name="Value" value="" />
		</Property>
	</Property>
	]]
 
	return result; 
end

--This will add a new langauge table to the preffered language file
local AddNewDescriptions = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #ChangeDescIDandDescriptionForProductsArray do
	
	local NewDescriptionID = ChangeDescIDandDescriptionForProductsArray[i][2]

	if(not(NewDescriptionID == ""))
	then		
		local FoodID = ChangeDescIDandDescriptionForProductsArray[i][1]
		local Languages = ChangeDescIDandDescriptionForProductsArray[i][3]

		for j = 1, #Languages do

			local Language = Languages[j][1]
			local LanguageUC = string.upper(Language)

			local Loc = Languages[i][2]
			
			local NewDescription = Languages[i][3]
			
			local temp_table = 
			{
				["MBIN_FILE_SOURCE"] 	= "LANGUAGE\NMS_"..Loc.."_"..LanguageUC..".MBIN",
				["EXML_CHANGE_TABLE"] 	= 
				{
					{
						["PRECEDING_KEY_WORDS"] = {"Table"},
						["ADD"] = ""..newDescriptionText(NewDescriptionID),
					},
					{
						["SPECIAL_KEY_WORDS"] = {"Id", NewDescriptionID , Language, "VariableSizeString.xml"},
						["PRECEDING_KEY_WORDS"] = {Language},
						["VALUE_CHANGE_TABLE"] = 
						{
							{"Value", NewDescription}
						}
					}             
				}
			}
			AddNewDescriptions[#AddNewDescriptions + 1] = temp_table
		end
	end
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
