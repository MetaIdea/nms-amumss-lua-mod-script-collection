----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MusicPlayerMadness"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "This mod adds music player items which can be used to play selected music tracks during gameplay."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_LANGUAGE_LOC5 =                "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"
FILE_METADATA_PRODUCTTABLE =        "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"
FILE_METADATA_CONSUMABLE =          "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
FILE_METADATA_REWARDTABLE =         "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_METADATA_DEFAULTTERALITY =     "METADATA\\REALITY\\DEFAULTREALITY.MBIN"



--------------------------------------------------
-- shared text elements
--------------------------------------------------

TEXT_PACKET_N = "SUSPICIOUS PACKET (DATA)"
TEXT_PACKET_L = "Suspicious Packet (Data)"
TEXT_PACKET_S = "Unlicensed Data Depository"
TEXT_PACKET_D = "A suspicious looking parcel, acquired via an unusual transaction. The seller indicated it contained some sort of data.&#xA;&#xA;Select in the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) and use &lt;IMG&gt;FE_ALT1&lt;&gt; to examine the contents."

TEXT_ITEM_N = "MUSIC PLAYER: "
TEXT_ITEM_L = "Music Player: "
TEXT_ITEM_S = "Music Playback Device"

TEXT_ITEM_T = "A portable music playback device, storing an audio fragment:&#xA;&#xA;"
TEXT_ITEM_E = "A portable music playback device, storing a collection of sound effects:&#xA;&#xA;"
TEXT_ITEM_B = "PLAY"
TEXT_ITEM_C = "Start playback of the audio file"



--------------------------------------------------
-- single tracks
--------------------------------------------------

TEXT_T01_N = TEXT_ITEM_N .. "SUPERMOON"
TEXT_T01_L = TEXT_ITEM_L .. "Supermoon"
TEXT_T01_D = TEXT_ITEM_T .. "Track 01 - &lt;VAL_ON&gt;Supermoon&lt;&gt; - 65daysofstatic"

TEXT_T02_N = TEXT_ITEM_N .. "ASIMOV (INTRO)"
TEXT_T02_L = TEXT_ITEM_L .. "Asimov (Intro)"
TEXT_T02_D = TEXT_ITEM_T .. "Track 02 - &lt;VAL_ON&gt;Asimov (Intro)&lt;&gt; - 65daysofstatic"

TEXT_T03_N = TEXT_ITEM_N .. "ASIMOV (OUTRO)"
TEXT_T03_L = TEXT_ITEM_L .. "Asimov (Outro)"
TEXT_T03_D = TEXT_ITEM_T .. "Track 03 - &lt;VAL_ON&gt;Asimov (Outro)&lt;&gt; - 65daysofstatic"

TEXT_T04_N = TEXT_ITEM_N .. "BLUEPRINT FOR A SLOW MACHINE"
TEXT_T04_L = TEXT_ITEM_L .. "Blueprint For A Slow Machine"
TEXT_T04_D = TEXT_ITEM_T .. "Track 04 - &lt;VAL_ON&gt;Blueprint For A Slow Machine&lt;&gt; - 65daysofstatic"

TEXT_T05_N = TEXT_ITEM_N .. "ESCAPE VELOCITY"
TEXT_T05_L = TEXT_ITEM_L .. "Escape Velocity"
TEXT_T05_D = TEXT_ITEM_T .. "Track 05 - &lt;VAL_ON&gt;Escape Velocity&lt;&gt; - 65daysofstatic"

TEXT_T06_N = TEXT_ITEM_N .. "EXPEDITIONS"
TEXT_T06_L = TEXT_ITEM_L .. "Expeditions"
TEXT_T06_D = TEXT_ITEM_T .. "Track 06 - &lt;VAL_ON&gt;Expeditions&lt;&gt; - Paul Weir"

TEXT_T07_N = TEXT_ITEM_N .. "AUTOPHAGE NOISE"
TEXT_T07_L = TEXT_ITEM_L .. "Autophage Noise"
TEXT_T07_D = TEXT_ITEM_T .. "Track 07 - &lt;VAL_ON&gt;Autophage Noise&lt;&gt;"



--------------------------------------------------
-- collections of sound effects
--------------------------------------------------

TEXT_T11_N = TEXT_ITEM_N .. "NEXUS MISSION"
TEXT_T11_L = TEXT_ITEM_L .. "Nexus Mission"
TEXT_T11_D = TEXT_ITEM_E .. "Effect 01 - &lt;VAL_ON&gt;Nexus Mission&lt;&gt; - 65daysofstatic"

