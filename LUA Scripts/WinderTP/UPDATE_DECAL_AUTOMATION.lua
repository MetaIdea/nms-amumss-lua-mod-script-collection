DECAL_MISC = {	["ARROW_POINT"] = 	{ 	"ARROW_POINT"
									},
				["CATEGORIES"] = 	{ 	"BUILDCATAGORY.ALL",
										"BUILDCATAGORY.BUILDINGPART",
										"BUILDCATAGORY.COMPONENT",
										"BUILDCATAGORY.CONSUMABLE",
										"BUILDCATAGORY.CURIOSITY",
										"BUILDCATAGORY.DEVICE",
									},
				["HAZARDS"] = 		{	"HAZARDS.COLD",
										"HAZARDS.HEAT",
										"HAZARDS.RADIOACTIVE",
										"HAZARDS.TOXIC",
										"HAZARDS.WATER",
										"LIFESUPPORT",
									},
				["RANK"] = 			{	"FACTIONS.ASTRONAUT.OFF",
										"FACTIONS.EXPLORERGUILD.OFF",
										"FACTIONS.FOURTH.OFF",
										"FACTIONS.GEK.OFF",
										"FACTIONS.KORVAX.OFF",
										"FACTIONS.TRADEGUILD.OFF",
										"FACTIONS.VYKEEN.OFF",
										"FACTIONS.WARRIORGUILD.OFF",
									},
				["STATS"] = 		{	"STATS.SHIP.HYDERDRIVE",
										"STATS.SHIP.INVCARGO.OFF",
										"STATS.SHIP.INVGENERAL.OFF",
										"STATS.SHIP.INVTECH.OFF",
										"STATS.SHIP.SCAN",
										"STATS.SHIP.WEAPONS",
										"STATS.SUIT.ARMOUR",
										"STATS.SUIT.PROTECTION",
										"STATS.SUIT.STAMINA",
										"STATS.SUIT.UTILITIES",
										"STATS.WEAPON.GRENADE",
										"STATS.WEAPON.JETPACK",
										"STATS.WEAPON.LASER",
									},
				["UPDATE1"] = 		{	"PRODUCT.BARRENPLANT",
										"PRODUCT.CREATUREPLANT",
										"PRODUCT.GRAVPLANT",
										"PRODUCT.LUSHPLANT",
										"PRODUCT.NIPPLANT",
										"PRODUCT.PEARLPLANT",
										"PRODUCT.POOPPLANT",
										"PRODUCT.RADIOPLANT",
										"PRODUCT.SACVENOMPLANT",
										"PRODUCT.SCORCHPLANT",
										"PRODUCT.SNOWPLANT",
										"PRODUCT.TOXICPLANT",
									},
				["UPDATE3"] = 		{	"PORTALSYMBOL.0",
										"PORTALSYMBOL.1",
										"PORTALSYMBOL.2",
										"PORTALSYMBOL.3",
										"PORTALSYMBOL.4",
										"PORTALSYMBOL.5",
										"PORTALSYMBOL.6",
										"PORTALSYMBOL.7",
										"PORTALSYMBOL.8",
										"PORTALSYMBOL.9",
										"PORTALSYMBOL.A",
										"PORTALSYMBOL.B",
										"PORTALSYMBOL.C",
										"PORTALSYMBOL.D",
										"PORTALSYMBOL.E",
										"PORTALSYMBOL.F",
									},
				["WIKI"] = 			{	"WIKI.COMBAT.OFF",
										"WIKI.CRAFTEDPROD.OFF",
										"WIKI.EXPLORATION.OFF",
										"WIKI.PORTAL.OFF",
										"WIKI.RAWMAT.OFF",
										"WIKI.SURVIVAL.OFF",
										"WIKI.TECHNOLOGY.OFF",
										"WIKI.TRADESTAND.OFF",
									},
}

