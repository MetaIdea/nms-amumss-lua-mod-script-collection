-- ENTER A PRESET HERE TO OVERWRITE THE CHANGE_CHOICE LIST BELOW
-- SAVES YOU TIME IF YOU WANT SOME CURATED SHIT
-- LEAVE BLANK TO CUSTOMISE USING CHANGE_CHOICE INSTEAD
-- ALL_TOP 			- EVERY SINGLE PART WILL BECOME THE "TOP" WALL
-- ALL_MIDDLE 		- EVERY SINGLE PART WILL BECOME THE "MIDDLE" WALL
-- ALL_BOTTOM		- EVERY SINGLE PART WILL BECOME THE "BOTTOM" WALL
-- TOP_TO_BOTTOM	- EVERY "TOP" WALL WILL BECOME THE "BOTTOM" WALL
-- TOP_TO_MID		- EVERY "TOP" WALL WILL BECOME THE "MIDDLE" WALL
-- MID_TO_TOP		- EVERY "MIDDLE" WALL WILL BECOME THE "TOP" WALL
-- MID_TO_BOTTOM	- EVERY "MIDDLE" WALL WILL BECOME THE "BOTTOM" WALL
-- BOTTOM_TO_TOP	- EVERY "BOTTOM" WALL WILL BECOME THE "TOP" WALL
-- BOTTOM_TO_MID	- EVERY "BOTTOM" WALL WILL BECOME THE "MIDDLE" WALL
-- TOP_BOTTOM_SWAP	- SWAPS ALL "BOTTOM" WALL WITH "TOP" WALL, AND VICE VERSA
PRESET = "ALL_TOP"


