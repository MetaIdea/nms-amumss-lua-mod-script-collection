--Requires the DDS TEXTURES from the orignal mod

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Natural Expedition Ships",
["MOD_AUTHOR"]      = "AyyMang",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "Spawns most expedition reward ships as exotics in the wild and gives them procedural variations",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Civilian", "GcAISpaceshipModelDataArray"},
              ["PRECEDING_KEY_WORDS"] = {"Spaceships"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="23">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="24">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/VRSPEEDER.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="25">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="26">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="27">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOFIGHTER.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="28">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/SPOOKSHIP.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="29">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/WRACER.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property name="Spaceships" value="GcAISpaceshipModelData" _index="30">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses">
            <Property name="ShipClass" value="Royal" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.DESCRIPTOR.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"TypeId", "_WINGS_"},
              ["PRECEDING_KEY_WORDS"] = {"Descriptors"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
        <Property name="Descriptors" value="TkResourceDescriptorData" _id="_WINGS_F">
          <Property name="Id" value="_WINGS_F" />
          <Property name="Name" value="_Wings_F" />
          <Property name="ReferencePaths">
            <Property name="ReferencePaths" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_F/GOLDWINGS_F.SCENE.MBIN" _index="0" />
          </Property>
          <Property name="Chance" value="0.000000" />
          <Property name="Children">
            <Property name="Children" value="TkModelDescriptorList" _index="0">
              <Property name="TkModelDescriptorList">
                <Property name="List">
                  <Property name="List" value="TkResourceDescriptorList" _index="0">
                    <Property name="TypeId" value="_ACC_" />
                    <Property name="Descriptors">
                      <Property name="Descriptors" value="TkResourceDescriptorData" _id="_ACC_NONE">
                        <Property name="Id" value="_ACC_NONE" />
                        <Property name="Name" value="_Acc_None" />
                        <Property name="ReferencePaths" />
                        <Property name="Chance" value="0.000000" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_A"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="_Wings_F" />
          <Property name="NameHash" value="2919102254" />
          <Property name="Type" value="REFERENCE" />
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
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\GOLDWINGS_F.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "sideLight_blume",  "Name", "AABBMINX"},
                {"Name", "sideLight_blume1", "Name", "AABBMINX"},
                {"Name", "sideLight_blume2", "Name", "AABBMINX"},
                {"Name", "sideLight_blume3", "Name", "AABBMINX"},
                {"Name", "sideLight_4",      "Name", "AABBMINX"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "-5.460536"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "sideLight_blume",  "Name", "AABBMINY"},
                {"Name", "sideLight_blume1", "Name", "AABBMINY"},
                {"Name", "sideLight_blume2", "Name", "AABBMINY"},
                {"Name", "sideLight_blume3", "Name", "AABBMINY"},
                {"Name", "sideLight_4",      "Name", "AABBMINY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.707402"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "sideLight_blume", "Name",  "AABBMINZ"},
                {"Name", "sideLight_blume1", "Name", "AABBMINZ"},
                {"Name", "sideLight_blume2", "Name", "AABBMINZ"},
                {"Name", "sideLight_blume3", "Name", "AABBMINZ"},
                {"Name", "sideLight_4",      "Name", "AABBMINZ"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "-5.888722"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "sideLight_blume",  "Name", "AABBMAXX"},
                {"Name", "sideLight_blume1", "Name", "AABBMAXX"},
                {"Name", "sideLight_blume2", "Name", "AABBMAXX"},
                {"Name", "sideLight_blume3", "Name", "AABBMAXX"},
                {"Name", "sideLight_4",      "Name", "AABBMAXX"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.459841"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "sideLight_blume",  "Name", "AABBMAXY"},
                {"Name", "sideLight_blume1", "Name", "AABBMAXY"},
                {"Name", "sideLight_blume2", "Name", "AABBMAXY"},
                {"Name", "sideLight_blume3", "Name", "AABBMAXY"},
                {"Name", "sideLight_4",      "Name", "AABBMAXY"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "3.666327"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = 
              {
                {"Name", "sideLight_blume",  "Name", "AABBMAXZ"},
                {"Name", "sideLight_blume1", "Name", "AABBMAXZ"},
                {"Name", "sideLight_blume2", "Name", "AABBMAXZ"},
                {"Name", "sideLight_blume3", "Name", "AABBMAXZ"},
                {"Name", "sideLight_4",      "Name", "AABBMAXZ"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.459559"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\TURBINEAA.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\GOLDTURBINEAA.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\GOLDTURBINEAA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Wings5LOD0",        "Name", "MATERIAL"},
                {"Name", "Wings5LOD1",        "Name", "MATERIAL"},
                {"Name", "Wings5LOD2",        "Name", "MATERIAL"},
                {"Name", "Wings5LOD3",        "Name", "MATERIAL"},
                {"Name", "TurbineAaSpinLOD0", "Name", "MATERIAL"},
                {"Name", "TurbineAaSpinLOD1", "Name", "MATERIAL"},
                {"Name", "TurbineAaSpinLOD2", "Name", "MATERIAL"},
                {"Name", "TurbineAaSpinLOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\HQGOLDTRIMMETAL_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB1Wings5LOD0",        "Name", "MATERIAL"},
                {"Name", "SUB1Wings5LOD1",        "Name", "MATERIAL"},
                {"Name", "SUB1Wings5LOD2",        "Name", "MATERIAL"},
                {"Name", "SUB1Wings5LOD3",        "Name", "MATERIAL"},
                {"Name", "SUB2TurbineAaSpinLOD0", "Name", "MATERIAL"},
                {"Name", "SUB2TurbineAaSpinLOD1", "Name", "MATERIAL"},
                {"Name", "SUB2TurbineAaSpinLOD2", "Name", "MATERIAL"},
                {"Name", "SUB2TurbineAaSpinLOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\SECONDARY.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB2Wings5LOD0", "Name", "MATERIAL"},
                {"Name", "SUB4Wings5LOD0", "Name", "MATERIAL"},
                {"Name", "SUB2Wings5LOD1", "Name", "MATERIAL"},
                {"Name", "SUB4Wings5LOD1", "Name", "MATERIAL"},
                {"Name", "SUB2Wings5LOD2", "Name", "MATERIAL"},
                {"Name", "SUB4Wings5LOD2", "Name", "MATERIAL"},
                {"Name", "SUB2Wings5LOD3", "Name", "MATERIAL"},
                {"Name", "SUB4Wings5LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\TERTIARYBLACK.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB3Wings5LOD0",        "Name", "MATERIAL"},
                {"Name", "SUB3Wings5LOD1",        "Name", "MATERIAL"},
                {"Name", "SUB3Wings5LOD2",        "Name", "MATERIAL"},
                {"Name", "SUB3Wings5LOD3",        "Name", "MATERIAL"},
                {"Name", "SUB1TurbineAaSpinLOD0", "Name", "MATERIAL"},
                {"Name", "SUB1TurbineAaSpinLOD1", "Name", "MATERIAL"},
                {"Name", "SUB1TurbineAaSpinLOD2", "Name", "MATERIAL"},
                {"Name", "SUB1TurbineAaSpinLOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\HQTRIMMETALTRANS_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\GOLDCOCKPITA.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\GOLDCOCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\GOLDCOCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\GOLDCOCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShipOwnershipComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipClass", "Royal"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\ENTITIES\SPOOKCOCKPITDATA.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShipOwnershipComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipClass", "Royal"},
                {"Distance",  "20.000000"},
                {"X",         "0.150000"},
                {"Y",         "0.020000"},
                {"Z",         "-0.050000"},
                {"Rotate",    "20.000000"},
                {"Fov",       "3.000000"},
                {"FocusType", "DiscoveryView"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER\ENTITIES\COCKPITDATA.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShipOwnershipComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipClass", "Royal"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\WINGS_F.DESCRIPTOR.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\GOLDWINGS_F.DESCRIPTOR.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\GOLDWINGS_F.DESCRIPTOR.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "_SUBWINGS_C"},
                {"Id", "_SUBWINGS_D"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\GOLDWINGS_F.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\GOLDWINGS_F.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "WingsFLOD3",  "Name", "MATERIAL"},
                {"Name", "WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "WingsF2LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\HQTRIMMETALTRANS_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB1WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "SUB2WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "SUB1WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "SUB2WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "SUB1WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "SUB2WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "SUB1WingsFLOD3",  "Name", "MATERIAL"},
                {"Name", "SUB1WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "SUB2WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "SUB1WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "SUB2WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "SUB1WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "SUB2WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "SUB1WingsF2LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\BLACKHQTRIM_MAT.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB4WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "SUB4WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "SUB4WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "SUB3WingsFLOD3",  "Name", "MATERIAL"},
                {"Name", "SUB4WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "SUB4WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "SUB4WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "SUB4WingsF2LOD3", "Name", "MATERIAL"},
                {"Name", "SUB3WingsF2LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\GOLDTRIMS.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB5WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "SUB5WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "SUB5WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "SUB4WingsFLOD3",  "Name", "MATERIAL"},
                {"Name", "SUB5WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "SUB5WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "SUB5WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "SUB4WingsF2LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\TERTIARYBLACK.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SUB6WingsFLOD0",  "Name", "MATERIAL"},
                {"Name", "SUB6WingsFLOD1",  "Name", "MATERIAL"},
                {"Name", "SUB6WingsFLOD2",  "Name", "MATERIAL"},
                {"Name", "SUB5WingsFLOD3",  "Name", "MATERIAL"},
                {"Name", "SUB6WingsF2LOD0", "Name", "MATERIAL"},
                {"Name", "SUB6WingsF2LOD1", "Name", "MATERIAL"},
                {"Name", "SUB6WingsF2LOD2", "Name", "MATERIAL"},
                {"Name", "SUB5WingsF2LOD3", "Name", "MATERIAL"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A\PRIMARY.MATERIAL.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SubWings_E", "Name", "SCENEGRAPH"},
                {"Name", "Turbine",    "Name", "SCENEGRAPH"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\GOLDTURBINEAA.SCENE.MBIN"},
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
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="FIXED" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.FIXED.1.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.FIXED.2.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="OVERLAY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.1.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.2.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="2">
          <Property name="Name" value="3" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.3.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="3">
          <Property name="Name" value="4" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.OVERLAY.4.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/ROBOTS/SENTINELPROC.BASE.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\WRACERDECALS.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="WRITING" />
      <Property name="Probability" value="0.500000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.WRITING1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="TEXT" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative4" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.TEXT2.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="METAL" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Metal" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.METAL.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="GRADIENT" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.GRADIENT3.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="2.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.GRADIENT2.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="2">
          <Property name="Name" value="3" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.GRADIENT1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="STRIPES" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative2" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.STRIPES.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="DECAL" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative2" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="DoNotMatchName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.DECAL1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERDECALS.base.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\WRACERTRIM.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="METAL" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Metal" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.METAL.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="SECONDARY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="Secondary" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="3.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.SECONDARY.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="UndercoatSecondary" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Undercoat" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="2.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.SECONDARY.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="PRIMARY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="Primary" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Paint" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="3.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.BASE.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="Undercoat" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Undercoat" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="2.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="PRIMARY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="Primary" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/FIGHTERS/WRACERTRIM.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BFPULSECENTER.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE55" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/PULSECENTER.BASE55.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BFPULSELINEENGINE.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE5" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/PULSELINEENGINE.BASE5.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTER.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="TOP" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.TOP.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="OVERLAY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Body" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.OVERLAY.1.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Body" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.OVERLAY.2.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="FLESH" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Body" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.FLESH.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="SKIN" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.SKIN.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="BASEU" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="3" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Cockpit" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.BASEU.3.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Body" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.BASEU.2.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="2">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIP.BASEU.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTERCOCKPIT.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="FLESHF" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Body" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPCOCKPIT.FLESHF.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="BASEH" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPCOCKPIT.BASEH.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTERMETAL.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="PRIMARY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="BOOSTER" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOFIGHTERMETAL.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/GLOWINGCOREPROC.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTERPEARL.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="PRIMARY" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="BOOSTER" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOFIGHTERPEARL.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/GLOWINGCOREPROC.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTERPULSELINES.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASEP" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="BioShip_Underbelly" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/PULSELINES.BASEP.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\BIOFIGHTERSHIMMER.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASER" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="4" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Scale" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPFLASH.BASER.4.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="3" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Scale" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPFLASH.BASER.3.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="2">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Scale" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPFLASH.BASER.2.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="3">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Scale" />
            <Property name="ColourAlt" value="None" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/BIOSHIPFLASH.BASER.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\FISHINGROD_LIGHTS.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationLights" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/SPOOKSHIP/FISHINGROD_LIGHTS.2.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\LIGHTS2.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationLights" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/SPOOKSHIP/LIGHTS2.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\LIGHTS3.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationLights" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/SPOOKSHIP/LIGHTS3.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\LIGHTS4.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationLights" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/SPOOKSHIP/LIGHTS4.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\TRIMSHEET.TEXTURE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
  <Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
  <Property name="Layers">
    <Property name="Layers" value="TkProceduralTextureLayer" _index="0">
      <Property name="Name" value="STRIPES" />
      <Property name="Probability" value="0.500000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="4" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationAlt" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.STRIP.4.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="1">
          <Property name="Name" value="3" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationAlt" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.STRIP.3.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="2">
          <Property name="Name" value="2" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationAlt" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.STRIP.2.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture" _index="3">
          <Property name="Name" value="1" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationAlt" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.STRIP.1.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="1">
      <Property name="Name" value="COLPANELS" />
      <Property name="Probability" value="0.400000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationBase" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.COLPANELS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="2">
      <Property name="Name" value="MAINCOLOUR" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="SpaceStationAlt" />
            <Property name="ColourAlt" value="Alternative2" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.PAINTED.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="3">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture" _index="0">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Metal" />
            <Property name="ColourAlt" value="Primary" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="1.000000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/SPACE/SPACESTATION/TYPEB/LARGETILING1ALT.BASE.DDS" />
        </Property>
      </Property>
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="4">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="5">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="6">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
    <Property name="Layers" value="TkProceduralTextureLayer" _index="7">
      <Property name="Name" value="" />
      <Property name="Probability" value="1.000000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="LinkedLayer" value="" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}