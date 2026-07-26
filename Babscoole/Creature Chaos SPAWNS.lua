NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Creature Chaos SPAWNS",
["MOD_AUTHOR"]    = "quinn",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.04",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SandWormSpawnChanceInfested", "0.950000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE", "RarityOverride", "GcCreatureRarity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRarity", "SuperRare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE", "Rarity", "GcCreatureRarity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRarity", "SuperRare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["ADD_OPTION"]  = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="1">
          <Property name="Tag" value="ROBOT" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="Common" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MOLE", "PredatorProbabilityModifier", "GcCreatureRoleFrequencyModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRoleFrequencyModifier", "Low"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="0">
          <Property name="Tag" value="CAVE" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="SuperRare" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TREX", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRoleFrequencyModifier", "Low"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["ADD_OPTION"]  = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="1">
          <Property name="Tag" value="CAVE" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="SuperRare" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="0">
          <Property name="Tag" value="CAVE" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="SuperRare" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT", "PredatorProbabilityModifier", "GcCreatureRoleFrequencyModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRoleFrequencyModifier", "Never"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "PredatorProbabilityModifier", "GcCreatureRoleFrequencyModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRoleFrequencyModifier", "Never"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OnlySpawnWhenIdIsForced",     "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="0">
          <Property name="Tag" value="CAVE" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="Uncommon" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD", "Rarity", "GcCreatureRarity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRarity", "Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER", "Tag", "HERDS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Tag", "HERD"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER"},
              ["PRECEDING_KEY_WORDS"] = {"Tags"},
              ["ADD_OPTION"]  = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Tags" value="GcCreatureTagAndRarity" _index="2">
          <Property name="Tag" value="CAVE" />
          <Property name="RarityOverride" value="GcCreatureRarity">
            <Property name="CreatureRarity" value="Uncommon" />
          </Property>
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTCATWORLD"},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="GroundArchetypes" value="GcCreatureGenerationDomainTable" _id="WRDCROWD">
			<Property name="Id" value="WRDCROWD" />
			<Property name="Tables">
				<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="0">
					<Property name="DensityModifier" value="GcCreatureGenerationDensity">
						<Property name="Density" value="Normal" />
					</Property>
					<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDFLOAT.MBIN" />
				</Property>
				<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="1">
					<Property name="DensityModifier" value="GcCreatureGenerationDensity">
						<Property name="Density" value="Normal" />
					</Property>
					<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDROLL.MBIN" />
				</Property>
				<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="2">
					<Property name="DensityModifier" value="GcCreatureGenerationDensity">
						<Property name="Density" value="Normal" />
					</Property>
					<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDCRYSTAL.MBIN" />
				</Property>
				<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="3">
					<Property name="DensityModifier" value="GcCreatureGenerationDensity">
						<Property name="Density" value="Normal" />
					</Property>
					<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDBUTTERFLY.MBIN" />
				</Property>
			</Property>
			<Property name="ChanceOfHemisphereLimit" value="0.000000" />
			<Property name="MaxToHemisphereLimit" value="1" />
			<Property name="AdditionalTables">
				<Property name="AdditionalTables" value="GcCreatureGenerationDomainAdditionalEntries" _index="0">
					<Property name="MaxTablesToAdd" value="1" />
					<Property name="Tables">
						<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="0">
							<Property name="DensityModifier" value="GcCreatureGenerationDensity">
								<Property name="Density" value="Normal" />
							</Property>
							<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDPURPLE.MBIN" />
						</Property>
						<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="1">
							<Property name="DensityModifier" value="GcCreatureGenerationDensity">
								<Property name="Density" value="Normal" />
							</Property>
							<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDPURPLEBONES.MBIN" />
						</Property>
						<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="2">
							<Property name="DensityModifier" value="GcCreatureGenerationDensity">
								<Property name="Density" value="Normal" />
							</Property>
							<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEROBOT.MBIN" />
						</Property>
						<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="3">
							<Property name="DensityModifier" value="GcCreatureGenerationDensity">
								<Property name="Density" value="Normal" />
							</Property>
							<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEALIEN.MBIN" />
						</Property>
						<Property name="Tables" value="GcCreatureGenerationDomainEntry" _index="4">
							<Property name="DensityModifier" value="GcCreatureGenerationDensity">
								<Property name="Density" value="Normal" />
							</Property>
							<Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/WEIRD/GROUNDTABLEWEIRDGLOWSTRIDERS.MBIN" />
						</Property>
					</Property>
					<Property name="ChanceOfHemisphereLimit" value="0.000000" />
					<Property name="MaxToHemisphereLimit" value="1" />
				</Property>
			</Property>
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Structure",   "GcCreatureGenerationOptionalWeightedList"},
                {"Beam",        "GcCreatureGenerationOptionalWeightedList"},
                {"Hexagon",     "GcCreatureGenerationOptionalWeightedList"},
                {"FractCube",   "GcCreatureGenerationOptionalWeightedList"},
                {"Bubble",      "GcCreatureGenerationOptionalWeightedList"},
                {"Shards",      "GcCreatureGenerationOptionalWeightedList"},
                {"Contour",     "GcCreatureGenerationOptionalWeightedList"},
                {"Shell",       "GcCreatureGenerationOptionalWeightedList"},
                {"BoneSpire",   "GcCreatureGenerationOptionalWeightedList"},
                {"WireCell",    "GcCreatureGenerationOptionalWeightedList"},
                {"HydroGarden", "GcCreatureGenerationOptionalWeightedList"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Probability", "0.950000"},
                {"Weight",      "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Structure", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Beam", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="5">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Hexagon", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FractCube", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Bubble", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shards", "GcCreatureGenerationOptionalWeightedList"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shards", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="5">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Contour", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shell", "GcCreatureGenerationOptionalWeightedList"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Shell", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneSpire", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WireCell", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="1.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"HydroGarden", "GcCreatureGenerationOptionalWeightedList"},
              ["PRECEDING_KEY_WORDS"] = {"Ground"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="1">
						<Property name="Weight " value="19.000000" />
						<Property name="Archetype" value="WRDANY" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="2">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="WRDCROWD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="3">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="PURPLEWEIRD" />
					</Property>
					<Property name="Ground" value="GcCreatureGenerationWeightedListDomainEntry" _index="4">
						<Property name="Weight " value="0.100000" />
						<Property name="Archetype" value="ROBOT" />
					</Property>
]]
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SandwormPresenceChance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weird",    "0.050000"},
                {"GasGiant", "0.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "150.000000"},
                {"Normal",    "250.000000"},
                {"Dense",     "325.000000"},
                {"VeryDense", "425.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription", "MinSize", "GcCreatureSizeClasses"},
              ["SECTION_ACTIVE"] = 0, 
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureSizeClass", "Small"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription", "MinSize", "GcCreatureSizeClasses"},
              ["SECTION_ACTIVE"] = 1, 
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureSizeClass", "Small"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription", "MaxSize", "GcCreatureSizeClasses"},
              ["SECTION_ACTIVE"] = 1, 
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureSizeClass", "Huge"},
              }
            },
          }
        },
      }
    }
  }
}