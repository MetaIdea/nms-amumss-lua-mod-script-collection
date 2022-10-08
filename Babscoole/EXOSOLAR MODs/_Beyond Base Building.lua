
-- You can enable/disable mod features here :
---------------------------------------------
---------------------------------------------

-- /!\ WARNING /!\ : true/false parameters must be written in lowercase characters (blue highlight in Notepad++).

-- Terrain edit :

DISABLE_TERRAINEDIT_FOR_TIMBER = false          --Vanilla false // Mod default false // true to disable terrain edit for timber floors
DISABLE_TERRAINEDIT_FOR_ALLOY = false           --Vanilla false // Mod default false // true to disable terrain edit for alloy floors
DISABLE_TERRAINEDIT_FOR_STONE = false           --Vanilla false // Mod default false // true to disable terrain edit for stone floors
DISABLE_TERRAINEDIT_FOR_WOOD = false            --Vanilla false // Mod default false // true to disable terrain edit for legacy wood floors
DISABLE_TERRAINEDIT_FOR_CONCRETE = false        --Vanilla false // Mod default false // true to disable terrain edit for legacy concrete floors
DISABLE_TERRAINEDIT_FOR_METAL = false           --Vanilla false // Mod default false // true to disable terrain edit for legacy metal floors
DISABLE_TERRAINEDIT_FOR_LIGHTFLOOR = false      --Vanilla false // Mod default false // true to disable terrain edit for light floor
DISABLE_TERRAINEDIT_FOR_PAVING = false          --Vanilla false // Mod default false // true to disable terrain edit for paving floors
DISABLE_TERRAINEDIT_FOR_ALL = false             --Vanilla false // Mod default false // true to disable terrain edit for ALL building parts (all floors, geobays, prefab rooms, etc)

-- General limitations :
ALL_PARTS_ABOVE_WATER = true                    --Vanilla false // Mod default true // true to enable all building parts above water
ALL_PARTS_UNDER_WATER = true                    --Vanilla false // Mod default true // true to enable all building parts under water
--*******Please keep in mind that ALL_PARTS_ON_FREIGHTER only changes one property, but post Endurance other changes may be required*******
ALL_PARTS_ON_FREIGHTER = true                   --Vanilla false // Mod default true // true to enable all building parts on freighters
--*******Please keep in mind that ALL_PARTS_ON_FREIGHTER only changes one property, but post Endurance other changes may be required*******
--*******Please keep in mind that ALL_PARTS_ON_PLANETBASE only changes one property, but post Endurance other changes may be required*******
ALL_PARTS_ON_PLANETBASE = true                  --Vanilla false // Mod default true // true to enable all building parts on planet bases (like freighter ones).
--*******Please keep in mind that ALL_PARTS_ON_PLANETBASE only changes one property, but post Endurance other changes may be required*******
NO_BUILDCOUNT_LIMIT = false                     --Vanilla false // Mod Default false // true to remove build-count limits on almost all parts. If false, all parts NOT related to resources farming will be unlimited

-- Specific placements/limits :
MARINESHELTER_ABOVE_WATER = false               --Vanilla false // Mod default false // true to enable marine shelter placement above water, ALL_PARTS_ABOVE_WATER must be true too
EXOMATERIALISER_ON_PLANETBASE = false           --Vanilla false // Mod default false // true to enable the Orbital Exocraft Materialiser on planet bases (decorative purpose only), ALL_PARTS_ON_PLANETBASE must be true too
FARM_IN_ANY_BIOME = false                       --Vanilla false // Mod default false // true to enable planting in any biome
METAL_PARTS_OUTSIDE_BASE = false                --Vanilla false // Mod default false // true to makes some metal parts buildable outside of bases. Won't snap together outside of bases! Use it at your own risks!
GEOBAYS_ON_FREIGHTER = false                    --Vanilla false // Mod default false // true to enable vehicles geobays on freighters, ALL_PARTS_ON_FREIGHTER must be true too. Can be very glitchy, use it at your own risks!
O2_ATMO_HARVESTERS_ANYWHERE = false             --Vanilla false // Mod default false // true to make Oxygen and Atmosphere harvesters buildable NOT only on bare terrain (also makes them buildable but bugged on dead planets).
CAN_SCALE_PREFAB_PARTS = false                  --Vanilla false // Mod Default false // true to allow all prefab rooms related parts to be scaled (doors attachment points bug out when scaled though)
CAN_SCALE_EXTRACTORS = false                    --Vanilla false // Mod Default false // true to allow gas/mineral extractors to be scaled (when greatly scaled their resources won't be linked to the resources network though)
---------------------------------------------
---------------------------------------------
-- GUIGeo = { enableGeos = { false, [[Do you want GeoBays on Freighters? Default = N. ]] },}
-- GEOBAYS_ON_FREIGHTER = GUIF( GUIGeo.enableGeos )

