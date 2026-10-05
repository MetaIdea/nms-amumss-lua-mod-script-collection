-- SnapAngles - optional AMUMSS script: the two building-file changes of Snap Angles, as mergeable edits.
--
-- Use this INSTEAD OF the GAMEDATA\MODS\SnapAngles folder from the main download when another mod also changes the
-- half stairs (BASIC_ROOF_MIDDLE_HALF) or the large triangle floor (BASIC_FLOOR_TRI). AMUMSS applies these edits on
-- top of whatever version of those files you have, so both mods keep working.
-- The snap-angle KEYS still need Binaries\XINPUT9_1_0.dll from the main download - it is not a game data file and
-- cannot be built by AMUMSS.
--
-- Every edit only ADDS snap points copied from vanilla parts (full stairs / square floor); nothing is removed or
-- changed. Generated from the tested files by cpp\tools\make_amumss_lua.py.

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SnapAngles_BuildingParts",
["MOD_AUTHOR"]      = "ajjdugo",
["NMS_VERSION"]     = "7.03",
["MOD_DESCRIPTION"] = "Snap Angles: half stairs chain top-to-bottom; large triangle attaches like the square floor",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        { -- HALF STAIRS: the full stairs' stair-to-stair pair (StairsEdge Out+In) at top and bottom, so half stairs chain
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_ROOF_MIDDLE_HALF.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            { -- new snap groups: SnapPoint_StairsEgeTop, SnapPoint_StairsEdgeBot
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_StairsEgeTop" />
			<Property name="NameHash" value="1053111325" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="3.333333" />
				<Property name="TransZ" value="2.666667" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="StairsEdge_Out_" />
					<Property name="NameHash" value="2753203624" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="StairsEdge_In_" />
					<Property name="NameHash" value="4069163210" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_StairsEdgeBot" />
			<Property name="NameHash" value="3150084095" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-2.666667" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="180.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="StairsEdge_Out_" />
					<Property name="NameHash" value="2753203624" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="StairsEdge_In_" />
					<Property name="NameHash" value="4069163210" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
]],
            },
          }
        },
        { -- LARGE TRIANGLE: everything the square floor has - onto full walls, stairs, quarter floors, face stairs, planters
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\BASIC_FLOOR_TRI.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            { -- SnapPoint_E: + StairsFloor_Out_, FloorStairs_In_
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_E"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="StairsFloor_Out_" />
					<Property name="NameHash" value="514906721" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorStairs_In_" />
					<Property name="NameHash" value="554662934" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_S: + StairsFloor_Out_, FloorStairs_In_
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_S"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="StairsFloor_Out_" />
					<Property name="NameHash" value="514906721" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorStairs_In_" />
					<Property name="NameHash" value="554662934" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_W: + StairsFloor_Out_, FloorStairs_In_
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_W"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="StairsFloor_Out_" />
					<Property name="NameHash" value="514906721" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorStairs_In_" />
					<Property name="NameHash" value="554662934" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_EastUp: + FloorUp_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_EastUp"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorUp_In" />
					<Property name="NameHash" value="3902542568" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_SouthUp: + FloorUp_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_SouthUp"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorUp_In" />
					<Property name="NameHash" value="3902542568" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_WestUp: + FloorUp_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_WestUp"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorUp_In" />
					<Property name="NameHash" value="3902542568" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_EastDown: + FloorDown_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_EastDown"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorDown_In" />
					<Property name="NameHash" value="2940979862" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_SouthDown: + FloorDown_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_SouthDown"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorDown_In" />
					<Property name="NameHash" value="2940979862" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_WestDown: + FloorDown_In
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_WestDown"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorDown_In" />
					<Property name="NameHash" value="2940979862" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="180.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_SN1 (all 3 groups of this name): + FloorTileB_In_
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_SN1"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorTileB_In_" />
					<Property name="NameHash" value="4011133202" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- SnapPoint_SN2 (all 3 groups of this name): + FloorTileB_In_
              ["SPECIAL_KEY_WORDS"]   = {"Name", "SnapPoint_SN2"},
              ["REPLACE_TYPE"]        = "ALL",
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="FloorTileB_In_" />
					<Property name="NameHash" value="4011133202" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]],
            },
            { -- new snap groups: SnapPoint_Floor, SnapPoint_Planter8, SnapPoint_Planter5, SnapPoint_Planter6, SnapPoint_Planter7
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"]          = "ADDendSECTION",
              ["ADD"] = [[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_Floor" />
			<Property name="NameHash" value="1477321085" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="FloorFaceStairs_In_" />
					<Property name="NameHash" value="36514413" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="StairsFloorFace_Out_" />
					<Property name="NameHash" value="1021689846" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="StairsFloorFace_Out_1" />
					<Property name="NameHash" value="3479535582" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="StairsFloorFace_Out_2" />
					<Property name="NameHash" value="3165182565" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="StairsFloorFace_Out_3" />
					<Property name="NameHash" value="2851517697" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_Planter8" />
			<Property name="NameHash" value="1807875231" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="1.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Planter_Out_" />
					<Property name="NameHash" value="2333140374" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Planter_Out_2" />
					<Property name="NameHash" value="3412797611" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="Planter_Out_3" />
					<Property name="NameHash" value="3654042989" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="Planter_Out_4" />
					<Property name="NameHash" value="3893223920" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_Planter5" />
			<Property name="NameHash" value="2462632620" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="1.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="1.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Planter_Out_" />
					<Property name="NameHash" value="2333140374" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Planter_Out_2" />
					<Property name="NameHash" value="3412797611" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="Planter_Out_3" />
					<Property name="NameHash" value="3654042989" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="Planter_Out_4" />
					<Property name="NameHash" value="3893223920" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_Planter6" />
			<Property name="NameHash" value="1082074650" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="1.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-1.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Planter_Out_" />
					<Property name="NameHash" value="2333140374" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Planter_Out_2" />
					<Property name="NameHash" value="3412797611" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="Planter_Out_3" />
					<Property name="NameHash" value="3654042989" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="Planter_Out_4" />
					<Property name="NameHash" value="3893223920" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="SnapPoint_Planter7" />
			<Property name="NameHash" value="792036231" />
			<Property name="Type" value="LOCATOR" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="-1.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="-1.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes" />
			<Property name="InstanceTransforms" />
			<Property name="Children">
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="Planter_Out_" />
					<Property name="NameHash" value="2333140374" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Planter_Out_2" />
					<Property name="NameHash" value="3412797611" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="2">
					<Property name="Name" value="Planter_Out_3" />
					<Property name="NameHash" value="3654042989" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
				<Property name="Children" value="TkSceneNodeData" _index="3">
					<Property name="Name" value="Planter_Out_4" />
					<Property name="NameHash" value="3893223920" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="-90.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes" />
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
			</Property>
		</Property>
]],
            },
          }
        },
      }
    },
  }
}
