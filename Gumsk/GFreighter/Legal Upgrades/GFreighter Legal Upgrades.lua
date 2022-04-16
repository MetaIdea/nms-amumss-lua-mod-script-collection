Author = "Gumsk"
ModName = "gFreighter"
ModNameSub = "Legal Upgrades"
BaseDescription = "Makes legal freighter upgrade modules more common and piracy have a higher rep penalty"
GameVersion = "321"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

DerelictAbandCrateChance = 8	--5
CrashedSmallChance = 12			--8
CrashedMedChance = 12			--8
PiracyChance = 10				--50
RescueRewardChance = 100		--0
PirateChance = 2				--0
PirateEasyChance = 1			--0
PirateMedChance = 2				--0
PirateHardChance = 5			--0
BountyEasyChance = 5			--0
BountyMedChance = 10			--0
BountyHardChance = 20			--0

AddTextA = [[          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]
AddTextB = [[" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="Id" value="FRIG_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="ForceSpecialMessage" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
			--Change DerelictAbandCrateChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE","Id","FRIG_TOKEN"},
					["SECTION_UP"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"PercentageChance", DerelictAbandCrateChance},
					}
				},
			--Change CrashedSmallChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_S","Id","FRIG_TOKEN"},
					["SECTION_UP"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"PercentageChance", CrashedSmallChance},
					}
				},
			--Change CrashedMedChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_M","Id","FRIG_TOKEN"},
					["SECTION_UP"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"PercentageChance", CrashedMedChance},
					}
				},
			--Change PiracyChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLOOT","Id","FRIG_TOKEN"},
					["SECTION_UP"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"PercentageChance", PiracyChance},
					}
				},
			-- --Add RescueRewardChance
				-- {
					-- ["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLOOT","Id","FRIG_TOKEN"},
					-- ["SECTION_UP"] = 1,
					-- ["VALUE_CHANGE_TABLE"] = {
						-- {"PercentageChance", RescueRewardChance},
					-- }
				-- },
			--Add PirateChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRATELOOT","Id","STELLAR2"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..PirateChance..AddTextB,
				},
			--Add PirateEasyChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_EASY","Id","LAND3"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..PirateEasyChance..AddTextB,
				},
			--Add PirateMedChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_MED","Id","LAND3"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..PirateMedChance..AddTextB,
				},
			--Add PirateHardChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_HARD","Id","STELLAR2"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..PirateHardChance..AddTextB,
				},
			--Add BountyEasyChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1","AmountMin","100000"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..BountyEasyChance..AddTextB,
				},
			--Add BountyMedChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY2","AmountMin","200000"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..BountyMedChance..AddTextB,
				},
			--Add BountyHardChance
				{
					["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY3","AmountMin","300000"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = AddTextA..BountyHardChance..AddTextB,
				},
			}
		},
	}
},
}}