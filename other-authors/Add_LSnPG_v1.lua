--[[
Mod id				3443
Mod category		Buildings
Mod name			Add Legacy Structures and Planetary Glitches
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3443
]]

local function BuildBuildingTree(prefix, index)
return string.format([[
<Property name="Trees" value="GcUnlockableItemTree" _index="%d">
  <Property name="Title" value="UI_TECH_TREE_SUB" />
  <Property name="CostTypeID" value="NANITES" />
  <Property name="UseNarrowGaps" value="false" />
  <Property name="Root" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="%s_WALL" />
    <Property name="Children">

      <!-- FLOOR branch -->
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
        <Property name="Unlockable" value="%s_FLOOR" />
        <Property name="Children">
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
            <Property name="Unlockable" value="%s_GFLOOR" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
            <Property name="Unlockable" value="%s_RAMP" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_RAMP_H" />
              </Property>
            </Property>
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
            <Property name="Unlockable" value="%s_FLOOR_Q" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
            <Property name="Unlockable" value="%s_TRIFLOOR" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_TRIFLOOR_Q" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>

      <!-- WALL_H branch -->
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
        <Property name="Unlockable" value="%s_WALL_H" />
        <Property name="Children">
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
            <Property name="Unlockable" value="%s_WALLDIAGONAL" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
            <Property name="Unlockable" value="%s_WALL_Q" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_WALL_Q_H" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>

      <!-- DOOR branch -->
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
        <Property name="Unlockable" value="%s_DOOR" />
        <Property name="Children">
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
            <Property name="Unlockable" value="%s_WALL_WINDOW" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_SDOOR" />
              </Property>
            </Property>
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
            <Property name="Unlockable" value="%s_DOOR_H" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_DOORWINDOW" />
              </Property>
            </Property>
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
            <Property name="Unlockable" value="%s_GDOOR" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_GDOOR_D" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>

      <!-- ROOF branch -->
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
        <Property name="Unlockable" value="%s_ROOF" />
        <Property name="Children">
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
            <Property name="Unlockable" value="%s_ROOF_M" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
            <Property name="Unlockable" value="%s_ROOF_C" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_ROOF_IC" />
              </Property>
            </Property>
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
            <Property name="Unlockable" value="%s_ARCH" />
            <Property name="Children">
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
                <Property name="Unlockable" value="%s_ARCH_H" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>

    </Property>
  </Property>
</Property>
]], index, prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix,
   prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix,
   prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix, prefix)
end

local CubeRoomTree = [[
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
          </Property>
        </Property>
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
        <Property name="Unlockable" value="CORRIDOR_SPACE" />
        <Property name="Children">
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
            <Property name="Unlockable" value="CORRIDORL_SPACE" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
            <Property name="Unlockable" value="CORRIDORT_SPACE" />
          </Property>
          <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
            <Property name="Unlockable" value="CORRIDORX_SPACE" />
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

local FreighterTree = [[
<Property name="Trees" value="GcUnlockableItemTree" _index="7">
  <Property name="Title" value="UI_FRE_BASE_TREE" />
  <Property name="CostTypeID" value="NANITES" />
  <Property name="UseNarrowGaps" value="false" />
  <Property name="Root" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="BASE_ENGINEORB" />
    <Property name="Children">
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
        <Property name="Unlockable" value="BASE_BEAMSTONE" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
        <Property name="Unlockable" value="BASE_BUBBLECLUS" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
        <Property name="Unlockable" value="BASE_MEDGEOMETR" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
        <Property name="Unlockable" value="BASE_SHARD" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="4">
        <Property name="Unlockable" value="BASE_STARJOINT" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="5">
        <Property name="Unlockable" value="BASE_BONEGARDEN" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="6">
        <Property name="Unlockable" value="BASE_CONTOURPOD" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="7">
        <Property name="Unlockable" value="BASE_HYDROPOD" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="8">
        <Property name="Unlockable" value="BASE_SHELLWHITE" />
      </Property>
      <Property name="Children" value="GcUnlockableItemTreeNode" _index="9">
        <Property name="Unlockable" value="BASE_WEIRDCUBE" />
      </Property>
    </Property>
  </Property>
</Property>
]]

local FinalAdd =
    BuildBuildingTree("C", 3) ..
    BuildBuildingTree("M", 4) ..
    BuildBuildingTree("W", 5) ..
    CubeRoomTree ..
    FreighterTree

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME     = "___230_Add_LSnPG_v1",
    MOD_AUTHOR       = "DY230",
    NMS_VERSION      = "6.45.1",
    MOD_DESCRIPTION  = "Unlock the blueprints of legacy structures and planetary glitches on the freighter.",
    MODIFICATIONS    = {
        {
            MBIN_CT = {
                {
                    MBIN_FS = [[METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN]],
                    MXML_CT = {
                        {
                            SKW = { { "Title", "UI_FREIGHTER_TREE" } },
                            PKW = "Trees",
                            ADD = FinalAdd,
                        },
                    },
                },
            },
        },
    },
}