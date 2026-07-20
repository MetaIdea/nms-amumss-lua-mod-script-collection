NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Add Legacy Structures and Planetary Glitches",
["MOD_AUTHOR"]      = "DY230",
["NMS_VERSION"]     = "5.63",
["MOD_DESCRIPTION"] = "Adds legacy structures and planetary glitches blueprints to be unlocked at the upgrade unit on freighter's bridge",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"FreighterTech", "GcUnlockableItemTrees"},
              ["PRECEDING_KEY_WORDS"] = {"Trees"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Trees" value="GcUnlockableItemTree" _index="3">
					<Property name="Title" value="UI_TECH_TREE_SUB" />
					<Property name="CostTypeID" value="NANITES" />
					<Property name="UseNarrowGaps" value="false" />
					<Property name="Root" value="GcUnlockableItemTreeNode">
						<Property name="Unlockable" value="C_WALL" />
						<Property name="Children">
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
								<Property name="Unlockable" value="C_FLOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="C_GFLOOR" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="C_RAMP" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_RAMP_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="C_FLOOR_Q" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
										<Property name="Unlockable" value="C_TRIFLOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_TRIFLOOR_Q" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
								<Property name="Unlockable" value="C_WALL_H" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="C_WALLDIAGONAL" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="C_WALL_Q" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_WALL_Q_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
								<Property name="Unlockable" value="C_DOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="C_WALL_WINDOW" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_SDOOR" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="C_DOOR_H" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_DOORWINDOW" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="C_GDOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_GDOOR_D" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
								<Property name="Unlockable" value="C_ROOF" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="C_ROOF_M" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="C_ROOF_C" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_ROOF_IC" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="C_ARCH" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="C_ARCH_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Trees" value="GcUnlockableItemTree" _index="4">
					<Property name="Title" value="UI_TECH_TREE_SUB" />
					<Property name="CostTypeID" value="NANITES" />
					<Property name="UseNarrowGaps" value="false" />
					<Property name="Root" value="GcUnlockableItemTreeNode">
						<Property name="Unlockable" value="M_WALL" />
						<Property name="Children">
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
								<Property name="Unlockable" value="M_FLOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="M_GFLOOR" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="M_RAMP" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_RAMP_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="M_FLOOR_Q" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
										<Property name="Unlockable" value="M_TRIFLOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_TRIFLOOR_Q" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
								<Property name="Unlockable" value="M_WALL_H" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="M_WALLDIAGONAL" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="M_WALL_Q" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_WALL_Q_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
								<Property name="Unlockable" value="M_DOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="M_WALL_WINDOW" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_SDOOR" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="M_DOOR_H" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_DOORWINDOW" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="M_GDOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_GDOOR_D" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
								<Property name="Unlockable" value="M_ROOF" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="M_ROOF_M" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="M_ROOF_C" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_ROOF_IC" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="M_ARCH" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="M_ARCH_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Trees" value="GcUnlockableItemTree" _index="5">
					<Property name="Title" value="UI_TECH_TREE_SUB" />
					<Property name="CostTypeID" value="NANITES" />
					<Property name="UseNarrowGaps" value="false" />
					<Property name="Root" value="GcUnlockableItemTreeNode">
						<Property name="Unlockable" value="W_WALL" />
						<Property name="Children">
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
								<Property name="Unlockable" value="W_FLOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="W_GFLOOR" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="W_RAMP" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_RAMP_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="W_FLOOR_Q" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
										<Property name="Unlockable" value="W_TRIFLOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_TRIFLOOR_Q" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
								<Property name="Unlockable" value="W_WALL_H" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="W_WALLDIAGONAL" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="W_WALL_Q" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_WALL_Q_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
								<Property name="Unlockable" value="W_DOOR" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="W_WALL_WINDOW" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_SDOOR" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="W_DOOR_H" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_DOORWINDOW" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="W_GDOOR" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_GDOOR_D" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
								<Property name="Unlockable" value="W_ROOF" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="W_ROOF_M" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="W_ROOF_C" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_ROOF_IC" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="W_ARCH" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="W_ARCH_H" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Trees" value="GcUnlockableItemTree" _index="6">
					<Property name="Title" value="UI_TECH_TREE_SUB" />
					<Property name="CostTypeID" value="NANITES" />
					<Property name="UseNarrowGaps" value="false" />
					<Property name="Root" value="GcUnlockableItemTreeNode">
						<Property name="Unlockable" value="CUBEROOM_SPACE" />
						<Property name="Children">
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
								<Property name="Unlockable" value="CUBEROOMB_SPACE" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="CUBEROOMC_SPACE" />
										<Property name="Children" />
									</Property>
								</Property>
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
								<Property name="Unlockable" value="CORRIDOR_SPACE" />
								<Property name="Children">
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
										<Property name="Unlockable" value="CORRIDORL_SPACE" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="CORRIDORT_SPACE" />
										<Property name="Children" />
									</Property>
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
										<Property name="Unlockable" value="CORRIDORX_SPACE" />
										<Property name="Children" />
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Trees" value="GcUnlockableItemTree" _index="7">
					<Property name="Title" value="UI_FRE_BASE_TREE" />
					<Property name="CostTypeID" value="NANITES" />
					<Property name="UseNarrowGaps" value="false" />
					<Property name="Root" value="GcUnlockableItemTreeNode">
						<Property name="Unlockable" value="BASE_ENGINEORB" />
						<Property name="Children">
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
								<Property name="Unlockable" value="BASE_BEAMSTONE" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
								<Property name="Unlockable" value="BASE_BUBBLECLUS" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
								<Property name="Unlockable" value="BASE_MEDGEOMETR" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
								<Property name="Unlockable" value="BASE_SHARD" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="4">
								<Property name="Unlockable" value="BASE_STARJOINT" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="5">
								<Property name="Unlockable" value="BASE_BONEGARDEN" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="6">
								<Property name="Unlockable" value="BASE_CONTOURPOD" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="7">
								<Property name="Unlockable" value="BASE_HYDROPOD" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="8">
								<Property name="Unlockable" value="BASE_SHELLWHITE" />
								<Property name="Children" />
							</Property>
							<Property name="Children" value="GcUnlockableItemTreeNode" _index="9">
								<Property name="Unlockable" value="BASE_WEIRDCUBE" />
								<Property name="Children" />
							</Property>
						</Property>
					</Property>
				</Property>
]]              
            },
          }
        },
      }
    }
  }
}