-- Ships as in what, pirates, freighters, regular NPCs?
-- R_PIR_FREI - freighters (both pirate and regular)
-- PIRATELOOT - pirate ships
-- "TRADERLOOT" for regular NPC ships I think

-- Reward GcRewardSpecificProduct => R_MB_MEGA
local Ship_Part_Ids =
{
    "FIGHT_COCKAA",
    "FIGHT_COCKAB",
    "FIGHT_COCKAC",
    "FIGHT_COCKAD",
    "FIGHT_COCKAE",
    "FIGHT_COCKB",
    "FIGHT_COCKD",
    "FIGHT_COCKE",
    "FIGHT_COCKF",
    "FIGHT_WINGA",
    "FIGHT_WINGA_FI",
    "FIGHT_WINGB",
    "FIGHT_WINGB_FI",
    "FIGHT_WINGBA",
    "FIGHT_WINGBA_FI",
    "FIGHT_WINGBB",
    "FIGHT_WINGBB_FI",
    "FIGHT_WINGBC",
    "FIGHT_WINGBC_FI",
    "FIGHT_WINGBD",
    "FIGHT_WINGBD_FI",
    "FIGHT_WINGD",
    "FIGHT_WINGEA",
    "FIGHT_WINGEA_FI",
    "FIGHT_WINGEB",
    "FIGHT_WINGEB_FI",
    "FIGHT_WINGEC",
    "FIGHT_WINGEC_FI",
    "FIGHT_WINGED",
    "FIGHT_WINGED_FI",
    "FIGHT_WINGEE",
    "FIGHT_WINGEE_FI",
    "FIGHT_WINGEF",
    "FIGHT_WINGEF_FI",
    "FIGHT_WINGFC",
    "FIGHT_WINGFC_FI",
    "FIGHT_WINGFD",
    "FIGHT_WINGFD_FI",
    "FIGHT_WINGFE",
    "FIGHT_WINGFE_FI",
    "FIGHT_WINGG",
    "FIGHT_WINGG_FI",
    "FIGHT_WINGH",
    "FIGHT_WINGH_FI",
    "FIGHT_WINGHA",
    "FIGHT_WINGHA_FI",
    "FIGHT_WINGHB",
    "FIGHT_WINGHB_FI",
    "FIGHT_WINGHC",
    "FIGHT_WINGHC_FI",
    "FIGHT_WINGHD",
    "FIGHT_WINGHD_FI",
    "FIGHT_WINGI",
    "FIGHT_WINGI_FI",
    "FIGHT_WINGJLOW",
    "FIGHT_WINGJMID",
    "FIGHT_WINGJFULL",
    "FIGHT_WINGKA",
    "FIGHT_WINGKAA",
    "FIGHT_WINGKBA",
    "FIGHT_WINGKBB",
    "FIGHT_WINGKBC",
    "FIGHT_ENGIB",
    "FIGHT_ENGIC",
    "FIGHT_ENGID",
    "DROPS_COCKA",
    "DROPS_COCKB",
    "DROPS_COCKC",
    "DROPS_COCKD",
    "DROPS_COCKE",
    "DROPS_COCKF",
    "DROPS_COCKG",
    "DROPS_COCKH",
    "DROPS_COCKS13",
    "DROPS_ENGIA",
    "DROPS_ENGIAA",
    "DROPS_ENGIAB",
    "DROPS_ENGIB",
    "DROPS_ENGIBA",
    "DROPS_ENGIBB",
    "DROPS_ENGIC",
    "DROPS_ENGIS13",
    "DROPS_WINGEMP",
    "DROPS_WINGAA",
    "DROPS_WINGAAA",
    "DROPS_WINGAAB",
    "DROPS_WINGAAC",
    "DROPS_WINGAAD",
    "DROPS_WINGAAE",
    "DROPS_WINGAAF",
    "DROPS_WINGAAG",
    "DROPS_WINGAAH",
    "DROPS_WINGAAI",
    "DROPS_WINGAB",
    "DROPS_WINGABA",
    "DROPS_WINGABB",
    "DROPS_WINGABC",
    "DROPS_WINGABD",
    "DROPS_WINGABE",
    "DROPS_WINGABF",
    "DROPS_WINGABG",
    "DROPS_WINGABH",
    "DROPS_WINGABI",
    "DROPS_WINGAC",
    "DROPS_WINGACA",
    "DROPS_WINGACB",
    "DROPS_WINGACC",
    "DROPS_WINGACD",
    "DROPS_WINGACE",
    "DROPS_WINGACF",
    "DROPS_WINGACG",
    "DROPS_WINGACH",
    "DROPS_WINGACI",
    "DROPS_WINGBA",
    "DROPS_WINGBAA",
    "DROPS_WINGBAA",
    "DROPS_WINGBAA",
    "DROPS_WINGBAD",
    "DROPS_WINGBAE",
    "DROPS_WINGBAF",
    "DROPS_WINGBAG",
    "DROPS_WINGBAH",
    "DROPS_WINGBAI",
    "DROPS_WINGBB",
    "DROPS_WINGBBA",
    "DROPS_WINGBBB",
    "DROPS_WINGBBC",
    "DROPS_WINGBBD",
    "DROPS_WINGBBE",
    "DROPS_WINGBBF",
    "DROPS_WINGBBG",
    "DROPS_WINGBBH",
    "DROPS_WINGBBI",
    "DROPS_WINGBC",
    "DROPS_WINGBCA",
    "DROPS_WINGBCB",
    "DROPS_WINGBCC",
    "DROPS_WINGBCD",
    "DROPS_WINGBCE",
    "DROPS_WINGBCF",
    "DROPS_WINGBCG",
    "DROPS_WINGBCH",
    "DROPS_WINGBCI",
    "DROPS_WINGCA",
    "DROPS_WINGCAA",
    "DROPS_WINGCAB",
    "DROPS_WINGCAC",
    "DROPS_WINGCAD",
    "DROPS_WINGCAE",
    "DROPS_WINGCAF",
    "DROPS_WINGCAG",
    "DROPS_WINGCAH",
    "DROPS_WINGCAI",
    "DROPS_WINGCB",
    "DROPS_WINGCBA",
    "DROPS_WINGCBB",
    "DROPS_WINGCBC",
    "DROPS_WINGCBD",
    "DROPS_WINGCBE",
    "DROPS_WINGCBF",
    "DROPS_WINGCBG",
    "DROPS_WINGCBH",
    "DROPS_WINGCBI",
    "DROPS_WINGCC",
    "DROPS_WINGCCA",
    "DROPS_WINGCCB",
    "DROPS_WINGCCC",
    "DROPS_WINGCCD",
    "DROPS_WINGCCE",
    "DROPS_WINGCCF",
    "DROPS_WINGCCG",
    "DROPS_WINGCCH",
    "DROPS_WINGCCI",
    "DROPS_WINGCD",
    "DROPS_WINGCDA",
    "DROPS_WINGCDB",
    "DROPS_WINGCDE",
    "DROPS_WINGCDF",
    "DROPS_WINGCDG",
    "DROPS_WINGCDH",
    "DROPS_WINGCDI",
    "DROPS_WINGDA",
    "DROPS_WINGDAX",
    "DROPS_WINGDAA",
    "DROPS_WINGDAB",
    "DROPS_WINGDAH",
    "DROPS_WINGDAI",
    "DROPS_WINGDB",
    "DROPS_WINGDBA",
    "DROPS_WINGDBB",
    "DROPS_WINGDBH",
    "DROPS_WINGDBI",
    "DROPS_WINGDBX",
    "DROPS_WINGDBAX",
    "DROPS_WINGDBBX",
    "DROPS_WINGDBHX",
    "DROPS_WINGDBIX",
    "DROPS_WINGS13",
    "DROPS_WING1",
    "DROPS_WING2",
    "SCIEN_COCKAA",
    "SCIEN_COCKAAA",
    "SCIEN_COCKABA",
    "SCIEN_COCKACA",
    "SCIEN_COCKAB",
    "SCIEN_COCKAAB",
    "SCIEN_COCKABB",
    "SCIEN_COCKACB",
    "SCIEN_COCKDA",
    "SCIEN_COCKDB",
    "SCIEN_WINGEMP",
    "SCIEN_WINGA",
    "SCIEN_WINGBA",
    "SCIEN_WINGBB",
    "SCIEN_WINGBC",
    "SCIEN_WINGBD",
    "SCIEN_WINGC",
    "SCIEN_WINGDA",
    "SCIEN_WINGDB",
    "SCIEN_WINGDC",
    "SCIEN_WINGDD",
    "SCIEN_WINGE",
    "SCIEN_WINGF",
    "SCIEN_WINGFA",
    "SCIEN_WINGG",
    "SCIEN_WINGGA",
    "SCIEN_WINGHA",
    "SCIEN_WINGHB",
    "SCIEN_WINGHC",
    "SCIEN_WINGHD",
    "SCIEN_WINGI",
    "SCIEN_WINGKA",
    "SCIEN_WINGKB",
    "SCIEN_WINGKC",
    "SCIEN_WINGKD",
    "SCIEN_WINGL",
    "SCIEN_WINGT_A",
    "SCIEN_WINGT_C",
    "SCIEN_WINGT_F",
    "SCIEN_WINGT_G",
    "SCIEN_WINGT_I",
    "SHUTT_COCKA",
    "SHUTT_COCKB",
    "SHUTT_CYLIN0A",
    "SHUTT_CYLIN0B",
    "SHUTT_CYLIN1A",
    "SHUTT_CYLIN1B",
    "SHUTT_CYLIN2A",
    "SHUTT_2CYLIN1A",
    "SHUTT_2CYLIN1B",
    "SHUTT_2CYLIN2A",
    "SHUTT_BOX0A",
    "SHUTT_BOX1A",
    "SHUTT_BOX2A",
    "SHUTT_BOX3A",
    "SHUTT_2BOX0A",
    "SHUTT_2BOX1A",
    "SHUTT_WINGA",
    "SHUTT_WINGD",
    "SHUTT_WINGG",
    "SHUTT_WINGH",
    "SHUTT_WINGI",
    "SHUTT_WINGJ",
    "SHUTT_WINGK",
    "SHUTT_WINGL"
}




