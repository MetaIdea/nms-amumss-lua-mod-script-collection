SUBGROUP_MOVE_TABLE =
-- "SubGroup" WITH "Name", "From" ORIGINAL TOP GROUP "To" DESTINATION TOP GROUP, EXISTING TOP GROUPS ONLY
-- TABLE IS TREATED AS A STACK
{
	{ ["SubGroup"] = "TECHTECH", ["Name"] = "UI_BUILD_GRID_TECH", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHFARMING", ["Name"] = "UI_BUILD_GRID_FARMING", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHSTORAGE", ["Name"] = "UI_BUILD_GRID_STORAGE", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHTEMINALS", ["Name"] = "UI_BUILD_GRID_TERMINALS", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERPOWER", ["Name"] = "UI_BUILD_GRID_POWER", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERINDUSTRY", ["Name"] = "UI_BUILD_GRID_INDUSTRY", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERSWITCHES", ["Name"] = "UI_BUILD_GRID_SWITCHES", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	-- { ["SubGroup"] = "DECOLIGHTS", ["Name"] = "UI_BUILD_GRID_LIGHTS", ["From"] = "DECORATION", ["To"] = "EXOTICS" },
	-- { ["SubGroup"] = "DECOEXTERIOR", ["Name"] = "UI_BUILD_GRID_EXTERIOR", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	-- { ["SubGroup"] = "DECOCONSTRUCT", ["Name"] = "UI_BUILD_GRID_CONSTRUCTION", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "WALLDECALS", ["Name"] = "UI_BUILD_GRID_DECALS", ["From"] = "WALL_ART", ["To"] = "DECORATION" },
	{ ["SubGroup"] = "WALLPOSTERS", ["Name"] = "UI_BUILD_GRID_POSTERS", ["From"] = "WALL_ART", ["To"] = "DECORATION" },
	{ ["SubGroup"] = "DECOSTATUES", ["Name"] = "UI_BUILD_GRID_STATUES", ["From"] = "EXOTICS", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOGLITCHES", ["Name"] = "UI_BUILD_GRID_GLITCHES", ["From"] = "EXOTICS", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOFOLIAGE", ["Name"] = "UI_BUILD_GRID_FOLIAGE", ["From"] = "EXOTICS", ["To"] = "FURNITURE" },
	-- { ["SubGroup"] = "DECOFOSSILS", ["Name"] = "UI_BUILD_GRID_FOSSILS", ["From"] = "DECORATION", ["To"] = "EXOTICS" },
	-- { ["SubGroup"] = "FREIGHTERROOMS", ["Name"] = "UI_BUILD_GRID_FREIGHTER_ROOMS", ["From"] = "FREIGHTER", ["To"] = "ROOMS" },
	-- { ["SubGroup"] = "FREIGHTERTECH", ["Name"] = "UI_BUILD_GRID_FREIGHTER_TECH", ["From"] = "FREIGHTER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "FRE_TECH_OTHER", ["Name"] = "UI_BUILD_GRID_FREIGHTPORTABLE", ["From"] = "FREIGHTER_TECH", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_PLANTS", ["Name"] = "UI_BUILD_GRID_FREIGHTER_PLANTS", ["From"] = "FREIGHTER_BIO", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FREIGHTERLEGACY", ["Name"] = "UI_BUILD_GRID_FREIGHT_LEGACY_S", ["From"] = "FREIGHT_LEGACY", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_IND_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_INDROOM", ["From"] = "FREIGHTER_IND", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_BIO_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_BIOROOM", ["From"] = "FREIGHTER_BIO", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_TECH_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_TECHROO", ["From"] = "FREIGHTER_TECH", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "T_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_T", ["To"] = "BASIC_B" },
	{ ["SubGroup"] = "S_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_S", ["To"] = "BASIC_B" },
	{ ["SubGroup"] = "F_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_F", ["To"] = "BASIC_B" },
	-- { ["SubGroup"] = "B_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_B", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_T", ["To"] = "BASIC_B", ["Display"] = "-1" },
	{ ["SubGroup"] = "S_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_S", ["To"] = "BASIC_B" },
	{ ["SubGroup"] = "F_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_F", ["To"] = "BASIC_B" },
	-- { ["SubGroup"] = "B_WALLS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_B", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_T", ["To"] = "BASIC_B" }, 
	{ ["SubGroup"] = "S_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_S", ["To"] = "BASIC_B" },
	{ ["SubGroup"] = "F_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_F", ["To"] = "BASIC_B" },
	-- { ["SubGroup"] = "B_ROOFS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_B", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "BASICWOOD", ["Name"] = "UI_BUILD_GRID_WOOD", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "BASICCONCRETE", ["Name"] = "UI_BUILD_GRID_CONCRETE", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "BASICMETAL", ["Name"] = "UI_BUILD_GRID_METAL", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },	
}

COMPO_PART_TABLE =
{
	{["ID"] = "WEDGESHAPE", ["CompositePart"] = {"WEDGESMALLSHAPE", "CUBESHAPE", "CYLINDERSHAPE", "PIPESHAPE", "PIPE", "CURVEPIPESHAPE", "PYRAMIDSHAPE", "BUILDPAVINGTALL", "BUILDPAVING_BIG", "BUILDPAVING", "SPHERESHAPE", }},
	{["ID"] = "CORRIDOR", ["CompositePart"] = {"GLASSCORRIDOR", "CORRIDORC", "CORRIDORX", "CORRIDORT", "CORRIDORL"}},
	{["ID"] = "WALLSCREEN", ["CompositePart"] = {"WALLSCREENB2", "WALLSCREENB"}},
	{["ID"] = "FLAG1", ["CompositePart"] = {"FLAG2", "FLAG3", "FLAG4", "EXPD_FLAG_06A", "EXPD_FLAG_06B", "EXPD_FLAG_06C", "EXPD_FLAG_06D", "EXPD_FLAG_06E", "WALLFLAG1", "WALLFLAG2", "WALLFLAG3", "S_FLAG5", "S_FLAG6", "S_WALLHANGING1", "B_WALLHANGING1", "S_WALLHANGING2", "B_WALLHANGING2", "S_WALLHANGING3", "B_WALLHANGING3"}},
	{["ID"] = "S_CRATE0", ["CompositePart"] = {"S_CRATE1", "S_CRATE2", "S_CRATE3", "S_CRATE3OPEN", "S_CRATE4", "S_CRATE4OPEN"}},
	{["ID"] = "S_BARSTOOL0", ["CompositePart"] = {"S_BARTAPS0", "S_TABLEPOT0", "S_CUP0", "S_TRAY0", "S_PAN0", "S_BURNER0", "S_BARTABLE0", "S_BAR", "S_BAR_H", "S_BAR_C"}},
	{["ID"] = "BUILDCHAIR", ["CompositePart"] = {"BUILDCHAIR2", "BUILDCHAIR3", "BUILDCHAIR4", "S_CHAIR0", "BUILDSOFA2L", "BUILDSOFA2", "BUILDSOFA"}},
	{["ID"] = "BUILDTABLE", ["CompositePart"] = {"BUILDTABLE2", "BUILDTABLE3", "BUILDSIMPLEDESK", "BUILDLIGHTTABLE", "LARGEDESK", "MONITORDESK", "BUILDWORKTOP", "CURVEDDESK"}},
	{["ID"] = "ABAND_CRATE_M", ["CompositePart"] = {"ABAND_CRATE_L", "ABAND_CRATE_XL", "FOOTLOCKER", "LOCKER2"}},
	{["ID"] = "HOLO_SMALL1", ["CompositePart"] = {"HOLO_SMALL2", "HOLO_MED1", "HOLO_MED2", "HOLO_EXP", "HOLO_WAR", "HOLO_TRA", }},
	{["ID"] = "LIGHT_TALL", ["CompositePart"] = {"LIGHTFRAME", "LIGHT_PLINTH", "LIGHT_VERT"}},
	{["ID"] = "SERVERBOX1", ["CompositePart"] = {"SERVERBOX2", "HOLOFILES", "POWERBOX"}},
	{["ID"] = "BUILDLIGHT3", ["CompositePart"] = {"BUILDLIGHT2", "BUILDLIGHT"}},
	{["ID"] = "WALLLIGHTWHITE", ["CompositePart"] = {"WALLLIGHTBLUE", "WALLLIGHTPINK", "WALLLIGHTYELLOW", "WALLLIGHTGREEN", "WALLLIGHTRED"}},
	{["ID"] = "S_HANGLAMP0", ["CompositePart"] = {"S_HANGLAMP1", "S_HANGLAMP2", "S_HANGLAMP3"}},
	{["ID"] = "S_SIGN_BAR1", ["CompositePart"] = {"S_SIGN_BAR2", "S_SIGN_BAR3"}},
	{["ID"] = "BLD_BUI_TENT", ["CompositePart"] = {"BLD_COVSILOS", "BLD_COVCRATE", "BLD_CRANE"}},
	{["ID"] = "S_CANOPY_WALL0", ["CompositePart"] = {"S_CANOPY_WALL1", "S_CANOPY_WALL2"}},
	{["ID"] = "B_CANOPY_WALL0", ["CompositePart"] = {"B_CANOPY_WALL1", "B_CANOPY_WALL2"}},
	{["ID"] = "S_POSTER0", ["CompositePart"] = {"S_POSTER1", "S_POSTER2", "S_POSTER3", "S_POSTER4", "S_POSTER5", "S_POSTER6", "S_POSTER7", "S_POSTER8", "S_POSTER9", "S_POSTER10", "S_POSTER11", "S_POSTER12", "S_POSTER13", "S_POSTER14", "S_POSTER15", "S_POSTER16", "S_POSTER17", "S_POSTER18", "S_POSTER19", "S_POSTER20", "S_POSTER21", "S_POSTER22", "S_POSTER23", "S_POSTER24", "S_POSTER25", "S_POSTER26", "S_POSTER27", "S_POSTER28", "S_POSTER29", "S_POSTER30", "S_POSTER31", "EXPD_POSTER05A", "EXPD_POSTER05B", "EXPD_POSTER05C", "EXPD_POSTER06A", "EXPD_POSTER06B", "EXPD_POSTER06C", "EXPD_POSTER07A", "EXPD_POSTER07B", "EXPD_POSTER07C", "EXPD_POSTER08A", "EXPD_POSTER08B", "EXPD_POSTER08C", "EXPD_POSTER09A", "EXPD_POSTER09B", "EXPD_POSTER09C", "EXPD_POSTER10A", "EXPD_POSTER10B", "EXPD_POSTER10C", "EXPD_POSTER11A", "EXPD_POSTER11B", "EXPD_POSTER11C", "EXPD_POSTER12A", "EXPD_POSTER12B", "EXPD_POSTER12C", "EXPD_POSTER13A", "EXPD_POSTER13B", "EXPD_POSTER13C", "EXPD_POSTER14A", "EXPD_POSTER14B", "EXPD_POSTER14C", "EXPD_POSTER15A", "EXPD_POSTER15B", "EXPD_POSTER15C", "EXPD_POSTER16A", "EXPD_POSTER16B", "EXPD_POSTER16C", "EXPD_POSTER17A", "EXPD_POSTER17B", "EXPD_POSTER17C", "EXPD_POSTER18A", "EXPD_POSTER18B", "EXPD_POSTER18C" }},
	{["ID"] = "S_FENCE0", ["CompositePart"] = {"S_FENCE1", "S_FENCE2", "S_FENCE3"}},
	{["ID"] = "S_SAIL0", ["CompositePart"] = {"B_SAIL0", "S_SAIL1", "B_SAIL1", "S_SAIL2", "B_SAIL2", "S_SAIL3", "B_SAIL3"}},
	{["ID"] = "S_ANTENNA0", ["CompositePart"] = {"S_ANTENNA1", "S_ANTENNA2", "S_ANTENNA3"}},
	{["ID"] = "B_ANTENNA0", ["CompositePart"] = {"B_ANTENNA1", "B_ANTENNA2", "B_ANTENNA3"}},
	{["ID"] = "BLD_SHIPBREAK1", ["CompositePart"] = {"BLD_SHIPBREAK2", "BLD_SHIPBREAK3", "BLD_SHIPBREAK4", "BLD_SHIPBREAK5"}},
	{["ID"] = "BLD_BUGHEAD1", ["CompositePart"] = {"BLD_BUGHEAD2", "BLD_BUGHEAD3", "BLD_BUGHEAD4", "BLD_BUGHEAD5"}},
	{["ID"] = "BASE_HOTPLANT01", ["CompositePart"] = {"BASE_HOTPLANT02", "BASE_HOTPLANT03"}},
	{["ID"] = "BASE_RADPLANT01", ["CompositePart"] = {"BASE_RADPLANT02", "BASE_RADPLANT03"}},
	{["ID"] = "BASE_TOXPLANT01", ["CompositePart"] = {"BASE_TOXPLANT02", "BASE_TOXPLANT03"}},
	{["ID"] = "BASE_DUSTPLANT1", ["CompositePart"] = {"BASE_DUSTPLANT2", "BASE_DUSTPLANT3"}},
	{["ID"] = "BASE_COLDPLANT1", ["CompositePart"] = {"BASE_COLDPLANT2", "BASE_COLDPLANT3"}},
	{["ID"] = "BASE_HOUDINI1", ["CompositePart"] = {"BASE_HOUDINI2", "BASE_HOUDINI3"}},
	{["ID"] = "BASE_SWAMP1", ["CompositePart"] = {"BASE_SWAMP2", "BASE_SWAMP3"}},
	{["ID"] = "BASE_INFEST1", ["CompositePart"] = {"BASE_INFEST2", "BASE_INFEST3"}},
	{["ID"] = "BASE_ROCK01", ["CompositePart"] = {"BASE_ROCK02", "BASE_ROCK03"}},
	{["ID"] = "BASE_LAVA1", ["CompositePart"] = {"BASE_LAVA2", "BASE_LAVA3"}},
	{["ID"] = "BASE_CAVE1", ["CompositePart"] = {"BASE_CAVE2", "BASE_CAVE3", "BASE_CAVE4", "BASE_CAVE5"}},
	{["ID"] = "BASE_NEXUS1", ["CompositePart"] = {"BASE_NEXUS2", "BASE_NEXUS3"}},
	{["ID"] = "BASE_FLOWER1", ["CompositePart"] = {"BASE_FLOWER2", "BASE_FLOWER3"}},
	{["ID"] = "BASE_GRASS1", ["CompositePart"] = {"BASE_GRASS2", "BASE_GRASS3", "BASE_GRASS4", "BASE_GRASS5", "BASE_GRASS6", "BASE_GRASS7"}},
	{["ID"] = "BASE_TREE01", ["CompositePart"] = {"BASE_TREE02", "BASE_TREE03"}},
	{["ID"] = "BASE_JUNGLE01", ["CompositePart"] = {"BASE_JUNGLE02", "BASE_JUNGLE03"}},
	{["ID"] = "BASE_WPLANT1", ["CompositePart"] = {"BASE_WPLANT2", "BASE_WPLANT3", "BASE_WPLANT4", "BASE_WPLANT5", "BASE_WPLANT6"}},
	{["ID"] = "BASE_MEDPLANT01", ["CompositePart"] = {"BASE_MEDPLANT02", "BASE_MEDPLANT03"}},
	{["ID"] = "BASE_FLORAL01", ["CompositePart"] = {"BASE_FLORAL04", "BASE_FLORAL02", "BASE_FLORAL03"}},
	{["ID"] = "BASE_PEACOCK01", ["CompositePart"] = {"BASE_PEACOCK02", "BASE_PEACOCK03"}},
	{["ID"] = "BASE_SUBZPLANT1", ["CompositePart"] = {"BASE_SUBZPLANT2", "BASE_SUBZPLANT3", "BASE_SUBZPLANT4", "BASE_SUBZPLANT6", "BASE_SUBZPLANT5", "BASE_SUBZPLANT7", "BASE_SUBZPLANT8"}},
	{["ID"] = "BUILDDECAL", ["CompositePart"] = {"BUILDDECAL2", "BUILDDECALNMS", "BUILDDECALSIMP1", "BUILDDECALSIMP2", "BUILDDECALSIMP3", "BUILDDECALSIMP4", "DECAL_CAFE", "DECAL_UFT", "DECAL_AGT", "DECAL_AMINO", "DECAL_QIT", "DECAL_NMSCORD", "DECAL_UN42", "DECAL_NMS_FR", "DECAL_AF", "DECAL_BIOME3", "DECAL_CPLANET1", "DECAL_STARTSHIP", "DECAL_GALCORE", "DECAL_UWTREAS", "DECAL_NEXUSM", "DECAL_SPOOKATL", "DECAL_SHIP1", "DECAL_PIRATESYS", "DECAL_BLUESYS", "DECAL_CREBEETLE", "DECAL_CREFLY", "DECAL_CREPAWS", "DECAL_FPLANET2", "DECAL_TOSTARS", "DECAL_PEEP", "DECAL_HAZARD", "DECAL_SKULL", "DECAL_HORROR", "DECAL_JELLY", "DECAL_BONESOUP", "DECAL_EXTINCT", "DECAL_SCAN", "DECAL_BONEJUDGE", "DECAL_RUINMECH", "EXPD_DECAL01", "EXPD_DECAL02", "EXPD_DECAL03", "EXPD_DECAL04", "EXPD_DECAL05", "EXPD_DECAL06", "EXPD_DECAL07", "EXPD_DECAL08", "EXPD_DECAL09", "EXPD_DECAL10", "EXPD_DECAL11", "EXPD_DECAL12", "EXPD_DECAL13", "EXPD_DECAL14", "EXPD_DECAL15", "EXPD_DECAL16", "EXPD_DECAL17", "EXPD_DECAL18", "SPEC_DECAL01", "SPEC_DECAL02", "SPEC_DECAL03", "SPEC_DECAL04", "SPEC_DECAL05", "SPEC_DECAL06", "SPEC_DECAL07", "SPEC_DECAL08", "DECAL_WORM_P1", "DECAL_WORM_P2", "DECAL_WORM_P3", "DECAL_WORM_P4", "DECAL_WORM_P5"}},
	{["ID"] = "BUILDDECALNUM0", ["CompositePart"] = {"BUILDDECALNUM1", "BUILDDECALNUM2", "BUILDDECALNUM3", "BUILDDECALNUM4", "BUILDDECALNUM5", "BUILDDECALNUM6", "BUILDDECALNUM7", "BUILDDECALNUM8", "BUILDDECALNUM9"}},
	{["ID"] = "BUILDDECALVIS1", ["CompositePart"] = {"BUILDDECALVIS2", "BUILDDECALVIS3", "BUILDDECALVIS4", "BUILDDECALVIS5"}},
	{["ID"] = "STATUE_BLOB_B", ["CompositePart"] = {"STATUE_BLOB_S", "STATUE_BLOB_G", "STATUE_BLOB_I"}},
	{["ID"] = "STATUE_DIP_B", ["CompositePart"] = {"STATUE_DIP_S", "STATUE_DIP_G", "STATUE_DIP_I"}},
	{["ID"] = "STATUE_GEK_B", ["CompositePart"] = {"STATUE_GEK_S", "STATUE_GEK_G", "STATUE_GEK_I"}},
	{["ID"] = "STATUE_SHIP_B", ["CompositePart"] = {"STATUE_SHIP_S", "STATUE_SHIP_G", "STATUE_SHIP_I"}},
	{["ID"] = "STATUE_WALK_B", ["CompositePart"] = {"STATUE_WALK_S", "STATUE_WALK_G", "STATUE_WALK_I"}},
	{["ID"] = "STATUE_ATLAS_B", ["CompositePart"] = {"STATUE_ATLAS_S", "STATUE_ATLAS_G", "STATUE_ATLAS_I"}},
	{["ID"] = "STATUE_ASTRO_B", ["CompositePart"] = {"STATUE_ASTRO_S", "STATUE_ASTRO_G", "STATUE_ASTRO_I"}},
}

-- BUILD MENU PARTS MENU UI HEIGHT MODIFIER
-- ALTER WITH CARE
PARTS_UI_MULTIPLIER = 1.75

-- NUMBER OF ITEM SLOTS BETWEEN A DIVIDER
-- ONLY ALTER UPON MBIN CHANGE
DIVIDER_SLOT = 10

-- MAXIMUM NUMBER OF VANILLA PARTS IN THE PARTS MENU
-- ONLY ALTER UPON MBIN CHANGE
VANILLA_PARTS_COUNT = 240

-- MAXIMUM NUMBER OF STABLE UI SLOTS
-- DO NOT ALTER
PARTS_SLOTS_LIMIT = 270

-- YEET_UNUSED_PARAMS = nil
-- function YEET_UNUSED_PARAMS(TheDATA)
-- local USE_TABLE = table.concat(TheDATA["ModdedEXMLs"][NormalizePath("METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN", true)])
-- USE_TABLE = string.gsub(USE_TABLE, [[<Property name="IsTemporary".-<Property name="CanScale" value=".-" />]], "")
-- USE_TABLE = string.gsub(USE_TABLE, [[<Property name="StorageContainerIndex".-<Property name="Seed" value="%d-" />.-</Property>]], "")
-- EXPORT_TABLE = {["METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"] = USE_TABLE}
-- return EXPORT_TABLE
-- end

--[[function GetBaseObjectMigrate(SUBGROUP, FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry", "GcBaseBuildingEntryGroup"},
		["REPLACE_TYPE"] 	= "ALL",
		["WHERE_IN_SUBSECTION"] =
		{
			{ "Group",			FROM },
			{ "SubGroupName",	SUBGROUP },
		},
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO},
		}
	}
end]]

function GetBaseObjectMigrateAlt(SUBGROUP, TO)
-- CHANGING A "SubGroup"'S TOP GROUP "To" THE NEW GROUP, NO EXCEPTIONS
return
	{
		["SPECIAL_KEY_WORDS"] = {"SubGroupName", SUBGROUP},
		["REPLACE_TYPE"] 	= "ALL",
		["EXML_FLAGS"]  = "OVERWRITE", 
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO},
		}
	}
