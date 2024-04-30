
function FUNC_TEST()
  print(">>>>>>>>>>  This is FUNC_TEST  <<<<<<<<<<")
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = [[Test_GNH.pak]],
	MOD_AUTHOR = [[Wbertro]],
	MOD_DESCRIPTION = [[Test GetNameHash]],
	LUA_AUTHOR = [[Wbertro]],
	MODIFICATIONS = {
		{
			MBIN_CT = {
			{
				MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
				EXML_CT = {
          {
            COMMENT = [[Just a test of GNH() inside a VCT
            This will not compile]],
            PKW = [[GcBaseBuildingEntry.xml]],
            -- REPLACE_TYPE = "ONCE", -- force only ONCE
            -- WIS = {
                -- {
                  -- [[BuildableOnPlanetBase]],
                  -- [[True]],
                -- },
              -- },
            VCT = {
                {[[PlanetLimit]], GNH("TestThisName")}, -- 4289338541
                {[[RegionLimit]], GNH("MODELS\UI\WORLD\UI_QUICKMENU")}, -- 1499433276
                {[[PlanetBaseLimit]], GNH("L04")}, -- 388417510
                {[[FreighterBaseLimit]], GNH("MAIN")}, -- 3621565930
                {[[BuildEffectAccelerator]], GNH("TOPR01")}, -- 425250594
                {[[MinimumDeleteDistance]], GNH("R03")}, -- 2681987354
              },
          },
          
          {
            COMMENT = [[Just a test of FUNC() inside a VCT
            This will not compile]],
            PKW = [[GcBaseBuildingEntry.xml]],
            REPLACE_TYPE = "ONCE", -- force only ONCE
            WIS = {
                {
                  [[BuildableOnPlanetBase]],
                  [[True]],
                },
              },
            VCT = {
                {
                  [[PlanetLimit]],
                  "FUNC_TEST()",
                },
              },
          },

					},
			},
			},
		}, --7 global replacement
	},
}