ModeName = "ShipCombatDelux"
Author = "Jackty89"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName .. ".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {}
                }
            }
        }
    }
}
local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function Create_Reward_Entry(Entry_Id)
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        -- ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA", "Reward", "GcRewardTableItem.xml"},
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA"},

        ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
        ["SEC_SAVE_TO"] = "SEC_REWARD_ENTRY"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "SEC_REWARD_ENTRY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", Entry_Id},
            {"PercentageChance", "15"}
        }
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "REWARD_ENTRIES_MASTER",
        ["SEC_ADD_NAMED"] = "SEC_REWARD_ENTRY"
    }

end

function Create_Master_Sec()
    -- Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    -- {
    --     ["SEC_EMPTY"] = "REWARD_SEC_MASTER"
    -- }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EMPTY"] = "REWARD_ENTRIES_MASTER"
    }
end

function Add_Shiparts()
    Create_Master_Sec()
    for i = 1, #Ship_Part_Ids do
        Create_Reward_Entry(Ship_Part_Ids[i])
    end

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATELOOT"},
        ["PRECEDING_KEY_WORDS"] = {"List", "List"},
        ["SEC_ADD_NAMED"] = "REWARD_ENTRIES_MASTER"
    }

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "TRADERLOOT"},
        ["PRECEDING_KEY_WORDS"] = {"List", "List"},
        ["SEC_ADD_NAMED"] = "REWARD_ENTRIES_MASTER"
    }
end

Add_Shiparts()