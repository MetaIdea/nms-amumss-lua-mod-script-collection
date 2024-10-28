-- You can enable/disable mod features here :
---------------------------------------------
---------------------------------------------

-- /!\ WARNING /!\ : true/false parameters must be written in lowercase characters.
local TRUE = true
local FALSE = false
-- now you can do uppercase too!, Wbertro

------ NOT settings related tables end ------
---------------------------------------------



NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Test_Patterns_script2.pak",
    ["MOD_AUTHOR"]      = "Babscoole after NeptuneX3 after Sparky after Exosolar",
    LUA_AUTHOR          = "Wbertro, using lua Patterns for testing",
    ["MOD_DESCRIPTION"] =
    [[ An extreme degree of freedom added to the vanilla base-building options.

    —Mod Introduction and Features:
    This mod is fully compatible with multiplayer, co-op building, uploading, etc, because it does not add any parts, which would cause issues in multiplayer.

    ★ Beyond Basebuilding is fully Lua scripted, with script provided for easy updating and merging ★ and carries over all of the official updates and improvements offered by Hello Games plus:

        All parts can be Rotated along all 3 axes (not working until HG adds back the missing rotation axes)
        All parts can be Scaled except prefab building parts, Exocraft Geobays and Base Computer (Door attachment points bug out when scaled, and issues persist with scaled base computers and geobays)
        All parts can be built in a Freighter except the Base Computer, Industrial Mining parts, Vehicle Summoners and planet-based teleporter
        All parts can be built at a Planetary Base except the freighter teleporter and the Orbital Exocraft Materialiser
        All parts can be built above and below water
        All parts can change color and material
        All parts can be deleted without also deleting attached objects except Decals and Posters
        No build-count limits except for parts related to resources farming, certain terminals, beacons and message capsules
        Unlimited Storage Containers—*This does not increase actual storage amounts: Each numbered container acts as an index to the store rather than a physical box
        Foundation, Pavings and Communications Station can be placed anywhere (not only on bare terrain)

    -Credits and Special Thanks!
    Hello Games for making the wonderful, vast, and fun game, No Man's Sky!
    monkeyman192 for the MBINCompiler and his continued efforts to keep it up-to-date
    Mjjstral & Wbertro for the AMUMSS script-based auto modbuilder/updater,
    Tub0Crisco for the No Man's Sky Mod Station A.K.A. NMSMS
    And, of course, thanks to all of the other modders who make mods too, as we often inspect the work of other modders to learn how things are done: RangerDulann, Redmas, WoodyMontana, jasondude, Gumsk, Mjjstral, moddinaccount, Devilin Pixy, saa044, and others

    —For latest versions and more visit:-
    https://www.nexusmods.com/nomanssky/mods/1096
    ]],
    ["NMS_VERSION"]   = "5.03",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    { -- kept as a standard reference for using SKW
                        {--Fix bug with interior freighter walls
                            COMMENT = [[OK, 1 matches]],
                            ["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_WALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"IsPlaceable", "False"},
                            }
                        },
                    },
                },
            },
        },
    }, --21 global replacements
}



--Create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

------- All parts on freighters rules -------
---------------------------------------------
-- Sets Group assignment for Base Storage Containers if BASESTORAGE_ON_FREIGHTER is true

Change_Table_Array[#Change_Table_Array + 1] =
{
    COMMENT = [[OK, 10 matches]],
    -- ["SPECIAL_KEY_WORDS"] = {"ID", BASE_CONTAINERID_TABLE[i]}, -- original
    -- ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER.+"}, -- . WILL NOT WORK, the + returns the longest possible sequence (See lua Patterns for info)
    -- ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER.-"}, -- . works but is TOO generic and could lead to more than digits.  Added - in case HG adds more of them

    -- ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER%d-"}, -- look for 0 or more digits (shortest sequence), added - in case HG adds more of them (in case "CONTAINER" is valid)
    -- ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER%d*"}, -- look for 0 or more digits (longest sequence), added * in case HG adds more of them (in case "CONTAINER" is valid)
    ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER%d+"}, -- look for 1 or more digits (longest sequence), added + in case HG adds more of them ("CONTAINER" is NOT valid)

    -- ["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER%d?"}, -- look only for 0 or one digit, would NOT find "CONTAINER33" (2 digits)

    ["PRECEDING_KEY_WORDS"] = {"Groups"},
    ["ADD_OPTION"] = "ADDafterLINE",
    ["ADD"] =
[[
<Property value="GcBaseBuildingEntryGroup.xml">
<Property name="Group" value="FREIGHT_LEGACY" />
<Property name="SubGroupName" value="FREIGHTERLEGACY" />
<Property name="SubGroup" value="0" />
</Property>
]]
}

----- All parts on freighters rules end -----
---------------------------------------------

-------------- CanScale rules ---------------
---------------------------------------------

-- Reverts "CanScale" to "False" for freighter storage containers

Change_Table_Array[#Change_Table_Array + 1] =
{
    COMMENT = [[OK, 10 matches]],
    ["SPECIAL_KEY_WORDS"]    = {"ID", "S_CONTAINER%d-"}, -- added - in case HG adds more of them
    ["VALUE_CHANGE_TABLE"] =
    {
        {"CanScale", "False"},
    },
}
