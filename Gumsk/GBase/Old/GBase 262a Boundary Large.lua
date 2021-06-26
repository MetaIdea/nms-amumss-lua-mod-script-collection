Author = "+Gumsk"
ModName = "GBase"
ModNameSub = "Boundary-Wire-Pipe Large"
BaseDescription = "Base boundary and wire length extensions"
GameVersion = "262"
ModVersion = "a"
FileSource1 = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

BaseBorderStartRadius = 1010				-- When you first build the base, how far out can you build? Original value "300"
BaseBorderBump = 200						-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
BaseBorderMaxRadius = 2020					-- What is the absolute maximum border distance? Original value "1000"
MaximumPipeSegmentLength = 2000				-- Maximum supply pipe segment length, in u. Original value "400"
-- Unknown0x280 = 2000						--2000 ; ???
-- BuildItemFreePlacementDistance = 100		--Unknown0x288 Below 10 scales up base building objects and moves build camera. Original value "100"
BuildingPlacementMaxConnectionLength = 2000				-- How long can one segment of power line or teleporter cable be? Original value "200"
-- InvalidSkyPlacementVerticalOffset = 100		--?? , Unknown0x28C
-- MinimumHorizontalSnapDistance = 100			--?? , Unknown0x290
-- DebugForceShowInactives = "True"			--False

--Start Location
StartCrashMin = 500					-- Original value "500
StartCrashMax = 600					-- Original value "600"
StartShelterMin = 800				-- Original value "800"
StartShelterMax = 1000				-- Original value "1000"

--Testing
-- Unknown0x280 = 2000					--?? Original value "2000"
--


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] = {
		{"MinRadiusForBases", BaseBorderStartRadius},
		{"BaseRadiusExtension", BaseBorderBump},
		{"MaxRadiusForBases", BaseBorderMaxRadius},
		{"BuildingPlacementMaxConnectionLength", BuildingPlacementMaxConnectionLength},
		{"MaximumPipeSegmentLength", MaximumPipeSegmentLength},
		{"StartCrashSiteMinDistance", StartCrashMin},
		{"StartCrashSiteMaaxDistance", StartCrashMax},
		{"StartShelterMinDistance", StartShelterMin},
		{"StartShelterMaxDistance", StartShelterMax},
--		{"DebugForceShowInactives", DebugForceShowInactives},
	}
}}}}}}}