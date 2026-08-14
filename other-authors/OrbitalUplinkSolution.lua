--[[
Mod id				4097
Mod category		Utilities
Mod name			Orbital Uplink Solution
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/4097
]]

local NEW_VALUE = 9999

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_OrbitalUplinkSolution",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "The orbital uplink can be purchased in the shop, stackable(9999), and will not be consumed after use.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{--DEFAULTREALITY
					MBIN_FS = [[METADATA\REALITY\DEFAULTREALITY.MBIN]],
					MXML_CT = {
						{
							PKW = {
								{"TradeSettings","SpaceStation","AlwaysPresentProducts"},
								{"TradeSettings","Shop","AlwaysPresentProducts"},
								{"TradeSettings","TechShop","AlwaysPresentProducts"},
							},
							ADD_OPTION = "ADDafterLINE",
							ADD = [[
<Property name="AlwaysPresentProducts" value="S19_TP" />]],
						},
						{
							PKW = {
								{"TradeSettings","SpaceStation","MinAmountOfProductAvailable"},
								{"TradeSettings","SpaceStation","MaxAmountOfProductAvailable"},
								{"TradeSettings","Shop","MinAmountOfProductAvailable"},
								{"TradeSettings","Shop","MaxAmountOfProductAvailable"},
								{"TradeSettings","TechShop","MinAmountOfProductAvailable"},
								{"TradeSettings","TechShop","MaxAmountOfProductAvailable"},
							},
							VCT = {
								{ "Poor",    NEW_VALUE },
								{ "Average", NEW_VALUE },
								{ "Wealthy", NEW_VALUE },
								{ "Pirate",  NEW_VALUE },
							},
						},
					},
				},
				{--CONSUMABLEITEMTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "S19_TP" } },
							VCT = {
								{ "DestroyItemWhenConsumed", "false" },--true
							},
						},
					},
				},
				{--NMS_REALITY_GCPRODUCTTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "ID", "S19_TP" } },
							VCT = {
								{ "BaseValue", 1 },--1000
								{ "StackMultiplier", NEW_VALUE },--0
							},
						},
					},
				},
			},
		},
	},
}