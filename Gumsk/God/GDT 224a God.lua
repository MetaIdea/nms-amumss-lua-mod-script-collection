Upgrade_Text=[[<Property value="GcOutpostComponentData.xml">
      <Property name="Anomaly" value="False" />
      <Property name="Frigate" value="False" />
      <Property name="SpaceStation" value="False" />
      <Property name="NexusExterior" value="False" />
      <Property name="NexusInterior" value="False" />
      <Property name="AIDestination" value="True" />
      <Property name="HasDoors" value="False" />
      <Property name="HasOwnGravity" value="False" />
      <Property name="Door" value="HANGARDOOR" />
      <Property name="CheckLandingAreaClear" value="True" />
      <Property name="CircleRadius" value="200" />
      <Property name="ApproachRange" value="100" />
      <Property name="ApproachAngle" value="360" />
      <Property name="ApproachSpeed" value="30" />
      <Property name="PlayerAutoLandRange" value="300" />
      <Property name="LandingSpeed" value="10" />
      <Property name="LandingHeight" value="10" />
      <Property name="RotateToDock" value="True" />
      <Property name="TakeOffHeight" value="30" />
      <Property name="TakeOffFwdDist" value="1" />
      <Property name="TakeOffTime" value="1" />
      <Property name="TakeOffAlignTime" value="1" />
      <Property name="TakeOffSpeed" value="100" />
      <Property name="TakeOffBoost" value="10" />
      <Property name="TakeOffExtraAIHeight" value="7" />
      <Property name="LSystems" />
    </Property>
    <Property value="GcNPCPlacementComponentData.xml">
      <Property name="SearchPlacementFromMaster" value="False" />
      <Property name="PlaceInAbandonedSystems" value="False" />
      <Property name="PlacementInfosToApply">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="NPC_PILOT" />
        </Property>
      </Property>
      <Property name="WaitToPlace" value="False" />
    </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GDT 2.24a.pak",
["MOD_DESCRIPTION"]	= "Gumsk's damage table modifications",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
{{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
["EXML_CHANGE_TABLE"] = 
{


	{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] =
	{
		{"AIDestination", "True"},
		{"CheckLandingAreaClear", "False"},
		{"SearchPlacementFromMaster", "False"},
		{"PlaceInAbandonedSystems", "True"},
		{"IgnoreModelOwner", "True"}
	}}
	
	
	
	-- {
	-- ["PRECEDING_KEY_WORDS"] = {"TkPhysicsComponentData.xml"},
	-- ["ADD"] = Upgrade_Text,
	-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
	-- }
	
	
	
}}}}}}