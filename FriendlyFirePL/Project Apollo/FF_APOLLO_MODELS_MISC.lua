----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "MODELS_MISC"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for changes related to certain models. Modifies various files in MODELS directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_MODELS_PLAYERENTITY =          "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER\\ENTITIES\\PLAYERCHARACTER.ENTITY.MBIN"
FILE_MODELS_DERELICT_TERMINAL =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\NPCROOMS\\NPC_ABANDFRIGATECAPTAIN\\ENTITIES\\ABANFRIGATETERMINALFINAL.ENTITY.MBIN"

-- animation used for debug emotes (not affected)
FILE_MODELS_ANIM_TEST =             "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/MULTITOOL/2H_MULTITOOLCOCKANIM_3P.ANIM.MBIN"

--------------------------------------------------
-- debug emote triggers
--------------------------------------------------

PROPERTY_EMOTE_TRIGGERS =
[[
<Property value="LinkableNMSTemplate.xml">
  <Property name="Template" value="GcTriggerActionComponentData.xml">
    <Property name="HideModel" value="False" />
    <Property name="StartInactive" value="False" />
    <Property name="States">
      <Property value="GcActionTriggerState.xml">
        <Property name="StateID" value="BOOT" />
        <Property name="Triggers">

          <Property value="GcActionTrigger.xml">
            <Property name="Event" value="GcAnimFrameEvent.xml">
              <Property name="Anim" value="ANIM_PLATING" />
              <Property name="FrameStart" value="0" />
              <Property name="StartFromEnd" value="False" />
            </Property>
            <Property name="Action">
              <Property value="GcRewardAction.xml">
                <Property name="Reward" value="RD_PLATING" />
              </Property>
            </Property>
          </Property>

          <Property value="GcActionTrigger.xml">
            <Property name="Event" value="GcAnimFrameEvent.xml">
              <Property name="Anim" value="ANIM_FRAGMENT" />
              <Property name="FrameStart" value="0" />
              <Property name="StartFromEnd" value="False" />
            </Property>
            <Property name="Action">
              <Property value="GcRewardAction.xml">
                <Property name="Reward" value="RD_FRAGMENT" />
              </Property>
            </Property>
          </Property>

          <Property value="GcActionTrigger.xml">
            <Property name="Event" value="GcAnimFrameEvent.xml">
              <Property name="Anim" value="ANIM_CIRCUIT" />
              <Property name="FrameStart" value="0" />
              <Property name="StartFromEnd" value="False" />
            </Property>
            <Property name="Action">
              <Property value="GcRewardAction.xml">
                <Property name="Reward" value="RD_CIRCUIT" />
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
  <Property name="Linked" value="" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
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
                    -- player model (required for emotes)
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYERENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add animation for debug emote 1
                        {   ["SKW"] = {"Anim","0H_TURN_L",},          ["SEC_SAVE_TO"] = "SEC_EMOTE_ANIM",                                                                           },
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ANIM",          ["VCT"] = {{"Anim","ANIM_PLATING",},{"Filename",FILE_MODELS_ANIM_TEST,},{"FrameEnd","0",},},                  },
                        {   ["SKW"] = {"Anim","0H_GREET_MOB_04",},    ["SECTION_ACTIVE"] = 2,   ["ADD_OPTION"] = "ADDafterSECTION",    ["SEC_ADD_NAMED"] = "SEC_EMOTE_ANIM",        },

                        -- add animation for debug emote 2
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ANIM",          ["VCT"] = {{"Anim","ANIM_FRAGMENT",},},                                                                       },
                        {   ["SKW"] = {"Anim","0H_GREET_MOB_04",},    ["SECTION_ACTIVE"] = 2,   ["ADD_OPTION"] = "ADDafterSECTION",    ["SEC_ADD_NAMED"] = "SEC_EMOTE_ANIM",        },

                        -- add animation for debug emote 3
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ANIM",          ["VCT"] = {{"Anim","ANIM_CIRCUIT",},},                                                                        },
                        {   ["SKW"] = {"Anim","0H_GREET_MOB_04",},    ["SECTION_ACTIVE"] = 2,   ["ADD_OPTION"] = "ADDafterSECTION",    ["SEC_ADD_NAMED"] = "SEC_EMOTE_ANIM",        },

                        -- add triggers for debug emotes
                        {   ["SKW"] = {"Template","GcPlayerEffectsComponentData.xml",},     ["SECTION_UP_SPECIAL"] = 1,   ["ADD_OPTION"] = "ADDafterSECTION",    ["ADD"] = PROPERTY_EMOTE_TRIGGERS,         },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------