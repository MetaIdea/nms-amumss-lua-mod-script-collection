SkipIntro = "True"				--NO EFFECT Original False
SkipLogos = "True"				--NO EFFECT Original False
--BootDirect = 1					--NO EFFECT Original -1
GodMode = "False"				--Original False
--AlwaysHaveFocus = "False"			--NO EFFECT? Original False
NoSaveSort = "True"				--Original False
UseParticles = "True"			--Original True
UseVolumetrics = "True"			--Original True
UseClouds = "False"				--NO EFFECT? Original True
UseTerrain = "True"				--Original True
UseInstances = "True"			--Original True
UseObjects = "True"				--Original True
UseBuildings = "True"			--Original True
UseCreatures = "True"			--Original True
UseElevation = "True"			--Original True
SpawnPirates = "True"			--Original True
SpawnRobots = "True"			--Original True
SpawnShips = "True"				--Original True
SpecialsShop = "True"			--Original False
Profanity = "True"				--Original False
DisableFileWatcher = "True"		--Original False
AddressOnMap = "True"			--Original ""
DisableLimits = "True"			--False
FarLodBuildDist = "1300"		--Original 1000
DisableBaseLimits = "True"		--Original False
BaseDownloadTime = 60			--Original 40
BaseNeedsNoPower = "False"		--Original False (HG Boolean backwards)

Unknown0x3EC = "False"			--Probably graphics effects. Original False
Unknown0x3F0 = 0				--Probably graphics related. Original 0
Unknown0x3F1 = "False"			--Probably graphics related. Original False
Unknown0x3FE = "True"			--Graphics / Space / Generation. Original True
Unknown0x3FF = "True"			--Graphics / Space / Generation. Original True
Unknown0x400 = "False"			--Changes freighter layout to alternate pre-freighter-base. Original False
Unknown0x402 = "True"			--Graphics / Space / Generation. Original True
Unknown0x408 = "True"			--Space/Multiplayer. Original True
Unknown0xB9D = "False"			--Networking. Original False
Unknown0xB9E = "False"			--Networking. Original False
Unknown0x14DD = "False"			--Anomaly MP something. Synergy? Original False
Unknown0x14DE = ""				--Anomaly MP something. Synergy? Original ""
Unknown0x15DE = "False"			--Anomaly MP something. Synergy? Original False
Unknown0x15DF = "False"			--Anomaly MP something. Synergy? Original False
Unknown0x19CC = "False"			--HMD/VR? Original False
Unknown0x19CD = "False"			--HMD/VR? Original False
Unknown0x19CE = "True"			--HMD/VR? Original True
Unknown0x19CF = "False"			--HMD/VR? Original False
Unknown0x19D0 = "False"			--HMD/VR/Forced Environment? Original False
Unknown0x19D1 = "False"			--HMD/VR/Forced Environment? Original False
Unknown0x19D2 = "False"			--HMD/VR/Forced Environment? Original False
UnknownInt0x1A14 = "-1"			--Forced planet generation something. Original -1
UnknownInt0x1A18 = "-1"			--Forced planet generation something. Original -1
UnknownInt0x1A1C = "-1"			--Forced planet generation something. Original -1
Unknown0x1A5D = "False"			--Basebuilding? Original False 
UnknownInt0x1A60 = 0			--Basebuilding? Original 0
UnknownInt0x1A64 = 0			--Basebuilding or chat? Original 0
Unknown0x1A68 = "False"			--Basebuilding or chat? Original False
Unknown0x1A69 = "pc"			--Chat system? Original "pc"
UnknownInt0x1A8C = 3			--Chat system? Original 3
Unknown0x1A74 = "False"			--Chat system? Original False
Unknown0x1A75 = "False"			--Chat system? Original False
Unknown0x1A94 = "TkGlobals.xml"	--Chat system? Original "TkGlobals.xml"

NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GDebug 241a Full.pak",
MOD_DESCRIPTION	= "Changes to GCDEBUGOPTIONS.GLOBAL.MBIN",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.4.1",
MODIFICATIONS	=
{{
["PAK_FILE_SOURCE"] = "",
MBIN_CHANGE_TABLE = 
{{
MBIN_FILE_SOURCE = "GCDEBUGOPTIONS.GLOBAL.MBIN",
EXML_CHANGE_TABLE = 
{{
	VALUE_CHANGE_TABLE =
	{
		{"SkipIntro", SkipIntro},
		{"SkipLogos", SkipLogos},
		{"GodMode", GodMode},
		{"DisableSaveSlotSorting", NoSaveSort},
		{"UseParticles", UseParticles},
		{"UseVolumetrics", UseVolumetrics},
		{"UseClouds", UseClouds},
		{"UseTerrain", UseTerrain},
		{"UseInstances", UseInstances},
		{"UseObjects", UseObjects},
		{"UseBuildings", UseBuildings},
		{"UseCreatures", UseCreatures},
		{"UseElevation", UseElevation},
		{"SpawnPirates", SpawnPirates},
		{"SpawnRobots", SpawnRobots},
		{"SpawnShips", SpawnShips},
		{"SpecialsShop", SpecialsShop},
		{"DisableProfanityFilter", Profanity},
		{"DisableFileWatcher", DisableFileWatcher},
		{"ShowUniverseAddressOnGalaxyMap", AddressOnMap},
		{"GenerateFarLodBuildingDist", FarLodBuildDist},
		{"DisableLimits", DisableLimits},
		{"DisableBaseBuildingLimits", DisableBaseLimits},
		{"BaseBuildingPartsRequirePower", BaseNeedsNoPower},
		{"BaseDownloadTimeout", BaseDownloadTime},
		
		{"Unknown0x3EC", Unknown0x3EC},
		{"Unknown0x3F0", Unknown0x3F0},
		{"Unknown0x3F1", Unknown0x3F1},
		{"Unknown0x408", Unknown0x408},		
		{"Unknown0x1A5D", Unknown0x1A5D},
		{"Unknown0xB9D", Unknown0xB9D},
		{"Unknown0xB9E", Unknown0xB9E},
		{"Unknown0x3FE", Unknown0x3FE},
		{"Unknown0x3FF", Unknown0x3FF},
		{"Unknown0x402", Unknown0x402},
		{"UnknownInt0x1A60", UnknownInt0x1A60},
		{"UnknownInt0x1A64", UnknownInt0x1A64},
		{"Unknown0x1A68", Unknown0x1A68},
		{"Unknown0x1A69", Unknown0x1A69},		
		{"UnknownInt0x1A8C", UnknownInt0x1A8C},
		{"Unknown0x1A74", Unknown0x1A74},
		{"Unknown0x1A75", Unknown0x1A75},
		{"Unknown0x1A94", Unknown0x1A94}	
	}
}}}}}}}