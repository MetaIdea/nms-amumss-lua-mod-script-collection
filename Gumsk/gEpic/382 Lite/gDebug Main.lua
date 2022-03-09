Author = "Gumsk"
ModName = "gDebug"
ModNameSub = "Main"
BaseDescription = "Changes to GCDEBUGOPTIONS.GLOBAL.MBIN"
GameVersion = "382"
ModVersion = "a"
FileSource = "GCDEBUGOPTIONS.GLOBAL.MBIN"

	GodMode = "False"							--False
	TakeNoDamage = "False"						--False
DebugGalaxyMapInQuickMenu = "True"			--False
	MapWarpCheckIgnoreFuel = "False"			--False
	MapWarpCheckIgnoreDrive = "False"			--False
	EverythingIsFree = "False"					--False
	EverythingIsKnown = "False"					--False
	EverythingIsStar = "False"					--False
	InfiniteStamina = "False"					--False
	IgnoreMissionRank = "False"					--False
	UseScreenEffects = "True"					--True
	SkipTutorial = "False"						--False
	IgnoreFreighterSpawnWarpRequirement = "False" --False
	MaximumFreighterSpawns = "False"			--False
DisableSaveSlotSorting = "True"				--False
	MPMissionsAlwaysEPIC = "False"				--False
	UseParticles = "True"						--True
	UseHeavyAiir = "True"						--True
	UseVolumetrics = "True"						--True
	UseTerrain = "True"							--True
	UseInstances = "True"						--True
	UseObjects = "True"							--True
	UseBuildings = "True"						--True
	UseCreatures = "True"						--True
	UseElevation = "True"						--True
	EnableDayNightCycle = "True"				--True
	SpawnPirates = "True"						--True
	SpawnRobots = "True"						--True
	SpawnShips = "True"							--True
	SpawnPulseEncounters = "True"				--True
	MPMissions = "True"							--True
	SpecialsShop = "False"						--False
MultiplePlayerFreightersInASystem = "True"	--False
	BootLogoFadeRate = 2.5						--2.5
	DebugBuildingSpawns = "False"				--False
DisableProfanityFilter = "True"				--False
DisableFileWatcher = "True"					--False
ShowPositionDebug = "True"					--False
ShowUniverseAddressOnGalaxyMap = "True"		--""
	DisableBasePowerRequirements = "False"		--False
	EnableBaseMovingOption = "False"			--False
	MoveBaseIndex = 0							--0
DisableLimits = "True"						--False
DisableBaseBuildingLimits = "True"			--False
BaseDownloadTimeout = 60					--40
AllowSavingOnAbandonedFreighters = "True"	--False
RevealAllTitles = "True"					--False
	UnlockAllTitles = "False"					--False
AlwaysAllowShipOperations = "True"			--False
AlwaysAllowVehicleOperations = "True"		--False
AlwaysAllowFreighterInventoryAccess = "True"--False

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] 	= {
	{["VALUE_CHANGE_TABLE"] = {
		{"GodMode", GodMode},
		{"TakeNoDamage", TakeNoDamage},
		{"DebugGalaxyMapInQuickMenu", DebugGalaxyMapInQuickMenu},
		{"MapWarpCheckIgnoreFuel", MapWarpCheckIgnoreFuel},		
		{"MapWarpCheckIgnoreDrive", MapWarpCheckIgnoreDrive},
		{"EverythingIsFree", EverythingIsFree},		
		{"EverythingIsKnown", EverythingIsKnown},
		{"EverythingIsStar", EverythingIsStar},		
		{"InfiniteStamina", InfiniteStamina},
		{"IgnoreMissionRank", IgnoreMissionRank},		
		{"UseScreenEffects", UseScreenEffects},
		{"SkipTutorial", SkipTutorial},		
		{"IgnoreFreighterSpawnWarpRequirement", IgnoreFreighterSpawnWarpRequirement},
		{"MaximumFreighterSpawns", MaximumFreighterSpawns},			
		{"DisableSaveSlotSorting", DisableSaveSlotSorting},
		{"MPMissionsAlwaysEPIC", MPMissionsAlwaysEPIC},		
		{"UseParticles", UseParticles},
		{"UseHeavyAiir", UseHeavyAiir},
		{"UseVolumetrics", UseVolumetrics},
		{"UseTerrain", UseTerrain},
		{"UseInstances", UseInstances},
		{"UseObjects", UseObjects},
		{"UseBuildings", UseBuildings},
		{"UseCreatures", UseCreatures},
		{"UseElevation", UseElevation},
		{"EnableDayNightCycle", EnableDayNightCycle},
		{"SpawnPirates", SpawnPirates},
		{"SpawnRobots", SpawnRobots},
		{"SpawnShips", SpawnShips},
		{"SpawnPulseEncounters", SpawnPulseEncounters},
		{"MPMissions", MPMissions},
		{"SpecialsShop", SpecialsShop},
		{"MultiplePlayerFreightersInASystem", MultiplePlayerFreightersInASystem},
		{"BootLogoFadeRate", BootLogoFadeRate},
		{"DebugBuildingSpawns", DebugBuildingSpawns},
		{"DisableProfanityFilter", DisableProfanityFilter},
		{"DisableFileWatcher", DisableFileWatcher},
		{"ShowPositionDebug", ShowPositionDebug},
		{"ShowUniverseAddressOnGalaxyMap", ShowUniverseAddressOnGalaxyMap},
		{"DisableBasePowerRequirements", DisableBasePowerRequirements},
		{"EnableBaseMovingOption", EnableBaseMovingOption},
		{"MoveBaseIndex", MoveBaseIndex},
		{"DisableLimits", DisableLimits},
		{"DisableBaseBuildingLimits", DisableBaseBuildingLimits},
		{"BaseDownloadTimeout", BaseDownloadTimeout},
		{"AllowSavingOnAbandonedFreighters", AllowSavingOnAbandonedFreighters},
		{"RevealAllTitles", RevealAllTitles},
		{"UnlockAllTitles", UnlockAllTitles},
		{"AlwaysAllowShipOperations", AlwaysAllowShipOperations},
		{"AlwaysAllowVehicleOperations", AlwaysAllowVehicleOperations},
		{"AlwaysAllowFreighterInventoryAccess", AlwaysAllowFreighterInventoryAccess},
	}}
}}}}}}