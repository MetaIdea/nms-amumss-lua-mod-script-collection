Author = "Jaggid Edje"
ModName = "BetterBattery"
ModNameSub = "JE"
BaseDescription = "Adjusts ion battery, starship battery and life gel so they give full recharge on all difficulties."
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"

-- Original game settings in comments
ChargeAmount = 160     -- Default is 80 for battery, 100 for gel and Starshield battery
LFChargeAmount = 600 	-- (Starship) Launch Fuel Default is 400
WCChargeAmount = 24  	-- Warp Cell Default is 24
WHCChargeAmount = 240 	-- Warph HyperCore Default is 240
GFChargeAmount = 40		-- Grenade Fuel Default is 20
SFChargeAmount = 600	-- Nautilon Subfuel default is 400
DSChargeAmount = 300	-- Drone Shard (radiant shard)  default is 200


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POWERCELL",}, -- Ion Battery
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", ChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPCHARGE",}, -- Starshield Battery
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", ChargeAmount}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PRODFUEL2",}, -- Life Gel
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", ChargeAmount}
                            }
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LAUNCHFUEL",}, -- Starship Launch Fuel
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", LFChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "HYPERFUEL1",}, -- Warp Core
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", WCChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "HYPERFUEL2",}, -- Warp Hypercore
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", WHCChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRENFUEL1",}, -- Grenade Fuel
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", GFChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUBFUEL",}, -- Nautilon Fuel
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", SFChargeAmount}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONE_SHARD",}, -- Radiant Crystal
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeValue", DSChargeAmount}
                            }
                        }
                    }
                }
            }
        }
    }
}