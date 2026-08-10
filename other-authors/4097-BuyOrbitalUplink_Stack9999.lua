local NEW_VALUE = 9999

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_BuyOrbitalUplink_Stack9999",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.x",
	MOD_DESCRIPTION = "Make Orbital Uplink always available at the shop and increase stack size.",

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