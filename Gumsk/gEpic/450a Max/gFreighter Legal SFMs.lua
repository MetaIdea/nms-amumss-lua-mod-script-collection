Author = "Gumsk"
ModName = "gFreighter Legal SFMs"
ModNameSub = "Normal"
BaseDescription = "Makes legal salvaged frigate modules more common"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

DerelictAbandCrateChance = 20	--5/198
CrashedSmallChance = 25			--8/121
CrashedMedChance = 25			--8/121
PiracyChance = 20				--20/1520
OutlawPiracyChance = 20			--20/1520
PirateChance = 15				--0/620, adding to list

AddTextA = [[          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]
AddTextB = [[" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="FRIG_TOKEN" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
			  <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
			  <Property name="HideInSeasonRewards" value="False" />
			  <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
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
					--Change OutlawPiracyChance
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SMUGGLELOOT","Id","FRIG_TOKEN"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"PercentageChance", OutlawPiracyChance},
							}
						},
					--Add freighter rescue reward
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_SAVED","Id","ASTEROID2"},
							["SECTION_UP"] = 1,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = AddTextA.."100"..AddTextB,
						},
					--Add PirateChance
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATELOOT","Id","SCRAP_GOODS"},
							["SECTION_UP"] = 1,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = AddTextA..PirateChance..AddTextB,
						},
					}
				},
			}
		},
	}
}