ModName = "PTSd Exocraft scanner Changes"
Description = "Removes Drop Pod from the options for Exocraft Scanner targets. Moves Monolith Scanning from Signal Booster Tau to Advanced Signal Booster to replace it. Splits Nautilon & Minotaur Scanners into 2 separate techs"
GameVersion = "6_21"

AddMechScan0 = 
[[<Property name="Table" value="GcTechnology">
			<Property name="ID" value="MECH_SCAN0" />
			<Property name="Group" value="" />
			<Property name="Name" value="MINOTAUR ULTRA RADAR ARRAY" />
			<Property name="NameLower" value="Minotaur Ultra Radar Array" />
			<Property name="Subtitle" value="UI_MECH_SCAN_SUB" />
			<Property name="Description" value="Allows for additional building types to be acquired by the Minotaur Basic Radar Array." />
			<Property name="Teach" value="false" />
			<Property name="HintStart" value="" />
			<Property name="HintEnd" value="" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.SCAN.DDS" />
			</Property>
			<Property name="Colour">
				<Property name="R" value="0.0352941193" />
				<Property name="G" value="0.360784322" />
				<Property name="B" value="0.466666669" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Level" value="1" />
			<Property name="Chargeable" value="false" />
			<Property name="ChargeAmount" value="100" />
			<Property name="ChargeType" value="GcRealitySubstanceCategory">
				<Property name="SubstanceCategory" value="Earth" />
			</Property>
			<Property name="ChargeBy" />
			<Property name="ChargeMultiplier" value="1.000000" />
			<Property name="BuildFullyCharged" value="false" />
			<Property name="UsesAmmo" value="false" />
			<Property name="AmmoId" value="" />
			<Property name="PrimaryItem" value="false" />
			<Property name="Upgrade" value="true" />
			<Property name="Core" value="false" />
			<Property name="RepairTech" value="false" />
			<Property name="Procedural" value="false" />
			<Property name="Category" value="GcTechnologyCategory">
				<Property name="TechnologyCategory" value="Mech" />
			</Property>
			<Property name="Rarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="Value" value="10.000000" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="PURPLE2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="160" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="ASTEROID2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="50" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="TECH_COMP" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="1" />
				</Property>
			</Property>
			<Property name="BaseStat" value="GcStatsTypes">
				<Property name="StatsType" value="Vehicle_Scan" />
			</Property>
			<Property name="StatBonuses">
				<Property name="StatBonuses" value="GcStatsBonus">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Vehicle_Scan" />
					</Property>
					<Property name="Bonus" value="1.000000" />
					<Property name="Level" value="3" />
				</Property>
			</Property>
			<Property name="RequiredTech" value="" />
			<Property name="RequiredLevel" value="0" />
			<Property name="FocusLocator" value="" />
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="LinkColour">
				<Property name="R" value="0.0980392173" />
				<Property name="G" value="0.34117648" />
				<Property name="B" value="0.443137258" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="RewardGroup" value="" />
			<Property name="BaseValue" value="1" />
			<Property name="Cost" value="GcItemPriceModifiers">
				<Property name="SpaceStationMarkup" value="0.000000" />
				<Property name="LowPriceMod" value="0.000000" />
				<Property name="HighPriceMod" value="0.000000" />
				<Property name="BuyBaseMarkup" value="0.000000" />
				<Property name="BuyMarkupMod" value="0.000000" />
			</Property>
			<Property name="RequiredRank" value="1" />
			<Property name="DispensingRace" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="FragmentCost" value="240" />
			<Property name="TechShopRarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="WikiEnabled" value="true" />
			<Property name="NeverPinnable" value="false" />
			<Property name="DamagedDescription" value="" />
			<Property name="ParentTechId" value="" />
			<Property name="IsTemplate" value="false" />
			<Property name="ExclusivePrimaryStat" value="false" />
		</Property>]]

