----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "MISC"
METADATA_NMS_VERSION    = "452_SEC"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for miscellaneous objects. Modifies various files in METADATA and MODELS directories."



--------------------------------------------------
-- debug emotes - functions
--------------------------------------------------

function BuildEmoteIconProperty(name,icon) return
[[
<Property value="GcPlayerEmote.xml">
  <Property name="Title" value="TEXT_EMOTE_]]..name..[[" />
  <Property name="ChatText" value="" />
  <Property name="ChatUsesPrefix" value="False" />
  <Property name="EmoteID" value="E_]]..name..[[" />
  <Property name="AnimationName" value="A_]]..name..[[" />
  <Property name="PropData" value="GcPlayerEmotePropData.xml">
    <Property name="Model" value="" />
    <Property name="Scale" value="0" />
    <Property name="Hand" value="GcHand.xml">
      <Property name="Hand" value="Right" />
    </Property>
    <Property name="IsHologram" value="False" />
    <Property name="ScanEffectNodeName" value="" />
    <Property name="ScanEffect" value="GcScanEffectData.xml">
      <Property name="Id" value="" />
      <Property name="ScanEffectType" value="Building" />
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.823" />
        <Property name="G" value="0.475" />
        <Property name="B" value="0.432" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BasecolourIntensity" value="0.2" />
      <Property name="ScanlinesSeparation" value="0.1" />
      <Property name="FresnelIntensity" value="3" />
      <Property name="GlowIntensity" value="0" />
      <Property name="WaveOffset" value="0" />
      <Property name="WaveActive" value="True" />
      <Property name="FixedUpAxis" value="False" />
      <Property name="Transparent" value="False" />
      <Property name="ModelFade" value="False" />
      <Property name="FadeInTime" value="0.2" />
      <Property name="FadeOutTime" value="0.2" />
    </Property>
    <Property name="DelayTime" value="0" />
  </Property>
  <Property name="Icon" value="TkTextureResource.xml">
    <Property name="Filename" value="]]..icon..[[" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="LinkedSpecialID" value="" />
  <Property name="NeverShowInMenu" value="False" />
  <Property name="LoopAnimUntilMove" value="" />
  <Property name="CloseMenuOnSelect" value="False" />
  <Property name="MoveToCancel" value="False" />
  <Property name="GekAnimationName" value="" />
  <Property name="GekLoopAnimUntilMove" value="" />
  <Property name="AvailableUnderwater" value="False" />
  <Property name="RidingAnimationName" value="EMOTE_R_WAVE" />
  <Property name="IsPetCommand" value="False" />
  <Property name="PetCommandTitle" value="" />
  <Property name="PetCommandIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
</Property>
]]
end

function BuildEmoteAnimProperty(name) return
[[
<Property name="Idle" value="TkAnimationData.xml">
  <Property name="Anim" value="A_]]..name..[[" />
  <Property name="AdditiveBaseAnim" value="" />
  <Property name="Filename" value="MODELS/TESTS/EFFECTTEST.ANIM.MBIN" />
  <Property name="StartNode" value="" />
  <Property name="ExtraStartNodes" />
  <Property name="GameData" value="TkAnimationGameData.xml">
    <Property name="RootMotionEnabled" value="False" />
    <Property name="BlockPlayerMovement" value="False" />
    <Property name="BlockPlayerWeapon" value="Unblocked" />
  </Property>
  <Property name="FrameStart" value="0" />
  <Property name="FrameEnd" value="0" />
  <Property name="Priority" value="0" />
  <Property name="OffsetMin" value="0" />
  <Property name="OffsetMax" value="0" />
  <Property name="Delay" value="0" />
  <Property name="Speed" value="1" />
  <Property name="ActionStartFrame" value="0" />
  <Property name="ActionFrame" value="-1" />
  <Property name="AdditiveBaseFrame" value="0" />
  <Property name="AnimType" value="OneShot" />
  <Property name="CreatureSize" value="AllSizes" />
  <Property name="Additive" value="False" />
  <Property name="Mirrored" value="False" />
  <Property name="Active" value="True" />
  <Property name="Has30HzFrames" value="False" />
</Property>
]]
end

function BuildEmoteTriggerProperty(name) return
[[
<Property value="GcTriggerActionComponentData.xml">
  <Property name="HideModel" value="False" />
  <Property name="StartInactive" value="False" />
  <Property name="States">
    <Property value="GcActionTriggerState.xml">
      <Property name="StateID" value="BOOT" />
      <Property name="Triggers">
        <Property value="GcActionTrigger.xml">
          <Property name="Event" value="GcAnimFrameEvent.xml">
            <Property name="Anim" value="A_]]..name..[[" />
            <Property name="FrameStart" value="0" />
            <Property name="StartFromEnd" value="False" />
          </Property>
          <Property name="Action">
            <Property value="GcRewardAction.xml">
              <Property name="Reward" value="RD_]]..name..[[" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="Persistent" value="False" />
  <Property name="PersistentState" value="" />
  <Property name="ResetShotTimeOnStateChange" value="False" />
  <Property name="LinkStateToBaseGrid" value="False" />
</Property>
]]
end