function GetLetter(LETTER, LU)
LARGESMALL = ""
if LU == "U" then LARGESMALL = "Upper" UD = "UP" else LARGESMALL = "Lower" UD = "LOW" end
return
[[
	{	["OBJECT"] = {	["ID"] =						"LETTERL]] .. LETTER .. LU .. [[",
						["SnapPoints"] = 				"", 			-- SnapPoints PATH SET TO Model PATH IF LEFT EMPTY
						["Model"] = 					"CUSTOMMODELS/SC_HUBFLAG/LETTERS/LARGE]] .. UD .. [[/LETTERS_L]] .. LETTER .. LU .. [[.SCENE.MBIN",
						["DecorationType"] = 			"SurfaceNormal",
						["IsDecoration"] = 				"True",
						["Biome"] = 					"Lush",
						["BuildableOnFreighter"] = 		"True",
						["BuildableOnPlanet"] = 		"False",
						["CheckPlaceholderCollision"] = "False",
						["CollisionScale"] = 			"0.9",
						["EnableCollision"] = 			"True",
						["CanPlaceOnItself"] = 			"True",
						["CanScale"] = 					"True",
						["Groups"] = 					{ "WLETTERL]] .. LU .. [[" },
						["StorageContainerIndex"] = 	"-1",
						["CanChangeColour"] = 			"False",
						["CanChangeMaterial"] = 		"False",
						["RemovesAttachedDecoration"] = "False",
						["EditsTerrain"] =				"False",
						["BaseTerrainEditShape"] = 		"Cube",
						["TerrainEditBaseYOffset"] = 	"0",
						["TerrainEditTopYOffset"] = 	"0",
						["TerrainEditBoundsScalar"] = 	"1",
						["IsSealed"] = 					"False",
						["Connection"] = 				"DECOR",		-- BASIC / CUBEROOM / DECOR, OUTPOSTS COUNT AS CUBEROOM
					},
		["PRODUCT"] = {	["Name"] = 						"",				-- Name SET TO NameLower IN ALL CAPS IF LEFT EMPTY
						["NameLower"] = 				"Large ]] .. LARGESMALL .. [[ ]] .. LETTER .. [[",
						["Subtitle"] = 					"",				-- Subtitle SET TO NameLower IF LEFT EMPTY
						["Description"] = 				"Letter.",
						-- ICON PATH SET TO CUSTOMMODELS/SC_HUBFLAG/DECOR/ICONS/ + "ID" + .DDS IF LEFT EMPTY
						["Icon"] = 						"CUSTOMMODELS/SC_HUBFLAG/LETTERS/LARGE]] .. UD .. [[/]] .. LETTER .. [[/DECAL.LETTER.L]] .. LETTER .. LU .. [[.DDS",
						["Requirements"] ={ 
											{ ["ID"] = 				"FUEL1",
											  ["InventoryType"] = 	"Substance",
											  ["Amount"] = 			"20"
											},
										}
					}
	},
]]
end

function GetMisc(FILEPATH, ICONPATH)
return
[[
	{	["OBJECT"] = {	["ID"] =						"WDECAL_",
						["SnapPoints"] = 				"", 			-- SnapPoints PATH SET TO Model PATH IF LEFT EMPTY
						["Model"] = 					"]] .. FILEPATH .. [[",
						["DecorationType"] = 			"SurfaceNormal",
						["IsDecoration"] = 				"True",
						["Biome"] = 					"Lush",
						["BuildableOnFreighter"] = 		"True",
						["BuildableOnPlanet"] = 		"False",
						["CheckPlaceholderCollision"] = "False",
						["CollisionScale"] = 			"0.9",
						["EnableCollision"] = 			"True",
						["CanPlaceOnItself"] = 			"True",
						["CanScale"] = 					"True",
						["Groups"] = 					{ "WDECAL_MISC" },
						["StorageContainerIndex"] = 	"-1",
						["CanChangeColour"] = 			"False",
						["CanChangeMaterial"] = 		"False",
						["RemovesAttachedDecoration"] = "False",
						["EditsTerrain"] =				"False",
						["BaseTerrainEditShape"] = 		"Cube",
						["TerrainEditBaseYOffset"] = 	"0",
						["TerrainEditTopYOffset"] = 	"0",
						["TerrainEditBoundsScalar"] = 	"1",
						["IsSealed"] = 					"False",
						["Connection"] = 				"DECOR",		-- BASIC / CUBEROOM / DECOR, OUTPOSTS COUNT AS CUBEROOM
					},
		["PRODUCT"] = {	["Name"] = 						"BLD_DECAL_NAME",				-- Name SET TO NameLower IN ALL CAPS IF LEFT EMPTY
						["NameLower"] = 				"BLD_DECAL_NAME_L",
						["Subtitle"] = 					"BLD_DECAL_SUBTITLE",				-- Subtitle SET TO NameLower IF LEFT EMPTY
						["Description"] = 				"BLD_DECAL_DESCRIPTION",
						-- ICON PATH SET TO CUSTOMMODELS/SC_HUBFLAG/DECOR/ICONS/ + "ID" + .DDS IF LEFT EMPTY
						["Icon"] = 						"]] .. ICONPATH .. [[",
						["Requirements"] ={ 
											{ ["ID"] = 				"FUEL1",
											  ["InventoryType"] = 	"Substance",
											  ["Amount"] = 			"20"
											},
										}
					}
	},
]]
end