AddSubBinocs0 = 
[[<Property name="Table" value="GcTechnology">
			<Property name="ID" value="SUB_BINOCS0" />
			<Property name="Group" value="" />
			<Property name="Name" value="UI_SUB_BINOCS_NAME" />
			<Property name="NameLower" value="UI_SUB_BINOCS_NAME_L" />
			<Property name="Subtitle" value="UI_SUB_BINOCS_SUB" />
			<Property name="Description" value="Allows for additional building types to be acquired by the Basic Sonar." />
			<Property name="Teach" value="false" />
			<Property name="HintStart" value="" />
			<Property name="HintEnd" value="" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.SUBSCAN.DDS" />
			</Property>
			<Property name="Colour">
				<Property name="R" value="0.0352941193" />
				<Property name="G" value="0.360784322" />
				<Property name="B" value="0.466666669" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Level" value="1" />
			<Property name="Chargeable" value="false" />
			<Property name="ChargeAmount" value="100" />
			<Property name="ChargeType" value="GcRealitySubstanceCategory">
				<Property name="SubstanceCategory" value="Earth" />
			</Property>
			<Property name="ChargeBy" />
			<Property name="ChargeMultiplier" value="1.000000" />
			<Property name="BuildFullyCharged" value="true" />
			<Property name="UsesAmmo" value="false" />
			<Property name="AmmoId" value="" />
			<Property name="PrimaryItem" value="false" />
			<Property name="Upgrade" value="true" />
			<Property name="Core" value="false" />
			<Property name="RepairTech" value="false" />
			<Property name="Procedural" value="false" />
			<Property name="Category" value="GcTechnologyCategory">
				<Property name="TechnologyCategory" value="Submarine" />
			</Property>
			<Property name="Rarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="Value" value="10.000000" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="MIRROR" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="1" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="VENTGEM" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="3" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement">
					<Property name="ID" value="PURPLE2" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="160" />
				</Property>
			</Property>
			<Property name="BaseStat" value="GcStatsTypes">
				<Property name="StatsType" value="Vehicle_Scan" />
			</Property>
			<Property name="StatBonuses">
				<Property name="StatBonuses" value="GcStatsBonus">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Vehicle_Scan" />
					</Property>
					<Property name="Bonus" value="1.000000" />
					<Property name="Level" value="3" />
				</Property>
			</Property>
			<Property name="RequiredTech" value="" />
			<Property name="RequiredLevel" value="0" />
			<Property name="FocusLocator" value="" />
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="LinkColour">
				<Property name="R" value="0.200000" />
				<Property name="G" value="0.600000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="RewardGroup" value="" />
			<Property name="BaseValue" value="1" />
			<Property name="Cost" value="GcItemPriceModifiers">
				<Property name="SpaceStationMarkup" value="0.000000" />
				<Property name="LowPriceMod" value="0.000000" />
				<Property name="HighPriceMod" value="0.000000" />
				<Property name="BuyBaseMarkup" value="0.000000" />
				<Property name="BuyMarkupMod" value="0.000000" />
			</Property>
			<Property name="RequiredRank" value="1" />
			<Property name="DispensingRace" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="FragmentCost" value="240" />
			<Property name="TechShopRarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="WikiEnabled" value="true" />
			<Property name="NeverPinnable" value="false" />
			<Property name="DamagedDescription" value="" />
			<Property name="ParentTechId" value="" />
			<Property name="IsTemplate" value="false" />
			<Property name="ExclusivePrimaryStat" value="false" />
		</Property>]]