--------------------------------------------------
-- debug emotes
--------------------------------------------------

PROPERTY_EMOTE_PLATING = BuildEmoteIconProperty("PLATING","TEXTURES/ITEMS/PLATING.DDS")
PROPERTY_ANIM_PLATING = BuildEmoteAnimProperty("PLATING")
PROPERTY_TRIGGER_PLATING = BuildEmoteTriggerProperty("PLATING")

PROPERTY_EMOTE_FRAGMENT = BuildEmoteIconProperty("FRAGMENT","TEXTURES/ITEMS/FRAGMENT.DDS")
PROPERTY_ANIM_FRAGMENT = BuildEmoteAnimProperty("FRAGMENT")
PROPERTY_TRIGGER_FRAGMENT = BuildEmoteTriggerProperty("FRAGMENT")

PROPERTY_EMOTE_CIRCUIT = BuildEmoteIconProperty("CIRCUIT","TEXTURES/ITEMS/CIRCUIT.DDS")
PROPERTY_ANIM_CIRCUIT = BuildEmoteAnimProperty("CIRCUIT")
PROPERTY_TRIGGER_CIRCUIT = BuildEmoteTriggerProperty("CIRCUIT")



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_GAMESTATE_STATSTABLE =             "METADATA\\GAMESTATE\\STATS\\STATDEFINITIONSTABLE.MBIN"
FILE_GAMESTATE_PLAYERRTITLE =           "METADATA\\GAMESTATE\\PLAYERDATA\\PLAYERTITLEDATA.MBIN"

FILE_SCANNING_PLANET =                  "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLEPLANET.MBIN"
FILE_SIMULATION_SPAWNTABLE =            "METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN"

FILE_MODELS_DERELICT_TERMINAL =         "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\NPCROOMS\\NPC_ABANDFRIGATECAPTAIN\\ENTITIES\\ABANFRIGATETERMINALFINAL.ENTITY.MBIN"

FILE_METADATA_EMOTEMENU =               "METADATA\\UI\\EMOTEMENU.MBIN"
FILE_MODELS_PLAYERENTITY =              "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER\\ENTITIES\\PLAYERCHARACTER.ENTITY.MBIN"


--------------------------------------------------
-- lists of data to be added
--------------------------------------------------

LIST_EMOTE_ICONS =
{
    PROPERTY_EMOTE_PLATING,
    PROPERTY_EMOTE_FRAGMENT,
    PROPERTY_EMOTE_CIRCUIT,
}

LIST_EMOTE_ANIMS =
{
    PROPERTY_ANIM_PLATING,
    PROPERTY_ANIM_FRAGMENT,
    PROPERTY_ANIM_CIRCUIT,
}

