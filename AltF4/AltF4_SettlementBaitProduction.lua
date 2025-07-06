local FishBait = {
"FISHBAIT_1",
"FISHBAIT_2",
"FISHBAIT_3",
"FISHBAIT_DAY",
"FISHBAIT_NIGHT",
"FISHBAIT_STORM"
}

local function CreateBaitProduction(Race,ID)
    return [[
		<Property name="]] .. Race .. [[ProductionElementsSelectable" value="GcSettlementProductionElement">
			<Property name="ProductionAmountMultiplier" value="1.000000" />
			<Property name="ProductionTimeMultiplier" value="0.100000" />
			<Property name="ProductionAccumulationCap" value="50" />
			<Property name="Product" value="]] .. ID .. [[" />
			<Property name="Requirements">
				<Property name="Requirements" value="GcSettlementProductionElementRequirement">
					<Property name="RequiredSettlementBuildingType" value="GcBuildingClassification">
						<Property name="BuildingClass" value="Settlement_FishPond" />
					</Property>
					<Property name="RequiredSettlementBuildingLevel" value="0" />
				</Property>
			</Property>
		</Property>
    ]]
end

local function AddBaitProduction(Race)
    local Add = {}
    for i=1,#FishBait do
        Add[#Add + 1] = CreateBaitProduction(Race, FishBait[i])
    end
    return table.concat(Add, "\n")
end

local AddGek = AddBaitProduction("Gek")
local AddKorvax = AddBaitProduction("Korvax")
local AddVykeen = AddBaitProduction("Vykeen")
local AddAutophage = AddBaitProduction("Autophage")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_SettlementBaitProduction",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "5.71",
    ["MOD_DESCRIPTION"] = "Add 6 baits to the optional products of the settlement.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GekProductionElementsSelectable"},
                            ["ADD"] = AddGek,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KorvaxProductionElementsSelectable"},
                            ["ADD"] = AddKorvax,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"VykeenProductionElementsSelectable"},
                            ["ADD"] = AddVykeen,
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AutophageProductionElementsSelectable"},
                            ["ADD"] = AddAutophage,
                        },
                    }
                },
            },
        },
    }
}