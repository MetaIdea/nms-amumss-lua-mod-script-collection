--[[

	Name:
		Argual's Inventory Rebalance

	Description:
		The mod aims to give more meaning to inventory type roles.
		It nerfs the starting slots a little, but buffs unlockable slots heavily,
			mostly eliminating inventory management in the late game.
		
		Increases special item stack sizes (Metal Casing, Larval Core, charts, etc) tenfold.
		
		Warning: 	Stack sizes will be limited to the modified ones in existing saves!
					Split stacks before installing the mod to avoid item loss!
			
		Inventory changes:
			Substance stack size changes per inventory type:
				Default: 				changed from 9999 to 5000.
				Player cargo: 			changed from 9999 to 10000.
				Ship: 					changed from 9999 to 20000.
				Freighter: 				changed from 9999 to 40000.
				Storage Container: 		changed from 9999 to 40000.
				Base Salvage Capsule:	changed from 9999 to 50000.

			Product changes:
				Default: 				changed from 5 to 50.
				Player cargo:			changed from 50 to 100.
				Ship: 					changed from 25 to 200.
				Freighter:				changed from 50 to 400.
				Storage Container:		changed from 50 to 400.
				Base Salvage Capsule: 	changed from 500 to 500.

	Modified files:
		METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN

--]]

-- Settings:

	-- Multiplier for all special item stack sizes (like navigation data, charts, etc).
		-- Original: 1
	SpecialItemStackMultiplier = 10
	
	-- The default inventory stack size for substances.
		-- Must be a multiple of 'SpecialItemStackMultiplier'.
		-- Original: 9999
	DefaultInventoryStackSizeSubstance	= 5000
	
	-- The player cargo inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 9999
	PlayerCargoInventoryStackSizeSubstance = 10000
	
	-- The ship inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 9999
	ShipInventoryStackSizeSubstance	= 20000
	
	-- The storage container inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 9999
	ChestInventoryStackSizeSubstance = 40000
	
	-- The freighter inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 9999
	FreighterInventoryStackSizeSubstance = 40000
	
	-- Base Salvage Capsule inventory stack size for substances.
		-- Must be a multiple of 'DefaultInventoryStackSizeSubstance'!
		-- Original: 9999
	BaseCapsuleInventoryStackSizeSubstance = 50000
	
	-- The maximum allowed substance stack size for any inventory. If a substance stack size is set to a value larger than this, it will be overwritten.
		-- Original: 9999
	MaxAllowedStackSizeSubstance = 50000
	
	-- The default inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 5
	DefaultInventoryStackSizeProduct	= 50
	
	-- The player cargo inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 50
	PlayerCargoInventoryStackSizeProduct = 100
	
	-- The ship inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 25
	ShipInventoryStackSizeProduct	= 200
	
	-- The storage container inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 100
	ChestInventoryStackSizeProduct = 400
	
	-- The freighter inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 50
	FreighterInventoryStackSizeProduct = 400
	
	-- Base Salvage Capsule inventory stack size for products.
		-- Must be a multiple of 'DefaultInventoryStackSizeProduct'!
		-- Original: 500
	BaseCapsuleInventoryStackSizeProduct = 500
	
	-- The maximum allowed product stack size for any inventory. If a product stack size is set to a value larger than this, it will be overwritten.
		-- Original: 9999
	MaxAllowedStackSizeProduct = 50000


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
  ["MOD_FILENAME"] 			= "Arg_Normal_Inventory_Rebalance.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",},
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
