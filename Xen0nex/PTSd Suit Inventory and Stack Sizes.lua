ModName = "PTSd Suit Inventory and Stack Sizes"
GameVersion = "5_10"
Description = "Rebalance of inventory Slot stack sizes, as well as initial & max exosuit inventory size"

--NOTE: certain specific items may have their stack size further adjusted in the "PTSd Resource + Product + Construction Rebalance" section
	--No references to "Cargo" slots (the slots listed in the UI as "cargo" are actually renamed general slots) or to supercharged tech slots (SpecialTechSlots) in these files seem to have any effect in game 

SubstanceStackMult =		1				--1		Multiplies all the values in MaxSubstanceStackSizes below by this number, automatically rounded and capped at a minimum of 1
ProductStackMult =			1				--1		Multiplies all the values in MaxProductStackSizes below by this number, automatically rounded and capped at a minimum of 1

StackLimits =
{
	{
		{"MaxSubstanceStackSizes",	SubstanceStackMult},
		{						--	Standard	Restrictive	Harsh				Standard	Restrictive	Harsh
			{"Default",				1000,		500,		300},			--	9999,		500,		150		Unclear, possibly a fallback to be used for inventories which don’t have use of the defined categories below? But setting this equal to Personal seems to result in things behaving “as expected”
			{"Personal",			1000,		500,		300},			--	9999,		500,		300		Exosuit
			{"Ship",				2000,		1000,		600},			--	9999,		1000,		300		Starships
			{"Freighter",			4000,		2000,		1200},			--	9999,		2000,		750		Freighter
			{"Vehicle",				1500,		750,		450},			--	9999,		1000,		300		All Exocraft / Minotaur / Nautilon
			{"Chest",				4000,		2000,		1200},			--	9999,		1000,		750		Storage Containers (The kind you build in your base / freighter)
			{"BaseCapsule",			6000,		3000,		1800},			--	9999,		2000,		1250	The buildable object used to access and recover resources from bases you have deleted
			{"MaintenanceObject",	2000,		1000,		600},			--	9999,		250,		150		Affects the Input & Outputs for Refiners, possibly other machines / debris
			{"UIPopup",				1000,		500,		300},			--	9999,		250,		150		Unclear, possibly certain rewards from dialogue / quests?
		}
	},
	{
		{"MaxProductStackSizes",	ProductStackMult},
		{						--	Standard	Restrictive	Harsh				Standard	Restrictive	Harsh
			{"Default",				8,			5,			3},				--	5,			5,			3		Unclear, possibly a fallback to be used for inventories which don’t have use of the defined categories below? But setting this equal to Personal seems to result in things behaving “as expected”
			{"Personal",			8,			5,			3},				--	10,			10,			3		Exosuit
			{"Ship",				16,			10,			6},				--	10,			10,			3		Starships
			{"Freighter",			32,			20,			12},			--	20,			10,			5		Freighter
			{"Vehicle",				12,			8,			4},				--	10,			10,			3		All Exocraft / Minotaur / Nautilon
			{"Chest",				32,			20,			12},			--	20,			20,			10		Storage Containers (The kind you build in your base / freighter)
			{"BaseCapsule",			160,		100,		60},			--	100,		100,		50		The buildable object used to access and recover resources from bases you have deleted
			{"MaintenanceObject",	16,			10,			6},				--	10,			10,			5		Affects the Input & Outputs for Refiners, possibly other machines / debris
			{"UIPopup",				1,			1,			1},				--	1,			1,			1		Unclear, possibly certain rewards from dialogue / quests?
		}
	},
}
--				Standard	Restrictive	Harsh	
Difficulties = {"High",		"Normal",	"Low"}

--Exosuit Inventory. Unclear what these do, or whether they have any effect at all
MinCargoSlots =		24									--24
MaxCargoSlots =		24									--24
MinTechSlots =		12									--12
MaxTechSlots =		12									--12

--Maximum Width(X) and Height(Y) for the boundaries where slots can appear in the Exosuit, can be used to limit the final size of the inventory once fully upgraded
CargoMaxWidth=		8									--10		Doesn't seem to actually have any effect
CargoMaxHeight=		5									--12		Doesn't seem to actually have any effect
TechMaxWidth=		10									--10
TechMaxHeight=		4									--6

--Storage container slots and width / height of inventory
StorageSlots =		30									--50
StorageWidth =		6									--10
StorageHeight =		5									--6

--Cargo Rocket slots and width / height of inventory
RocketSlots =		7									--21		Doesn't seem to actually have any effect, may require a new save to take effect?
RocketWidth =		2									--7			Doesn't seem to actually have any effect, may require a new save to take effect?
RocketHeight =		4									--3			Doesn't seem to actually have any effect, may require a new save to take effect?

--Unclear what these do, or whether they have any effect at all
PersonalInventoryMinWidthMax =			5				--5
PersonalInventoryMinHeightMax =			5 				--5
PersonalTechInventoryMinWidthMax =		10 				--10
PersonalTechInventoryMinHeightMax =		4				--6
ShipInventoryMinWidthMax =				10 				--10
ShipInventoryMinHeightMax =				7 				--12
ShipTechInventoryMinWidthMax =			10				--10
ShipTechInventoryMinHeightMax =			5				--6
VehicleInventoryMinWidthMax =			10 				--10
VehicleInventoryMinHeightMax =			5				--12
WeaponInventoryMinWidthMax =			10 				--10
WeaponInventoryMinHeightMax =			3 				--5