AddAdvancedThethyBeam =
[[<Property name="Table" value="GcTechnology">
			<Property name="ID" value="SUB_LASER_X" />
			<Property name="Group" value="" />
			<Property name="Name" value="UI_SUB_LASER_X_NAME" />
			<Property name="NameLower" value="UI_SUB_LASER_X_NAME_L" />
			<Property name="Subtitle" value="UI_SUB_LASER_X_SUB" />
			<Property name="Description" value="UI_SUB_LASER_X_DESC" />
			<Property name="Teach" value="false" />
			<Property name="HintStart" value="" />
			<Property name="HintEnd" value="" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.VEHICLE_LASERU1.DDS" />
			</Property>
			<Property name="Colour">
				<Property name="R" value="0.129411772" />
				<Property name="G" value="0.466666669" />
				<Property name="B" value="0.784313738" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Level" value="1" />
			<Property name="Chargeable" value="false" />
			<Property name="ChargeAmount" value="100" />
			<Property name="ChargeType" value="GcRealitySubstanceCategory">
				<Property name="SubstanceCategory" value="Earth" />
			</Property>
			<Property name="ChargeBy" />
			<Property name="ChargeMultiplier" value="1.000000" />
			<Property name="BuildFullyCharged" value="false" />
			<Property name="UsesAmmo" value="false" />
			<Property name="AmmoId" value="" />
			<Property name="PrimaryItem" value="false" />
			<Property name="Upgrade" value="true" />
			<Property name="Core" value="false" />
			<Property name="RepairTech" value="false" />
			<Property name="Procedural" value="false" />
			<Property name="BrokenSlotTech" value="false" />
			<Property name="Category" value="GcTechnologyCategory">
				<Property name="TechnologyCategory" value="Submarine" />
			</Property>
			<Property name="Rarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="Value" value="10.000000" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcTechnologyRequirement" _id="EYEBALL">
					<Property name="ID" value="EYEBALL" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="2" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="WATERPLANT">
					<Property name="ID" value="WATERPLANT" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Substance" />
					</Property>
					<Property name="Amount" value="360" />
				</Property>
				<Property name="Requirements" value="GcTechnologyRequirement" _id="ATLAS_SEED_4">
					<Property name="ID" value="ATLAS_SEED_4" />
					<Property name="Type" value="GcInventoryType">
						<Property name="InventoryType" value="Product" />
					</Property>
					<Property name="Amount" value="1" />
				</Property>
			</Property>
			<Property name="BaseStat" value="GcStatsTypes">
				<Property name="StatsType" value="Vehicle_Laser" />
			</Property>
			<Property name="StatBonuses">
				<Property name="StatBonuses" value="GcStatsBonus" _index="0">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Vehicle_LaserDamage" />
					</Property>
					<Property name="Bonus" value="150.000000" />
					<Property name="Level" value="3" />
				</Property>
				<Property name="StatBonuses" value="GcStatsBonus" _index="1">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Vehicle_LaserStrongLaser" />
					</Property>
					<Property name="Bonus" value="1.000000" />
					<Property name="Level" value="1" />
				</Property>
			</Property>
			<Property name="RequiredTech" value="" />
			<Property name="RequiredLevel" value="0" />
			<Property name="FocusLocator" value="SCANNERLOC" />
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="LinkColour">
				<Property name="R" value="0.200000" />
				<Property name="G" value="0.600000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="RewardGroup" value="" />
			<Property name="BaseValue" value="1" />
			<Property name="Cost" value="GcItemPriceModifiers">
				<Property name="SpaceStationMarkup" value="0.000000" />
				<Property name="LowPriceMod" value="0.000000" />
				<Property name="HighPriceMod" value="0.000000" />
				<Property name="BuyBaseMarkup" value="0.000000" />
				<Property name="BuyMarkupMod" value="0.000000" />
			</Property>
			<Property name="RequiredRank" value="1" />
			<Property name="DispensingRace" value="GcAlienRace">
				<Property name="AlienRace" value="None" />
			</Property>
			<Property name="FragmentCost" value="135" />
			<Property name="TechShopRarity" value="GcTechnologyRarity">
				<Property name="TechnologyRarity" value="Impossible" />
			</Property>
			<Property name="WikiEnabled" value="true" />
			<Property name="NeverPinnable" value="false" />
			<Property name="DamagedDescription" value="" />
			<Property name="ParentTechId" value="" />
			<Property name="IsTemplate" value="false" />
			<Property name="ExclusivePrimaryStat" value="false" />
		</Property>]]

AddMechScan0Tree =
[[<Property name="Children" value="GcUnlockableItemTreeNode">
                        <Property name="Unlockable" value="MECH_SCAN0" />
                        <Property name="Children" />
                      </Property>]]

