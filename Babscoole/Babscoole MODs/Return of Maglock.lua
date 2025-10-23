Weapon_Changes =   
{--  Weapon        AutoAimAngle  AutoAimExtraAngle
    {"Laser",      "3",          "12"},
    {"Projectile", "4",          "20"},
    {"Shotgun",    "4",          "16"},
    {"Minigun",    "5",          "20"},
    {"Plasma",     "5",          "20"},
    {"Missile",    "3",          "20"},
    {"Rocket",     "5",          "20"},
}
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Return of Maglock",
["MOD_AUTHOR"]    = "Exosolar & Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {

                    }
                },
            }
        },
    },
}

local DefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i=1,#Weapon_Changes do
    local Weapon             = Weapon_Changes[i][1]
    local AutoAimAngle       = Weapon_Changes[i][2]
    local AutoAimExtraAngle  = Weapon_Changes[i][3]
    
    
    DefaultReality[#DefaultReality +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {Weapon, "GcShipWeaponData"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"AutoAimAngle",       AutoAimAngle},
            {"AutoAimExtraAngle",  AutoAimExtraAngle},
            {"ShowOverheatSwitch", "false"},
        }
    }
end