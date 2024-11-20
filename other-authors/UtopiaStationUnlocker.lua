Items_To_Add_To_KnownProducts =
{
    "BP_ANALYSER",
    "S9_SUITTREE",
    "S9_WEAPONTREE",
    "S9_EXOCRAFTTREE",
    "S9_SHIPTREE",
    "S9_BUILDERTREE"
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "UtopiaStationUnlocker.pak",
["MOD_AUTHOR"] = "Aristotale",
["MOD_DESCRIPTION"] = "Unlocks all of the Utopia Research Stations and adds them to the build menu",
["LUA_AUTHOR"]    = "Aristotale, substantial borrowing from Jackty89's No Starting Ship Challenge mod",
["NMS_VERSION"]   = "5.25",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
            }
        }
    }
}

local Changes_To_Default_Save_Data = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function Create_Masters()
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EMPTY"] = "Known_Products"
    }

    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts", "NMSString0x10.xml"},
        ["SEC_SAVE_TO"] = "NMSString0x10_Section"
    }
end

function Create_New_NMSString0x10_Sections(value, master_section)
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = "NMSString0x10_Section",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", value},
        }
    }
    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["SEC_EDIT"] = master_section,
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "NMSString0x10_Section"
    }
end

function Add_Utopia_Stations()
    for _index, product in ipairs(Items_To_Add_To_KnownProducts) do
        Create_New_NMSString0x10_Sections(product, "Known_Products")
    end

    Changes_To_Default_Save_Data[#Changes_To_Default_Save_Data + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["SEC_ADD_NAMED"] = "Known_Products"
    }

end

Create_Masters()
Add_Utopia_Stations()
