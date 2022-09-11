ModAuthor       =   "Redmas"
LuaAuthor       =   "Hypn0tick"
ModName         =   "New_Gameplay_Mechanics-Dragonfly_Exocraft"
BaseDescription =   "Enables the Dragonfly, an unused exocraft similar to the nomad that will be available in trading posts to be borrowed and customized."
GameVersion     =   "3.99"

IncludedFileDir =   "../ModExtraFilesToInclude"

Hovercraft_Descriptor_Data  =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_WINGS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_WINGS_A" />
          <Property name="Name" value="_Wings_A" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPAIRVENT.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_JNT_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_JNT_PARENTCONSTRAINT1" />
                      <Property name="Name" value="_JNT_parentConstraint1" />
                      <Property name="ReferencePaths" />
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
]]

Attribute_Scenegraph_Template =
[[
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\VEHICLES\HOVER\_HOVERCRAFT.SCENE.MBIN" />
        </Property>
      </Property>
]]

Hovercraft_Scene_Template =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="CTRLJNT" />
      <Property name="NameHash" value="2488506156" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.21" />
        <Property name="TransZ" value="-0.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.92" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2.1" />
      </Property>
]]

TradingPost_Scene_Data =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFTradingPost_Common" />
      <Property name="NameHash" value="2799689763" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
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
          <Property name="Value" value="MODELS\R\VEHICLEGARAGEHOVER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "_"..ModAuthor.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"]      = ModAuthor,
    ["LUA_AUTHOR"]      = LuaAuthor,
    ["NMS_VERSION"]     = GameVersion,
    ["ADD_FILES"]       = {
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/_HOVERCRAFT.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/_HOVERCRAFT.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/BIKEPRES.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/BIKEPRES.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/BUGGYPRES.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/BUGGYPRES.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/SAILSHIP_PROC.DESCRIPTOR.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/SAILSHIP_PROC.DESCRIPTOR.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/SAILSHIP_PROC.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/SAILSHIP_PROC.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/THRUSTERSA_LEFT.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/THRUSTERSA_LEFT.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/THRUSTERSA_RIGHT.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/THRUSTERSA_RIGHT.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/THRUSTERSD_L.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/THRUSTERSD_L.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/COMMON/VEHICLES/HOVER/THRUSTERSD_R.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/COMMON/VEHICLES/HOVER/THRUSTERSD_R.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/VEHICLEGARAGEHOVER.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/VEHICLEGARAGEHOVER.SCENE.EXML",
        },
    },
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/VEHICLES/HOVER/HOVERCRAFT.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId",  "_DECALPOSB_"},
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = Hovercraft_Descriptor_Data,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/VEHICLES/HOVER/HOVERCRAFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"NameHash",  "2488506156"},
                                {"Type",  "REFERENCE"},
                                {"RotX",  "0"},
                                {"RotZ",  "0"},
                                {"ScaleZ",  "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash",  "1453562183"},
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Attributes"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Name",  "SCENEGRAPH"},
                                {"Value",  "MODELS\COMMON\VEHICLES\HOVER\SAILSHIP_PROC.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"] = 1,
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Attributes"},
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = [[      <Property name="Children" />]],
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "COCKPITPOS"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Name",  "CTRLJNT"},
                                {"NameHash",  "2488506156"},
                                {"Type",  "REFERENCE"},
                                {"TransY",  "1"},
                                {"TransZ",  "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Transform"},
                            ["SECTION_ACTIVE"] = 2,
                            ["LINE_OFFSET"] = "11",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Transform"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = Attribute_Scenegraph_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = Hovercraft_Scene_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Transform"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = Attribute_Scenegraph_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Attributes"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Value",  "MODELS\COMMON\VEHICLES\HOVER\BIKEPRES.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Attributes"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "AddAfterSection",
                            ["ADD"] = [[      <Property name="Children" />]],
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "CTRLJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Attributes"},
                            ["SECTION_ACTIVE"] = 3,
                            ["LINE_OFFSET"] = "7",
                            ["ADD_OPTION"] = "AddAfterLine",
                            ["ADD"] = [[    </Property>]],
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Gun"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "0"},
                                {"TransY",  "2.155115"},
                                {"TransZ",  "0"},
                                {"ScaleX",  "0.540793"},
                                {"ScaleY",  "0.540793"},
                                {"ScaleZ",  "0.540793"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Scanner"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "0"},
                                {"TransY",  "1.055115"},
                                {"TransZ",  "0"},
                                {"ScaleX",  "0.31"},
                                {"ScaleY",  "0.31"},
                                {"ScaleZ",  "0.31"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFScanner"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "2.258588"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Stage1"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Stage2"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WheelDust"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_DecalPosA_Front"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_DecalPosB_Left"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_DecalPosC_Right"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_DecalPosD_Back"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/TRADINGPOST/PARTS/TRADINGPOST_COMMON.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash",  "839818091"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            --["ADD_OPTION"] = "AddAfterLine",
                            ["ADD"] = TradingPost_Scene_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "BottomFeet"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "-47.9772263"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "TradingPost3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "11.9649925"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "TradingPost4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "13.2283459"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "TradingPost5"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.7928543"},
                                {"TransY",  "17.0426254"},
                                {"TransZ",  "13.3233376"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "TradingPost6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.7928543"},
                                {"TransY",  "17.0426254"},
                                {"TransZ",  "12.0775166"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "pCube4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "20.7127514"},
                                {"TransY",  "12.7769709"},
                                {"TransZ",  "12.6726341"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "pCube7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "12.7769709"},
                                {"TransZ",  "-12.6726332"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "TradingPost7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.7928543"},
                                {"TransY",  "17.0426254"},
                                {"TransZ",  "-13.1761589"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Light"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "18.1076126"},
                                {"TransZ",  "12.6288452"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Light1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.6489525"},
                                {"TransY",  "16.6624565"},
                                {"TransZ",  "12.7217979"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Light2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "23.6489525"},
                                {"TransY",  "16.6624565"},
                                {"TransZ",  "-12.7292566"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Light3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "18.1076126"},
                                {"TransZ",  "-12.6311092"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "BottomFeet1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "47.8710823"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LeftMini"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.8507442"},
                                {"TransZ",  "-12.9872961"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RightMini"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.8507442"},
                                {"TransZ",  "12.9872932"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "Hud"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "16.5399323"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LeftPads"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3999977"},
                                {"TransY",  "19.5344257"},
                                {"TransZ",  "-51.9364967"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RightPads"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3999977"},
                                {"TransY",  "19.5344257"},
                                {"TransZ",  "51.9364967"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "FrontPads"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-18.5364952"},
                                {"TransY",  "12.3344259"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-20.1956444"},
                                {"TransZ",  "-32.3048058"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceDebris2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotZ",  "-21.6678848"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "35.1010323"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "19.5063934"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceSmall7"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotY",  "178.869431"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "14.9518871"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceSmall1"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotY",  "93.5835342"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump8"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.8600922"},
                                {"TransZ",  "15.0806971"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceSmall7"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotY",  "178.869431"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceLarge2"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotY",  "172.236343"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceDebris"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotZ",  "-19.4481144"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceDebris4"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotZ",  "-19.4481144"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump9"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                                {"TransZ",  "57.4413376"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceMedium"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "24.6149483"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceMedium6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.3270874"},
                                {"RotY",  "11.5328817"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump10"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "12.3327923"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash",  "839818091", "Type",  "COLLISION", "Transform",  "TkTransformData.xml"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.8507175"},
                                {"TransZ",  "12.9872942"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "14.2628956"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceMedium5"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotY",  "-179.479568"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "ResourceDebris5"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"RotZ",  "-19.4481144"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "_Clump5"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "55.1741829"},
                                {"TransY",  "20.1999989"},
                                {"TransZ",  "-60.6316032"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash",  "839818091", "Type",  "COLLISION", "Transform",  "TkTransformData.xml"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "21.8507175"},
                                {"TransZ",  "-12.9872913"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash",  "839818091", "Type",  "COLLISION", "Transform",  "TkTransformData.xml"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "13.3508015"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.3937912"},
                                {"TransZ",  "6.609375"},
                                {"Value",  "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_STATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair2"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair3"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair4"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair6"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair7"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair8"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair9"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair10"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair11"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair12"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair13"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair14"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair15"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair16"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair17"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair18"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair19"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair20"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair21"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair22"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair23"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair24"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair25"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair26"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair27"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair28"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair29"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair30"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair31"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair32"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair33"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair34"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair35"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair36"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair37"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair38"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair39"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair40"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair41"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair42"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair43"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair44"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair45"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair46"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair47"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair48"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair49"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair50"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair51"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair52"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair53"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair54"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair55"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair56"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair57"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair58"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair59"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair60"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair61"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair62"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair63"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair64"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.4562912"},
                                {"RotY",  "0"},
                                {"ScaleX",  "1.21"},
                                {"ScaleZ",  "1.21"},
                                {"Value",  "MODELS\FW\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair65"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair66"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair67"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair68"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair69"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair70"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair71"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair72"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair73"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair74"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair75"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair76"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair77"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair78"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair79"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair80"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair81"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair82"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair83"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair84"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair85"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair86"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair87"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.3937912"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair88"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.3937912"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair89"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.3937912"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair90"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair91"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.4562912"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair92"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.4562912"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair93"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.4562912"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair94"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair95"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair96"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair97"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.3440228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair98"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair99"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair100"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair101"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "30.4065228"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair102"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair103"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair104"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair105"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4271736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair106"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair107"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair108"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair109"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "36.4896736"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair110"},
                            ["REMOVE"]  = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair111"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                                {"TransZ",  "-10.4786558"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair112"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "WaitingRoomChair113"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "40.2785378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "31.3105659"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "20.1605339"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "14.8568926"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "14.7564316"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE12"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "28.3173752"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE13"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "28.3173752"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE14"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "28.3173752"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE15"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "28.3173752"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE16"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "24.8808956"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE17"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "24.8808956"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE18"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "24.8808956"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE19"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "24.8808956"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE24"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE25"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE26"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                                {"TransZ",  "11.8055849"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE27"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                                {"TransZ",  "18.0083485"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE28"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                                {"TransZ",  "25.2981758"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE29"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE30"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE31"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                                {"TransZ",  "-16.8634186"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE32"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                                {"TransZ",  "-23.2553482"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE33"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE34"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0126562"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "NAV_NODE35"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.2291327"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransZ",  "10.7563705"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-18.6342335"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad5"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-18.6337547"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-18.6337547"},
                                {"TransY",  "13.2677984"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "19.3662376"},
                                {"TransZ",  "-52.0342369"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad8"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "47.4342422"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "LandingPad10"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "47.4337578"},
                                {"TransZ",  "52.0342369"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.2802811"},
                                {"TransZ",  "10.7563629"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "26.2802811"},
                                {"TransZ",  "-10.7563915"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight1"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "43.7448463"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-36.3583565"},
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "43.7448463"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-36.3583565"},
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "-43.7205544"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "-43.7205544"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight5"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-36.3583565"},
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "13.9062109"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-36.3583565"},
                                {"TransY",  "13.0068989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0068989"},
                                {"TransZ",  "13.9062109"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight8"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "13.0068989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight9"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight10"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight11"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight12"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                                {"TransZ",  "-34.2611771"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight13"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3999977"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight14"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "63.1522064"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight15"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "63.1522064"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight16"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight17"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransY",  "20.1999989"},
                                {"TransZ",  "34.2611771"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "REFSpotLight18"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "33.3920364"},
                                {"TransY",  "20.1999989"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-17.1313839"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support6"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-17.1313839"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support7"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "-17.1313839"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support8"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "19.4000053"},
                                {"TransZ",  "50.2714043"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support9"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "19.3999939"},
                                {"TransZ",  "-50.3830643"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support10"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "47.4000053"},
                                {"TransZ",  "50.2714043"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefTradingPost_Support11"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "47.3999939"},
                                {"TransZ",  "-50.3830643"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefLadder4"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "22.3750534"},
                                {"TransZ",  "12.7689209"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefLadder3"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "17.0618668"},
                                {"TransZ",  "12.6386585"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefLadder2"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "22.3750534"},
                                {"TransZ",  "-12.7596169"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name",  "RefLadder"},
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TransX",  "17.0618668"},
                                {"TransZ",  "-12.6037226"},
                            }
                        },
                    }
                },
            }
        }
    }
}