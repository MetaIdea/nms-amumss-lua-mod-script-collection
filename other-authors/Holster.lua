NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]             = "holster.pak",
    ["MOD_AUTHOR"]               = "Ninefinger",
    ["NMS_VERSION"]              = "5.03", -- Adjust according to the current NMS version
    ["MODIFICATIONS"]            = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"WeaponLowerDelay", "10"},     --3 Set your desired values here
                                {"WeaponHolsterDelay", "6"},   --6 Example value: Changed from 6 to 2
                                {"WeaponLag", "0.3"},			--0.6 litteral lag of the weapon lower value is more responsive snappier handling
                            }
                        }
                    }
                }
            }
        }
    }
}