-- FULL CUSTOMISATION HERE
-- MODELS WILL CHANGE FROM ["PARAMETER NAME"] TO "VALUE"
-- CHOOSE EITHER "BOTTOM", "MIDDLE" OR "TOP"
-- E.G.
-- ["BOTTOM"] = "TOP"
-- WILL CHANGE THE ["BOTTOM"] MODEL TO "TOP" MODEL
CHANGE_CHOICE =
{
	["Wall"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Half Wall"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_H",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Triangular Wall"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALLDIAGONAL",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Window 0"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_WINDOW0",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Window 1"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_WINDOW1",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Window 2"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_WINDOW2",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Window 3"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_WINDOW3",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Doorway 0"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_DOOR0",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Doorway 1"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_DOOR1",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Half Doorway 0"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_DOOR0_H",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Window Door 0"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_DOORWINDOW0",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Garage Door 0"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_DOORGARAGE0",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Arch Wall"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_ARCH",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	["Half Arch Wall"] =
	-- BOTTOM IS DEFAULT
	-- TOP IS WHEN ONLY BOTTOM SNAPPED
	-- MIDDLE IS WHEN BOTH TOP AND BOTTOM SNAPPED
	{
		["ID"] = "WALL_ARCH_H",
		["Timber"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Stone"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
		["Fibreglass"] =
		{
			["TOP"] 	= "TOP",
			["BOTTOM"] 	= "BOTTOM",
			["MIDDLE"] 	= "MIDDLE",
		},
	},
	
}

-- LIST OF PRESETS DOING PARTIAL REPLACEMENTS
-- OVERWRITES CHANGE_CHOICE COMPLETELY
-- PART NOT SPECIFIED IN THE PRESET WILL BE REVERTED TO VANILLA
-- ADD CUSTOM PRESET BY COPYING THE FOLLOWING TEMPLATE (WITHOUT THE --[[  ]]):
--[[	
	["PRESET_NAME"] = 		{
								{["FROM"] = "TOP", ["TO"] = "BOTTOM"},
							},
]]
-- WHERE PRESET_NAME IS THE NAME OF THE PRESET
-- VALUE OF ["FROM"] IS PART BEING REPLACED, VALUE OF ["TO"] IS THE PART REPLACING IT
-- THERE CAN ALSO BE MULTIPLE BLOCKS OF 
--[[
		{["FROM"] = "TOP", ["TO"] = "BOTTOM"},
]]
-- CHANGE THE VALUES TO TASTE
REPLACE_PARTIAL_LIST =
{
	["TOP_TO_BOTTOM"] = 	{
								{["FROM"] = "TOP", ["TO"] = "BOTTOM"},
							},
	["TOP_TO_MID"] =		{
								{["FROM"] = "TOP", ["TO"] = "MIDDLE"},
							},
	["MID_TO_TOP"] = 		{
								{["FROM"] = "MIDDLE", ["TO"] = "TOP"},
							},
	["MID_TO_BOTTOM"] = 	{
								{["FROM"] = "MIDDLE", ["TO"] = "BOTTOM"},
							},
	["BOTTOM_TO_TOP"] = 	{
								{["FROM"] = "BOTTOM", ["TO"] = "TOP"},
							},
	["BOTTOM_TO_MID"] = 	{
								{["FROM"] = "BOTTOM", ["TO"] = "MIDDLE"},
							},
	["TOP_BOTTOM_SWAP"] = 	{
								{["FROM"] = "TOP", ["TO"] = "BOTTOM"},
								{["FROM"] = "BOTTOM", ["TO"] = "TOP"},
							},
}


REPLACE_ALL_LIST =
{
	["ALL_TOP"] = "TOP",
	["ALL_MIDDLE"] = "MIDDLE",
	["ALL_BOTTOM"] = "BOTTOM",	
}


OBJECT_NAME_LIST =
-- LIST TO REAPPLY CHANGE_CHOICE VALUES ACCORDING TO PRESETS
{	
	"Wall",
	"Half Wall",
	"Triangular Wall",
	"Window 0",
	"Window 1",
	"Window 2",
	"Window 3",
	"Doorway 0",
	"Doorway 1",
	"Half Doorway 0",
	"Window Door 0",
	"Garage Door 0",
	"Arch Wall",
	"Half Arch Wall",
}
STYLES = { "Timber" , "Stone", "Fibreglass" }
BOTMIDTOP = { "BOTTOM", "MIDDLE", "TOP" }

BMT = 
{
	["BOTTOM"] 	= "B",
	["MIDDLE"] 	= "M",
	["TOP"] 	= "T",
}

UBER_PARTS_LIST =
-- COMPLETE LIST OF SCENE FILES BEING USED
{
	["WALL"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_H"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "_H",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_HALFB.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_HALFB.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_HALFB.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_HALFM.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_HALFM.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_HALFM.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_HALFT.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_HALFT.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_HALFT.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALLDIAGONAL"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALLDIAGONAL",
						["SUFFIX"]	= "",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_TRI_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_TRI_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_TRI_B.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_TRI_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_TRI_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_TRI_M.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_TRI_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_TRI_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_TRI_T.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_WINDOW0"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "_WIN0",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_WINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_WINDOW1"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "_WIN1",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_WINDOW1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_WINDOW2"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "_WIN2",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_WINDOW2.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_WINDOW3"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_WALL",
						["SUFFIX"]	= "_WIN3",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_WINDOW3.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_DOOR0"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_DOOR",
						["SUFFIX"]	= "0",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_DOOR0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_DOOR1"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_DOOR",
						["SUFFIX"]	= "1",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_DOOR1.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_DOOR0_H"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_DOOR",
						["SUFFIX"]	= "0_H",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_DOOR_HALF0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_DOORWINDOW0"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_DOORWIN",
						["SUFFIX"]	= "0",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_DOORWINDOW0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_DOORGARAGE0"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_GDOOR",
						["SUFFIX"]	= "0",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLB_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLB_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLB_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLM_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLM_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLM_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALLT_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALLT_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALLT_DOORGARAGE0.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_ARCH"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_ARCH",
						["SUFFIX"]	= "",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCH_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCH_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCH_B.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCH_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCH_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCH_M.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCH_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCH_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCH_T.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	["WALL_ARCH_H"] =
		{
			["ID"] =
				{
						["PREFIX"] 	= "_ARCH",
						["SUFFIX"]	= "_H",
				},
			["BOTTOM"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCHHALF_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCHHALF_B.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCHHALF_B.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["MIDDLE"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCHHALF_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCHHALF_M.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCHHALF_M.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
			["TOP"]	= 
				{
					["Timber"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/TIMBER/BASIC_WALL_ARCHHALF_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Stone"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/STONE/BASIC_WALL_ARCHHALF_T.SCENE.MBIN",
								["Inactive"]= "",
							},
					["Fibreglass"]	=
							{
								["Model"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/FIBREGLASS/BASIC_WALL_ARCHHALF_T.SCENE.MBIN",
								["Inactive"]= "",
							},
				},
		},
	
}

DEBUG_PRINT = false

function GetPartPathChange(ID, Style, Model, INACTIVE)
if INACTIVE then PATH = "Inactive" else PATH = "Model" end
return
	{
		["SPECIAL_KEY_WORDS"] = {"ID", ID, "Style", Style},
		["SECTION_UP_SPECIAL"] = 1,
		["PRECEDING_KEY_WORDS"] = { PATH },
		["REPLACE_TYPE"] 	= "",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Filename",	Model},
		}
	}
end

-- CHECKING IF PRESET IS USED
if REPLACE_ALL_LIST[PRESET] then
	if DEBUG_PRINT then print(REPLACE_ALL_LIST[PRESET]) end
	-- BLANKET REPLACEMENT BY OBJECT, BY MATERIAL, BY POSITION
	for i,j in pairs(OBJECT_NAME_LIST) do
		for k,l in pairs(STYLES) do
			for m,n in pairs(BOTMIDTOP) do
				-- if DEBUG_PRINT then print(n) end
				CHANGE_CHOICE[j][l][n] = REPLACE_ALL_LIST[PRESET]
				-- if DEBUG_PRINT then print(CHANGE_CHOICE[j][l][n]) end
			end
		end
	end
elseif REPLACE_PARTIAL_LIST[PRESET] then
	-- RESETS ALL WALL PARTS TO VANILLA
	for k,l in pairs(OBJECT_NAME_LIST) do
		for m,n in pairs(STYLES) do
			for i,j in pairs(BOTMIDTOP) do
				CHANGE_CHOICE[l][n][j] = j
			end
		end
	end
	-- APPLY PARTIAL REPLACEMENT PRESET CHANGES
	-- REPLACE PARTS POSITION BY POSITION, BY OBJECT, BY MATERIAL
	for i,j in pairs(REPLACE_PARTIAL_LIST[PRESET]) do
		if DEBUG_PRINT then print("FROM: " .. j["FROM"] .. "   TO: " .. j["TO"]) end
		for k,l in pairs(OBJECT_NAME_LIST) do
			for m,n in pairs(STYLES) do
				CHANGE_CHOICE[l][n][j["FROM"]] = j["TO"]
			end
		end
	end
elseif PRESET ~= "" then print("BuildFrame_WENIS_DEBUG - Preset " .. PRESET .. " does not exist! Please check for typos")
end

CHANGE_LEOPARDON = {}

for i,j in pairs(CHANGE_CHOICE) do
	for k,l in pairs(STYLES) do
		for m,n in pairs(BOTMIDTOP) do
			if j[l][n] ~= n then
				if DEBUG_PRINT then print(j[l][n]) end
				local INACTIVE_PATH = ""
				local MODEL_PATHS = UBER_PARTS_LIST[j["ID"]][j[l][n]][l]
				-- Get a value, under table UBER_PARTS_LIST
				-- first level in reference of name in the current entry of CHANGE_CHOICE (j), and uses its ID
				-- second level in reference of the current position part of current style of current CHANGE_CHOICE entry (n in l in j)
				-- third level in reference of the current style
				if MODEL_PATHS["Inactive"] == "" then
					INACTIVE_PATH = string.gsub(MODEL_PATHS["Model"], ".SCENE.MBIN", "_LOD.SCENE.MBIN")
					else INACTIVE_PATH = MODEL_PATHS["Inactive"]
				end
				if DEBUG_PRINT then print(INACTIVE_PATH) end
				local ID_INJECT = UBER_PARTS_LIST[j["ID"]]["ID"]["PREFIX"] .. BMT[n] .. UBER_PARTS_LIST[j["ID"]]["ID"]["SUFFIX"] 
				table.insert(CHANGE_LEOPARDON, GetPartPathChange(ID_INJECT, l, MODEL_PATHS["Model"], false))
				table.insert(CHANGE_LEOPARDON, GetPartPathChange(ID_INJECT, l, INACTIVE_PATH, true))
			end
		end
	end
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~WENIS.pak",
["MOD_BATCHNAME"]			= "~~~~BuildFrame_Comp.pak",
["MOD_AUTHOR"]				= "WinderTP, Babscoole",
["MOD_DESCRIPTION"]			= "Wall Elements eNforced Intact-keeping or Substitution",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON
				}, 
			}
		}, 
	}	
}