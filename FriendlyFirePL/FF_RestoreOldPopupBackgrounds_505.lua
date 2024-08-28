----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "RestoreOldPopupBackgrounds"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "505"
METADATA_MOD_DESC       = "This mod restores the dark grey and less translucent backgrounds for various UI elements. Modifies files in UI directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- colour data
--------------------------------------------------
R = 0.141
G = 0.141
B = 0.18
A = 0.9

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILES_UI =
{
    "UI\\POPUP_BUILD.MBIN",
    "UI\\POPUP_BUILDINFO.MBIN",
    "UI\\POPUP_BUILDMENUITEM.MBIN",
    "UI\\POPUP_BUYSELL.MBIN",
    "UI\\POPUP_BUYSELLTECH.MBIN",
    "UI\\POPUP_BYTEBEAT_LIBRARY.MBIN",
    "UI\\POPUP_BYTEBEAT.MBIN",
    "UI\\POPUP_CHARGE.MBIN",
    "UI\\POPUP_DISCOVERY.MBIN",
    "UI\\POPUP_DISCOVERYITEM.MBIN",
    "UI\\POPUP_EMPTYSLOT.MBIN",
    "UI\\POPUP_GALAXY_SYSTEMINFO.MBIN",
    "UI\\POPUP_NEWMULTITECH.MBIN",
    "UI\\POPUP_NEWTECHNOLOGY.MBIN",
    "UI\\POPUP_OUTFITTING.MBIN",
    "UI\\POPUP_PET.MBIN",
    "UI\\POPUP_REPAIRSLOT.MBIN",
    "UI\\POPUP_SEASONMILESTONE.MBIN",
    "UI\\POPUP_TECHNOLOGY.MBIN",
    "UI\\POPUP_TRANSFER.MBIN",
    "UI\\POPUP_TRANSFERSEND.MBIN",
    "UI\\POPUP_WIKI.MBIN",

    "UI\\COMPONENTS\\ACTIONBUTTONDISCOVERY.MBIN",
    "UI\\COMPONENTS\\NETWORKPOPUPBUTTON.MBIN",
    "UI\\COMPONENTS\\TRANSFERBUTTON.MBIN",
    "UI\\COMPONENTS\\TECH\\HEROIMGSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\SUBSTANCEAMOUNTSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHBUILDSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHCHARGESECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHINSTALLSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHREFINERSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHREPAIRSECTION.MBIN",
    "UI\\COMPONENTS\\TECH\\TECHSTATSSECTION.MBIN",
}



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

    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILES_UI,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- find all sections with new alpha channel value
                            -- replace the RGBA colour values in these sections
                            ["WISS"] = {{"A","0.77",},},
                            ["WISUBSEC_OPTION"] = "ALL",
                            ["VCT"] ={{"R",R,},{"G",G,},{"B",B,},{"A",A,},}, 
                        },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------