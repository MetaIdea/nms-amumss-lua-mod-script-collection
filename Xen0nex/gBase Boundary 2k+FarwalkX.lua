Author = "Gumsk"	--Edited by Xen0nex
ModName = "gBase"
ModNameSub = "Boundary 2k+FarwalkX"
BaseDescription = "Base boundary and wire length extensions, increases distance for initial walk to starship"
GameVersion = "604"
ModVersion = "a"
FileSource1 = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

	--The following changes to Base Radius & Connection Length can be enabled instead by the .EXML mod gBase Boundaries (2k version)
	--Note that some of these changes will cause other player's bases in Expeditions to "calim" larger areas around their base, requiring traveling farther away than normal to start editing terrain
--MinRadiusForBases = 300							-- When you first build the base, how far out can you build? Original value "300"
--BaseRadiusExtension = 2000						-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
--MaxRadiusForPlanetBases = 2000					-- What is the absolute maximum border distance? Original value "1000"
--MaxRadiusForSpaceBases = 2000					-- Not sure yet. Original 400
BuildingPlacementMaxConnectionLength = 4000		-- How long can one segment of power line or teleporter cable be? Original value "200"

BuildingPlacementScaleMin = .1					-- How small can you scale items? (0.25)
BuildingPlacementScaleMax = 5					-- How large can you scale items? (3)

--Start Location
StartCrashMin = 3000				-- Original value "500
StartCrashMax = 4000				-- Original value "600"
StartShelterMin = 800				-- Original value "800"
StartShelterMax = 1000				-- Original value "1000"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["MXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = "",
		["VALUE_CHANGE_TABLE"] = {
		--{"MinRadiusForBases", MinRadiusForBases},
		--{"BaseRadiusExtension", BaseRadiusExtension},
		--{"MaxRadiusForPlanetBases", MaxRadiusForPlanetBases},
		--{"MaxRadiusForSpaceBases", MaxRadiusForSpaceBases},
		{"BuildingPlacementMaxConnectionLength", BuildingPlacementMaxConnectionLength},
		{"StartCrashSiteMinDistance", StartCrashMin},
		{"StartCrashSiteMaxDistance", StartCrashMax},
		{"StartShelterMinDistance", StartShelterMin},
		{"StartShelterMaxDistance", StartShelterMax},
	}},
	{["PRECEDING_KEY_WORDS"] = "BuildingPlacementScaleMinMax",
		["VALUE_CHANGE_TABLE"] = {
		{"X", BuildingPlacementScaleMin},
		{"Y", BuildingPlacementScaleMax},
	}},
}}}}}}