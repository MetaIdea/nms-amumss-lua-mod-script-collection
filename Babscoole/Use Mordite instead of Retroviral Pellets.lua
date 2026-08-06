NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Use Mordite instead of Retroviral Pellets",
["MOD_AUTHOR"]      = "Lupit",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Costs Mordite to evolve pets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_FREELEVEL"},
              ["PRECEDING_KEY_WORDS"] = {"GcCostProduct"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_FREELEVEL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cost", "GcCostSubstance"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_FREELEVEL", "Cost", "GcCostSubstance"},
              ["ADD"] =
[[
				<Property name="GcCostSubstance">
					<Property name="Default" value="GcDefaultMissionSubstanceEnum">
						<Property name="DefaultSubstanceType" value="None" />
					</Property>
					<Property name="Id" value="CREATURE1" />
					<Property name="UseScanEventToDetermineLocalSubstance" value="" />
					<Property name="UseSpecificPlanetIndexForLocalSubstance" value="-1" />
					<Property name="UseRandomPlanetIndex" value="false" />
					<Property name="LocalSubstanceType" value="GcLocalSubstanceType">
						<Property name="LocalSubstanceType" value="AnyDeposit" />
					</Property>
					<Property name="Amount" value="200" />
					<Property name="UseDefaultAmount" value="false" />
					<Property name="TakeAmountFromSeasonData" value="false" />
				</Property>
]]              
            },
          }
        },
      }
    }
  }
}