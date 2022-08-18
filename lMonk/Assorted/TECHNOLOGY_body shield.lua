----------------------------------------------------------------------------
local desc = [[
  balatant cheat to protect your person against bugs and annoying travelers
  * Text is added in the new language file script
  * The blueprint is added by 'Hazard Protection Unit' (REFRESH_HAZ reward)
  * Must be merged with the main Technology table script
]]--------------------------------------------------------------------------

local body_shield = [[
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
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.SHIELDRED.DDS"/>
		</Property>
		<Property name="Colour" value="Colour.xml">
			<Property name="R" value="0.129"/>
			<Property name="G" value="0.466"/>
			<Property name="B" value="0.784"/>
			<Property name="A" value="1"/>
		</Property>
		<Property name="Level" value="1"/>
		<Property name="Chargeable" value="True"/>
		<Property name="ChargeAmount" value="400"/>
		<Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
			<Property name="SubstanceCategory" value="Catalyst"/>
		</Property>
		<Property name="ChargeBy">
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="POWERCELL"/>
			</Property>
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="CATALYST2"/>
			</Property>
			<Property value="NMSString0x10.xml">
				<Property name="Value" value="CATALYST1"/>
			</Property>
		</Property>
		<Property name="ChargeMultiplier" value="1"/>
		<Property name="BuildFullyCharged" value="True"/>
		<Property name="PrimaryItem" value="True"/>
		<Property name="Category" value="GcTechnologyCategory.xml">
			<Property name="TechnologyCategory" value="Suit"/>
		</Property>
		<Property name="Rarity" value="GcTechnologyRarity.xml">
			<Property name="TechnologyRarity" value="Always"/>
		</Property>
		<Property name="Value" value="5"/>
		<Property name="Requirements">
			<Property value="GcTechnologyRequirement.xml">
				<Property name="ID" value="POWERCELL"/>
				<Property name="InventoryType" value="GcInventoryType.xml">
					<Property name="InventoryType" value="Product"/>
				</Property>
				<Property name="Amount" value="1"/>
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
				<Property name="Bonus" value="8"/>
				<Property name="Level" value="1"/>
			</Property>
			<Property value="GcStatsBonus.xml">
				<Property name="Stat" value="GcStatsTypes.xml">
					<Property name="StatsType" value="Suit_Armour_Health"/>
				</Property>
				<Property name="Bonus" value="60"/>
				<Property name="Level" value="20"/>
			</Property>
		</Property>
		<Property name="LinkColour" value="Colour.xml">
			<Property name="R" value="0.788"/>
			<Property name="G" value="0.816"/>
			<Property name="B" value="0.984"/>
			<Property name="A" value="1"/>
		</Property>
		<Property name="BaseValue" value="1"/>
		<Property name="RequiredRank" value="2"/>
		<Property name="DispensingRace" value="GcAlienRace.xml">
			<Property name="AlienRace" value="Traders"/>
		</Property>
		<Property name="FragmentCost" value="980"/>
		<Property name="TechShopRarity" value="GcTechnologyRarity.xml">
			<Property name="TechnologyRarity" value="Impossible"/>
		</Property>
		<Property name="WikiEnabled" value="True"/>
	</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TECHNOLOGY addon body shield.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_BATCHNAME		= '__TABLE technology merged.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Table',
				ADD					= body_shield
			}
		}
	}
}}}}
