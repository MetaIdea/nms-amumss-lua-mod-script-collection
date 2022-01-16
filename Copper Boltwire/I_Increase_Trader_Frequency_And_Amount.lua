
--[[ Summery Description:
N/A
]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]	= "I_Increase_Trader_Frequency_And_Amount.pak",
    ["MOD_DESCRIPTION"]	= "More traders at stations and trade outposts",
    ["MOD_AUTHOR"]		= "Gumsk",
    ["NMS_VERSION"]		= "3.75",
    ["MODIFICATIONS"]	=
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {   
                        {
                            ["PRECEDING_KEY_WORDS"] = {"OutpostSpawns","Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",3},
                                {"y",3},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TraderSpawns","Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",2},
                                {"y",2},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FillUpOutposts","True"},					--False;Needed
                                {"MaxNumActiveTraders",30},					--15;Needed
                                {"SpaceStationTraderRequestTime",1},		--20
                                {"TraderArriveSpeed",1000},					--300
                                {"TraderArriveTime",1},						--3;Mild impact
                                {"ShipSpawnStationRadius",1000},			--2000
                                {"DockWaitMinTime",15},						--20;Cycles ships faster
                                {"DockWaitMaxTime",30},						--60;Cycles ships faster
                            },
                        },
                    }
                },
            }
        }
    }
}