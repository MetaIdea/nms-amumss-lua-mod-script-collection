ModName = "PTSd Scanner and Mining Bonus"
GameVersion = "3_93"
Description = "Makes a Multitool's Mining stat also increase the yield of mined resources, and it's Scan stat also increase the value of scanned flora/fauna"

--This makes Multi-Tool's Scanning stat bonus also apply to the value of scanned fauna & flora.
ScannerUnitsBonus =
[[<Property value="GcInventoryBaseStatBonus.xml">
          <Property name="StatType" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Scan_Discovery_Creature" />
          </Property>
          <Property name="LessIsBetter" value="False" />
        </Property>
		<Property value="GcInventoryBaseStatBonus.xml">
          <Property name="StatType" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Scan_Discovery_Flora" />
          </Property>
          <Property name="LessIsBetter" value="False" />
        </Property>]]
		--[[<Property value="GcInventoryBaseStatBonus.xml">
          <Property name="StatType" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Scan_Recharge_Time" />
          </Property>
          <Property name="LessIsBetter" value="True" />
        </Property>]]
--WIP:  This can also use the SCAN stat as a bonus to the recharge speeed of the AOE "Scan" pulse function, but currently using Multi-tools with high Scan bonus that results in total bonuses over 100% seems to make the recharge time get negative or something and wrap around to just the default 1min 30s recharge speed.

--This makes a Multi-Tool's Mining stat bonus also apply to how many resources are mined. Note, this does not seem to apply to the "trickle" of resources you get while in the process of mining something before it gets fully destroyed. That seems to be a set value of 1 resource every half second or so.
MiningAmountBonus =
[[<Property value="GcInventoryBaseStatBonus.xml">
          <Property name="StatType" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Weapon_Laser_MiningBonus" />
          </Property>
          <Property name="LessIsBetter" value="False" />
        </Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
	["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
	["EXML_CHANGE_TABLE"] 	= 
	{
		{
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			--["PRECEDING_FIRST"] = "True",
			["SPECIAL_KEY_WORDS"] = {"LocID","STAT_WEAP_MIN"},
			["PRECEDING_KEY_WORDS"] = {"StatBonus","GcInventoryBaseStatBonus.xml"},
			["ADD"] = MiningAmountBonus,
			["REPLACE_TYPE"] = "ADDAFTERSECTION",
		},
		{
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			--["PRECEDING_FIRST"] = "True",
			["SPECIAL_KEY_WORDS"] = {"LocID","STAT_WEAP_SCAN"},
			["PRECEDING_KEY_WORDS"] = {"StatBonus","GcInventoryBaseStatBonus.xml"},
			["ADD"] = ScannerUnitsBonus,
			["REPLACE_TYPE"] = "ADDAFTERSECTION",
		}
	}
},
}}}}