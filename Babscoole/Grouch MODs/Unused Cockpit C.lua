NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Unused Cockpit C",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Replaces the visuals for the Thunderbird Cockpit with those for the unused Cockpit C",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "B_COK_D", "PlacementScene", "TkModelResource"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/COCKPIT_C_1X2_PLACEMENT.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "_BIGGS_COK_D"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_C.SCENE.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "B_COK_D", "Icon", "TkTextureResource"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BIGGS/BIG_COK1X2_C.DDS"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1X2_C.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Cockpit1x2D", "Name", "ATTACHMENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1X2_C\ENTITIES\COCKPIT1X2C.ENTITY.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Cockpit1x2D"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name", "Cockpit1x2C"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1X2_D\ENTITIES\COCKPIT1X2D.ENTITY.MBIN", "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1X2_C\ENTITIES\COCKPIT1X2C.ENTITY.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\COCKPIT_1X2_C\ENTITIES\COCKPIT1X2C.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcCockpitComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cockpit", "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_C.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData", "Idle", "TkAnimationData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/COCKPIT_1X2_C.ANIM.MBIN"},
              }
            },
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_BIG_COK1X2_D_NAME">
      <Property name="Id" value="BLD_BIG_COK1X2_D_NAME" />
      <Property name="USEnglish" value="COCKPIT C" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLD_BIG_COK1X2_D_NAME_L">
      <Property name="Id" value="BLD_BIG_COK1X2_D_NAME_L" />
      <Property name="USEnglish" value="Cockpit C" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}