AddSubBinocs0Tree =
[[<Property name="Children" value="GcUnlockableItemTreeNode">
                    <Property name="Unlockable" value="SUB_BINOCS" />
                    <Property name="Children">
                      <Property name="Children" value="GcUnlockableItemTreeNode">
                        <Property name="Unlockable" value="SUB_BINOCS0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>]]

function AddSingleHOESChild (ItemID)
	return
[[<Property name="Children" value="GcUnlockableItemTreeNode">
														<Property name="Unlockable" value="]]..ItemID..[[" />
														<Property name="Children" />
													</Property>]]
end

function AddCatalogueEntry (ItemID)
	return
[[<Property name="Items" value="]]..ItemID..[["/>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCANNING\VEHICLESCANTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ScanList","DROPPOD"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ScanList","MONOLITH"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "VEHICLE_SCAN1"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","SUB_RADAR_SCAN_CRASH"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "SUB_BINOCS0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","SUB_RADAR_SCAN_FREIGHTER"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "SUB_BINOCS0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","MECH_SCAN_FACT"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "MECH_SCAN0"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Name","MECH_SCAN_CRASH"},
				--["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "MECH_SCAN0"}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddMechScan0
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddSubBinocs0
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddAdvancedThethyBeam
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER", "StatsType", "Vehicle_LaserStrongLaser"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","MECH_SCAN"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Name", "MINOTAUR BASIC RADAR ARRAY"},
					{"NameLower", "Minotaur Basic Radar Array"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","SUB_BINOCS"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Name", "BASIC SONAR"},
					{"NameLower", "Basic Sonar"},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOMECH_TECH_TREE",		"Unlockable", "MECH_PILOT"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddMechScan0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "MECH_PILOT"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddMechScan0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOSUB_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOSUB_TECH_TREE",		"Unlockable", "SUB_BINOCS"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Unlockable", "SUB_GUN"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOSUB_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddSubBinocs0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOSUB_TECH_TREE",		"Unlockable", "SUB_LASER"},
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["CREATE_HOS"] = "TRUE",
				["ADD"] = AddSingleHOESChild("SUB_LASER_X")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ExocraftTech", "GcUnlockableItemTrees",		"Title", "UI_EXOSUB_TECH_TREE",		"Unlockable", "SUB_RECHARGE"},
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["CREATE_HOS"] = "TRUE",
				["ADD"] = AddSingleHOESChild("SUB_MINER")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_BINOCS"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Unlockable", "SUB_GUN"}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_GUN"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = AddSubBinocs0Tree
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_LASER"},
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["CREATE_HOS"] = "TRUE",
				["ADD"] = AddSingleHOESChild("SUB_LASER_X")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"S9ExoTech", "GcUnlockableItemTrees",		"Title", "UI_EXOCRAFT_TECH_TREE",		"Unlockable", "SUB_RECHARGE"},
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["CREATE_HOS"] = "TRUE",
				["ADD"] = AddSingleHOESChild("SUB_MINER")
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\CATALOGUECRAFTING.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_VEH",	"Items", "SUB_LASER"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("SUB_LASER_X")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_VEH",	"Items", "MECH_SCAN"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("MECH_SCAN0")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_VEH",	"Items", "SUB_BINOCS"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("SUB_BINOCS0")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_TOOL",	"Items", "LASER"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("NEWTOOL_DMG")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_TOOL",	"Items", "LASER"},
				["REMOVE"] = "LINE"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_TOOL",	"Items", "NEWTOOL_DMG"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("LASER")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_SUIT",	"Items", "ENERGY"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("NEWSUIT_DMG")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_SUIT",	"Items", "ENERGY"},
				["REMOVE"] = "LINE"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_SUIT",	"Items", "NEWSUIT_DMG"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("ENERGY")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_TECH_WEIRD",	"Items", "STARSUIT"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("DISCORDKEY")
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\CATALOGUEMATERIALS.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"CategoryID", "UI_PORTAL_CAT_MAT_RARE",	"Items", "ACCESS3"},
				["ADD_OPTION"] = "ADDafterLINE",
				["ADD"] = AddCatalogueEntry ("PURPTOKEN")
			},
		}
	}
}}}}