-- GUIFarm = { enableFarm = { false, [[Do you want to farm in any biome?  Default = N. ]] },}
-- FARM_IN_ANY_BIOME = GUIF( GUIFarm.enableFarm )

----- Settings related tables -----
-----------------------------------

-- Timber, alloy, stone, wood, concrete, metal, light floor, paving floors tables.
TIMBER_FLOOR_KEYWORD_TABLE = {"T_FLOORS"}                       -- Timber floors
ALLOY_FLOOR_KEYWORD_TABLE = {"F_FLOORS"}                        -- Alloy floors
STONE_FLOOR_KEYWORD_TABLE = {"S_FLOORS"}                        -- Stone floors
WOOD_FLOOR_KEYWORD_TABLE = {"BASICWOOD"}                        -- Wood floors (legacy)
CONC_FLOOR_KEYWORD_TABLE = {"BASICCONCRETE"}                    -- Concrete floors (legacy)
METAL_FLOOR_KEYWORD_TABLE = {"BASICMETAL"}                      -- Metal floors (legacy)

LIGHT_FLOOR_ID_TABLE = {"L_FLOOR_Q"}                            -- Light floor
PAVING_FLOOR_ID_TABLE = {"BUILDPAVING", "BUILDPAVING_BIG"}      -- Paving (small and big floor ones)

DISABLE_TERRAINEDIT_ID_TABLE = {} --define new empty parent table for parts (by ID)
DISABLE_TERRAINEDIT_KEYWORD_TABLE = {} --define new empty parent table for parts (by subgroup keywords)