end

--[[function GetBaseObjectSetOverwrite(SUBGROUP)
-- CHANGING A "SubGroup"'S TOP GROUP "To" THE NEW GROUP, NO EXCEPTIONS
return
	{
		["SPECIAL_KEY_WORDS"] = {"SubGroupName", SUBGROUP},
		["REPLACE_TYPE"] 	= "ALL",
		["EXML_FLAGS"]  = "OVERWRITE", 
	}
end]]

--[[function GetBaseObjectMigrateAltTwo(FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = 	{"GcBaseBuildingEntry", "GcBaseBuildingEntryGroup"},
		["REPLACE_TYPE"] 	= 		"ALL",
		["VALUE_MATCH"] = 			FROM, 
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO },
		}
	}
end]]

function GetSubGroupMigrate(SUBGROUP, NAME, TO, DISPLAY)
-- ADDING "SubGroup" WITH "Name", "To" DESTINATION TOP GROUP, EXISTING TOP GROUPS ONLY
	function GetSubGroupData(ID, SUBNAME, INSERT)
	-- CONSTRUCTING EXML CODE
		if INSERT then
		 EXPORT = [[
				<Property name="SubGroups" value="GcBaseBuildingSubGroup" _id="]] .. ID .. [[" _display="WTP">]]
		else  EXPORT = [[
				<Property name="SubGroups" value="GcBaseBuildingSubGroup" _id="]] .. ID .. [[">]]
		end
		return EXPORT .. [[
          <Property name="Id" value="]] .. ID .. [[" />
          <Property name="Name" value="]] .. SUBNAME .. [[" />
        </Property>
]]
	end
