
-- mod description
METADATA_MOD_NAME       = "FF_UnnecessaryIconsBeGone_414.pak"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "4.14"
METADATA_MOD_DESC       = "This mod gets rid of some unnecessary icons displayed on bases and player names."

----------------------------------------------------------------------------------------------------

-- icons removed by this mod:
-- * difficulty mode indicators for bases displayed in teleporter network UI
-- * padlock indicator for players who decided to lock their difficulty settings

-- files to be modified
PATH = "GCUIGLOBALS.GLOBAL.MBIN"

----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = METADATA_MOD_NAME, 
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
                    ["MBIN_FILE_SOURCE"]    = PATH,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["VCT"] = 
                            {
                                -- teleporter network
                                {"ShowDifficultyForBases","False"},

                                -- padlock icon
                                {"ShowPadlockForLockedSettings","False"},
                            },
                        }
                    }
                }
            }
        }
    }
}

