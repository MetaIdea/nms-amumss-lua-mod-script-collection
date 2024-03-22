NOLINES = false

InputNOLINESCHOICE = {NOLINES,
[[
    Do you wish to use the No Lines option?
    Default = false | Current = >> ]] .. (NOLINES and "Y" or "N") .. [[ <<
]]}

NOLINES = GUIF(InputNOLINESCHOICE)

--Select Color Variation from BLUE, CYAN, GREEN, PINK, PURPLE, RED, WHITE, or YELLOW, or NOLINES
COLORCHOICE = "CYAN"


if NOLINES then
COLORCHOICE = "Grey"
else
InputCOLORCHOICE = {COLORCHOICE,
[[
    Choose a color option?  Options are BLUE, CYAN, GREEN, PINK, PURPLE, RED, WHITE, or YELLOW.
    Default = BLUE | Current = >> ]] .. (COLORCHOICE) .. [[ <<
]]}

COLORCHOICE = GUIF(InputCOLORCHOICE)
COLORCHOICE = string.upper(COLORCHOICE)
end

BlueTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{0,0,1,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{0,0,1,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{0,0,1,0.8},}},
    {{"SpaceMapMarkerData"},{{0,0,1,0.8},}},
    {{"SpaceMapPlanetData"},{{0,0,1,0.8},}},
    {{"SpaceMapStationData"},{{0,0,1,0.8},}},
    {{"SpaceMapNexusData"},{{0,0,1,0.8},}},
    {{"SpaceMapAtlasData"},{{0,0,1,0.8},}},
    {{"SpaceMapBlackHoleData"},{{0,0,1,0.8},}},
    {{"SpaceMapShipData"},{{0,0,1,0.8},}},
    {{"SpaceMapFreighterData"},{{0,0,1,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{0,0,1,0.8},}},
}

CyanTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{0,1,1,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{0,1,1,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{0,1,1,0.8},}},
    {{"SpaceMapMarkerData"},{{0,1,1,0.8},}},
    {{"SpaceMapPlanetData"},{{0,1,1,0.8},}},
    {{"SpaceMapStationData"},{{0,1,1,0.8},}},
    {{"SpaceMapNexusData"},{{0,1,1,0.8},}},
    {{"SpaceMapAtlasData"},{{0,1,1,0.8},}},
    {{"SpaceMapBlackHoleData"},{{0,1,1,0.8},}},
    {{"SpaceMapShipData"},{{0,1,1,0.8},}},
    {{"SpaceMapFreighterData"},{{0,1,1,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{0,1,1,0.8},}},
}

GreenTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,1,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{0,1,0,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{0,1,0,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{0,1,0,0.8},}},
    {{"SpaceMapMarkerData"},{{0,1,0,0.8},}},
    {{"SpaceMapPlanetData"},{{0,1,0,0.8},}},
    {{"SpaceMapStationData"},{{0,1,0,0.8},}},
    {{"SpaceMapNexusData"},{{0,1,0,0.8},}},
    {{"SpaceMapAtlasData"},{{0,1,0,0.8},}},
    {{"SpaceMapBlackHoleData"},{{0,1,0,0.8},}},
    {{"SpaceMapShipData"},{{0,1,0,0.8},}},
    {{"SpaceMapFreighterData"},{{0,1,0,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{0,1,0,0.8},}},
}

PinkTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{1,0,1,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{1,0,1,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{1,0,1,0.8},}},
    {{"SpaceMapMarkerData"},{{1,0,1,0.8},}},
    {{"SpaceMapPlanetData"},{{1,0,1,0.8},}},
    {{"SpaceMapStationData"},{{1,0,1,0.8},}},
    {{"SpaceMapNexusData"},{{1,0,1,0.8},}},
    {{"SpaceMapAtlasData"},{{1,0,1,0.8},}},
    {{"SpaceMapBlackHoleData"},{{1,0,1,0.8},}},
    {{"SpaceMapShipData"},{{1,0,1,0.8},}},
    {{"SpaceMapFreighterData"},{{1,0,1,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{1,0,1,0.8},}},
}

PurpleTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapMarkerData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapPlanetData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapStationData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapNexusData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapAtlasData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapBlackHoleData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapShipData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapFreighterData"},{{0.5,0,0.5,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{0.5,0,0.5,0.8},}},
}

RedTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,1,1,0.8},}},
    {{"SpaceMapAttackColour"},{{1,1,1,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{1,0,0,0.8},}},
    {{"SpaceMapThreatColour"},{{1,1,1,0.8},}},
    {{"SpaceMapNeutralColour"},{{1,0,0,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{1,0,0,0.8},}},
    {{"SpaceMapMarkerData"},{{1,0,0,0.8},}},
    {{"SpaceMapPlanetData"},{{1,0,0,0.8},}},
    {{"SpaceMapStationData"},{{1,0,0,0.8},}},
    {{"SpaceMapNexusData"},{{1,0,0,0.8},}},
    {{"SpaceMapAtlasData"},{{1,0,0,0.8},}},
    {{"SpaceMapBlackHoleData"},{{1,0,0,0.8},}},
    {{"SpaceMapShipData"},{{1,0,0,0.8},}},
    {{"SpaceMapFreighterData"},{{1,0,0,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{1,0,0,0.8},}},
}

WhiteTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{1,1,1,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{1,1,1,0.8},}},
    {{"SpaceMapSquadronColour"},{{1,1,0,0.8},}},
    {{"SpaceMapDeathPointColour"},{{1,1,1,0.8},}},
    {{"SpaceMapMarkerData"},{{1,1,1,0.8},}},
    {{"SpaceMapPlanetData"},{{1,1,1,0.8},}},
    {{"SpaceMapStationData"},{{1,1,1,0.8},}},
    {{"SpaceMapNexusData"},{{1,1,1,0.8},}},
    {{"SpaceMapAtlasData"},{{1,1,1,0.8},}},
    {{"SpaceMapBlackHoleData"},{{1,1,1,0.8},}},
    {{"SpaceMapShipData"},{{1,1,1,0.8},}},
    {{"SpaceMapFreighterData"},{{1,1,1,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{1,1,1,0.8},}},
}

YellowTable =
{
    {{"SpaceFriendlyShipLineColour"},{{0,1,0,0.8},}},
    {{"SpaceEnemyShipLineColour"},{{1,0,0,0.8},}},
    {{"SpaceMapAttackColour"},{{1,0,0,0.8},}},
    {{"SpaceMapOtherPlayerColour"},{{1,1,0,0.8},}},
    {{"SpaceMapThreatColour"},{{1,0,0,0.8},}},
    {{"SpaceMapNeutralColour"},{{1,1,0,0.8},}},
    {{"SpaceMapSquadronColour"},{{0,1,1,0.8},}},
    {{"SpaceMapDeathPointColour"},{{1,1,0,0.8},}},
    {{"SpaceMapMarkerData"},{{1,1,0,0.8},}},
    {{"SpaceMapPlanetData"},{{1,1,0,0.8},}},
    {{"SpaceMapStationData"},{{1,1,0,0.8},}},
    {{"SpaceMapNexusData"},{{1,1,0,0.8},}},
    {{"SpaceMapAtlasData"},{{1,1,0,0.8},}},
    {{"SpaceMapBlackHoleData"},{{1,1,0,0.8},}},
    {{"SpaceMapShipData"},{{1,1,0,0.8},}},
    {{"SpaceMapFreighterData"},{{1,1,0,0.8},}},
    {{"SpaceMapPulseEncounterData"},{{1,1,0,0.8},}},
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SIR - ShipHUD - Lines - ALL.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "VirtualVoyager",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.08",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceMapShowPlanetLines", "False"},
                            }
                        },
                    }
                }
            }
        }
    }
}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if NOLINES then
        local temp_table =
        {
            ["VALUE_CHANGE_TABLE"] =
            {
                {"SpaceMapLineWidth", "0"},
                {"SpaceMapLineBaseScale", "0"},
                {"SpaceMapLineBaseFade", "0"},
            },
        }
        Change_Table_Array[#Change_Table_Array + 1] = temp_table
end


                local ColorTable = ""
                if COLORCHOICE == "BLUE" then
                    ColorTable = BlueTable
                elseif COLORCHOICE == "CYAN" then
                    ColorTable = CyanTable
                elseif COLORCHOICE == "GREEN" then
                    ColorTable = GreenTable
                elseif COLORCHOICE == "PINK" then
                    ColorTable = PinkTable
                elseif COLORCHOICE == "PURPLE" then
                    ColorTable = PurpleTable
                elseif COLORCHOICE == "RED" then
                    ColorTable = RedTable
                elseif COLORCHOICE == "WHITE" then
                    ColorTable = WhiteTable
                elseif COLORCHOICE == "YELLOW" then
                    ColorTable = YellowTable
                end

for i = 1, #ColorTable do
    local PK = ColorTable[i][1][1]
    local TableData = ColorTable[i][2]
    for j = 1, #TableData do
        local R = TableData[j][1]
        local B = TableData[j][2]
        local G = TableData[j][3]
        local A = TableData[j][4]

        local temp_table =
        {
            ["PRECEDING_KEY_WORDS"] = {PK},
            ["INTEGER_TO_FLOAT"] = "FORCE",
            ["VALUE_CHANGE_TABLE"] =
            {
                {"R",R},
                {"G",G},
                {"B",B},
                {"A",A},
            },
        }
        Change_Table_Array[#Change_Table_Array + 1] = temp_table
    end
end