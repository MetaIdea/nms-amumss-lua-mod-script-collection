----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ResearchTreesRescaled"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod rescales the elements of research trees by 20% to make them fit on screen better. Modifies UI\SLOTTREENODE.MBIN file."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- files to be modified
FILE_UI_TREENODE = "UI\SLOTTREENODE.MBIN"

-- scalling and position values
SCALING_MAIN = "@ * 0.8"
SCALING_COST = "@ * 0.7"
SCALING_POSX = 48
SCALING_POSY = 84



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
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
                    -- tree slot MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_TREENODE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- scale down whole node
                            ["SKW"] = {"ID","NORMAL",},
                            ["VCT"] = {{"Width",SCALING_MAIN,},{"Height",SCALING_MAIN,},},
                        },
                    
                        {
                            -- change position of attachment points for lines
                            ["SKW"] = {{"ID","TREE_IN",},{"ID","TREE_OUT",},},
                            ["VCT"] = {{"Position X",SCALING_MAIN,},{"Position Y",SCALING_MAIN,},},
                        },

                        
                        {
                            -- reposition cost group
                            ["SKW"] = {"ID","COST",},
                            ["VCT"] = {{"Position X",SCALING_POSX,},{"Position Y",SCALING_POSY,},{"Vertical","Top",},}
                        },

                        {
                            -- reposition cost label text
                            ["SKW"] = {"ID","TEXT",},
                            ["VCT"] =
                            {
                                {"Position X",SCALING_POSX,},
                                {"Position Y",0,},
                                {"Horizontal","Center",},
                                {"Width Percentage","true",},
                                {"Height Percentage","true",},
                            },
                        },
                    
                        {
                            -- rework cost label font
                            ["SKW"] = {"ID","TEXT",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Font Height",SCALING_COST,},{"Auto Adjust Font Height","false",},},
                        },

                        {
                            -- rework cost background, enable gradient
                            ["SKW"] = {"Position X","28.000000",},
                            ["SECTION_UP_SPECIAL"] = 2,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Gradient","Horizontal",},{"Corner Radius",6,},}
                        },

                        {
                            -- change colour to get gradient effect
                            ["SKW"] = {"Position X","28.000000",},
                            ["SECTION_UP_SPECIAL"] = 2,
                            ["PKW"] = "Gradient Colour",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"R",1,},{"G",0.4,},{"B",0,},},
                        },

                        {
                            -- reposition cost background
                            ["SKW"] = {"Position X","28.000000",},
                            ["VCT"] =
                            {
                                {"Position X",SCALING_POSX,},
                                {"Position Y",0,},
                                {"Width",SCALING_COST,},
                                {"Height",SCALING_MAIN,},
                                {"Horizontal","Center",},
                                {"Width Percentage","true",},
                                {"AnchorPercent","true",},
                            },
                        },

                        {
                            -- scale down locked icon overlay
                            ["SKW"] = {{"ID","LOCK",},{"ID","SEASONLOCK",},},
                            ["VCT"] = {{"Width",SCALING_MAIN,},{"Height",SCALING_MAIN,},},
                        },
                    },
                }
            },
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------