if DISABLE_TERRAINEDIT_FOR_ALL == false	then

	n = 0
	if DISABLE_TERRAINEDIT_FOR_TIMBER then
		for _,v in ipairs(TIMBER_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_ALLOY then
		for _,v in ipairs(ALLOY_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_STONE then
		for _,v in ipairs(STONE_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_WOOD then
		for _,v in ipairs(WOOD_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_CONCRETE then
		for _,v in ipairs(CONC_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_METAL then
		for _,v in ipairs(METAL_FLOOR_KEYWORD_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_KEYWORD_TABLE[n]=v
		end
	end

	n = 0
	if DISABLE_TERRAINEDIT_FOR_LIGHTFLOOR then
		for _,v in ipairs(LIGHT_FLOOR_ID_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_ID_TABLE[n]=v
		end
	end
	if DISABLE_TERRAINEDIT_FOR_PAVING then
		for _,v in ipairs(PAVING_FLOOR_ID_TABLE) do n=n+1;
		DISABLE_TERRAINEDIT_ID_TABLE[n]=v
		end
	end
end


-- Exceptions if ALL_PARTS_ABOVE_WATER is true
NOT_ABOVE_WATER_BUILDPART_ID_TABLE = {"GARAGE_SUB"}


-- Exceptions if ALL_PARTS_ON_FREIGHTER is true
NOT_FREIGHTER_BUILDPART_ID_TABLE = {"BASE_FLAG", "BASECAPSULE", "MESSAGE", "BUILDLANDINGPAD", "S_LANDINGZONE", "BUILDSIGNAL", "BUILDBEACON", "U_EXTRACTOR_S", "U_GASEXTRACTOR", "U_SILO_S", "U_GENERATOR_S", "U_PIPELINE", "CREATURE_FEED", "CREATURE_FARM", "BUILDHARVESTER", "BUILDGASHARVEST", "TELEPORTER", "O2_HARVESTER"}
-- Notes : BASECAPSULE (Base Salvage Capsule) originally buildable but bugged on freighters.
-- Vehicles parts are excluded in the dedicated part at the bottom of the script (Geobays, Race Initiator...)


-- Exceptions if ALL_PARTS_ON_PLANETBASE is true
NOT_PLANETBASE_BUILDPART_ID_TABLE = {"TELEPORTER_F"}


-- Keywords to match prefab parts if CAN_SCALE_PREFAB_PARTS is false
PREFAB_KEYWORDS_TABLE = {"ROOMS", "FREIGHTER"}


-- Freighter's storage containers list (don't match "FREIGHTER" keyword to apply scaling rules)
FREIGHTER_CONTAINERS_ID_TABLE = {"S_CONTAINER0", "S_CONTAINER1", "S_CONTAINER2", "S_CONTAINER3", "S_CONTAINER4", "S_CONTAINER5", "S_CONTAINER6", "S_CONTAINER7", "S_CONTAINER8", "S_CONTAINER9"}


-- Metal parts buildable outside of bases if METAL_PARTS_OUTSIDE_BASE is true
METAL_OUTSIDE_BASE_ID_TABLE = {"M_WALL", "M_DOOR", "M_FLOOR", "M_RAMP", "M_ROOF", "M_ARCH"}


-- Geobays buildable on freighters if GEOBAYS_ON_FREIGHTER is true
GEOBAYS_ON_FREIGHTER_ID_TABLE = {"SUMMON_GARAGE", "GARAGE_B", "GARAGE_S", "GARAGE_M", "GARAGE_L", "GARAGE_MECH"}


-- Parts that can be built anywhere (not only on bare terrain)
ANYTERRAIN_BUILDPART_ID_TABLE = {"FOUNDATION", "BUILDPAVING", "BUILDPAVING_BIG", "BUILDPAVINGTALL", "MESSAGE"}
-- Notes : Atmosphere and Oxygen harvesters are not included by default, cause changing their "BaseBuildingDecorationType" property also makes them buildable on dead planets (incoherent, and bugged on them)

O2_ATMO_HARVESTERS_ID_TABLE = {"O2_HARVESTER", "BUILDGASHARVEST"}

-- If O2_ATMO_HARVESTERS_ANYWHERE = true, adds Oxygen and Atmosphere harvesters to the list of parts buildable anywhere (not only on bare terrain)
if O2_ATMO_HARVESTERS_ANYWHERE then
	for _,v in ipairs(O2_ATMO_HARVESTERS_ID_TABLE) do table.insert(ANYTERRAIN_BUILDPART_ID_TABLE, v)
	end
end

-- Re-add planters and Pots after Endurance update
PLANTERS_ON_FREIGHTER_ID_TABLE = {"PLANTERMEGA", "PLANTER", "PLANTPOT", "PLANTPOT1", "PLANTPOT2", "PLANTPOT3"}

-- Re-add Misc on freighters after Endurance update
MISC_ON_FREIGHTER_ID_TABLE = {"POWERLINE_HIDER", "NOISEBOX", "SPAWNER_BALL", "BYTEBEATSWITCH", "RACE_START", "RACE_RAMP", "RACE_BOOSTER", "BUILD_REFINER2", "BUILD_REFINER3", "DRESSING_TABLE", "BUILDTERMINAL", "TELEPORTER", "BUILDSIGNAL", "O2_HARVESTER", "BUILDGASHARVEST", "BUILDHARVESTER", "BUILDANTIMATTER", "BASECAPSULE", "CREATURE_FARM", "CREATURE_FEED", "U_GENERATOR_S", "U_PIPELINE", "U_EXTRACTOR_S", "U_SILO_S", "U_GASEXTRACTOR"}

-- Plant in any biome
FARM_IN_ANY_BIOME_ID_TABLE = {"RADIOPLANT", "TOXICPLANT", "SNOWPLANT", "SACVENOMPLANT", "SCORCHEDPLANT", "POOPPLANT", "GRAVPLANT", "CREATUREPLANT", "BARRENPLANT", "LUSHPLANT", "PEARLPLANT", "NIPPLANT"}

-- Exceptions to {"CanScale","True"}
NOT_SCALEABLE_BUILDPART_ID_TABLE = {"BASE_FLAG", "BUILDLANDINGPAD", "S_LANDINGZONE"}
-- Notes : vehicles and prefab parts are excluded in the dedicated part at the bottom of the script.

EXTRACTORS_ID_TABLE = {"U_EXTRACTOR_S", "U_GASEXTRACTOR"}

-- If CAN_SCALE_EXTRACTORS = false, adds gas/mineral extractors to the list of not-scaleable parts.
if CAN_SCALE_EXTRACTORS == false then
	for _,v in ipairs(EXTRACTORS_ID_TABLE) do table.insert(NOT_SCALEABLE_BUILDPART_ID_TABLE, v)
	end
end

----- Settings related tables end -----
---------------------------------------



----- NOT settings related tables -----
---------------------------------------

-- Vehicles parts which can be scaled
SCALEABLE_VEHICLESPART_ID_TABLE = {"RACE_RAMP", "RACE_BOOSTER"}

-- Parts which are unlimited by the mod even if NO_BUILDCOUNT_LIMIT is false.
-- Removed "GARAGE_FREIGHT" due to warning for 3.97 Endurance
UNLIMITED_BUILPART_ID_TABLE = {"BASE_TERRARIUM", "BASE_AQUARIUM", "BASE_TOYSPHERE", "BASE_TOYCORE", "DRESSING_TABLE", "SPAWNER_BALL", "U_SWITCHBUTTON", "BYTEBEAT", "MESSAGEMODULE", "BUILDTERMINAL", "RACE_RAMP", "RACE_BOOSTER", "BASE_ROBOTOY", "BASE_TOYCUBE", "BUILDLANDINGPAD", "S_LANDINGZONE", "TELEPORTER", "TELEPORTER_F", "RACE_START", "CHECKPOINT", "WATERBUBBLE", "BUILD_REFINER2", "BUILD_REFINER3", "BASE_TOYJELLY", "BLD_PLANET_HOLO"}
-- Decals are included in the "general modifications". Storage containers are included in the dedicated part at the bottom of the script.

-- Custom build-count limits
CUSTOM_BUILDCOUNT_LIMITS =
{
--      {"ID",				PlanetLimit,	RegionLimit, 	PlanetBaseLimit, 	FreighterBaseLimit}
        {"POWERLINE_HIDER",	0,				0,				1,					1},		-- Electrical Cloaking Unit
        {"NPCFRIGTERM",		0,				0,				10,					10},	-- Fleet Command Room
        {"NPCBUILDERTERM",	0,				0,				1,					1},		-- Construction Terminal
        {"NPCVEHICLETERM",	0,				0,				1,					1},		-- Exocraft Terminal
        {"NPCWEAPONTERM",	0,				0,				1,					1},		-- Weapons Terminal
        {"NPCSCIENCETERM",	0,				0,				1,					1},		-- Science Terminal
        {"NPCFARMTERM",		0,				0,				1,					1},		-- Agricultural Terminal
        {"BASECAPSULE",		0,				1,				0,					0},		-- Base Salvage Capsule
        {"SUMMON_GARAGE",	0,				9,				0,					0},		-- Exocraft Summoning Station
        {"GARAGE_B",		0,				9,				0,					0},		-- Pilgrim Geobay
        {"GARAGE_S",		0,				9,				0,					0},		-- Nomad Geobay
        {"GARAGE_M",		0,				9,				0,					0},		-- Roamer Geobay
        {"GARAGE_L",		0,				9,				0,					0},		-- Colossus Geobay
        {"GARAGE_SUB",		0,				9,				0,					0},		-- Nautilon Geobay
        {"GARAGE_MECH",		0,				9,				0,					0},		-- Minotaur Geobay
        {"BUILDSIGNAL",		0,				6,				0,					0},		-- Signal Booster
        {"BUILDBEACON",		0,				6,				0,					0},		-- Save Beacon
        {"BUILDSAVE",		0,				6,				0,					0},		-- Save Point
        {"MESSAGE",  		0,				3,				0,					0},		-- Communications Station
        {"BLD_DATASIGN",	0,				0,				0,					0},		-- Data Display Unit
        --{"DECALPATH",		0,				0,				0,					0}		-- ?

}

----- NOT settings related tables end -----
-------------------------------------------



NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]    = "_Beyond Base Building.pak",
	["MOD_AUTHOR"]      = "NeptuneX3 after Sparky after Exosolar",
	["MOD_MAINTENANCE"] = "Babscoole",
	["MOD_DESCRIPTION"] =
	[[ An extreme degree of freedom added to the vanilla base-building options.

	—Mod Introduction and Features:
	This mod is fully compatible with multiplayer, co-op building, uploading, etc, because it does not add any parts, which would cause issues in multiplayer.

	★ Beyond Basebuilding is fully Lua scripted, with script provided for easy updating and merging ★ and carries over all of the official updates and improvements offered by Hello Games plus:

		All parts can be Rotated along all 3 axes (not working until HG adds back the missing rotation axes)
		All parts can be Scaled except prefab building parts, Exocraft Geobays and Base Computer (Door attachment points bug out when scaled, and issues persist with scaled base computers and geobays)
		All parts can be built in a Freighter except the Base Computer, Industrial Mining parts, Vehicle Summoners and planet-based teleporter
		All parts can be built at a Planetary Base except the freighter teleporter and the Orbital Exocraft Materialiser
		All parts can be built above and below water
		All parts can change color and material
		All parts can be deleted without also deleting attached objects except Decals and Posters
		No build-count limits except for parts related to resources farming, certain terminals, beacons and message capsules
		Unlimited Storage Containers—*This does not increase actual storage amounts: Each numbered container acts as an index to the store rather than a physical box
		Foundation, Pavings and Communications Station can be placed anywhere (not only on bare terrain)

	-Credits and Special Thanks!
	Hello Games for making the wonderful, vast, and fun game, No Man's Sky!
	monkeyman192 for the MBINCompiler and his continued efforts to keep it up-to-date
	Mjjstral & Wbertro for the AMUMSS script-based auto modbuilder/updater,
	Tub0Crisco for the No Man's Sky Mod Station A.K.A. NMSMS
	And, of course, thanks to all of the other modders who make mods too, as we often inspect the work of other modders to learn how things are done: RangerDulann, Redmas, WoodyMontana, jasondude, Gumsk, Mjjstral, moddinaccount, Devilin Pixy, saa044, and others

	—For latest versions and more visit:-
	https://www.nexusmods.com/nomanssky/mods/1096
	]],
	["NMS_VERSION"]   = "4.00",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						-- General modifications
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "False",
							["VALUE_CHANGE_TABLE"] =
							{
								{"CanRotate3D", "True"},
								{"CanScale", "True"},
								{"CanChangeColour", "True"},
								{"CanChangeMaterial", "True"},
							},
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH"] = "True",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IsDecoration", "False"},
								{"CheckPlaceholderCollision", "False"},
								{"RemovesAttachedDecoration", "False"},
							},
						},
						-- Reverts decals : must be destroyed when parent (wall, etc) is destroyed. Unlimited placement.
						-- Decals are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
						{
							["SPECIAL_KEY_WORDS"] = {"SubGroupName", "WALLDECALS"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IsDecoration", "True"},
								{"PlanetBaseLimit", 0},
								{"FreighterBaseLimit", 0},
							},
						},
						-- Reverts posters : must be destroyed when parent (wall, etc) is destroyed.
						-- Posters are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
						{
							["SPECIAL_KEY_WORDS"] = {"SubGroupName", "WALLPOSTERS"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"IsDecoration", "True"},

							},
						},
					},
				},
			},
		},
	},
}



