local ContainerID = {"CONTAINER0","CONTAINER1","CONTAINER2","CONTAINER3","CONTAINER4","CONTAINER5","CONTAINER6","CONTAINER7","CONTAINER8","CONTAINER9"}
local GarageID = {"GARAGE_B","GARAGE_S","GARAGE_M","GARAGE_L","GARAGE_MECH","GARAGE_SUB", "GARAGE_FLOAT"}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = "Reducable_Containers_Pickeable_Geobay_Harvesters",
    MOD_AUTHOR = "Methatronc",
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    EXML_CHANGE_TABLE =
                    {
                        {
                            PRECEDING_KEY_WORDS = "",
                            REPLACE_TYPE = "ALL",
                            VALUE_CHANGE_TABLE =
                            {
                                {"CheckPlaceholderCollision", "False"},
                                {"CanScale", "True"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"ID", "BUILDHARVESTER"},
                            VALUE_CHANGE_TABLE =
                            {
                                {"CanPickUp", "True"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"ID", "O2_HARVESTER"},
                            VALUE_CHANGE_TABLE =
                            {
                                {"BuildableOnPlanet", "True"},
                                {"Group", "PLANET_TECH"},
                                {"CanPickUp", "True"}
                            }
                        }
                    }
                }
            }
        }
    }
}

local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE
function Edit_containers()
    for i=1,#ContainerID do
        local value = ContainerID[i]
        Change_Table_Ref[#Change_Table_Ref + 1] =
        {
            SPECIAL_KEY_WORDS = {"ID",value},
            REPLACE_TYPE = "ALL",
            VALUE_CHANGE_TABLE  =
            {
                {"BuildableOnFreighter", "True"},
                {"FreighterBaseLimit", 1},
            }
        }
    end
end

function Edit_Garages()
    for i=1,#GarageID do
        local value = GarageID[i]
        Change_Table_Ref[#Change_Table_Ref + 1] =
        {
            SPECIAL_KEY_WORDS = {"ID",value},
            REPLACE_TYPE = "ALL",
            VALUE_CHANGE_TABLE =
            {
                {"CanPickUp", "True"},
            }
        }
    end
end

Edit_containers()
Edit_Garages()