function GetNeon(LETTER)
return
[[
	{	["OBJECT"] = {	["ID"] =						"NEONLETTER_L]] .. LETTER .. [[",
						["SnapPoints"] = 				"", 			-- SnapPoints PATH SET TO Model PATH IF LEFT EMPTY
						["Model"] = 					"CUSTOMMODELS/SC_HUBFLAG/LETTERS/LARGENEON/NEON_L]] .. LETTER .. [[.SCENE.MBIN",
						["DecorationType"] = 			"SurfaceNormal",
						["IsDecoration"] = 				"True",
						["Biome"] = 					"Lush",
						["BuildableOnFreighter"] = 		"True",
						["BuildableOnPlanet"] = 		"False",
						["CheckPlaceholderCollision"] = "False",
						["CollisionScale"] = 			"0.9",
						["EnableCollision"] = 			"True",
						["CanPlaceOnItself"] = 			"True",
						["CanScale"] = 					"True",
						["Groups"] = 					{ "WNEONLL" },
						["StorageContainerIndex"] = 	"-1",
						["CanChangeColour"] = 			"True",
						["CanChangeMaterial"] = 		"False",
						["RemovesAttachedDecoration"] = "False",
						["EditsTerrain"] =				"False",
						["BaseTerrainEditShape"] = 		"Cube",
						["TerrainEditBaseYOffset"] = 	"0",
						["TerrainEditTopYOffset"] = 	"0",
						["TerrainEditBoundsScalar"] = 	"1",
						["IsSealed"] = 					"False",
						["Connection"] = 				"DECOR",		-- BASIC / CUBEROOM / DECOR, OUTPOSTS COUNT AS CUBEROOM
					},
		["PRODUCT"] = {	["Name"] = 						"",				-- Name SET TO NameLower IN ALL CAPS IF LEFT EMPTY
						["NameLower"] = 				"Large Neon ]] .. LETTER .. [[",
						["Subtitle"] = 					"",				-- Subtitle SET TO NameLower IF LEFT EMPTY
						["Description"] = 				"Letter.",
						-- ICON PATH SET TO CUSTOMMODELS/SC_HUBFLAG/DECOR/ICONS/ + "ID" + .DDS IF LEFT EMPTY
						["Icon"] = 						"CUSTOMMODELS\SC_HUBFLAG\LETTERS\LARGENEON\ICON\NEONLETTER_]] .. LETTER .. [[.DDS",
						["Requirements"] ={ 
											{ ["ID"] = 				"FUEL1",
											  ["InventoryType"] = 	"Substance",
											  ["Amount"] = 			"20"
											},
										}
					}
	},
]]
end

EXPORT_DATA = ""
for i=string.byte("A"), string.byte("Z") do
EXPORT_DATA = EXPORT_DATA .. GetLetter(string.char(i), "U")
end
for i=string.byte("A"), string.byte("Z") do
EXPORT_DATA = EXPORT_DATA .. GetLetter(string.char(i), "L")
end
for i=string.byte("A"), string.byte("Z") do
EXPORT_DATA = EXPORT_DATA .. GetNeon(string.char(i))
end

for i, j in pairs(DECAL_MISC) do
    for k, l in pairs(DECAL_MISC[i]) do
		MODEL = ""
		ICON = ""
		MODEL =[[CUSTOMMODELS\SC_HUBFLAG\DECALS\]] .. i .. [[\]] .. l .. [[.SCENE.MBIN]]
		ICON = [[CUSTOMMODELS\SC_HUBFLAG\DECALS\]] .. i .. [[\]] .. l .. [[\]] .. l .. [[_ICON.DDS]]
		EXPORT_DATA = EXPORT_DATA .. GetMisc(MODEL, ICON)
    end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Winder_UpdateBlock_Generate.pak",
["MOD_AUTHOR"]				= "Winder",
["MOD_DESCRIPTION"]			= "Not intended to be compiled, export to txt",
["NMS_VERSION"]				= "3.21+",
["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] = "UPDATE_DECALS_DATABLOCK.txt",
			["FILE_CONTENT"] 	 = EXPORT_DATA
		},
}
}