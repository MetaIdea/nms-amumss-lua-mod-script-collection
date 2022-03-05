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
	{ ["SubGroup"] = "DECOLIGHTS", ["Name"] = "UI_BUILD_GRID_LIGHTS", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOEXTERIOR", ["Name"] = "UI_BUILD_GRID_EXTERIOR", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOCONSTRUCT", ["Name"] = "UI_BUILD_GRID_CONSTRUCTION", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "WALLDECALS", ["Name"] = "UI_BUILD_GRID_DECALS", ["From"] = "WALL_ART", ["To"] = "EXOTICS" },
	{ ["SubGroup"] = "WALLPOSTERS", ["Name"] = "UI_BUILD_GRID_POSTERS", ["From"] = "WALL_ART", ["To"] = "EXOTICS" },
	{ ["SubGroup"] = "FREIGHTERROOMS", ["Name"] = "UI_BUILD_GRID_FREIGHTER_ROOMS", ["From"] = "FREIGHTER", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "FREIGHTERTECH", ["Name"] = "UI_BUILD_GRID_FREIGHTER_TECH", ["From"] = "FREIGHTER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "T_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_T", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "S_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_T", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "S_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_T", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "S_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },

}

--[[function GetBaseObjectMigrate(SUBGROUP, FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
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
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO},
		}
	}
end

--[[function GetBaseObjectMigrateAltTwo(FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = 	{"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
		["REPLACE_TYPE"] 	= 		"ALL",
		["VALUE_MATCH"] = 			FROM, 
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO },
		}
	}
end]]


function GetSubGroupMigrate(SUBGROUP, NAME, TO)
-- ADDING "SubGroup" WITH "Name", "To" DESTINATION TOP GROUP, EXISTING TOP GROUPS ONLY
	function GetSubGroupData(ID, SUBNAME)
	-- CONSTRUCTING EXML CODE
		return [[
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="]] .. ID .. [[" />
          <Property name="Name" value="]] .. SUBNAME .. [[" />
        </Property>
]]
	end
return
	{
		["SPECIAL_KEY_WORDS"] = {"ID", TO},
		["PRECEDING_KEY_WORDS"] = {"SubGroups"},
		["LINE_OFFSET"] 		= "+0",
		["ADD"] 				= GetSubGroupData(SUBGROUP, NAME)
	}
end

CHANGE_LEOPARDON = {}

-- for i,j in pairs(SUBGROUP_MOVE_TABLE) do
	-- table.insert(CHANGE_LEOPARDON, GetBaseObjectMigrateAlt(j["SubGroup"], j["To"]))
	-- table.insert(CHANGE_LEOPARDON, GetSubGroupMigrate(j["SubGroup"], j["Name"], j["From"], j["To"]))
-- end

for i=#SUBGROUP_MOVE_TABLE,1,-1 do
-- INSERTING DATA FROM BOTTOM-UP SO THAT SUBGROUP_MOVE_TABLE IS TREATED AS A STACK
	table.insert(CHANGE_LEOPARDON, GetBaseObjectMigrateAlt(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["To"]))
	table.insert(CHANGE_LEOPARDON, GetSubGroupMigrate(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["Name"], SUBGROUP_MOVE_TABLE[i]["To"]))
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~RecTUM.pak",
["MOD_BATCHNAME"]			= "~~~~BuildFrame_Comp.pak",
["MOD_AUTHOR"]				= "WinderTP, Babscoole",
["MOD_DESCRIPTION"]			= "Recategorisation Trimming Utility for Build Menu",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON
				}, 
			}
		}, 
	}	
}