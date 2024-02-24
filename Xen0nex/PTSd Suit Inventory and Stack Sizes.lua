ModName = "PTSd Suit Inventory and Stack Sizes"
GameVersion = "4_51"
Description = "Rebalance of inventory Slot stack sizes, as well as initial & max exosuit inventory size"

--NOTE: certain specific items may have their stack size further adjusted in the "PTSd Resource + Product + Construction Rebalance" section
	--No references to "Cargo" slots (the slots listed in the UI as "cargo" are actually renamed general slots) or to supercharged tech slots (SpecialTechSlots) in these files seem to have any effect in game 


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


StackLimits =
{
	{
		{"MaxSubstanceStackSizes"},
		{						--	Standard	Restrictive	Harsh				Standard	Restrictive	Harsh
			{"Default",				1000,		500,		300},			--	9999,		500,		150
			{"Personal",			1000,		500,		300},			--	9999,		500,		300
			{"Ship",				2000,		1000,		600},			--	9999,		1000,		300
			{"Freighter",			4000,		2000,		1200},			--	9999,		2000,		750
			{"Vehicle",				1500,		750,		450},			--	9999,		1000,		300
			{"Chest",				4000,		2000,		1200},			--	9999,		1000,		750
			{"BaseCapsule",			6000,		3000,		1800},			--	9999,		2000,		1250
			{"MaintenanceObject",	2000,		1000,		600},			--	9999,		250,		150		Affects the Input & Outputs for Refiners
			{"UIPopup",				1000,		500,		300},			--	9999,		250,		150
		}
	},
	{
		{"MaxProductStackSizes"},
		{						--	Standard	Restrictive	Harsh				Standard	Restrictive	Harsh
			{"Default",				8,			5,			3},				--	5,			5,			3
			{"Personal",			8,			5,			3},				--	10,			10,			3
			{"Ship",				16,			10,			6},				--	10,			10,			3
			{"Freighter",			32,			20,			12},			--	20,			10,			5
			{"Vehicle",				12,			8,			4},				--	10,			10,			3
			{"Chest",				32,			20,			12},			--	20,			20,			10
			{"BaseCapsule",			160,		100,		60},			--	100,		100,		50
			{"MaintenanceObject",	16,			10,			6},				--	10,			10,			5		Affects the Input & Outputs for Refiners
			{"UIPopup",				1,			1,			1},				--	1,			1,			1
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
CargoMaxWidth=		7									--7			Doesn't seem to actually have any effect
CargoMaxHeight=		5									--5			Doesn't seem to actually have any effect
TechMaxWidth=		10									--10
TechMaxHeight=		4									--6

--Storage container slots and width / height of inventory
StorageSlots =		30									--50
StorageWidth =		6									--10
StorageHeight =		5									--6

--Cargo Rocket slots and width / height of inventory
RocketSlots =		7									--21		Doesn't seem to actually have any effect
RocketWidth =		2									--7			Doesn't seem to actually have any effect
RocketHeight =		4									--3			Doesn't seem to actually have any effect

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
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Suit","GcInventoryLayoutGenerationDataEntry.xml"},
							["PRECEDING_KEY_WORDS"] = "TechBounds",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",			TechMaxWidth},
								{"MaxHeightSmall",			TechMaxHeight},
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
						{
							--Intentionally left blank to be filled in by function below
						}
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
					{"Default",				Default},
					{"Personal",			Personal},
					{"Ship",				Ship},
					{"Freighter",			Freighter},
					{"Vehicle",				Vehicle},
					{"Chest",				Chest},
					{"BaseCapsule",			BaseCapsule},
					{"MaintenanceObject",	MaintenanceObject},
					{"UIPopup",				UIPopup},
				}
			}
	end
end