--Create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]


-- Disable terrain edit for the designated parts
if DISABLE_TERRAINEDIT_FOR_ALL then

	local temp_table_disableterrainall =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "True",
		["VALUE_CHANGE_TABLE"] =
		{
			{"EditsTerrain", "False"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_disableterrainall

else

	if #DISABLE_TERRAINEDIT_ID_TABLE > 0 then
		for i = 1, #DISABLE_TERRAINEDIT_ID_TABLE do
			local temp_table_disableterrainid =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", DISABLE_TERRAINEDIT_ID_TABLE[i]},
				["VALUE_MATCH"] = "True",
				["VALUE_CHANGE_TABLE"]	=
				{
					{"EditsTerrain", "False"},
				},
			}
			Change_Table_Array[#Change_Table_Array + 1] = temp_table_disableterrainid
		end
	end

	if #DISABLE_TERRAINEDIT_KEYWORD_TABLE > 0 then
		for i = 1, #DISABLE_TERRAINEDIT_KEYWORD_TABLE do
			local temp_table_disableterrainkey =
			{
				["SPECIAL_KEY_WORDS"] = {"SubGroupName", DISABLE_TERRAINEDIT_KEYWORD_TABLE[i]},
				["SECTION_UP"] = 2,
				["REPLACE_TYPE"] = "ALL",
				["VALUE_MATCH"] = "True",
				["VALUE_CHANGE_TABLE"]	=
				{
					{"EditsTerrain", "False"},
				},
			}
			Change_Table_Array[#Change_Table_Array + 1] = temp_table_disableterrainkey
		end
	end
end


----- All parts buildable above water -----
-------------------------------------------
if ALL_PARTS_ABOVE_WATER then

	-- Makes all parts buildable above water
	local temp_table_allabovewater =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "False",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableAboveWater", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_allabovewater

	-- Reverts Marine Shelter so it can't be built above water to avoid dangers
	if MARINESHELTER_ABOVE_WATER == false then

		local temp_table_marinefalse =
		{
			["SPECIAL_KEY_WORDS"] = {"ID","WATERBUBBLE"},
			["VALUE_CHANGE_TABLE"] =
			{
				{"BuildableAboveWater", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_marinefalse
	end

	-- Specific exceptions list for parts not buildable above water
	for i = 1,#NOT_ABOVE_WATER_BUILDPART_ID_TABLE do

		local temp_table_notabovewater =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", NOT_ABOVE_WATER_BUILDPART_ID_TABLE[i]},
			["VALUE_MATCH"] = "True",
			["VALUE_CHANGE_TABLE"]	=
			{
				{"BuildableAboveWater", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_notabovewater
	end
end
----- All parts buildable above water end -----
-----------------------------------------------


-- All parts buildable under water
if ALL_PARTS_UNDER_WATER then

	local temp_table_allunderwater =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "False",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableUnderwater", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_allunderwater
end


----- All parts on freighters rules -----
-----------------------------------------
if ALL_PARTS_ON_FREIGHTER then

	-- Makes all parts buildable on freighters
	local temp_table_allfreighter =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "False",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableOnFreighter", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_allfreighter

	-- Reverts "BuildableOnFreighter" to "False" for vehicles
	-- Vehicles parts are matched by their "SubGroupName" keyword : if any new one is added by the devs it should trigger this.
	local temp_table_notfreightervehicle =
	{
		["SPECIAL_KEY_WORDS"] = {"SubGroupName", "PLANETEXOCRAFT"},
		["SECTION_UP"] = 2,
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableOnFreighter", "False"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_notfreightervehicle

	-- Reverts "BuildableOnFreighter" to "True" for geobays if GEOBAYS_ON_FREIGHTER is true
	if GEOBAYS_ON_FREIGHTER then

		for i = 1,#GEOBAYS_ON_FREIGHTER_ID_TABLE do

			local temp_table_geofreighter =
			{
				["SPECIAL_KEY_WORDS"]	= {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
				["VALUE_MATCH"] = "False",
				["VALUE_CHANGE_TABLE"]	=
				{
					{"BuildableOnFreighter", "True"},
				},
			}
			Change_Table_Array[#Change_Table_Array + 1] = temp_table_geofreighter
		end

		for i = 1,#GEOBAYS_ON_FREIGHTER_ID_TABLE do

			local temp_table_geofreightergroup =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", GEOBAYS_ON_FREIGHTER_ID_TABLE[i]},
				["PRECEDING_KEY_WORDS"] = {"Groups"},
				["LINE_OFFSET"]= "+0",
				["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
			}
			Change_Table_Array[#Change_Table_Array + 1] = temp_table_geofreightergroup
		end
end

	-- Specific exceptions list for parts not buildable on freighters
	for i = 1,#NOT_FREIGHTER_BUILDPART_ID_TABLE do

		local temp_table_notfreighter =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", NOT_FREIGHTER_BUILDPART_ID_TABLE[i]},
			["VALUE_MATCH"] = "True",
			["VALUE_CHANGE_TABLE"]	=
			{
				{"BuildableOnFreighter", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_notfreighter
	end
end
----- All parts on freighters rules end -----
---------------------------------------------


----- All parts on planet bases rules -----
-------------------------------------------
if ALL_PARTS_ON_PLANETBASE then

	-- Makes all parts buildable on planet bases
	local temp_table_allplanet =
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "False",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableOnPlanetBase", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_allplanet

	-- Reverts the Orbital Exocraft Materialiser if EXOMATERIALISER_ON_PLANETBASE is false
	-- if built on planet, it won't work to summon vehicles in the system, decorative purpose only
	if EXOMATERIALISER_ON_PLANETBASE == false then

		local temp_table_matnotplanet =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", "GARAGE_FREIGHT"},
			["VALUE_CHANGE_TABLE"]	=
			{
				{"BuildableOnPlanetBase", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_matnotplanet
	end

	-- Reverts "BuildableOnPlanetBase" to "False" for the exceptions list
	for i = 1,#NOT_PLANETBASE_BUILDPART_ID_TABLE do

		local temp_table_exceptnotplanet =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", NOT_PLANETBASE_BUILDPART_ID_TABLE[i]},
			["VALUE_CHANGE_TABLE"]	=
			{
				{"BuildableOnPlanetBase", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_exceptnotplanet
	end
end
----- All parts on planet bases rules end -----
-----------------------------------------------


----- CanScale rules -----
--------------------------
if CAN_SCALE_PREFAB_PARTS == false then

	-- Reverts "CanScale" to "False" for prefab parts
	for i = 1,#PREFAB_KEYWORDS_TABLE do

		local temp_table_prefabnotscale =
		{
			["SPECIAL_KEY_WORDS"]	= {"Group", PREFAB_KEYWORDS_TABLE[i]},
			["SECTION_UP"] = 2,
			["VALUE_MATCH"] = "True",
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"]	=
			{
				{"CanScale", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_prefabnotscale
	end

	-- Reverts "CanScale" to "False" for freighter storage containers
	for i = 1,#FREIGHTER_CONTAINERS_ID_TABLE do

		local temp_table_conexnotscale =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", FREIGHTER_CONTAINERS_ID_TABLE[i]},
			["VALUE_MATCH"] = "True",
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"]	=
			{
				{"CanScale", "False"},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_conexnotscale
	end
end

-- Reverts "CanScale" to "False" for vehicles parts (scaling them can cause important issues)
-- Vehicles parts are matched by their "Groups" keyword : if any new one is added by the devs it should trigger this.
local temp_table_vehiclenotscale =
{
	["SPECIAL_KEY_WORDS"] = {"SubGroupName", "PLANETEXOCRAFT"},
	["SECTION_UP"] = 2,
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] =
	{
		{"CanScale", "False"},
	},
}
Change_Table_Array[#Change_Table_Array + 1] = temp_table_vehiclenotscale

-- Reverts "CanScale" to "True" for vehicles parts that should be scaleable
for i = 1,#SCALEABLE_VEHICLESPART_ID_TABLE do

	local temp_table_vehiclescale =
	{
		["SPECIAL_KEY_WORDS"]	= {"ID", SCALEABLE_VEHICLESPART_ID_TABLE[i]},
		["VALUE_CHANGE_TABLE"]	=
		{
			{"CanScale", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_vehiclescale
end

-- Specific exceptions list for building parts not scaleable
for i = 1,#NOT_SCALEABLE_BUILDPART_ID_TABLE do

	local temp_table =
	{
		["SPECIAL_KEY_WORDS"]	= {"ID", NOT_SCALEABLE_BUILDPART_ID_TABLE[i]},
		["VALUE_CHANGE_TABLE"]	=
		{
			{"CanScale", "False"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table
end
----- CanScale rules end -----
------------------------------


----- Build-count limits -----
------------------------------
if NO_BUILDCOUNT_LIMIT then

	-- No build-count limit
	local temp_table_notbuildlimit =
		{
			["REPLACE_TYPE"] = "ALL",
			["VALUE_MATCH"] = 0,
			["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
			["VALUE_CHANGE_TABLE"] =
			{
				{"PlanetLimit", 0},
				{"RegionLimit", 0},
				{"PlanetBaseLimit", 0},
				{"FreighterBaseLimit", 0},
			},
		}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_notbuildlimit

else

	-- no build-count limit for storage type parts
	local temp_table_stornotbuildlimit =
	{
		["SPECIAL_KEY_WORDS"] = {"SubGroupName", "TECHSTORAGE"},
		["SECTION_UP"] = 2,
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = 0,
		["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
		["VALUE_CHANGE_TABLE"] =
		{
				{"PlanetBaseLimit", 0},
				{"FreighterBaseLimit", 0},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_stornotbuildlimit

	-- Removes build-count limit on all parts NOT related to resources farming
	for i = 1,#UNLIMITED_BUILPART_ID_TABLE do

		local temp_table_nofarmnotbuildlimit =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", UNLIMITED_BUILPART_ID_TABLE[i]},
			["VALUE_MATCH"] = 0,
			["VALUE_MATCH_OPTIONS"] = "~=", --does NOT match value above
			["NOTICE_OFF"] = "True",
			["VALUE_CHANGE_TABLE"]	=
			{
				{"PlanetLimit", 0},
				{"RegionLimit", 0},
				{"PlanetBaseLimit", 0},
				{"FreighterBaseLimit", 0},
			},
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_nofarmnotbuildlimit
	end
end

-- Applies custom build-count limits for specific parts
for i = 1,#CUSTOM_BUILDCOUNT_LIMITS do

	local temp_table_custombuildlimit =
	{
		["SPECIAL_KEY_WORDS"]	= {"ID", CUSTOM_BUILDCOUNT_LIMITS[i][1]},
		["VALUE_CHANGE_TABLE"]	=
		{
			{"PlanetLimit",	tostring(CUSTOM_BUILDCOUNT_LIMITS[i][2])},
			{"RegionLimit",	tostring(CUSTOM_BUILDCOUNT_LIMITS[i][3])},
			{"PlanetBaseLimit",	tostring(CUSTOM_BUILDCOUNT_LIMITS[i][4])},
			{"FreighterBaseLimit", tostring(CUSTOM_BUILDCOUNT_LIMITS[i][5])},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_custombuildlimit
end
----- Build-count limits end -----
----------------------------------


-- Makes planting in any biome possible
if FARM_IN_ANY_BIOME then

	for i = 1,#FARM_IN_ANY_BIOME_ID_TABLE do

	local temp_table_farmanydeco =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", FARM_IN_ANY_BIOME_ID_TABLE[i]},
		["VALUE_CHANGE_TABLE"] =
		{
		    {"BaseBuildingDecorationType","Normal"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_farmanydeco

	local temp_table_farmanybiome =
	{
		["SPECIAL_KEY_WORDS"] = {"ID",FARM_IN_ANY_BIOME_ID_TABLE[i],"Biome","GcBiomeType.xml"},
		["LINE_OFFSET"] = "+1",
		["VALUE_CHANGE_TABLE"] =
		{
		    {"Biome","All"}
		}
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_farmanybiome

	local temp_table_farmanypower =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", FARM_IN_ANY_BIOME_ID_TABLE[i]},
		["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
		["VALUE_CHANGE_TABLE"] =
		{
		    {"ConnectionDistance",100}
		}
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_farmanypower
	end
end


-- Allows to build some metal parts outside of bases
if METAL_PARTS_OUTSIDE_BASE then

	for i = 1,#METAL_OUTSIDE_BASE_ID_TABLE do

		local temp_table_metal =
		{
			["SPECIAL_KEY_WORDS"]	= {"ID", METAL_OUTSIDE_BASE_ID_TABLE[i]},
			["VALUE_CHANGE_TABLE"]	=
			{
				{"BuildableOnPlanet", "True"}
			}
		}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table_metal
	end
end


-- Allows to build some parts (Foundation, Pavings (x3), Communications Station) not only on bare terrains
for i = 1,#ANYTERRAIN_BUILDPART_ID_TABLE do

	local temp_table_notbare =
	{
		["SPECIAL_KEY_WORDS"]	= {"ID", ANYTERRAIN_BUILDPART_ID_TABLE[i]},
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "Terrain",
		["VALUE_CHANGE_TABLE"] =
		{
			{"BaseBuildingDecorationType", "Normal"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_notbare
end

-- Re-add planters on freighters after Endurance update
for i = 1,#PLANTERS_ON_FREIGHTER_ID_TABLE do

	local temp_table_planterfreightergroup =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", PLANTERS_ON_FREIGHTER_ID_TABLE[i]},
		["PRECEDING_KEY_WORDS"] = {"Groups"},
		["LINE_OFFSET"]= "+0",
		["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_BIO" />
          <Property name="SubGroupName" value="FRE_PLANTS" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_planterfreightergroup

	local temp_table_planterfreighterplace =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", PLANTERS_ON_FREIGHTER_ID_TABLE[i]},
		["VALUE_CHANGE_TABLE"] =
		{
			{"IsPlaceable", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_planterfreighterplace
 end

 -- Re-add misc on freighters after Endurance update
for i = 1,#MISC_ON_FREIGHTER_ID_TABLE do

	local temp_table_miscfreightergroup =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", MISC_ON_FREIGHTER_ID_TABLE[i]},
		["PRECEDING_KEY_WORDS"] = {"Groups"},
		["LINE_OFFSET"]= "+0",
		["ADD"] =
[[
        <Property value="GcBaseBuildingEntryGroup.xml">
          <Property name="Group" value="FREIGHTER_TECH" />
          <Property name="SubGroupName" value="FRE_TECH_OTHER" />
          <Property name="SubGroup" value="0" />
        </Property>
]]
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_miscfreightergroup

	local temp_table_miscfreighterallow =
	{
		["SPECIAL_KEY_WORDS"] = {"ID", MISC_ON_FREIGHTER_ID_TABLE[i]},
		["VALUE_CHANGE_TABLE"] =
		{
			{"BuildableOnSpaceBase", "True"},
			{"BuildableOnFreighter", "True"},
		},
	}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table_miscfreighterallow
 end