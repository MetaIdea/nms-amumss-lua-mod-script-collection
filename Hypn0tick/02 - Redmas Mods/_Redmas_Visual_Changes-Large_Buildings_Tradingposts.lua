ModAuthor       =   "Redmas"
LuaAuthor       =   "Hypn0tick"
ModName         =   "_Redmas_Visual_Changes-Large_Buildings_Tradingposts"
BaseDescription =   "Adds large procedural buildings to trading posts."
GameVersion     =   "3.99"

SciencePostText =   [[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Building_Kor" />
      <Property name="NameHash" value="505402159" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="100" />
        <Property name="TransY" value="-100" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\KORVAX\LARGEBUILDING_KORVAX.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

TradePostText   =   [[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_BUILDING_VYK" />
      <Property name="NameHash" value="505402159" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="100" />
        <Property name="TransY" value="-50" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\VYKEEN\LARGEBUILDING_VYKEEN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

WarriorPostText =   [[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Building_Vyk" />
      <Property name="NameHash" value="505402159" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="100" />
        <Property name="TransY" value="-50" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\VYKEEN\LARGEBUILDING_VYKEEN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = ModName..".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"]      = ModAuthor,
    ["LUA_AUTHOR"]      = LuaAuthor,
    ["NMS_VERSION"]     = GameVersion,
    ["MODIFICATIONS"]           = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1422061990"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   SciencePostText
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTTRADER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   TradePostText
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Tradingpost"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "32.3999977"},
                                {"TransY",  "15.9312544"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] =   "13.039315",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "13.0393152"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_MATCH"] =   "-10.499997",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "-10.4999971"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] =   "10.500002",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] =   "10.291574",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "10.2915735"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] =   "-10.843673",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-10.8436728"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2937828705"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] =   "14.584246",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "14.5842457"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","784443931"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "44.7143135"},
                                {"TransY",  "19.9585876"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1302150693"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                                {"TransZ",  "-10.4999981"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1541856430"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","604040419"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","4056025190"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","3379673018"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            --["SECTION_ACTIVE"]    =   10,
                            --["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "18.6564636"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","245484451"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "22.9676113"},
                                {"TransY",  "29.7388477"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","3929222343"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "29.7384815"},
                                {"TransY",  "25.4002857"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","309913048"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3843727"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","2310884467"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-33.3843727"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","9932129"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.8822632"},
                                {"TransY",  "25.9708557"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTWARRIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1549208302"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   WarriorPostText
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Roof"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4759464"},
                                {"TransY",  "27.7712135"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Ceiling"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.0604954"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","arc"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","arc1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","arc2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","arc3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.9064732"},
                                {"TransY",  "18.7061081"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Tradingpost"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "32.3999977"},
                                {"TransY",  "15.9312544"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1549208302"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_MATCH"] =   "-10.499997",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "-10.4999971"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1549208302"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_MATCH"] =   "10.500002",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash","1549208302"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_MATCH"] =   "12.095793",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "12.0957928"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","Interior_"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3843727"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","RefWarriorLayout"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-33.3843727"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","PROPWDRAPE2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.7948742"},
                                {"TransY",  "20.2828674"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","PROPWDRAPE1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.7948742"},
                                {"TransY",  "20.2828674"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","PROPWDRAPE"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "17.9417248"},
                                {"TransY",  "28.0814133"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","REFflat"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "24.2165623"},
                            }
                        },
                    }
                },
            }
        },
    },
    ["ADD_FILES"]       =
    {
        {
            ["FILE_DESTINATION"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.DESCRIPTOR.EXML",
            ["FILE_CONTENT"]        =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.53.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_LARGEBUILDINGP" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LARGEBUILDINGPROC_" />
          <Property name="Name" value="_LargeBuildingProc_" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_BUILDING_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_BUILDING_KOR" />
                      <Property name="Name" value="_Building_Kor" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/KORVAX/LARGEBUILDING_KORVAX.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_LAYOUT_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_LAYOUT_KOR" />
                      <Property name="Name" value="_Layout_Kor" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/KORVAX/LAYOUT.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTTRADER.DESCRIPTOR.EXML",
            ["FILE_CONTENT"]        =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.53.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_LARGEBUILDINGP" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LARGEBUILDINGPROC_" />
          <Property name="Name" value="_LargeBuildingProc_" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_BUILDING_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_BUILDING_VYK" />
                      <Property name="Name" value="_Building_Vyk" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/VYKEEN/LARGEBUILDING_VYKEEN.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_LAYOUT_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_LAYOUT_VYK" />
                      <Property name="Name" value="_Layout_Vyk" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/VYKEEN/PARTS/LAYOUT.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"]    = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTWARRIOR.DESCRIPTOR.EXML",
            ["FILE_CONTENT"]        =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.53.0)-->
<Data template="TkModelDescriptorList">
  <Property name="List">
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_LARGEBUILDINGP" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_LARGEBUILDINGPROC_" />
          <Property name="Name" value="_LargeBuildingProc_" />
          <Property name="ReferencePaths" />
          <Property name="Chance" value="0" />
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_BUILDING_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_BUILDING_VYK" />
                      <Property name="Name" value="_Building_Vyk" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/VYKEEN/LARGEBUILDING_VYKEEN.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_LAYOUT_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_LAYOUT_VYK" />
                      <Property name="Name" value="_Layout_Vyk" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/LARGEBUILDINGS/VYKEEN/PARTS/LAYOUT.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
    }   
}