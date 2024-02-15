Author = "Gumsk"
ModName = "gSettlement"
ModNameSub = "Free"
BaseDescription = "Makes all settlement buildings cost 1 unit"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "GCSETTLEMENTGLOBALS.MBIN"

AddText = [[
      <Property name="StageCosts">
        <Property name="Start" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
        <Property name="GroundStorey" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
        <Property name="RegularStorey" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
        <Property name="Roof" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
        <Property name="Decoration" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
        <Property name="Other" value="GcSettlementBuildingCostData.xml">
          <Property name="Products" />
          <Property name="Substances" />
          <Property name="AmountMin" value="1" />
          <Property name="AmountMax" value="1" />
          <Property name="Currency" value="GcCurrency.xml">
            <Property name="Currency" value="Units" />
          </Property>
        </Property>
      </Property>

]]

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
						
					--Delete All StageCosts
						{
							["PRECEDING_KEY_WORDS"] = {"StageCosts"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION",
						},
					--Replace StageCosts with 1 Unit cost
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","None"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","TerrainResource"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Shelter"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Abandoned"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Terminal"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Shop"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Outpost"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Waypoint"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Beacon"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","RadioTower"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Observatory"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Depot"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Factory"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Harvester"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Plaque"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Monolith"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Portal"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Ruin"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Debris"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","DamagedMachine"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","DistressSignal"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","LandingPad"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Base"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","MissionTower"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","CrashedFreighter"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","GraveInCave"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","StoryGlitch"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","TreasureRuins"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","GameStartSpawn"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","WaterCrashedFreighter"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","WaterTreasureRuins"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","WaterAbandoned"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","WaterDistressSignal"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","NPCDistressSignal"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","NPCDebris"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","LargeBuilding"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Hub"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_LandingZone"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Bar"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Tower"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Market"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Small"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_SmallIndustrial"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Medium"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Large"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Monument"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_SheriffsOffice"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Double"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Farm"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Factory"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","Settlement_Clump"},
							["ADD"] = AddText,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","DroneHive"},
							["ADD"] = AddText,
						},
					},
				},
			}
		}
	}
}