----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "BlackPaintForFabricator"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "TEST"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- file affected by this mod
FILE_PLAYERDATA_COLOURS = "METADATA\\GAMESTATE\\PLAYERDATA\\CUSTOMISATIONCOLOURPALETTES.MBIN"

-- function to change colour RGB values
function ChangeColour(slot,r,g,b) return
{
    ["ITF"] = "FORCE",
    ["SKW"] = {"Ship_01","GcPaletteData.xml",},
    ["PKW"] = "Colour.xml",
    ["SECTION_ACTIVE"] = slot,
    ["VCT"] = {{"R",r,},{"G",g,},{"B",b,},},
}
end

-- function to change colour tooltips
function ChangeTooltip(slot,text) return
{
    ["SKW"] = {"ID","SHIP"},
    ["PKW"] = "NMSString0x20.xml",
    ["SECTION_ACTIVE"] = slot,
    ["VCT"] = {{"Value",text,},},
}
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
    ["MOD_DESCRIPTION"]   	= METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_PLAYERDATA_COLOURS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --------------------------------------------------
                        -- change colours in the picker
                        -- slot 9 - white
                        -- slot 10 - dark grey
                        -- slot 19 - light grey
                        -- slot 20 - black
                        --------------------------------------------------
                        ChangeColour(9,1,1,1),
                        ChangeColour(10,0.297,0.297,0.297),
                        ChangeColour(19,0.667,0.667,0.667),
                        ChangeColour(20,0,0,0),

                        -- change tooltip texts
                        ChangeTooltip(9,"UI_PAINT_WHITE"),
                        ChangeTooltip(10,"UI_PAINT_BLACK"),
                        ChangeTooltip(19,"UI_PAINT_GREY"),
                        ChangeTooltip(20,"UI_PAINT_BLACK_DARK"),
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------