return
	{
		["SPECIAL_KEY_WORDS"] = {"ID", TO},
		["PRECEDING_KEY_WORDS"] = {"SubGroups"},
		["ADD_OPTION"] = "ADDendSECTION",
		-- ["LINE_OFFSET"] 		= "+0",
		["ADD"] 				= GetSubGroupData(SUBGROUP, NAME, DISPLAY)
	}
end

-- function GetSubGroupObliterate(SUBGROUP)
-- return
	-- {
		-- ["SPECIAL_KEY_WORDS"] = {"SubGroups", "GcBaseBuildingSubGroup", "Id", SUBGROUP},
		-- ["PRECEDING_KEY_WORDS"] = {""},
		-- -- ["PRECEDING_FIRST"] = "TRUE", 
		-- -- ["LINE_OFFSET"] 		= "+0",
		-- ["REMOVE"] = "SECTION"
	-- }
-- end

function GetCompositePartChangeTable(ID, COMPO)
	local CompositeList = {}
	for _,j in ipairs (COMPO) do
		table.insert(CompositeList, [[<Property name="CompositePartObjectIDs" value="]] .. j .. [[" />
]])
	end
return
	{
		["SKW"] = {"ID", ID},
		["PKW"] = {"CompositePartObjectIDs"}, 
		["CREATE_HOS"] = "TRUE",
		["ADD_OPTION"] = "ADDendSECTION",
		["ADD"] = table.concat(CompositeList)
	}
