Author = "BHXC"
ModName = "Lush_Finder"
BaseDescription = [[Find various lush planet by type of subbiome. 
                  https://www.nexusmods.com/nomanssky/mods/XXXX]]
GameVersion = "5-55"
ModVersion = "2-1"

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME      = Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion,
MOD_DESCRIPTION   = BaseDescription,
MOD_AUTHOR        = Author,
NMS_VERSION       = GameVersion,

MODIFICATIONS = {{
  MBIN_CHANGE_TABLE = {

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER

Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE;

local function createDialog(baseName, nextInteraction)
  local name = baseName .. "_MNU"
  local text = baseName .. "_DSC"
  local reward = baseName .. "_RWD"
  local missionID = baseName .. "_MID"
  local nextInteractionValue = nextInteraction or ""
  return string.format([[
    <Property name="Options" value="GcAlienPuzzleOption">
      <Property name="Name" value="%s" />
      <Property name="Text" value="%s" />
      <Property name="IsAlien" value="false" />
      <Property name="ResponseLanguageOverride" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Cost" value="" />
      <Property name="Rewards">
        <Property name="Rewards" value="%s" />
      </Property>
      <Property name="Mood" value="GcAlienMood">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropType">
        <Property name="NPCProp" value="DontCare" />
      </Property>
      <Property name="OverrideWithAlienWord" value="false" />
      <Property name="AlienWordSpecificRace" value="GcAlienRace">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="ReseedInteractionOnUse" value="false" />
      <Property name="KeepOpen" value="false" />
      <Property name="DisplayCost" value="true" />
      <Property name="TruncateCost" value="false" />
      <Property name="MarkInteractionComplete" value="true" />
      <Property name="NextInteraction" value="%s" />
      <Property name="SelectedOnBackOut" value="false" />
      <Property name="AudioEvent" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="TitleOverride" value="" />
      <Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
      <Property name="EnablingConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyTrue" />
      </Property>
      <Property name="EnablingConditions">
        <Property name="EnablingConditions" value="GcMissionConditionIsMissionInProgress">
          <Property name="GcMissionConditionIsMissionInProgress">
            <Property name="MissionID" value="%s" />
            <Property name="MustBeSelectedMission" value="false" />
          </Property>
        </Property>
      </Property>
      <Property name="EnablingConditionId" value="" />
      <Property name="WordCategory" value="GcWordCategoryTableEnum">
        <Property name="wordcategorytableEnum" value="MISC" />
      </Property>
    </Property>
  ]], name, text, reward, nextInteractionValue, missionID)
end

local navigatorDialog = createDialog("LUS_HYD") ..
                        createDialog("LUS_BBL") ..
                        createDialog("LUS_VRB")

local commanderDialog = createDialog("LUS_STD") ..
                        createDialog("LUS_WRL")

local crewDialog = createDialog("LUS_HGL", "FREIGHTER_CREW") ..
                   createDialog("LUS_HGP", "FREIGHTER_CREW") ..
                   createDialog("LUS_STR", "FREIGHTER_CREW") ..
                   createDialog("WLD_STD", "FREIGHTER_CREW")

local dialogOptions = {
{id = "FLEET_NAVIGATOR",              name = "NPC_NAVIGATOR_OPT_B", dialog = navigatorDialog},
{id = "FLEET_NAVIGATOR_NEW",          name = "NPC_NAVIGATOR_OPT_B", dialog = navigatorDialog},
{id = "FLEET_NAVIGATOR_FULL_POST",    name = "ALL_REQUEST_LEAVE",   dialog = navigatorDialog},
{id = "NPC_FREIGHTER_CAPTAIN_PIRATE", name = "ALL_REQUEST_LEAVE",   dialog = commanderDialog},
{id = "NPC_FREIGHTER_CAP_SEC_1",      name = "ALL_REQUEST_LEAVE",   dialog = commanderDialog},
{id = "FREIGHTER_CREW_OWNED",         name = "ALL_REQUEST_LEAVE",   dialog = crewDialog},
{id = "FREIGHTER_CREW",               name = "ALL_REQUEST_LEAVE",   dialog = crewDialog},
}

for _, option in ipairs(dialogOptions) do
table.insert(Ref, {
  MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
  EXML_CHANGE_TABLE = {
    {
      SPECIAL_KEY_WORDS = {"Id", option.id, "Name", option.name},
      LINE_OFFSET = -2,
      ADD = option.dialog,
      REPLACE_TYPE = "ALL"
    }
  }
})
end
