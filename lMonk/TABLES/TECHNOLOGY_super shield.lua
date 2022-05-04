----------------------------------------------------------------------------
local desc = [[
  balatant cheat to protect your person against bugs and annoying travelers
  * Text is added in the new language file script
  * The blueprint is added by 'Hazard Protection Unit' (REFRESH_HAZ reward)
  * Must be merged with the main Technology table script
]]--------------------------------------------------------------------------

local SuperBodyShield = [[
	<Property value="GcTechnology.xml">
		<Property name="ID" value="BODYSHIELD"/>
		<Property name="Group" value=""/>
		<Property name="Name" value="BODYSHIELD_NAME"/>
		<Property name="NameLower" value="BODYSHIELD_NAME_L"/>
		<Property name="Subtitle" value="VariableSizeString.xml">
			<Property name="Value" value="BODYSHIELD_SUBTITLE"/>
		</Property>
		<Property name="Description" value="VariableSizeString.xml">
			<Property name="Value" value="BODYSHIELD_DESCRIPTION"/>
		</Property>
		<Property name="Teach" value="False"/>
		<Property name="HintStart" value=""/>
		<Property name="HintEnd" value=""/>
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECH.WORMTECH.DDS"/>
		</Property>
		<Property name="Colour" value="Colour.xml">
			<Property name="R" value="0.18"/>
			<Property name="G" value="0.08"/>
			<Property name="B" value="0.08"/>
			<Property name="A" value="1"/>
		</Property>
		<Property name="Level" value="1"/>
		<Property name="Chargeable" value="True"/>
		<Property name="ChargeAmount" value="800"/>
		<Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
			<Property name="SubstanceCategory" value="Earth"/>
		</Property>
		<Property name="ChargeBy">
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="LAND3"/>
			</Property>
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="LAND2"/>
			</Property>
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="LAND1"/>
			</Property>
		</Property>
		<Property name="ChargeMultiplier" value="1"/>
		<Property name="BuildFullyCharged" value="True"/>
		<Property name="UsesAmmo" value="False"/>
		<Property name="AmmoId" value=""/>
		<Property name="PrimaryItem" value="True"/>
		<Property name="Upgrade" value="False"/>
		<Property name="Core" value="False"/>
		<Property name="RepairTech" value="False"/>
		<Property name="Procedural" value="False"/>
		<Property name="Category" value="GcTechnologyCategory.xml">
			<Property name="TechnologyCategory" value="Suit"/>
		</Property>
		<Property name="Rarity" value="GcTechnologyRarity.xml">
			<Property name="TechnologyRarity" value="Always"/>
		</Property>
		<Property name="Value" value="5"/>
		<Property name="Requirements">
			<Property value="GcTechnologyRequirement.xml">
				<Property name="ID" value="LAND1"/>
				<Property name="InventoryType" value="GcInventoryType.xml">
					<Property name="InventoryType" value="Substance"/>
				</Property>
				<Property name="Amount" value="5"/>
			</Property>
		</Property>
		<Property name="BaseStat" value="GcStatsTypes.xml">
			<Property name="StatsType" value="Suit_Armour_Shield"/>
		</Property>
		<Property name="StatBonuses">
			<Property value="GcStatsBonus.xml">
				<Property name="Stat" value="GcStatsTypes.xml">
					<Property name="StatsType" value="Suit_Armour_Shield"/>
				</Property>
				<Property name="Bonus" value="1"/>
				<Property name="Level" value="1"/>
			</Property>
			<Property value="GcStatsBonus.xml">
				<Property name="Stat" value="GcStatsTypes.xml">
					<Property name="StatsType" value="Suit_Armour_Shield_Strength"/>
				</Property>
				<Property name="Bonus" value="30"/>
				<Property name="Level" value="1"/>
			</Property>
		</Property>
		<Property name="RequiredTech" value=""/>
		<Property name="RequiredLevel" value="0"/>
		<Property name="FocusLocator" value=""/>
		<Property name="UpgradeColour" value="Colour.xml">
			<Property name="R" value="1"/>
			<Property name="G" value="1"/>
			<Property name="B" value="1"/>
			<Property name="A" value="1"/>
		</Property>
		<Property name="LinkColour" value="Colour.xml">
			<Property name="R" value="1"/>
			<Property name="G" value="1"/>
			<Property name="B" value="0.66"/>
			<Property name="A" value="1"/>
		</Property>
		<Property name="RewardGroup" value=""/>
		<Property name="BaseValue" value="1"/>
		<Property name="Cost" value="GcItemPriceModifiers.xml">
			<Property name="SpaceStationMarkup" value="0"/>
			<Property name="LowPriceMod" value="0"/>
			<Property name="HighPriceMod" value="0"/>
			<Property name="BuyBaseMarkup" value="0"/>
			<Property name="BuyMarkupMod" value="0"/>
		</Property>
		<Property name="RequiredRank" value="2"/>
		<Property name="DispensingRace" value="GcAlienRace.xml">
			<Property name="AlienRace" value="Traders"/>
		</Property>
		<Property name="FragmentCost" value="1"/>
		<Property name="TechShopRarity" value="GcTechnologyRarity.xml">
			<Property name="TechnologyRarity" value="Impossible"/>
		</Property>
		<Property name="WikiEnabled" value="True"/>
		<Property name="DamagedDescription" value="VariableSizeString.xml">
			<Property name="Value" value=""/>
		</Property>
		<Property name="ParentTechId" value=""/>
		<Property name="IsTemplate" value="False"/>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TECHNOLOGY addon super shield.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Table',
				ADD					= SuperBodyShield
			}
		}
	}
}}}}
