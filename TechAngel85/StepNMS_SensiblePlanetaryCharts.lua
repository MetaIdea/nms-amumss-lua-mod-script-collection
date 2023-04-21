Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "Distress Signal Planetary Charts no longer locate Observatories nor Abandoned Buildings, but will now also find Transmission Towers. Ancient Artifact Site Planetary Charts will now locate the Observatories and Abandoned Buildings. Chances for each location type have been adjusted."
FileSource01 = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber
-- Credit to Bladehawke for the original LUA, which this alternative is based from (Sensible Planetary Charts).

--##### Variables #####

StarchartB_AbandonedPercentage	 = 0	-- | 40 | 
StarchartB_DistressPercentage	 = 65	-- | 15 | 
StarchartB_DistressNPCPercentage = 5	-- | 8 | 
StarchartB_FreighterPercentage	 = 25	-- | 8 | 
StarchartB_ObservatoryPercentage = 0	-- | 6 | 

local StarchartB_NewOption = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="5" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="RADIOTOWER" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="True" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
              <Property name="ForceSilentFailure" value="False" />
              <Property name="FailureOSD" value="" />
            </Property>
            <Property name="LabelID" value="RadioTower" />
          </Property>
]]

StarchartD_PlaquePercentage = 20 -- | 12 | 
StarchartD_MonolithPercentage = 20 -- | 12 | 
StarchartD_RuinPercentage = 40 -- | 12 | 

local StarchartD_NewOptions = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="5" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="OBSERVATORY" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="True" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
              <Property name="ForceSilentFailure" value="False" />
              <Property name="FailureOSD" value="" />
            </Property>
            <Property name="LabelID" value="Observatory" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="5" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="ABANDONED" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="True" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
              <Property name="ForceSilentFailure" value="False" />
              <Property name="FailureOSD" value="" />
            </Property>
            <Property name="LabelID" value="Abandoned" />
          </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ 	["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
                        { ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Abandoned"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartB_AbandonedPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Distress"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartB_DistressPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Distress with NPC"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartB_DistressNPCPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Crashed Freighter"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartB_FreighterPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Observatory"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartB_ObservatoryPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Observatory"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = StarchartB_NewOption
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "LabelID", "Plaque"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartD_PlaquePercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "LabelID", "Monolith"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartD_MonolithPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "LabelID", "Ruin"},
							["VALUE_CHANGE_TABLE"] = {{"PercentageChance", StarchartD_RuinPercentage}}
						},
						{ ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "LabelID", "Ruin" },
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = StarchartD_NewOptions
						}}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
