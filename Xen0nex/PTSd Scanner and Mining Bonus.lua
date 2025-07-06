ModName = "PTSd Scanner and Mining Bonus"
GameVersion = "5_55"
Description = "Makes a Multitool's Mining stat also increase the yield of mined resources, and it's Scan stat also increase the value of scanned flora/fauna"

--This makes Multi-Tool's Scanning stat bonus also apply to the value of scanned fauna & flora.
ScannerUnitsBonus =
[[<Property name="StatBonus" value="GcInventoryBaseStatBonus">
				  <Property name="StatType" value="GcStatsTypes">
					<Property name="StatsType" value="Weapon_Scan_Discovery_Creature" />
				  </Property>
				  <Property name="LessIsBetter" value="false" />
				</Property>
				<Property value="GcInventoryBaseStatBonus">
				  <Property name="StatType" value="GcStatsTypes">
					<Property name="StatsType" value="Weapon_Scan_Discovery_Flora" />
				  </Property>
				  <Property name="LessIsBetter" value="false" />
				</Property>
				<Property value="GcInventoryBaseStatBonus">
				  <Property name="StatType" value="GcStatsTypes">
					<Property name="StatsType" value="Weapon_Scan_Discovery_Mineral" />
				  </Property>
				  <Property name="LessIsBetter" value="false" />
				</Property>]]
				--[[<Property value="GcInventoryBaseStatBonus">
				  <Property name="StatType" value="GcStatsTypes">
					<Property name="StatsType" value="Weapon_Scan_Recharge_Time" />
				  </Property>
				  <Property name="LessIsBetter" value="true" />
				</Property>]]
--WIP:  This can also use the SCAN stat as a bonus to the recharge speeed of the AOE "Scan" pulse function, but currently using Multi-tools with high Scan bonus that results in total bonuses over 100% seems to make the recharge time get negative or something and wrap around to just the default 1min 30s recharge speed.

--This makes a Multi-Tool's Mining stat bonus also apply to how many resources are mined. Note, this does not seem to apply to the "trickle" of resources you get while in the process of mining something before it gets fully destroyed. That seems to be a set value of 1 resource every half second or so.
MiningAmountBonus =
[[<Property name="StatBonus" value="GcInventoryBaseStatBonus">
					<Property name="StatType" value="GcStatsTypes">
						<Property name="StatsType" value="Weapon_Laser_MiningBonus" />
					</Property>
					<Property name="LessIsBetter" value="false" />
				</Property>]]

--This makes a Multi-Tool's Damage stat bonus also SLOW DOWN it's mining speed more the higher the Damage stat bonus is, to offset the higher mining laser damage caused by the Damage stat bonus
	--Weapon_Laser_Mining_Speed only appears to apply to mining objects/resources, not when dealing damage to Sentinels, etc.
MiningSpeedMalus =
[[<Property name="StatBonus" value="GcInventoryBaseStatBonus">
					<Property name="StatType" value="GcStatsTypes">
						<Property name="StatsType" value="Weapon_Laser_Mining_Speed" />
					</Property>
					<Property name="LessIsBetter" value="false" />
				</Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
	["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
	["MXML_CHANGE_TABLE"] 	= 
	{
		{
			["SPECIAL_KEY_WORDS"] = {"LocID", "STAT_WEAP_MIN",	"StatBonus", "GcInventoryBaseStatBonus"},
			["ADD"] = MiningAmountBonus,
			["REPLACE_TYPE"] = "ADDAFTERSECTION",
		},
		{
			["SPECIAL_KEY_WORDS"] = {"LocID", "STAT_WEAP_SCAN",	"StatBonus", "GcInventoryBaseStatBonus"},
			["ADD"] = ScannerUnitsBonus,
			["REPLACE_TYPE"] = "ADDAFTERSECTION",
		},
		{
			["SPECIAL_KEY_WORDS"] = {"LocID", "STAT_WEAP_DMG",	"StatBonus", "GcInventoryBaseStatBonus"},
			["ADD"] = MiningSpeedMalus,
			["REPLACE_TYPE"] = "ADDAFTERSECTION",
		},
	}
},
}}}}