function RoundCapped (value)
    roundValue = math.floor(value+0.5)
	
	if roundValue == 0 then
	return
	1
	
	else
	return
	roundValue
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= Description,         
  ["MOD_AUTHOR"]			= "Xen0nex",         -- (pre-4.0 version based on Inventory Rebalance by Jackty89, modified by Xen0nex)
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 			--Unclear what these do if they have any effect
							{
								{"PersonalInventoryMinWidthMax",			PersonalInventoryMinWidthMax},	
								{"PersonalInventoryMinHeightMax",			PersonalInventoryMinHeightMax},	
								{"PersonalTechInventoryMinWidthMax",		PersonalTechInventoryMinWidthMax},
								{"PersonalTechInventoryMinHeightMax",		PersonalTechInventoryMinHeightMax},	
								{"ShipInventoryMinWidthMax",				ShipInventoryMinWidthMax},
								{"ShipInventoryMinHeightMax",				ShipInventoryMinHeightMax},
								{"ShipTechInventoryMinWidthMax",			ShipTechInventoryMinWidthMax},
								{"ShipTechInventoryMinHeightMax",			ShipTechInventoryMinHeightMax},	
								{"VehicleInventoryMinWidthMax",				VehicleInventoryMinWidthMax},
								{"VehicleInventoryMinHeightMax",			VehicleInventoryMinHeightMax},	
								{"WeaponInventoryMinWidthMax",				WeaponInventoryMinWidthMax},
								{"WeaponInventoryMinHeightMax",				WeaponInventoryMinHeightMax},	
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Suit","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			MinCargoSlots},
								{"MaxSlots",			MaxCargoSlots},
								{"MinTechSlots",		MinTechSlots},
								{"MaxTechSlots",		MaxTechSlots},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Suit","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "Bounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			CargoMaxWidth},
								{"MaxHeightSmall",			CargoMaxHeight},
								{"MaxWidthStandard",		CargoMaxWidth},
								{"MaxHeightStandard",		CargoMaxHeight},
								{"MaxWidthLarge",			CargoMaxWidth},
								{"MaxHeightLarge",			CargoMaxHeight},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Suit","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "TechBounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			TechMaxWidth},
								{"MaxHeightSmall",			TechMaxHeight},
								{"MaxWidthStandard",		TechMaxWidth},
								{"MaxHeightStandard",		TechMaxHeight},
								{"MaxWidthLarge",			TechMaxWidth},
								{"MaxHeightLarge",			TechMaxHeight},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestSmall","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			StorageSlots},
								{"MaxSlots",			StorageSlots},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestSmall","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "Bounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			StorageWidth},
								{"MaxHeightSmall",			StorageHeight},
								{"MaxWidthStandard",		StorageWidth},
								{"MaxHeightStandard",		StorageHeight},
								{"MaxWidthLarge",			StorageWidth},
								{"MaxHeightLarge",			StorageHeight},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestMedium","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			StorageSlots},
								{"MaxSlots",			StorageSlots},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestMedium","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "Bounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			StorageWidth},
								{"MaxHeightSmall",			StorageHeight},
								{"MaxWidthStandard",		StorageWidth},
								{"MaxHeightStandard",		StorageHeight},
								{"MaxWidthLarge",			StorageWidth},
								{"MaxHeightLarge",			StorageHeight},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestLarge","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			StorageSlots},
								{"MaxSlots",			StorageSlots},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ChestLarge","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "Bounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			StorageWidth},
								{"MaxHeightSmall",			StorageHeight},
								{"MaxWidthStandard",		StorageWidth},
								{"MaxHeightStandard",		StorageHeight},
								{"MaxWidthLarge",			StorageWidth},
								{"MaxHeightLarge",			StorageHeight},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"RocketLocker","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",			RocketSlots},
								{"MaxSlots",			RocketSlots},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"RocketLocker","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "Bounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			RocketWidth},
								{"MaxHeightSmall",			RocketHeight},
								{"MaxWidthStandard",		RocketWidth},
								{"MaxHeightStandard",		RocketHeight},
								{"MaxWidthLarge",			RocketWidth},
								{"MaxHeightLarge",			RocketHeight},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--Intentionally left blank to be filled in by function below
					}
				}
            }
		}
    }
}	


local ChangesToDifficulty = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #Difficulties do
	local Difficulty = Difficulties[i]
	
	for j = 1, #StackLimits do
		local ItemType = StackLimits[j][1][1]
		local StackMult = StackLimits[j][1][2]
		
		local Inventories = StackLimits[j][2]
		local Default = Inventories[1][i+1]
		local Personal = Inventories[2][i+1]
		local Ship = Inventories[3][i+1]
		local Freighter = Inventories[4][i+1]
		local Vehicle = Inventories[5][i+1]
		local Chest = Inventories[6][i+1]
		local BaseCapsule = Inventories[7][i+1]
		local MaintenanceObject = Inventories[8][i+1]
		local UIPopup = Inventories[9][i+1]
	

			ChangesToDifficulty[#ChangesToDifficulty+1] =
			{
				["SPECIAL_KEY_WORDS"] = {Difficulty,"GcDifficultyInventoryStackSizeOptionData.xml"},
				["PRECEDING_KEY_WORDS"] = ItemType,
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Default",				RoundCapped(StackMult*Default)},
					{"Personal",			RoundCapped(StackMult*Personal)},
					{"Ship",				RoundCapped(StackMult*Ship)},
					{"Freighter",			RoundCapped(StackMult*Freighter)},
					{"Vehicle",				RoundCapped(StackMult*Vehicle)},
					{"Chest",				RoundCapped(StackMult*Chest)},
					{"BaseCapsule",			RoundCapped(StackMult*BaseCapsule)},
					{"MaintenanceObject",	RoundCapped(StackMult*MaintenanceObject)},
					{"UIPopup",				RoundCapped(StackMult*UIPopup)},
				}
			}
	end
end