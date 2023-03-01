Author = "Gumsk"
ModName = "gCreatures Life"
ModNameSub = "0 Frozen"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN
]]--

NewGround = [[        <Property name="Ground">
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTAL" />
          </Property>
        </Property>]]
NewAir = [[        <Property name="Air">
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTAL" />
          </Property>
        </Property>]]
NewCave = [[        <Property name="Cave">
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTAL" />
          </Property>
        </Property>]]
NewWater = [[        <Property name="Water">
          <Property value="GcCreatureGenerationWeightedListDomainEntry.xml">
            <Property name="Weight" value="1" />
            <Property name="Archetype" value="WRDCRYSTAL" />
          </Property>
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
					["MBIN_FILE_SOURCE"] = {
						"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Frozen","GcCreatureGenerationOptionalWeightedList.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Ground","IGNORE"},
							},
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = NewGround,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Frozen","GcCreatureGenerationOptionalWeightedList.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Air","IGNORE"},
							},
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = NewAir,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Frozen","GcCreatureGenerationOptionalWeightedList.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Cave","IGNORE"},
							},
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = NewCave,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Frozen","GcCreatureGenerationOptionalWeightedList.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Water","IGNORE"},
							},
							["ADD_OPTION"] = "REPLACEatLINE",
							["ADD"] = NewWater,
						},
					},
				},
			}
		}
	}
}