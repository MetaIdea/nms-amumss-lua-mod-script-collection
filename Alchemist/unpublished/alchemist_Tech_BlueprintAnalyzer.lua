
Author = "alchemist"
ModName = "RefinerInputsExpanded_Portable"
BaseDescription = "Survive."
GameVersion = "3-6x"
ModVersion = "1"

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  {["MBIN_FILE_SOURCE"] = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\BLUEPRINTANALYSER\\ENTITIES\\BLUEPRINTANALYSER.ENTITY.MBIN",
  ["EXML_CHANGE_TABLE"] = {

    -- adds a map marker to the bp analyzer so you can find it if you forget it outside your base
    {["PRECEDING_KEY_WORDS"] = {
      "LodDistances"
    },
    ["LINE_OFFSET"] = -2,
    ["ADD"] = [[
    <Property value="GcScannableComponentData.xml">
      <Property name="ScanRange" value="1000" />
      <Property name="ScanName" value="UI_BP_ANALYSER_NAME_L" />
      <Property name="ScanTime" value="5" />
      <Property name="CompassRangeMultiplier" value="0" />
      <Property name="AlwaysShowRange" value="0" />
      <Property name="CanTagIcon" value="True" />
      <Property name="ClearTagOnArrival" value="True" />
      <Property name="DisableIfBuildingPart" value="False" />
      <Property name="DisableIfInBase" value="True" />
      <Property name="UseModelNode" value="True" />
      <Property name="Icon" value="GcScannerIconTypes.xml">
        <Property name="ScanIconType" value="Refiner" />
      </Property>
      <Property name="ScannableType" value="Marker" />
      <Property name="IsPlacedMarker" value="False" />
      <Property name="ShowInFreighterBranchRoom" value="False" />
      <Property name="TellPlayerIfFreighterObjectUsed" value="False" />
      <Property name="FreighterObjectAlreadyUsedLocID" value="UI_ABAND_LOG_READ" />
      <Property name="AllowedToMerge" value="True" />
      <Property name="MissionSurveyId" value="" />
    </Property>
]]},

  }},

}}}}