TEXT_T12_N = TEXT_ITEM_N .. "JOURNEY MILESTONES"
TEXT_T12_L = TEXT_ITEM_L .. "Journey Milestones"
TEXT_T12_D = TEXT_ITEM_E .. "Effect 02 - &lt;VAL_ON&gt;Journey Milestones&lt;&gt; - various artists"

TEXT_T13_N = TEXT_ITEM_N .. "EXPEDITION MILESTONES (SET 1)"
TEXT_T13_L = TEXT_ITEM_L .. "Expedition Milestones (Set 1)"
TEXT_T13_D = TEXT_ITEM_E .. "Effect 03 - &lt;VAL_ON&gt;Expedition Milestones (Set 1)&lt;&gt; - various artists"

TEXT_T14_N = TEXT_ITEM_N .. "EXPEDITION MILESTONES (SET 2)"
TEXT_T14_L = TEXT_ITEM_L .. "Expedition Milestones (Set 2)"
TEXT_T14_D = TEXT_ITEM_E .. "Effect 04 - &lt;VAL_ON&gt;Expedition Milestones (Set 2)&lt;&gt; - various artists"

TEXT_T15_N = TEXT_ITEM_N .. "AUTOPHAGE ALERT"
TEXT_T15_L = TEXT_ITEM_L .. "Autophage Alert"
TEXT_T15_D = TEXT_ITEM_E .. "Effect 05 - &lt;VAL_ON&gt;Autophage Alert&lt;&gt;"



--------------------------------------------------
-- list of text objects
--------------------------------------------------

LIST_TEXT = 
{
    TEXT_PACKET_N = TEXT_PACKET_N,
    TEXT_PACKET_L = TEXT_PACKET_L,
    TEXT_PACKET_S = TEXT_PACKET_S,
    TEXT_PACKET_D = TEXT_PACKET_D,

    TEXT_ITEM_S = TEXT_ITEM_S,
    TEXT_ITEM_B = TEXT_ITEM_B,
    TEXT_ITEM_C = TEXT_ITEM_C,
    
    TEXT_T01_N = TEXT_T01_N,    TEXT_T01_L = TEXT_T01_L,    TEXT_T01_D = TEXT_T01_D,
    TEXT_T02_N = TEXT_T02_N,    TEXT_T02_L = TEXT_T02_L,    TEXT_T02_D = TEXT_T02_D,
    TEXT_T03_N = TEXT_T03_N,    TEXT_T03_L = TEXT_T03_L,    TEXT_T03_D = TEXT_T03_D,
    TEXT_T04_N = TEXT_T04_N,    TEXT_T04_L = TEXT_T04_L,    TEXT_T04_D = TEXT_T04_D,
    TEXT_T05_N = TEXT_T05_N,    TEXT_T05_L = TEXT_T05_L,    TEXT_T05_D = TEXT_T05_D,
    TEXT_T06_N = TEXT_T06_N,    TEXT_T06_L = TEXT_T06_L,    TEXT_T06_D = TEXT_T06_D,
    TEXT_T07_N = TEXT_T07_N,    TEXT_T07_L = TEXT_T07_L,    TEXT_T07_D = TEXT_T07_D,
    
    TEXT_T11_N = TEXT_T11_N,    TEXT_T11_L = TEXT_T11_L,    TEXT_T11_D = TEXT_T11_D,
    TEXT_T12_N = TEXT_T12_N,    TEXT_T12_L = TEXT_T12_L,    TEXT_T12_D = TEXT_T12_D,
    TEXT_T13_N = TEXT_T13_N,    TEXT_T13_L = TEXT_T13_L,    TEXT_T13_D = TEXT_T13_D,
    TEXT_T14_N = TEXT_T14_N,    TEXT_T14_L = TEXT_T14_L,    TEXT_T14_D = TEXT_T14_D,
    TEXT_T15_N = TEXT_T15_N,    TEXT_T15_L = TEXT_T15_L,    TEXT_T15_D = TEXT_T15_D,
}



----------------------------------------------------------------------------------------------------
-- functions 
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- functions to build the text entries
--------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="English" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
    </Property>
</Property>
]]
end