LIST_EMOTE_TRIGGERS = 
{
    PROPERTY_TRIGGER_PLATING,
    PROPERTY_TRIGGER_FRAGMENT,
    PROPERTY_TRIGGER_CIRCUIT,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- scan event table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_SCANNING_PLANET,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- scan event: archive (no approximate location)
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_LIBRARY",                                     },
                        {   ["SEC_EDIT"] = "SEC_SE_LIBRARY",        ["VCT"] = {{"Name","SE_LIBRARY",},{"EventStartType","Special",},},      },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_LIBRARY",                                   },

                        -- scan event: portal
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_PORTAL",                                                                                                      },
                        {   ["SEC_EDIT"] = "SEC_SE_PORTAL",         ["VCT"] = {{"Name","SE_PORTAL",},{"EventStartType","Special",},{"OSDMessage","SIGNAL_PORTAL",}, {"TooltipMessage","TIP_PORTAL",},},     },
                        {   ["SEC_EDIT"] = "SEC_SE_PORTAL",         ["SKW"] = {"BuildingClass","GcBuildingClassification.xml",},    ["LINE_OFFSET"] = 1,    ["VCT"] = {{"BuildingClass","Portal",},},       },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_PORTAL",                                                                                                    },
                            
                        -- scan event: dissonant planet
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_DISSONANT",                                                                                                           },
                        {   ["SEC_EDIT"] = "SEC_SE_DISSONANT",      ["VCT"] = {{"Name","SE_DISSONANT",},{"EventStartType","Special",},{"OSDMessage","UI_MP_CORRUPT_PLANET_OSD",},{"InterstellarOSDMessage","",},
                                                                    {"MarkerLabel","UI_MP_CORRUPT_PLANET_MARKER",},{"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS",},{"TooltipMessage","",},},      },
                        {   ["SEC_EDIT"] = "SEC_SE_DISSONANT",      ["SKW"] = {"BuildingClass","GcBuildingClassification.xml",},    ["LINE_OFFSET"] = 1,    ["VCT"] = {{"BuildingClass","AbandonedRobotCamp",},},   },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_DISSONANT",                                                                                                            },
                    },
                },

                {
                    --------------------------------------------------
                    -- player stats table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_STATSTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new stat to track: number of starships interacted with from scanner mission
                        {   ["SKW"] = {"Id","POLO_PROGRESS",},      ["SEC_SAVE_TO"] = "SEC_STAT_TOKEN",         },
                        {   ["SEC_EDIT"] = "SEC_STAT_TOKEN",        ["VCT"] = {{"Id","APOLLO_TOKENS",},},       },
                        {   ["PKW"] = "StatDefinitionTable",        ["SEC_ADD_NAMED"] = "SEC_STAT_TOKEN",       },
                    },
                },

                {
                    --------------------------------------------------
                    -- encounter spawn table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_SIMULATION_SPAWNTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- new space encounter - temporal fracture
                        {   ["SKW"] = {"Id","JELLYFISH",},      ["SEC_SAVE_TO"] = "SEC_ENCOUNTER",                                                                                              },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["VCT"] = {{"Id","OBJ_FRACTURE",},{"MarkerLabel","TEXT_FRACTURE_MARKER",},{"ChatMessageName","",},
                                                                {"CustomNotify","TEXT_FRACTURE_TIP",},{"CustomNotifyTitle","TEXT_FRACTURE_LABEL",},{"CustomNotifyOSD","TEXT_FRACTURE_OSD",},
                                                                {"UseMarkerIconInOSD","True",},{"RequiresMissionActive","M_STARTER",},{"AkEvent","MUS_STORYMODE_MUSICCUE_06_LP",},},            },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["SKW"] = {"MarkerIcon","TkTextureResource.xml",},      ["VCT"] = {{"Filename","TEXTURES/MISSION/MAIN.DDS",},},                 },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["SKW"] = {"Object","TkModelResource.xml",},            ["VCT"] = {{"Filename","MODELS/OBJECTS/FRACTURE.SCENE.MBIN",},},        },
                        {   ["PKW"] = "PulseEncounters",        ["SEC_ADD_NAMED"] = "SEC_ENCOUNTER",                                                                                            },
                    },
                },

                {
                    --------------------------------------------------
                    -- derelict freighter engineering terminal
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_DERELICT_TERMINAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new dialogue override
                        {   ["PKW"] = "GcAlienPuzzleMissionOverride.xml",       ["SEC_SAVE_TO"] = "SEC_DIALOGUE",                   },
                        {   ["SEC_EDIT"] = "SEC_DIALOGUE",      ["VCT"] = {{"Mission","M_BOXB",},{"Puzzle","I_DERELICT_1",},},      },
                        {   ["PKW"] = "PuzzleMissionOverrideTable",     ["SEC_ADD_NAMED"] = "SEC_DIALOGUE",                         },
                    },
                },

                {
                    --------------------------------------------------
                    -- player titles table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_PLAYERRTITLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- fix 2 abandoned lore titles (part of Misc Text Fixes mod)
                        {   ["SKW"] = {"ID","T_ABANDLORE3"},        ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE3"},},    },
                        {   ["SKW"] = {"ID","T_ABANDLORE4"},        ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE4"},},    },
    
                        -- add the new player titles
                        {   ["SKW"] = {"ID","T_DEFAULT"},   ["SEC_SAVE_TO"] = "SEC_TITLE",                                                                                            },
                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME5",},{"Title","TEXT_TITLE_FORMAT_5",},{"UnlockDescription","TEXT_TITLE_UNLOCK",},
                                                            {"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_5",},{"UnlockedByStat","APOLLO_TOKENS",},{"UnlockedByStatValue",30,},},    },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                          },
                                                                                                
                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME4",},{"Title","TEXT_TITLE_FORMAT_4",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_4",},{"UnlockedByStatValue",20,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME3",},{"Title","TEXT_TITLE_FORMAT_3",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_3",},{"UnlockedByStatValue",15,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME2",},{"Title","TEXT_TITLE_FORMAT_2",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_2",},{"UnlockedByStatValue",10,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME1",},{"Title","TEXT_TITLE_FORMAT_1",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_1",},{"UnlockedByStatValue",5,},},    },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },
                    },
                },

                {
                    --------------------------------------------------
                    -- Quick Menu emote list
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_EMOTEMENU,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add the debug emotes
                        {
                            ["PKW"] = "Emotes",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -1,
                            ["ADD"] = LIST_EMOTE_ICONS,
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- player model (required for emotes)
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYERENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add the animations and triggers to player entity file
                        {
                            ["SKW"] = {"Anim","0H_GREET_MOB_04",},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] = LIST_EMOTE_ANIMS,
                        },

                        {
                            ["PKW"] = "GcPlayerEffectsComponentData.xml",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = LIST_EMOTE_TRIGGERS,
                        },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------