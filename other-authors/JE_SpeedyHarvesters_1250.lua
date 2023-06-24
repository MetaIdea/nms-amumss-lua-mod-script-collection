-- speed is in seconds, and has to be a negative value. default = -79200 which is 22 hours, -3600 is 1 hour.
HARVESTER_SPEED = -1800 -- default = -3600
HARVESTER_STORAGE = 1250 -- default = 250
F_HARVESTER_SPEED = 1800 -- default = 3600, fuel burn time
FUEL_AMOUNT = 400 -- Default is 100

Author = "Jaggid Edje"
ModName = "SpeedyHarvesters_1250"
ModNameSub = "JE"
BaseDescription = "Increases speed and storage of AMUs and Oxygen and Gas Harvesters"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GASHARVESTER\ENTITIES\GASHARVESTER.ENTITY.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OXYGENHARVESTER180\ENTITIES\OXYGENHARVESTER.ENTITY.MBIN"
FileSource3 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\HARVESTER\ENTITIES\RESOURCEHARVESTER.ENTITY.MBIN"
FileSource4 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"
FileSource5 = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"




NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource5,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"id", "MAINT_TECH1",},
							["LINE_OFFSET"] = "-2",
							["ADD"] = 
[[
    <Property value="GcTechnology.xml">
      <Property name="ID" value="MAINT_FUEL6" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_MAINTAIN_FUEL1_NAME" />
      <Property name="NameLower" value="UI_MAINTAIN_FUEL1_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_FUEL_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_FUEL1_DESC" />
      </Property>
      <Property name="Teach" value="False" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/MAINTTECH.FUEL1.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="True" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Fuel" />
      </Property>
      <Property name="ChargeBy">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FUEL1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FUEL2" />
        </Property>
      </Property>
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="False" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="False" />
      <Property name="Core" value="True" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Maintenance" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements" />
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="StatBonuses" />
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="2" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="False" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>
	<Property value="GcTechnology.xml">
      <Property name="ID" value="MAINT_FUEL7" />
      <Property name="Group" value="" />
      <Property name="Name" value="UI_MAINTAIN_FUEL4_NAME" />
      <Property name="NameLower" value="UI_MAINTAIN_FUEL4_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_FUEL_SUB" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="UI_MAINTAIN_FUEL4_DESC" />
      </Property>
      <Property name="Teach" value="False" />
      <Property name="HintStart" value="" />
      <Property name="HintEnd" value="" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/MAINTTECH.FUEL4.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.03529412" />
        <Property name="G" value="0.36078432" />
        <Property name="B" value="0.46666667" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Level" value="1" />
      <Property name="Chargeable" value="True" />
      <Property name="ChargeAmount" value="100" />
      <Property name="ChargeType" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Fuel" />
      </Property>
      <Property name="ChargeBy">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FUEL1" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FUEL2" />
        </Property>
      </Property>
      <Property name="ChargeMultiplier" value="1" />
      <Property name="BuildFullyCharged" value="False" />
      <Property name="UsesAmmo" value="False" />
      <Property name="AmmoId" value="" />
      <Property name="PrimaryItem" value="False" />
      <Property name="Upgrade" value="False" />
      <Property name="Core" value="True" />
      <Property name="RepairTech" value="False" />
      <Property name="Procedural" value="False" />
      <Property name="Category" value="GcTechnologyCategory.xml">
        <Property name="TechnologyCategory" value="Maintenance" />
      </Property>
      <Property name="Rarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="Value" value="10" />
      <Property name="Requirements" />
      <Property name="BaseStat" value="GcStatsTypes.xml">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="StatBonuses" />
      <Property name="RequiredTech" value="" />
      <Property name="RequiredLevel" value="0" />
      <Property name="FocusLocator" value="" />
      <Property name="UpgradeColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="LinkColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="RewardGroup" value="" />
      <Property name="BaseValue" value="1" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RequiredRank" value="1" />
      <Property name="DispensingRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="FragmentCost" value="2" />
      <Property name="TechShopRarity" value="GcTechnologyRarity.xml">
        <Property name="TechnologyRarity" value="Impossible" />
      </Property>
      <Property name="WikiEnabled" value="False" />
      <Property name="DamagedDescription" value="VariableSizeString.xml">
        <Property name="Value" value="" />
      </Property>
      <Property name="ParentTechId" value="" />
      <Property name="IsTemplate" value="False" />
    </Property>

]],	
						},	
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount", FUEL_AMOUNT},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL7" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount", FUEL_AMOUNT},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",           "MAINT_FUEL6"},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "GAS1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL4" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",           "MAINT_FUEL7"},
							}
						},{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "OXYGEN" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL7" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_FUEL1" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id",           "MAINT_FUEL6"},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "YELLOW2" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",           HARVESTER_STORAGE},
								{"AmountEmptyTimePeriod", HARVESTER_SPEED},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FUEL6" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountEmptyTimePeriod", F_HARVESTER_SPEED},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource4,
					["EXML_CHANGE_TABLE"] = 
					{
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDHARVESTER" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "BUILDGASHARVEST" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id", "O2_HARVESTER" ,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CanPickUp",           "True"}
								
							}
						},
					},
				},
			}
		}
	}
}