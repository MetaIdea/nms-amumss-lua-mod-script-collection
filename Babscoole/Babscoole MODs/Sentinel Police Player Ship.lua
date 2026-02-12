NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sentinel Police Player Ship",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Cockpitable sentinel police ship you can get via quick action emote menu action",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.400000"},
                {"TransZ", "-1.500000"},
                {"ScaleX", "1.400000"},
                {"ScaleY", "1.400000"},
                {"ScaleZ", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip", "Name", "ATTACHMENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", ""},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_TURN_L"},
              ["SEC_SAVE_TO"] = "ADD_ANIM",
            },
            {
              ["SEC_EDIT"] = "ADD_ANIM",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Anim",     "POLICE"},
                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
              ["PRECEDING_KEY_WORDS"] = {"Anims"},
              ["SEC_ADD_NAMED"] = "ADD_ANIM",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcPlayerEffectsComponentData"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POLICE" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="REWARD" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="REWARD" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcRewardAction">
                    <Property name="GcRewardAction">
                      <Property name="Reward" value="POLICE" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BOOT" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_WAVE"},
              ["SEC_SAVE_TO"] = "ADD_EMOTE",
            },
            {
              ["SEC_EDIT"] = "ADD_EMOTE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Title",               "Police"},
                {"ChatText",            ""},
                {"ChatUsesPrefix",      "false"},
                {"EmoteID",             "POLICE"},
                {"AnimationName",       "POLICE"},
                {"Filename",            "TEXTURES\UI\HUD\POLICEMESSAGEICON.DDS"},
                {"MoveToCancel",        "true"},
                {"RidingAnimationName", "POLICE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Emotes"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["SEC_ADD_NAMED"] = "ADD_EMOTE",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
              ["ADD"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="POLICE" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip">
              <Property name="GcRewardSpecificShip">
                <Property name="ShipResource" value="GcResourceElement">
                  <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERPOLICE.SCENE.MBIN" />
                  <Property name="Seed" value="1" />
                  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
                    <Property name="Samplers" />
                  </Property>
                  <Property name="AltId" value="" />
                </Property>
                <Property name="Customisation" value="GcCharacterCustomisationData">
                  <Property name="DescriptorGroups" />
                  <Property name="PaletteID" value="" />
                  <Property name="Colours" />
                  <Property name="TextureOptions" />
                  <Property name="BoneScales" />
                  <Property name="Scale" value="1.000000" />
                </Property>
                <Property name="ShipLayout" value="GcInventoryLayout">
                  <Property name="Slots" value="60" />
                  <Property name="Seed" value="1" />
                  <Property name="Level" value="1" />
                </Property>
                <Property name="ShipInventory" value="GcInventoryContainer">
                  <Property name="Slots">
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="LAUNCHER" />
                      <Property name="Amount" value="300" />
                      <Property name="MaxAmount" value="300" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPJUMP1" />
                      <Property name="Amount" value="100" />
                      <Property name="MaxAmount" value="100" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPSHIELD" />
                      <Property name="Amount" value="200" />
                      <Property name="MaxAmount" value="200" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="HYPERDRIVE" />
                      <Property name="Amount" value="120" />
                      <Property name="MaxAmount" value="120" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement" _id="SHIPLAS1">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPGUN1" />
                      <Property name="Amount" value="1000" />
                      <Property name="MaxAmount" value="1000" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="ValidSlotIndices" />
                  <Property name="Class" value="GcInventoryClass">
                    <Property name="InventoryClass" value="S" />
                  </Property>
                  <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
                    <Property name="InventoryStackSizeGroup" value="Default" />
                  </Property>
                  <Property name="BaseStatValues" />
                  <Property name="SpecialSlots" />
                  <Property name="Width" value="0" />
                  <Property name="Height" value="0" />
                  <Property name="IsCool" value="false" />
                  <Property name="Name" value="" />
                  <Property name="Version" value="0" />
                </Property>
                <Property name="CostAmount" value="0" />
                <Property name="CostCurrency" value="GcCurrency">
                  <Property name="Currency" value="Units" />
                </Property>
                <Property name="ShipType" value="GcSpaceshipClasses">
                  <Property name="ShipClass" value="Fighter" />
                </Property>
                <Property name="UseOverrideSizeType" value="false" />
                <Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
                  <Property name="SizeType" value="SciMedium" />
                </Property>
                <Property name="NameOverride" value="Police" />
                <Property name="IsGift" value="true" />
                <Property name="IsRewardShip" value="true" />
                <Property name="FormatAsSeasonal" value="false" />
                <Property name="ModelViewOverride" value="GcModelViews">
                  <Property name="ModelViews" value="None" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
            }
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.DESCRIPTOR.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkModelDescriptorList">
  <Property name="List">
    <Property name="List" value="TkResourceDescriptorList">
      <Property name="TypeId" value="_SHIP_" />
      <Property name="Descriptors">
        <Property name="Descriptors" value="TkResourceDescriptorData">
          <Property name="Id" value="_SHIP_POLICE" />
          <Property name="Name" value="_Ship_Police" />
          <Property name="ReferencePaths">
            <Property name="ReferencePaths" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
          </Property>
          <Property name="Chance" value="0.000000" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD" />
  <Property name="NameHash" value="4182676705" />
  <Property name="Type" value="MODEL" />
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
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="EngineFlare_Distant" />
      <Property name="NameHash" value="3869425187" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.628213" />
        <Property name="TransZ" value="-3.462083" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="20.8902454" />
        <Property name="ScaleY" value="20.8902454" />
        <Property name="ScaleZ" value="20.8902454" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="ProcRoot_StarShip" />
      <Property name="NameHash" value="3871606254" />
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
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="_Ship_Police" />
          <Property name="NameHash" value="3628092373" />
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
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="Data" />
              <Property name="NameHash" value="2810148397" />
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
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="ATTACHMENT" />
                  <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/ENTITIES/COCKPIT_A.ENTITY.MBIN" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACTOrigin" />
                  <Property name="NameHash" value="3066580072" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACT" />
                  <Property name="NameHash" value="3698755080" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CrashEffect" />
                  <Property name="NameHash" value="1244254611" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="2.309226" />
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
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot1" />
                  <Property name="NameHash" value="304746222" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="2.185556" />
                    <Property name="TransZ" value="-0.734243" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot0" />
                  <Property name="NameHash" value="1004495448" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="1.328125" />
                    <Property name="TransZ" value="2.983213" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CUSTOM" />
                  <Property name="NameHash" value="2675539979" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.500000" />
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
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="NAVIGATION" />
                      <Property name="Value" value="FALSE" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Box" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="WIDTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="HEIGHT" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="DEPTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="Cockpit" />
                  <Property name="NameHash" value="876108911" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.000000" />
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
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="CockpitPos" />
                      <Property name="NameHash" value="465567180" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="1.000000" />
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
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="Inventory" />
                      <Property name="NameHash" value="1402981485" />
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
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ENTITIES/FIGHTERBASE.ENTITY.MBIN" />
                        </Property>
                      </Property>
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
      ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="Police" />
      <Property name="English" value="Police" />
      <Property name="French" value="Police" />
      <Property name="Italian" value="Police" />
      <Property name="German" value="Police" />
      <Property name="Spanish" value="Police" />
      <Property name="Russian" value="Police" />
      <Property name="Polish" value="Police" />
      <Property name="Dutch" value="Police" />
      <Property name="Portuguese" value="Police" />
      <Property name="LatinAmericanSpanish" value="Police" />
      <Property name="BrazilianPortuguese" value="Police" />
      <Property name="SimplifiedChinese" value="Police" />
      <Property name="TraditionalChinese" value="Police" />
      <Property name="TencentChinese" value="Police" />
      <Property name="Korean" value="Police" />
      <Property name="Japanese" value="Police" />
      <Property name="USEnglish" value="Police" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="POLICE" />
      <Property name="English" value="POLICE" />
      <Property name="French" value="POLICE" />
      <Property name="Italian" value="POLICE" />
      <Property name="German" value="POLICE" />
      <Property name="Spanish" value="POLICE" />
      <Property name="Russian" value="POLICE" />
      <Property name="Polish" value="POLICE" />
      <Property name="Dutch" value="POLICE" />
      <Property name="Portuguese" value="POLICE" />
      <Property name="LatinAmericanSpanish" value="POLICE" />
      <Property name="BrazilianPortuguese" value="POLICE" />
      <Property name="SimplifiedChinese" value="POLICE" />
      <Property name="TraditionalChinese" value="POLICE" />
      <Property name="TencentChinese" value="POLICE" />
      <Property name="Korean" value="POLICE" />
      <Property name="Japanese" value="POLICE" />
      <Property name="USEnglish" value="POLICE" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}