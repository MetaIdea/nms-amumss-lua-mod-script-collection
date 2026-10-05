BLD_ICON   = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/GAMETABLEBLUE.DDS"
LANG_TITLE = "XENO ARENA TABLE"
LANG_SUB   = "Xeno Arena Table"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Xeno Buildable Table",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Mariti",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = "Adds the Xeno Arena PvP table to the build menu (both players must have mod installed, if not, placed tables become PvE)",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\GAMETABLE\ENTITIES\BASEBUILDINGGAMETABLE0.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GameTableConfig", "PVP_STANDARD"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GAMETABLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuildableInShipDecorative", "false"},
                {"BuildableOnPlanet", "true"},
                {"BuildableOnPlanetWithProduct", "true"},
                {"CanStack", "false"},
                {"CanScale", "false"},
                {"CanChangeColour", "false"},
                {"CanChangeMaterial", "false"},
                {"CanPickUp", "true"},
                {"ShowInBuildMenu", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"id", "GAMETABLE", "Icon", "TkTextureResource"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", BLD_ICON},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"id", "GAMETABLE", "id", "ROBOT2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Amount", "1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"id", "GAMETABLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CanSendToOtherPlayers", "false"},
              }
            },
          }
        },
		    {
		    	["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
		    	["MXML_CHANGE_TABLE"] =
		    	{
		    		{
		    			["SPECIAL_KEY_WORDS"] = {"Unlockable", "FRE_CORR_B"},
		    			["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "AddEndSECTION",
              ["ADD"] =
[[
              <Property name="Children" value="GcUnlockableItemTreeNode" _index="3">
								<Property name="Unlockable" value="GAMETABLE" />
								<Property name="Children" />
							</Property>
]]
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
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. "BLD_GAMETABLE_NAME" .. [[" />
      <Property name="English" value="]] .. LANG_TITLE .. [[" />
      <Property name="French" value="]] .. LANG_TITLE .. [[" />
      <Property name="Italian" value="]] .. LANG_TITLE .. [[" />
      <Property name="German" value="]] .. LANG_TITLE .. [[" />
      <Property name="Spanish" value="]] .. LANG_TITLE .. [[" />
      <Property name="Russian" value="]] .. LANG_TITLE .. [[" />
      <Property name="Polish" value="]] .. LANG_TITLE .. [[" />
      <Property name="Dutch" value="]] .. LANG_TITLE .. [[" />
      <Property name="Portuguese" value="]] .. LANG_TITLE .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. LANG_TITLE .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. LANG_TITLE .. [[" />
      <Property name="SimplifiedChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="TraditionalChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="TencentChinese" value="]] .. LANG_TITLE .. [[" />
      <Property name="Korean" value="]] .. LANG_TITLE .. [[" />
      <Property name="Japanese" value="]] .. LANG_TITLE .. [[" />
      <Property name="USEnglish" value="]] .. LANG_TITLE .. [[" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. "BLD_GAMETABLE_NAME_L" .. [[" />
      <Property name="English" value="]] .. LANG_SUB .. [[" />
      <Property name="French" value="]] .. LANG_SUB .. [[" />
      <Property name="Italian" value="]] .. LANG_SUB .. [[" />
      <Property name="German" value="]] .. LANG_SUB .. [[" />
      <Property name="Spanish" value="]] .. LANG_SUB .. [[" />
      <Property name="Russian" value="]] .. LANG_SUB .. [[" />
      <Property name="Polish" value="]] .. LANG_SUB .. [[" />
      <Property name="Dutch" value="]] .. LANG_SUB .. [[" />
      <Property name="Portuguese" value="]] .. LANG_SUB .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. LANG_SUB .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. LANG_SUB .. [[" />
      <Property name="SimplifiedChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="TraditionalChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="TencentChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="Korean" value="]] .. LANG_SUB .. [[" />
      <Property name="Japanese" value="]] .. LANG_SUB .. [[" />
      <Property name="USEnglish" value="]] .. LANG_SUB .. [[" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. "BLD_GAMETABLE_DESC" .. [[" />
      <Property name="English" value="]] .. LANG_SUB .. [[" />
      <Property name="French" value="]] .. LANG_SUB .. [[" />
      <Property name="Italian" value="]] .. LANG_SUB .. [[" />
      <Property name="German" value="]] .. LANG_SUB .. [[" />
      <Property name="Spanish" value="]] .. LANG_SUB .. [[" />
      <Property name="Russian" value="]] .. LANG_SUB .. [[" />
      <Property name="Polish" value="]] .. LANG_SUB .. [[" />
      <Property name="Dutch" value="]] .. LANG_SUB .. [[" />
      <Property name="Portuguese" value="]] .. LANG_SUB .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. LANG_SUB .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. LANG_SUB .. [[" />
      <Property name="SimplifiedChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="TraditionalChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="TencentChinese" value="]] .. LANG_SUB .. [[" />
      <Property name="Korean" value="]] .. LANG_SUB .. [[" />
      <Property name="Japanese" value="]] .. LANG_SUB .. [[" />
      <Property name="USEnglish" value="]] .. LANG_SUB .. [[" />
    </Property>
  </Property>
</Data>
]]
    },
  },
}