end

CHANGE_LEOPARDON = {}
BUILDMENU_UI_SLOTS = {}

COMPO_PART_SKW = {}
HIDE_COMPO_PART_CHANGE = {
	["SKW"] = COMPO_PART_SKW,
	["VCT"] = {{"ShowInBuildMenu", "false"}}
}

for i=#SUBGROUP_MOVE_TABLE,1,-1 do
-- INSERTING DATA FROM BOTTOM-UP SO THAT SUBGROUP_MOVE_TABLE IS TREATED AS A STACK
	-- table.insert(CHANGE_LEOPARDON, GetSubGroupObliterate(SUBGROUP_MOVE_TABLE[i]["SubGroup"]))
	local ExportDisplay = false; if SUBGROUP_MOVE_TABLE[i]["Display"] ~= nil then ExportDisplay = true end
	-- table.insert(CHANGE_LEOPARDON, GetBaseObjectSetOverwrite(SUBGROUP_MOVE_TABLE[i]["SubGroup"]))
	table.insert(CHANGE_LEOPARDON, GetBaseObjectMigrateAlt(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["To"]))
	table.insert(CHANGE_LEOPARDON, GetSubGroupMigrate(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["Name"], SUBGROUP_MOVE_TABLE[i]["To"], ExportDisplay))
