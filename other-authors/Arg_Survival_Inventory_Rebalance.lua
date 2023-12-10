--[[

	Name:
		Argual's Survival Inventory Rebalance

	Description:
		The mod aims to ease inventory management in survival.
		The core intent is to allow the player to be able to store most of their resources in their base and freighter, while
			still limiting resource collection and storage during exploring.
			
		Increases special item stack sizes (Metal Casing, Larval Core, charts, etc) tenfold.
			
		Inventory changes:
			Substance stack size changes per inventory type:
				Default: 				changed from 250 to 1000.
				Player cargo: 			changed from 500 to 2000.
				Ship: 					changed from 500 to 4000.
				Freighter: 				changed from 1000 to 8000.
				Storage Container: 		changed from 1000 to 8000.
				Base Salvage Capsule:	changed from 2000 to 10000.

			Product changes:
				Default: 				changed from 5 to 5.
				Player cargo:			changed from 50 to 50.
				Ship: 					changed from 25 to 100.
				Freighter:				changed from 50 to 200.
				Storage Container:		changed from 50 to 200.
				Base Salvage Capsule: 	changed from 500 to 500.

	Modified files:
		METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN

--]]

-- Settings:

	-- Multiplier for all special item stack sizes (like navigation data, charts, etc).
		-- Original: 1
	SpecialItemStackMultiplier = 10
	
	-- The default inventory stack size for substances.
		-- Must be a multiple of 'SpecialItemStackMultiplier'!
		-- Original: 250
	DefaultInventoryStackSizeSubstance	= 1000
	
	-- The player cargo inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 500
	PlayerCargoInventoryStackSizeSubstance = 2000
	
	-- The ship inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 500
	ShipInventoryStackSizeSubstance	= 4000
	
	-- The storage container inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 1000
	ChestInventoryStackSizeSubstance = 8000
	
	-- The freighter inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 1000
	FreighterInventoryStackSizeSubstance = 8000
	
	-- Base Salvage Capsule inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 2000
	BaseCapsuleInventoryStackSizeSubstance = 10000
	
	-- The maximum allowed substance stack size for any inventory. If a substance stack size is set to a value larger than this, it will be overwritten.
		-- Original: 9999
	MaxAllowedStackSizeSubstance = 10000
	
	-- The default inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 5
	DefaultInventoryStackSizeProduct	= 5
	
	-- The player cargo inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 50
	PlayerCargoInventoryStackSizeProduct = 50
	
	-- The ship inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 25
	ShipInventoryStackSizeProduct	= 100
	
	-- The storage container inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 100
	ChestInventoryStackSizeProduct = 200
	
	-- The freighter inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 50
	FreighterInventoryStackSizeProduct = 200
	
	-- Base Salvage Capsule inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 500
	BaseCapsuleInventoryStackSizeProduct = 500
	
	-- The maximum allowed product stack size for any inventory. If a product stack size is set to a value larger than this, it will be overwritten.
		-- Original: 9999
	MaxAllowedStackSizeProduct = 10000
	
	

-- Script starts here, don't modify below to tweak settings.

SpecialItemStackMultiplier = math.ceil(SpecialItemStackMultiplier/SpecialItemStackMultiplier)

DefaultInventoryStackSizeSubstance = math.ceil(DefaultInventoryStackSizeSubstance/SpecialItemStackMultiplier)

PlayerCargoInventoryStackSizeSubstance = math.ceil(PlayerCargoInventoryStackSizeSubstance/SpecialItemStackMultiplier)

ShipInventoryStackSizeSubstance = math.ceil(ShipInventoryStackSizeSubstance/SpecialItemStackMultiplier)

ChestInventoryStackSizeSubstance = math.ceil(ChestInventoryStackSizeSubstance/SpecialItemStackMultiplier)

FreighterInventoryStackSizeSubstance = math.ceil(FreighterInventoryStackSizeSubstance/SpecialItemStackMultiplier)

BaseCapsuleInventoryStackSizeSubstance = math.ceil(BaseCapsuleInventoryStackSizeSubstance/SpecialItemStackMultiplier)

MaxAllowedStackSizeSubstance = math.ceil(MaxAllowedStackSizeSubstance/SpecialItemStackMultiplier)

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_Survival_Inventory_Rebalance.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSubstanceStorageMultiplier",		1},	-- Original: 1
								{"DefaultProductStorageMultiplier",			1},	-- Original: 5
								
								{"SubstanceMaxAmountLimit",					MaxAllowedStackSizeSubstance},
								{"ProductMaxAmountLimit",					MaxAllowedStackSizeProduct},
								
								{"DefaultSubstanceMaxAmount",				DefaultInventoryStackSizeSubstance},
								{"DefaultProductMaxAmount",					DefaultInventoryStackSizeProduct},
								
								{"CargoSubstanceStorageMultiplier",			math.ceil(PlayerCargoInventoryStackSizeSubstance/DefaultInventoryStackSizeSubstance)},
								{"CargoProductStorageMultiplier",			math.ceil(PlayerCargoInventoryStackSizeProduct/DefaultInventoryStackSizeProduct)},
								
								{"ShipSubstanceStorageMultiplier",			math.ceil(ShipInventoryStackSizeSubstance/DefaultInventoryStackSizeSubstance)},
								{"ShipProductStorageMultiplier",			math.ceil(ShipInventoryStackSizeProduct/DefaultInventoryStackSizeProduct)},
								
								{"FreighterSubstanceStorageMultiplier",		math.ceil(FreighterInventoryStackSizeSubstance/DefaultInventoryStackSizeSubstance)},
								{"FreighterProductStorageMultiplier",		math.ceil(FreighterInventoryStackSizeProduct/DefaultInventoryStackSizeProduct)},
								
								{"ChestSubstanceStorageMultiplier",			math.ceil(ChestInventoryStackSizeSubstance/DefaultInventoryStackSizeSubstance)},
								{"ChestProductStorageMultiplier",			math.ceil(ChestInventoryStackSizeProduct/DefaultInventoryStackSizeProduct)},
								
								{"BaseCapsuleSubstanceStorageMultiplier",	math.ceil(BaseCapsuleInventoryStackSizeSubstance/DefaultInventoryStackSizeSubstance)},
								{"BaseCapsuleProductStorageMultiplier",		math.ceil(BaseCapsuleInventoryStackSizeProduct/DefaultInventoryStackSizeProduct)}
							}	
						},
					}
				},
			}
		},
	}
}
