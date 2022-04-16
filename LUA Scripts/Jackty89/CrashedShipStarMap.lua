GameVersion = "3_70"
ModName = "CrashedShipStarMap"
Author = "Jackty89"

StarMapCrashedShipId = "CHART_CRASHSHIP"

function CreateStarMap(NewId)
	return
	[[
		<Property value="GcProductData.xml">
			<Property name="Id" value="]]..NewId..[[" />
			<Property name="Name" value="UI_STARCHART_NAME" />
			<Property name="NameLower" value="UI_STARCHART_NAME_L" />
			<Property name="Subtitle" value="VariableSizeString.xml">
				<Property name="Value" value="UI_STARCHART_SUB_DISTRESS" />
			</Property>
			<Property name="Description" value="VariableSizeString.xml">
				<Property name="Value" value="UI_STARCHART_DESC_DISTRESS" />
			</Property>
			<Property name="Hint" value="" />
			<Property name="GroupID" value="" />
			<Property name="DebrisFile" value="TkModelResource.xml">
				<Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
			</Property>
			<Property name="BaseValue" value="3200" />
			<Property name="Level" value="0" />
			<Property name="Icon" value="TkTextureResource.xml">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.CRASHEDSHIP.dds" />
			</Property>
			<Property name="HeroIcon" value="TkTextureResource.xml">
				<Property name="Filename" value="" />
			</Property>
			<Property name="Colour" value="Colour.xml">
				<Property name="R" value="0.101960786" />
				<Property name="G" value="0.152941182" />
				<Property name="B" value="0.2" />
				<Property name="A" value="1" />
			</Property>
			<Property name="Category" value="GcRealitySubstanceCategory.xml">
				<Property name="SubstanceCategory" value="Special" />
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
			<Property name="StackMultiplier" value="4" />
			<Property name="DefaultCraftAmount" value="1" />
			<Property name="CraftAmountStepSize" value="1" />
			<Property name="CraftAmountMultiplier" value="1" />
			<Property name="Requirements" />
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
			<Property name="NormalisedValueOnWorld" value="0.008278528" />
			<Property name="NormalisedValueOffWorld" value="0.008278528" />
			<Property name="TradeCategory" value="GcTradeCategory.xml">
				<Property name="TradeCategory" value="None" />
			</Property>
			<Property name="WikiCategory" value="NotEnabled" />
			<Property name="IsCraftable" value="False" />
			<Property name="DeploysInto" value="" />
			<Property name="EconomyInfluenceMultiplier" value="0" />
			<Property name="PinObjective" value="UI_FIND_OBJ" />
			<Property name="PinObjectiveTip" value="" />
			<Property name="CookingIngredient" value="False" />
			<Property name="CookingValue" value="0" />
			<Property name="GoodForSelling" value="False" />
			<Property name="GiveRewardOnSpecialPurchase" value="" />
			<Property name="EggModifierIngredient" value="False" />
		</Property>
	]]
end

function CreateStarMapReward(NewId)
	return
	[[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..NewId..[[" />
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="SelectAlwaysSilent" />
				<Property name="OverrideZeroSeed" value="False" />
				<Property name="List">
					<Property value="GcRewardTableItem.xml">
						<Property name="PercentageChance" value="100" />
						<Property name="Reward" value="GcRewardScanEvent.xml">
							<Property name="Event" value="DISTRESS" />
							<Property name="ScanEventTable" value="Planet" />
							<Property name="DoAerialScan" value="True" />
							<Property name="UseMissionSeedForEvent" value="False" />
						</Property>
						<Property name="LabelID" value="Distress" />
					</Property>
				</Property>
			</Property>
		</Property>
	]]
end

function CreateStarMapConsumable(NewId, NewRewardId)
	return
	[[
		<Property value="GcConsumableItem.xml">
			<Property name="ID" value="]]..NewId..[[" />
			<Property name="RewardID" value="]]..NewRewardId..[[" />
			<Property name="TutorialRewardID" value="" />
			<Property name="ButtonLocID" value="UI_CHART_LABEL" />
			<Property name="ButtonSubLocID" value="UI_CHART_SUB" />
			<Property name="CloseInventoryWhenUsed" value="True" />
			<Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
				<Property name="AkEvent" value="INVALID_EVENT" />
			</Property>
			<Property name="RewardFailedLocID" value="" />
			<Property name="DestroyItemWhenConsumed" value="True" />
		</Property>
	]]
end

function CreateMapShopEntry(NewId)
	return
	[[
		<Property value="NMSString0x10.xml">
			<Property name="Value" value="]]..NewId..[[" />
		</Property>
	]]
end

StarMapProduct = CreateStarMap(StarMapCrashedShipId)
StarMapReward = CreateStarMapReward("R_"..StarMapCrashedShipId)
StarMapConsumable = CreateStarMapConsumable(StarMapCrashedShipId, "R_"..StarMapCrashedShipId)
StarMapShopEntry = CreateMapShopEntry(StarMapCrashedShipId)



NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= ModName,
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
						{
							["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD"] = StarMapProduct
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CHART_SETTLE"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"RecipeCost", "1"}
							}
						}
                    }
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
                            ["ADD"] = StarMapReward
						}
                    }
				},
				{ 
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD"] = StarMapConsumable
						}
                    }
				},
				{ 
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
                            ["VALUE_CHANGE_TABLE"] =
							{
								{"MinItemsForSale", "5"},
								{"MaxItemsForSale", "5"}
							}
						},
						{
							-- , "AlwaysPresentProducts"
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
							["LINE_OFFSET"] = "+1",
                            ["ADD"] = StarMapShopEntry
						}
                    }
				}				
            }
        }
    }
}