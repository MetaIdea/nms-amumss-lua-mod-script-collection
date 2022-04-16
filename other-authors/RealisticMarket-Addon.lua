Techfrag = [[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="TECHFRAG" />
        </Property>
]]
Products = [[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="HYPERFUEL2" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="BP_SALVAGE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FRIG_TOKEN" />
        </Property>
]]
Fleets= [[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_MINE4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_EXP4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_TRA4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_COM4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_FUEL4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_SPE4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="U_FR_HYP4" />
        </Property>
]]
Alien= [[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_SHIPLAS4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_SHIPGUN4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_PULSE4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_HYPER4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_LAUNCH4" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="AP_SHIPSHIELD4" />
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "___ChristianWidjaya_RealisticMarket_Addon.pak",
  ["MOD_AUTHOR"] = "ChristianWidjaya",
  ["NMS_VERSION"] = "261",
  ["MOD_DESCRIPTION"] = "Adding blacklisted item into shop's selling listing",
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
		
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            --S Class Modules, remove blacklist
            {
              ["REPLACE_TYPE"] = "RAW",
              ["VALUE_CHANGE_TABLE"] =
              {
                {[["U_PULSE1"]],[["U_PULSE4"]],},
                {[["U_PULSE2"]],[["U_PULSE4"]],},
                {[["U_PULSE3"]],[["U_PULSE4"]],},
                {[["U_HYPER1"]],[["U_HYPER4"]],},
                {[["U_HYPER2"]],[["U_HYPER4"]],},
                {[["U_HYPER3"]],[["U_HYPER4"]],},
                {[["U_SHIPSHIELD1"]],[["U_SHIPSHIELD4"]],},
                {[["U_SHIPSHIELD2"]],[["U_SHIPSHIELD4"]],},
                {[["U_SHIPSHIELD3"]],[["U_SHIPSHIELD4"]],},
                {[["U_SHIPGUN1"]],[["U_SHIPGUN4"]],},
                {[["U_SHIPGUN2"]],[["U_SHIPGUN4"]],},
                {[["U_SHIPGUN3"]],[["U_SHIPGUN4"]],},
                {[["U_SHIPLAS1"]],[["U_SHIPLAS4"]],},
                {[["U_SHIPLAS2"]],[["U_SHIPLAS4"]],},
                {[["U_SHIPLAS3"]],[["U_SHIPLAS4"]],},
                {[["U_SHIPSHOT1"]],[["U_SHIPSHOT4"]],},
                {[["U_SHIPSHOT2"]],[["U_SHIPSHOT4"]],},
                {[["U_SHIPSHOT3"]],[["U_SHIPSHOT4"]],},
                {[["U_SHIPMINI1"]],[["U_SHIPMINI4"]],},
                {[["U_SHIPMINI2"]],[["U_SHIPMINI4"]],},
                {[["U_SHIPMINI3"]],[["U_SHIPMINI4"]],},
                {[["U_SHIPBLOB1"]],[["U_SHIPBLOB4"]],},
                {[["U_SHIPBLOB2"]],[["U_SHIPBLOB4"]],},
                {[["U_SHIPBLOB3"]],[["U_SHIPBLOB4"]],},
                {[["U_ENERGY1"]],[["U_ENERGY3"]],},
                {[["U_ENERGY2"]],[["U_ENERGY3"]],},
                {[["U_JETBOOST1"]],[["U_JETBOOST4"]],},
                {[["U_JETBOOST2"]],[["U_JETBOOST4"]],},
                {[["U_JETBOOST3"]],[["U_JETBOOST4"]],},
                {[["U_SHIELDBOOST1"]],[["U_SHIELDBOOST4"]],},
                {[["U_SHIELDBOOST2"]],[["U_SHIELDBOOST4"]],},
                {[["U_SHIELDBOOST3"]],[["U_SHIELDBOOST4"]],},
                {[["U_UNW1"]],[["U_UNW3"]],},
                {[["U_UNW2"]],[["U_UNW3"]],},
                {[["U_RAD1"]],[["U_RAD3"]],},
                {[["U_RAD2"]],[["U_RAD3"]],},
                {[["U_TOX1"]],[["U_TOX3"]],},
                {[["U_TOX2"]],[["U_TOX3"]],},
                {[["U_COLDPROT1"]],[["U_COLDPROT3"]],},
                {[["U_COLDPROT2"]],[["U_COLDPROT3"]],},
                {[["U_HOTPROT1"]],[["U_HOTPROT3"]],},
                {[["U_HOTPROT2"]],[["U_HOTPROT3"]],},
                {[["U_LASER1"]],[["U_LASER4"]],},
                {[["U_LASER2"]],[["U_LASER4"]],},
                {[["U_LASER3"]],[["U_LASER4"]],},
                {[["U_SCANNER1"]],[["U_SCANNER4"]],},
                {[["U_SCANNER2"]],[["U_SCANNER4"]],},
                {[["U_SCANNER3"]],[["U_SCANNER4"]],},
                {[["U_BOLT1"]],[["U_BOLT4"]],},
                {[["U_BOLT2"]],[["U_BOLT4"]],},
                {[["U_BOLT3"]],[["U_BOLT4"]],},
                {[["U_GRENADE1"]],[["U_GRENADE4"]],},
                {[["U_GRENADE2"]],[["U_GRENADE4"]],},
                {[["U_GRENADE3"]],[["U_GRENADE4"]],},
                {[["U_TGRENADE1"]],[["U_TGRENADE4"]],},
                {[["U_TGRENADE2"]],[["U_TGRENADE4"]],},
                {[["U_TGRENADE3"]],[["U_TGRENADE4"]],},
                {[["U_RAIL1"]],[["U_RAIL4"]],},
                {[["U_RAIL2"]],[["U_RAIL4"]],},
                {[["U_RAIL3"]],[["U_RAIL4"]],},
                {[["U_SHOTGUN1"]],[["U_SHOTGUN4"]],},
                {[["U_SHOTGUN2"]],[["U_SHOTGUN4"]],},
                {[["U_SHOTGUN3"]],[["U_SHOTGUN4"]],},
                {[["U_SMG1"]],[["U_SMG4"]],},
                {[["U_SMG2"]],[["U_SMG4"]],},
                {[["U_SMG3"]],[["U_SMG4"]],},
                {[["U_EXOGUN1"]],[["U_EXOGUN4"]],},
                {[["U_EXOGUN2"]],[["U_EXOGUN4"]],},
                {[["U_EXOGUN3"]],[["U_EXOGUN4"]],},
                {[["U_EXO_ENG1"]],[["U_EXO_ENG4"]],},
                {[["U_EXO_ENG2"]],[["U_EXO_ENG4"]],},
                {[["U_EXO_ENG3"]],[["U_EXO_ENG4"]],},
                {[["U_EXOLAS1"]],[["U_EXOLAS4"]],},
                {[["U_EXOLAS2"]],[["U_EXOLAS4"]],},
                {[["U_EXOLAS3"]],[["U_EXOLAS4"]],},
                {[["U_EXOBOOST1"]],[["U_EXOBOOST4"]],},
                {[["U_EXOBOOST2"]],[["U_EXOBOOST4"]],},
                {[["U_EXOBOOST3"]],[["U_EXOBOOST4"]],},
                {[["U_EXO_SUB1"]],[["U_EXO_SUB4"]],},
                {[["U_EXO_SUB2"]],[["U_EXO_SUB4"]],},
                {[["U_EXO_SUB3"]],[["U_EXO_SUB4"]],},
                {[["U_EXO_SUBGUN1"]],[["U_EXO_SUBGUN4"]],},
                {[["U_EXO_SUBGUN2"]],[["U_EXO_SUBGUN4"]],},
                {[["U_EXO_SUBGUN3"]],[["U_EXO_SUBGUN4"]],},
                {[["U_MECH_ENG1"]],[["U_MECH_ENG4"]],},
                {[["U_MECH_ENG2"]],[["U_MECH_ENG4"]],},
                {[["U_MECH_ENG3"]],[["U_MECH_ENG4"]],},
                {[["U_MECHLAS1"]],[["U_MECHLAS4"]],},
                {[["U_MECHLAS2"]],[["U_MECHLAS4"]],},
                {[["U_MECHLAS3"]],[["U_MECHLAS4"]],},
                {[["U_MECHGUN1"]],[["U_MECHGUN4"]],},
                {[["U_MECHGUN2"]],[["U_MECHGUN4"]],},
                {[["U_MECHGUN3"]],[["U_MECHGUN4"]],},
                {[["U_LAUNCH1"]],[["U_LAUNCH4"]],},
                {[["U_LAUNCH2"]],[["U_LAUNCH4"]],},
                {[["U_LAUNCH3"]],[["U_LAUNCH4"]],},
                -- {[["HYPERFUEL1"]],[["NULL"]],},
                -- {[["TECHFRAG"]],[["NULL"]],},
                -- {[["BP_SALVAGE"]],[["NULL"]],},
              },
            },

            --remove ALL SECTION where a match is found
            {
              ["SPECIAL_KEY_WORDS"] = {"Value","HYPERFUEL1",},
              ["REPLACE_TYPE"] 	= "ALL",
              ["REMOVE"] = "SECTION",
            },

            {
              ["SPECIAL_KEY_WORDS"] = {"Value","TECHFRAG",},
              ["REPLACE_TYPE"] 	= "ALL",
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Value","BP_SALVAGE",},
              ["REPLACE_TYPE"] 	= "ALL",
              ["REMOVE"] = "SECTION",
            },
            
            --Products Listing
            {
              ["PRECEDING_KEY_WORDS"] = {"SpaceStation","AlwaysPresentProducts"},
              ["ADD"] = Products,
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Shop","AlwaysPresentProducts"},
              ["ADD"] = Products,
            },
            
            --Nanites Listing
            {
              ["PRECEDING_KEY_WORDS"] = {"SpaceStation","AlwaysPresentSubstances"},
              ["ADD"] = Techfrag,
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Shop","AlwaysPresentSubstances"},
              ["ADD"] = Techfrag,
            },
			--Alien Modules listing
			{
              ["PRECEDING_KEY_WORDS"] = {"ShipTechSpecialist","AlwaysPresentProducts"},
              ["ADD"] = Alien,
            },
            --Fleet Modules Listing
            {
              ["PRECEDING_KEY_WORDS"] = {"ShipTechSpecialist","AlwaysPresentProducts"},
              ["ADD"] = Fleets,
            },
          },
        },
      },
    },
  },
}
