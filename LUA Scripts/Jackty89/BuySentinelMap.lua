GameVersion = "3_82"
ModName = "BuySentinelMap"
Author = "Jackty89"

ProductTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"
RewardTablePath = "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
ConsumeableItemTablePath = "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
DefaultRealityPath = "METADATA\\REALITY\\DEFAULTREALITY.MBIN"


HiveMapId = "CHART_HIVE"



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

StarMapShopEntry = CreateMapShopEntry(HiveMapId)



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
					["MBIN_FILE_SOURCE"] 	= DefaultRealityPath,
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
                            ["VALUE_CHANGE_TABLE"] =
							{
								{"MinItemsForSale", "6"},
								{"MaxItemsForSale", "6"}
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