end

for _,j in ipairs(COMPO_PART_TABLE) do
	table.insert(CHANGE_LEOPARDON, GetCompositePartChangeTable(j["ID"], j["CompositePart"]))
	for _,k in ipairs(j["CompositePart"]) do
		table.insert(COMPO_PART_SKW, {"ID", k})
	end
end

table.insert(CHANGE_LEOPARDON, HIDE_COMPO_PART_CHANGE)

table.insert(CHANGE_LEOPARDON,
{
	["SKW"] = {
							{"Groups", "GcBaseBuildingGroup"}
						},
	["SECTION_UP_SPECIAL"] = 1,
	["EXML_FLAGS"]  = "OVERWRITE", 
	-- ["REPLACE_TYPE"] = "RAW", 
	-- ["VCT"] = {{[[<Property name="Groups">]], [[<Property name="Groups" _overwrite="true">]]}},
})

-- UI EXPANSION
-- PARTS_UI_ADD_TABLE = {}
-- table.insert(PARTS_UI_ADD_TABLE, [[<!--BuildFrame-->]])
table.insert(BUILDMENU_UI_SLOTS,
{
	["SPECIAL_KEY_WORDS"] = {"ID", "DIVIDER1"},
	["SECTION_UP_SPECIAL"] = 2,
	["SEC_COPY"] = "ADD_UI_DIVIDER",
})
table.insert(BUILDMENU_UI_SLOTS,
{
	["SPECIAL_KEY_WORDS"] = {"ID", "ITEM01"},
	["SECTION_UP_SPECIAL"] = 2,
	["SEC_COPY"] = "ADD_UI_ITEM",
})
-- MINUS 1 SINCE VANILLA ID STARTS WITH 0
for i = VANILLA_PARTS_COUNT, PARTS_SLOTS_LIMIT - 1 do
	-- ADD DIVIDER EVERY "UI_SINGLE_LINE"TH UI ENTRY
	if (i) % DIVIDER_SLOT <= 0 then
		table.insert(BUILDMENU_UI_SLOTS,
		{
			["SEC_EDIT"] = "ADD_UI_DIVIDER",
			["SPECIAL_KEY_WORDS"] = {"ID", "IGNORE"},
			["VALUE_CHANGE_TABLE"] ={{"ID", "DIVIDER" .. (i//DIVIDER_SLOT)}},
		})
		table.insert(BUILDMENU_UI_SLOTS,
		{
			-- NEW SLOTS
			["SPECIAL_KEY_WORDS"] = {"ID", "DIVIDER0" }, -- MINUS 1 SINCE VANILLA ID STARTS WITH 0
			["SECTION_UP"] = 3,
			["ADD_OPTION"] = "ADDendSECTION",
			["SEC_PASTE"] = "ADD_UI_DIVIDER",
		})
		-- table.insert(PARTS_UI_ADD_TABLE, GetPartsMenuDivider(i//DIVIDER_SLOT))
	end
	-- VANILLA ID STARTS WITH 0
		table.insert(BUILDMENU_UI_SLOTS,
		{
			["SEC_EDIT"] = "ADD_UI_ITEM",
			["SPECIAL_KEY_WORDS"] = {"ID", "IGNORE"},
			["VALUE_CHANGE_TABLE"] ={{"ID", "ITEM" .. i}},
		})
		table.insert(BUILDMENU_UI_SLOTS,
		{
			-- NEW SLOTS
			["SPECIAL_KEY_WORDS"] = {"ID", "DIVIDER0" }, -- MINUS 1 SINCE VANILLA ID STARTS WITH 0
			["SECTION_UP"] = 3,
			["ADD_OPTION"] = "ADDendSECTION",
			["SEC_PASTE"] = "ADD_UI_ITEM",
		})
	-- table.insert(PARTS_UI_ADD_TABLE, GetPartsItemEntry(i))
end
-- table.insert(PARTS_UI_ADD_TABLE, [[<!--BuildFrame End-->]])
-- if DEBUG_TEXT then
	-- print(table.concat(PARTS_UI_ADD_TABLE))
-- end

MAKE_EXPAND_DONG_OBVIOUS =
{
	{
		["SPECIAL_KEY_WORDS"] = {"ID", "TEXT"},
		["SECTION_UP_SPECIAL"] = 2,
		["SEC_COPY"] = "ADD_EXPAND_TEXT",
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["VALUE_CHANGE_TABLE"] ={
									{"Text", "Press &lt;IMG&gt;FE_TRANSFER&lt;&gt; to expand"},
									-- {"Special", "False"},
								},
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["PKW"] = {"AccessibleOverrides"},
		["REPLACE_TYPE"] = "ALL",
		["CREATE_HOES"] = "TRUE", 
		-- ["REMOVE"] = "SECTION",
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["SPECIAL_KEY_WORDS"] = {"Element Data", "GcNGuiElementData"},
		["VALUE_CHANGE_TABLE"] ={
									{"ID", "MAKE_OBV"},
									{"Position X", "10"},
									{"Position Y", "0"},
									{"Width", "80"},
									-- {"Height", "16"},
									{"Height", "10"},
									{"Width Percentage", "True"},
								},
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["SPECIAL_KEY_WORDS"] = {"Element Data", "GcNGuiElementData", "Editor Visible", "GcNGuiEditorVisibility"},
		["VALUE_CHANGE_TABLE"] ={
									{"EditorVisibility", "UseData"},
								},
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiTextStyle", "Default", "TkNGuiTextStyleData"},
		["PKW"] = {"Colour"},
		["VALUE_CHANGE_TABLE"] ={
									{"R", "0.933"},
									{"G", "0.788"},
									{"B", "0.141"},
								},
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiTextStyle", "Default", "TkNGuiTextStyleData"},
		["PKW"] = {"Outline Colour"},
		["VALUE_CHANGE_TABLE"] ={
									{"R", "0"},
									{"G", "0"},
									{"B", "0"},
								},
	},
	{
		["SEC_EDIT"] = "ADD_EXPAND_TEXT",
		["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiTextStyle", "Default", "TkNGuiTextStyleData"},
		["VALUE_CHANGE_TABLE"] ={
									{"Font Height", "15"},
									{"Outline Size", "10"},
									{"Vertical", "Top"},
									{"Horizontal", "Left"},
									{"Has Outline", "True"},
								},
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID", "EXPAND", "Layout", "GcNGuiLayoutData"},
		-- ["SECTION_UP_SPECIAL"] = 1,
		-- ["PKW"] = {"Children"},
		["VALUE_CHANGE_TABLE"] ={
									{"Width", "100"},
									{"Width Percentage", "True"},
								},
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID", "EXPAND"},
		["SECTION_UP_SPECIAL"] = 1,
		["PKW"] = {"Children"},
		["ADD_OPTION"] = "ADDendSECTION",
		["SEC_PASTE"] = "ADD_EXPAND_TEXT",
	},
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~BuildFrame_RecTUM",
["MOD_BATCHNAME"]		= "++++DO_NOT_COMBINE_IN_AMUMSS",
["MOD_AUTHOR"]				= "WinderTP, Babscoole",
["MOD_DESCRIPTION"]			= "Recategorisation Trimming Utility for Build Menu",
["NMS_VERSION"]				= "",
["AMUMSS_SUPPRESS_MSG"] 	= "SUPPRESS_FLOOR_DIV, UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.EXML",
					-- ["MBIN_FILE_SOURCE"] 	= {{"METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN", "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.EXML"}},
					["MXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON,
					-- ["EXT_FUNC"] = {"YEET_UNUSED_PARAMS"},
				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\BASEPARTSMENU.MBIN",
					["MXML_CHANGE_TABLE"] 	= BUILDMENU_UI_SLOTS
				},
				{
					["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\BASEPARTITEM.MBIN",
					["MXML_CHANGE_TABLE"] 	= MAKE_EXPAND_DONG_OBVIOUS
				},
			}
		}, 
	}	
}