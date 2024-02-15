Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Boundary 20k"
BaseDescription = "Base boundary and wire length extensions"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

MinRadiusForBases = 20000						-- When you first build the base, how far out can you build? Original value "300"
BaseRadiusExtension = 0							-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
MaxRadiusForPlanetBases = 20000					-- What is the absolute maximum border distance? Original value "1000"
MaxRadiusForSpaceBases = 20000					-- Not sure yet. Original 400
BuildingPlacementMaxConnectionLength = 40000	-- How long can one segment of power line or teleporter cable be? Original value "200"
BuildingPlacementScaleMin = .1					-- How small can you scale items? (0.25)
BuildingPlacementScaleMax = 5					-- How large can you scale items? (3)

--Start Location
StartCrashMin = 500					-- Original value "500
StartCrashMax = 600					-- Original value "600"
StartShelterMin = 800				-- Original value "800"
StartShelterMax = 1000				-- Original value "1000"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = "",
		["VALUE_CHANGE_TABLE"] = {
		{"MinRadiusForBases", MinRadiusForBases},
		{"BaseRadiusExtension", BaseRadiusExtension},
		{"MaxRadiusForPlanetBases", MaxRadiusForPlanetBases},
		{"MaxRadiusForSpaceBases", MaxRadiusForSpaceBases},
		{"BuildingPlacementMaxConnectionLength", BuildingPlacementMaxConnectionLength},
		{"StartCrashSiteMinDistance", StartCrashMin},
		{"StartCrashSiteMaxDistance", StartCrashMax},
		{"StartShelterMinDistance", StartShelterMin},
		{"StartShelterMaxDistance", StartShelterMax},
	}},
	{["PRECEDING_KEY_WORDS"] = "BuildingPlacementScaleMinMax",
		["VALUE_CHANGE_TABLE"] = {
		{"x", BuildingPlacementScaleMin},
		{"y", BuildingPlacementScaleMax},
	}},
}}}}}}