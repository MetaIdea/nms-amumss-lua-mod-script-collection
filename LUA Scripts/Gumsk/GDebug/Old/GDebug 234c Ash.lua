SkipIntro = "True"				--NO EFFECT Original False
SkipLogos = "True"				--NO EFFECT Original False
UseTerrain = "False"			--Original True
UseObjects = "False"			--Original True
UseBuildings = "False"			--Original True
UseCreatures = "False"			--Original True
UseElevation = "False"			--Original True
SpawnPirates = "False"			--Original True
SpawnRobots = "False"			--Original True
SpawnShips = "True"				--Original True
Profanity = "True"				--Original False
DisableFileWatcher = "True"		--Original False
AddressOnMap = "False"			--Original ""
DisableLimits = "True"			--False
FarLodBuildDist = "1300"		--Original 1000
DisableBaseLimits = "True"		--Original False
BaseDownloadTime = 120			--Original 40
BaseNeedsNoPower = "False"		--Original False (HG Boolean backwards)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GDebug 234c Ash.pak",
["MOD_DESCRIPTION"]	= "Base building changes to GCDEBUGOPTIONS.GLOBAL.MBIN",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.3.2",
["MODIFICATIONS"]	=
{{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{{
["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
["EXML_CHANGE_TABLE"] = 
{{
	["VALUE_CHANGE_TABLE"] =
	{
		{"SkipIntro", SkipIntro},
		{"SkipLogos", SkipLogos},
		{"UseTerrain", UseTerrain},
		{"UseObjects", UseObjects},
		{"UseBuildings", UseBuildings},		
		{"UseCreatures", UseCreatures},
		{"UseElevation", UseElevation},
		{"SpawnPirates", SpawnPirates},
		{"SpawnRobots", SpawnRobots},
		{"SpawnShips", SpawnShips},
		{"DisableProfanityFilter", Profanity},
		{"DisableFileWatcher", DisableFileWatcher},
		{"ShowUniverseAddressOnGalaxyMap", AddressOnMap},
		{"DisableLimits", DisableLimits},
		{"DisableBaseBuildingLimits", DisableBaseLimits},
		{"BaseBuildingPartsRequirePower", BaseNeedsNoPower}	
	}
}}}}}}}