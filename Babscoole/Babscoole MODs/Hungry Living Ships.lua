TEXT_TO_ADD =
[[
        <Property name="ChargeBy" value="FOOD_R_EYESTEW" />
        <Property name="ChargeBy" value="FOOD_ICE_STAR" />
        <Property name="ChargeBy" value="FOOD_CM_CHOC" />
        <Property name="ChargeBy" value="FOOD_CM_CREAM" />
        <Property name="ChargeBy" value="FOOD_CM_CARM" />
        <Property name="ChargeBy" value="FOOD_CM_APPLE" />
        <Property name="ChargeBy" value="FOOD_CM_CACTUS" />
        <Property name="ChargeBy" value="FOOD_CM_JAM" />
        <Property name="ChargeBy" value="FOOD_CM_JHOT" />
        <Property name="ChargeBy" value="FOOD_CM_JGLITCH" />
        <Property name="ChargeBy" value="FOOD_MC_HONEY" />
        <Property name="ChargeBy" value="FOOD_MM_HONEY" />
        <Property name="ChargeBy" value="FOOD_MM_BLOB" />
        <Property name="ChargeBy" value="FOOD_MM_CREAM" />
        <Property name="ChargeBy" value="FOOD_MM_CHOC" />
        <Property name="ChargeBy" value="FOOD_MM_CARM" />
        <Property name="ChargeBy" value="FOOD_MM_APPLE" />
        <Property name="ChargeBy" value="FOOD_MM_CACTUS" />
        <Property name="ChargeBy" value="FOOD_MM_JAM" />
        <Property name="ChargeBy" value="FOOD_MM_CUST" />
        <Property name="ChargeBy" value="FOOD_CM_BLOBBUT" />
        <Property name="ChargeBy" value="FOOD_MM_JGLITCH" />
        <Property name="ChargeBy" value="FOOD_PIE_MCUST" />
        <Property name="ChargeBy" value="FOOD_PIE_BONE" />
        <Property name="ChargeBy" value="FOOD_CK_MCUST" />
        <Property name="ChargeBy" value="FOOD_MM_JHOT" />
        <Property name="ChargeBy" value="FOOD_CB_SCUST" />
        <Property name="ChargeBy" value="FOOD_DNUT_SCUST" />
        <Property name="ChargeBy" value="FOOD_PIE_SCUST" />
        <Property name="ChargeBy" value="FOOD_CK_SCUST" />
        <Property name="ChargeBy" value="FOOD_CG_SCUST" />
        <Property name="ChargeBy" value="FOOD_DNUT_MCUST" />
        <Property name="ChargeBy" value="FOOD_CM_HONEY" />
        <Property name="ChargeBy" value="FOOD_EGGPIE_M" />
        <Property name="ChargeBy" value="FOOD_EGGPIE_GM" />
        <Property name="ChargeBy" value="FOOD_R_EYEICE" />
        <Property name="ChargeBy" value="FOOD_ICE_FIEND" />
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Hungry Living Ships",
["MOD_DESCRIPTION"] = "Feed living ships food",
["MOD_AUTHOR"]      = "hilightnotes and Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "UI_FIENDCORE_NAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeValue", "200"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "UI_EYEBALL_NAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeValue", "300"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FOOD_DNUT_MCUST_NAME"},
                {"Name", "FOOD_DNUT_SCUST_NAME"},
                {"Name", "FOOD_PIE_MCUST_NAME"},
                {"Name", "FOOD_PIE_SCUST_NAME"},
                {"Name", "FOOD_BONE_PIE_NAME"},
                {"Name", "FOOD_CK_MCUST_NAME"},
                {"Name", "FOOD_CK_SCUST_NAME"},
                {"Name", "FOOD_CG_SCUST_NAME"},
                {"Name", "FOOD_CB_SCUST_NAME"},
                {"Name", "FOOD_CM_CREAM_NAME"},
                {"Name", "FOOD_CM_CHOC_NAME"},
                {"Name", "FOOD_CM_CARM_NAME"},
                {"Name", "FOOD_CM_APPLE_NAME"},
                {"Name", "FOOD_CM_CACTUS_NAME"},
                {"Name", "FOOD_CM_JAM_NAME"},
                {"Name", "FOOD_CM_JHOT_NAME"},
                {"Name", "FOOD_CM_JGLITCH_NAME"},
                {"Name", "FOOD_MC_HONEY_NAME"},
                {"Name", "FOOD_MM_HONEY_NAME"},
                {"Name", "FOOD_MM_BLOB_NAME"},
                {"Name", "FOOD_MM_CREAM_NAME"},
                {"Name", "FOOD_MM_CHOC_NAME"},
                {"Name", "FOOD_MM_CARM_NAME"},
                {"Name", "FOOD_MM_APPLE_NAME"},
                {"Name", "FOOD_MM_CACTUS_NAME"},
                {"Name", "FOOD_MM_JAM_NAME"},
                {"Name", "FOOD_MM_JHOT_NAME"},
                {"Name", "FOOD_MM_JGLITCH_NAME"},
                {"Name", "FOOD_MM_CUST_NAME"},
                {"Name", "FOOD_CM_BLOBBUT_NAME"},
                {"Name", "FOOD_CM_HONEY_NAME"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeValue", "2000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FOOD_EGGPIE_M_NAME"},
                {"Name", "FOOD_EGGPIE_GM_NAME"},
                {"Name", "FOOD_R_EYESTEW_NAME"},
                {"Name", "FOOD_R_EYEICE_NAME"},
                {"Name", "FOOD_ICE_FIEND_NAME"},
                {"Name", "FOOD_ICE_STAR_NAME"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeValue", "1000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCHER_ALIEN_NAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", "2000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCHER_ALIEN_NAME"},
              ["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
              ["LINE_OFFSET"] = "+2",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeBy", "FIENDCORE"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCHER_ALIEN_NAME"},
              ["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] = TEXT_TO_ADD
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LAUNCHER_ALIEN_NAME", "StatBonuses", "GcStatsBonus"},
              ["SECTION_ACTIVE"] = {"1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1000"},
              }
            },
          }
        },
      }
    },
  }
}