function BuildLocList(list)
    local FileTable = {}
    for id,value in pairs(list) do
        FileTable[#FileTable+1] = BuildTextProperty(id,value)
    end
    return table.concat(FileTable)
end

--------------------------------------------------
-- functions to build player items
--------------------------------------------------

function PlayerVCT(name) return
{   ["SEC_EDIT"] = "SEC_ITEM_PLAYER",   ["VCT"] = {{"ID",[[ITEM_]]..name,},{"Name",[[TEXT_]]..name..[[_N]],},{"NameLower",[[TEXT_]]..name..[[_L]],},},  }
end

function PlayerDesc(name) return
{   ["SEC_EDIT"] = "SEC_ITEM_PLAYER",   ["SKW"] = {"Description","VariableSizeString.xml",},    ["VCT"] = {{"Value",[[TEXT_]]..name..[[_D]],},},    }
end

function PlayerAdd() return
{   ["PKW"] = "Table",      ["SEC_ADD_NAMED"] = "SEC_ITEM_PLAYER",  }
end

--------------------------------------------------
-- functions to build interactions
--------------------------------------------------

function ActivationVCT(name,audio) return
{   ["SEC_EDIT"] = "SEC_CONS_PLAYER",    ["VCT"] = {{"ID",[[ITEM_]]..name,},{"AkEvent",audio,},}     }
end

function ActivationAdd() return
{   ["PKW"] = "Table",      ["SEC_ADD_NAMED"] = "SEC_CONS_PLAYER",  }
end

function RewardAdd(slot,name) return
{   ["SEC_EDIT"] = "SEC_REWARD",    ["PKW"] = "GcRewardTableItem.xml",      ["SECTION_ACTIVE"] = slot,      ["VCT"] = {{"ID",[[ITEM_]]..name,},},  }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    --------------------------------------------------
                    -- localization MBIN - add new text entries
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE_LOC5,
                    ["EXML_CHANGE_TABLE"] = {{["PKW"] = "Table",    ["ADD"] = BuildLocList(LIST_TEXT),},},
                },

                {
                    --------------------------------------------------
                    -- product table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new suspicious packet item (data)
                        {   ["SKW"] = {"ID","SCRAP_GOODS",},    ["SEC_SAVE_TO"] = "SEC_ITEM_PACKET",                                                                                                },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PACKET",   ["VCT"] = {{"ID","ITEM_PACKET",},{"Name","TEXT_PACKET_N",},{"NameLower","TEXT_PACKET_L",},{"CanSendToOtherPlayers","False",},},     },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PACKET",   ["SKW"] = {"Subtitle","VariableSizeString.xml",},       ["VCT"] = {{"Value","TEXT_PACKET_S",},},                                    },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PACKET",   ["SKW"] = {"Description","VariableSizeString.xml",},    ["VCT"] = {{"Value","TEXT_PACKET_D",},},                                    },
                        {   ["PKW"] = "Table",      ["SEC_ADD_NAMED"] = "SEC_ITEM_PACKET",                                                                                                          },

                        -- prepare template for music player items
                        {   ["SKW"] = {"ID","SCRAP_GOODS",},    ["SEC_SAVE_TO"] = "SEC_ITEM_PLAYER",                                                                                                                    },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PLAYER",   ["SKW"] = {"Subtitle","VariableSizeString.xml",},   ["VCT"] = {{"Value","TEXT_ITEM_S",},},                                                              },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PLAYER",   ["SKW"] = {"Icon","TkTextureResource.xml",},        ["VCT"] = {{"Filename","TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.BYTEBEATCASSETTE.DDS",},},  },
                        {   ["SEC_EDIT"] = "SEC_ITEM_PLAYER",   ["VCT"] = {{"CanSendToOtherPlayers","False",},},                                                                                                        },

                        -- build player items - single tracks
                        PlayerVCT("T01"),PlayerDesc("T01"),PlayerAdd(),
                        PlayerVCT("T02"),PlayerDesc("T02"),PlayerAdd(),
                        PlayerVCT("T03"),PlayerDesc("T03"),PlayerAdd(),
                        PlayerVCT("T04"),PlayerDesc("T04"),PlayerAdd(),
                        PlayerVCT("T05"),PlayerDesc("T05"),PlayerAdd(),
                        PlayerVCT("T06"),PlayerDesc("T06"),PlayerAdd(),
                        PlayerVCT("T07"),PlayerDesc("T07"),PlayerAdd(),

                        -- build player items - collections
                        PlayerVCT("T11"),PlayerDesc("T11"),PlayerAdd(),
                        PlayerVCT("T12"),PlayerDesc("T12"),PlayerAdd(),
                        PlayerVCT("T13"),PlayerDesc("T13"),PlayerAdd(),
                        PlayerVCT("T14"),PlayerDesc("T14"),PlayerAdd(),
                        PlayerVCT("T15"),PlayerDesc("T15"),PlayerAdd(),
                    },
                },

                {
                    --------------------------------------------------
                    -- consumable table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CONSUMABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add activation of suspicious packet
                        {   ["SKW"] = {"ID","SCRAP_GOODS"},         ["SEC_SAVE_TO"] = "SEC_CONS_PACKET",                            },
                        {   ["SEC_EDIT"] = "SEC_CONS_PACKET",       ["VCT"] = {{"ID","ITEM_PACKET",},{"RewardID","R_PACKET",},},    },
                        {   ["PKW"] = "Table",      ["SEC_ADD_NAMED"] = "SEC_CONS_PACKET",                                          },


                        -- prepare template for interaction data
                        {   ["SKW"] = {"ID","DRONE_FRIEND_X",},     ["SEC_SAVE_TO"] = "SEC_CONS_PLAYER",                                                                },
                        {   ["SEC_EDIT"] = "SEC_CONS_PLAYER",       ["VCT"] = {{"RewardID","",},{"ButtonLocID","TEXT_ITEM_B",},{"ButtonSubLocID","TEXT_ITEM_C",},},     },

                        -- add activations - single tracks
                        ActivationVCT("T01","MUS_ENDING"),ActivationAdd(),
                        ActivationVCT("T02","MUS_FIRSTTIMEWARP"),ActivationAdd(),
                        ActivationVCT("T03","MUS_FIRSTTIMESPACESTATION"),ActivationAdd(),
                        ActivationVCT("T04","MUS_SPACEVIRGIN"),ActivationAdd(),
                        ActivationVCT("T05","MUS_ATLASSTATION"),ActivationAdd(),
                        ActivationVCT("T06","MUS_EXPEDITION_START"),ActivationAdd(),
                        ActivationVCT("T07","MUS_CORRUPTED_STING_LONG"),ActivationAdd(),
                    
                        -- add activations - collections
                        ActivationVCT("T11","MUS_STATUS_UPDATE"),ActivationAdd(),
                        ActivationVCT("T12","MUS_LEVEL_UP"),ActivationAdd(),
                        ActivationVCT("T13","MUS_MILESTONE_COMPLETE"),ActivationAdd(),
                        ActivationVCT("T14","MUS_MILESTONE_REWARDS"),ActivationAdd(),
                        ActivationVCT("T15","MUS_CORRUPTED_MUSICCUE"),ActivationAdd(),                        
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- get object reward template, change ID, yeet out the proc product slot
                        {   ["SKW"] = {"Id","R_SCRAP_WEAP",},       ["SEC_SAVE_TO"] = "SEC_REWARD",                                                                             },
                        {   ["SEC_EDIT"] = "SEC_REWARD",    ["VCT"] = {{"Id","R_PACKET",},},                                                                                    },
                        {   ["SEC_EDIT"] = "SEC_REWARD",    ["SKW"] = {"Reward","GcRewardProceduralProduct.xml",},  ["SECTION_UP_SPECIAL"] = 1,     ["REMOVE"] = "SECTION",     },

                        -- assign 12 player items as rewards
                        RewardAdd(1,"T01"),RewardAdd(2,"T02"),RewardAdd(3,"T03"),RewardAdd(4,"T04"),RewardAdd(5,"T05"),RewardAdd(6,"T06"),RewardAdd(7,"T07"),
                        RewardAdd(8,"T11"),RewardAdd(9,"T12"),RewardAdd(10,"T13"),RewardAdd(11,"T14"),RewardAdd(12,"T15"),

                        -- add the new reward object
                        {   ["PKW"] = "GenericTable",   ["SEC_ADD_NAMED"] = "SEC_REWARD",   },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULTTERALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"SmugglerStation","GcTradeData.xml",},
                            ["PKW"] = "OptionalProducts",
                            ["ADD"] = [[<Property value="NMSString0x10.xml"><Property name="Value" value="ITEM_PACKET" /></Property>]],
                        },
                    },
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------