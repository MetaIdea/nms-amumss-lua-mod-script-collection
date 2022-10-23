AddRockHotRewardsLists =
{
	{
		["MRPrcntCh"]		=		"100",
		["MRID"]				=		"TECHFRAG"
	},
	{
		["MRPrcntCh"]		=		"90",
		["MRID"]				=		"LIQ1"
	}
}

AddRockLushRewardsLists =
{
	{
		["MRPrcntCh"]		=		"100",
		["MRID"]				=		"TECHFRAG"
	},
	{
		["MRPrcntCh"]		=		"90",
		["MRID"]				=		"LIQ1"
	}
}

ModName 								= "Mining Rewards Test "
Author										= "EchoTree"
LuaAuthor									= "EchoTree"
ModDescription						=	"Edits The Primary/Secondary Rewards given by mining Flora/Minerals"
GameVersion							=	"v4.05.0"
Build											= ".1"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 			= Author.."'s "..ModName..GameVersion..Build..".pak",
    ["MOD_DESCRIPTION"]		= ModDescription.."Compatible with NMS"..GameVersion,
    ["MOD_AUTHOR"]				= Author,
    ["LUA_AUTHOR"]					= LuaAuthor,
    ["NMS_VERSION"]				= GameVersion,
    ["ADD_FILES"]           			=
    {
    },
	["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = {"METADATA/REALITY/TABLES/REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_ROCK_LUSH", "ID", "FUEL1",},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"UseSecondaryBiomeSubstances", "False",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"UseSecondaryBiomeSubstances", "True"}
							}
						},
					}
				},
			}
		},
	}
}

function CreateMiningReward(NewMRPrcntCh, NewMRID)
	return
	[[
	  <Property value="GcRewardTableItem.xml">
		<Property name="PercentageChance" value="]]..NewMRPrcntCh..[[" />
		<Property name="Reward" value="GcRewardSecondarySubstance.xml">
		  <Property name="ID" value="]]..NewMRID..[[" />
		  <Property name="AmountFactor" value="0.25" />
		  <Property name="RewardAsBlobs" value="True" />
		</Property>
		<Property name="LabelID" value="" />
	  </Property>
	]]

end

local AddToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
	for i = 1, #AddRockLushRewardsLists do
	local MRPrcntCh			=					AddRockLushRewardsLists[i]["MRPrcntCh"]
	local MRID						=					AddRockLushRewardsLists[i]["MRID"]
	
	AddToRewardTable[#AddToRewardTable + 1]  =
    {
		["SPECIAL_KEY_WORDS"] = {"Id", "DE_ROCK_LUSH", "UseInventoryChoiceOverride", "False",},
		["PRECEDING_KEY_WORDS"] = {"List",},
		["ADD_OPTION"] = "ADDafterLINE",
		["ADD"] = CreateMiningReward(MRPrcntCh, MRID)
    }	
end

	for k = 1, #AddRockHotRewardsLists do
	local MRPrcntCh			=				AddRockHotRewardsLists[k]["MRPrcntCh"]
	local MRID						=				AddRockHotRewardsLists[k]["MRID"]
	
	AddToRewardTable[#AddToRewardTable + 1]  =
    {
		["SPECIAL_KEY_WORDS"] = {"Id", "DE_ROCK_HOT", "UseInventoryChoiceOverride", "False",},
		["PRECEDING_KEY_WORDS"] = {"List",},
		["ADD_OPTION"] = "ADDafterLINE",
		["ADD"] = CreateMiningReward(MRPrcntCh, MRID)
    }
end