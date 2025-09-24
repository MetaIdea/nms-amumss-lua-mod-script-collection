LEGACY_OBJECTS = -- DEFAULTSAVEDATA VANILLA KnownProducts
{ 
	{	
		["Set"] = "Legacy",
		["Enabled"] = true,
		["Objects"] =
		{
			{
				["ID"] = "WALL",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "WALLCURVED",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "WALLTALL",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "ROOMFLOOR",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "WALLDOOR",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				},
				["Display"] = "-1",
			},
			{
				["ID"] = "CORNERPOST",
				["AddGroup"] = 1,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			-- {
				-- ["ID"] = "CUBEROOF",
				-- ["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				-- ["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				-- {
					-- {"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				-- }
			-- },
			-- {
				-- ["ID"] = "WALLSCREENB2",
				-- ["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				-- ["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				-- {
					-- {"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				-- }
			-- },
			-- {
				-- ["ID"] = "BUILDRAMP",
				-- ["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				-- ["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				-- {
					-- {"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				-- }
			-- },
			-- {
				-- ["ID"] = "BUILDCHAIR4",
				-- ["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				-- ["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				-- {
					-- {"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				-- }
			-- },
			{
				["ID"] = "PIPESHAPE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CURVEPIPESHAPE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALL_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALL_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALL_Q_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALLDIAGONAL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_WALL_WINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_DOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_DOOR_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_GDOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_DOORWINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_FLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_TRIFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_TRIFLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_GFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_FLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_RAMP",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_RAMP_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ROOF",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ROOF_M",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ROOF_C",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ROOF_IC",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ARCH",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "W_ARCH_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALL_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALL_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALL_Q_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALLDIAGONAL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_WALL_WINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_DOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_DOOR_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_GDOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_DOORWINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_FLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_TRIFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_TRIFLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_GFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_FLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_RAMP",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_RAMP_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ROOF",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ROOF_M",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ROOF_C",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ROOF_IC",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ARCH",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "M_ARCH_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALL_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALL_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALL_Q_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALLDIAGONAL",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_WALL_WINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_DOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_DOOR_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_GDOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_DOORWINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_FLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_TRIFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_TRIFLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_GFLOOR",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_FLOOR_Q",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_RAMP",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_RAMP_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ROOF",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ROOF_M",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ROOF_C",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ROOF_IC",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ARCH",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "C_ARCH_H",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
		},
	},
	{	
		["Set"] = "Settlement",
		["Enabled"] = true,
		["Objects"] =
		{
			{
				["ID"] = "SET_CONSTRUCT",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_MAYORTERM",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_MONUMENT",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_T_MONU",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_F_MONU",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_B_MONU",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "S_TOWER",
				["AddGroup"] = 2,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
			{
				["ID"] = "SET_FISHPOND",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FURNITURE", "FURNDECOR"},
				}
			},
		},
	},
	{	
		["Set"] = "Freighter_Legacy",
		["Enabled"] = true,
		["Objects"] =
		{
			{
				["ID"] = "CUBEROOM_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CUBEROOMB_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CUBEROOMC_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			-- {
				-- ["ID"] = "TELEPORTER_F",
				-- ["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				-- ["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				-- {
					-- {"ROOMS", "LEG_FOUND"},
					-- -- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				-- }
			-- },
			{
				["ID"] = "CORRIDOR_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CORRIDORL_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CORRIDORT_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CORRIDORX_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "CORSTAIRS_SPACE",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "NPCFRIGTERM",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "GARAGE_FREIGHT",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER0",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER1",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER2",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER3",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER4",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER5",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER6",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER7",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER8",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
			{
				["ID"] = "S_CONTAINER9",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"ROOMS", "LEG_FOUND"},
					-- {"PF_STRUCT_2", "VANILLA_LEGACY"},
				}
			},
		},
	},
	{	
		["Set"] = "Vanilla_Unused",
		["Enabled"] = false,
		["Objects"] =
		{
			{
				["ID"] = "FRE_CORR_A",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_CUBE_F",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			--[[{
				["ID"] = "LAUNCHLOCKER",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},]]
			{
				["ID"] = "FRE_WALK_A",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_ROOM_ROCLOC",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_ROOM_PLANT",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_ELEV_F",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_EXT_A",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_FACE_DOOR_A",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
			{
				["ID"] = "FRE_FACE_WINDOW",
				["AddGroup"] = 3,	-- ONLY USE 1 IF OBJECT IS IN NO GROUP IN VANILLA, ELSE USE 2 TO REPLACE GROUP AND SUBGROUP
				["Groups"] =		-- AddGroup = 1: add groups to empty groups; 2, replace current with first entry; 3, do nothing
				{
					{"FREIGHTER", "FRE_CORE"},
				}
			},
		},
	},
}

function GetKnownProducts(ID)
return [[
<Property name="KnownProducts" value="]] .. ID .. [[" />]]
end

function GetGroupData(Group, SubGroup, Display)
	if Display then
	 EXPORT = [[
<Property value="GcBaseBuildingEntryGroup" _display="WTP">]]
	else EXPORT = [[
<Property value="GcBaseBuildingEntryGroup">]]
	end
return EXPORT .. [[
<Property name="Group" value="]] .. Group .. [[" />
<Property name="SubGroupName" value="]] .. SubGroup .. [[" /> <!--BUILDFRAME-->
<Property name="SubGroup" value="0" />
</Property>
]]
end


CHANGE_LEOPARDON = {}
KNOWNPRODUCTS = {}

table.insert(CHANGE_LEOPARDON, 
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "ROOMS"},
							["PRECEDING_KEY_WORDS"] = {"SubGroups"},
							["REPLACE_TYPE"] 		= "ADDendSECTION",
							["ADD"] 				= 
	[[<Property name="SubGroups" value="GcBaseBuildingSubGroup">
	<Property name="Id" value="LEG_FOUND" />
	<Property name="Name" value="LEGACY OBJECTS" />
	</Property>]],
						})
						
for _i,j in pairs(LEGACY_OBJECTS) do
	if j["Enabled"] then
	for _k,l in pairs(j["Objects"]) do
		if l["AddGroup"] == 1 then
			ADDGROUP = {}
			for _m,n in pairs(l["Groups"]) do
				local ExportDisplay = false; if l["Display"] ~= nil then ExportDisplay = true end
				table.insert(ADDGROUP, GetGroupData(n[1],n[2],ExportDisplay))
			end
			-- table.insert(ADDGROUP, [[</Property>]])
			table.insert(CHANGE_LEOPARDON, 
					{
						["SPECIAL_KEY_WORDS"] = {"ID", l["ID"]},
							["PRECEDING_KEY_WORDS"] = {"Groups"},
						-- ["REPLACE_TYPE"] 		= "RAW",
							["CREATE_HOS"] 		= "TRUE",
							["ADD"] 			= table.concat(ADDGROUP)
						-- ["VALUE_CHANGE_TABLE"] 	= 
						-- {
							-- { [[<Property name="Groups" />]], table.concat(ADDGROUP) },
						-- }
					})
		elseif l["AddGroup"] == 2 then
			table.insert(CHANGE_LEOPARDON, 			
					{
						["SPECIAL_KEY_WORDS"] = {"ID", l["ID"]},
						["VALUE_CHANGE_TABLE"] 	= 
						{
							{"Group", l["Groups"][1][1]},
							{"SubGroupName", l["Groups"][1][2]},
						}
					})
		end
		table.insert(CHANGE_LEOPARDON, 
					{
						["SPECIAL_KEY_WORDS"] = {"ID", l["ID"]},
						["VALUE_CHANGE_TABLE"] 	= 
						{
							{"BuildableOnPlanetBase", "True"},
							{"BuildableOnSpaceBase", "True"},
							{"BuildableOnFreighter", "True"},
							{"BuildableUnderwater", "True"},
							{"BuildableAboveWater", "True"},
							{"ShowInBuildMenu", "True"},
							-- {"PlanetBaseLimit", "0"},
							-- {"FreighterBaseLimit", "0"},
						}
					})
		table.insert(KNOWNPRODUCTS, GetKnownProducts(l["ID"]))
	end
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~BuildFrame_MILF", -- Build Menu Infrastructure Listings from Foundation
["MOD_BATCHNAME"]		= "++++DO_NOT_COMBINE_IN_AMUMSS",
["MOD_AUTHOR"]				= "WinderTP",
["NMS_VERSION"]				= "uhhh",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.EXML"},
					["MXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON,
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						-- [[METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN]],
						[[METADATA/GAMESTATE/DEFAULTSAVEDATA.EXML]],
					},
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
							-- ["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= table.concat(KNOWNPRODUCTS)
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.EXML",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_CONSTRUCT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_2"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_2"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_2"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_2"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.MONITORDESK.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_CONSTRUCT"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_CONSTRUCT"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_CONSTRUCT"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.MONITORDESK.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MAYORTERM"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_3"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_3"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_3"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_3"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.MONITORDESK.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MAYORTERM"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MAYORTERM"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_3"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MAYORTERM"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.MONITORDESK.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MONUMENT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_1"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_MONU_S.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MONUMENT"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MONUMENT"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_MONUMENT"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/RACE.VYKEEN.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_T_MONU"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_1"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_MONU_F.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_T_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_T_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_T_MONU"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/RACE.KORVAX.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_F_MONU"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_1"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_MONU_T.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_F_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_F_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_F_MONU"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/RACE.GEK.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S_TOWER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "BLD_TOWER_NAME"},
								{"NameLower", "BLD_TOWER_NAME_L"},
								-- {"BLD_SET_SUB", "BLD_TOWER_SUBTITLE"},
								-- {"BLD_SET_MONUMENT_DESC", "BLD_TOWER_DESCRIPTION"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_TOWER_S.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S_TOWER"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "BLD_TOWER_SUBTITLE"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S_TOWER"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "BLD_TOWER_DESCRIPTION"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S_TOWER"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/RACE.VYKEEN.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_B_MONU"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_MISS_MARKER_1"},
								{"NameLower", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_MONU_T.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_B_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Subtitle", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_B_MONU"},
							-- ["PRECEDING_KEY_WORDS"] = {"Description"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Description", "UI_SETTLEMENT_MISS_MARKER_1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_B_MONU"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/RACE.ROBOT.DDS"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_FISHPOND"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name", "UI_SETTLEMENT_PROD_REQ_FISH"},
								{"NameLower", "UI_SETTLEMENT_PROD_REQ_FISH"},
								-- {"BLD_SET_SUB", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"BLD_SET_MONUMENT_DESC", "UI_SETTLEMENT_MISS_MARKER_1"},
								-- {"TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.WALL_STONE.DDS", "TEXTURES\UI\FRONTEND\ICONS\SETTLEMENT/SETTLE_MONU_T.DDS"},
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SET_FISHPOND"},
							-- -- ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Subtitle", "UI_SETTLEMENT_MISS_MARKER_1"},
							-- }
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SET_FISHPOND"},
							-- -- ["PRECEDING_KEY_WORDS"] = {"Description"},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Description", "UI_SETTLEMENT_MISS_MARKER_1"},
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SET_FISHPOND"},
							["PRECEDING_KEY_WORDS"] = {"Icon"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", "TEXTURES\UI\FRONTEND\ICONS\QUICKMENU/SUMMONFISHINGPLATFORM.DDS"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
											{
												"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLTALL_PLACEMENT.SCENE.MBIN",
												-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALL_PLACEMENT.SCENE.MBIN",
												"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLPOST_PLACEMENT.SCENE.MBIN",
												-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLFLOOR_PLACEMENT.SCENE.MBIN",
												-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLDOOR_PLACEMENT.SCENE.MBIN",
												-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLCURVED_PLACEMENT.SCENE.MBIN",
											},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "MESH"},
							-- ["PRECEDING_KEY_WORDS"] = {"Children", "TkSceneNodeData"},
							["VALUE_MATCH"] = "{SnapGroup_.}",
							["REPLACE_TYPE"]    = "ALL",  
							["REMOVE"] 	= "SECTION",
						}
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= 	{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\WALLFLOOR.SCENE.MBIN",},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Type", "MESH"},
							-- ["PRECEDING_KEY_WORDS"] = {"Children", "TkSceneNodeData"},
							["VALUE_MATCH"] = {"SnapGroup_FloorCurved", "{SnapGroup_FloorSupport.}", "{SnapGroup_LadderConnect.}", "{RampConnector*}"},
							["REPLACE_TYPE"]    = "ALL",  
							["REMOVE"] 	= "SECTION",
						}
					},
				},
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= { "METADATA\REALITY\TABLES\LEGACYBASEBUILDINGTABLE.MBIN"},
					-- ["MXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "GcBaseBuildingEntry",
							-- ["REPLACE_TYPE"] 	= "ALL",
							-- ["REMOVE"] = "SECTION",
						-- },
					-- }
				-- },
			}
		},
	}	
}