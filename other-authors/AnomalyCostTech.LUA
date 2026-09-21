NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PM_AnomalyCostTech.pak",
["MOD_AUTHOR"]    = "Phantom",
["LUA_AUTHOR"]    = "Phantom",
["NMS_VERSION"]   = "7.3",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NexusRecipeCostNaniteMultiplier", "1250"} --250
							}
						},	
                    }						
                },	
				{
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "450"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JUMP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_MIDAIR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2300"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_HOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_COLD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_TOX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "PRESSURE_SUIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1600"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUMMON_SUIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "3200"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_REFINER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1800"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_REFINER2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2900"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "POWERGLOVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "400"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATERJET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1750"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_WATERENERGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1200"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "450"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1550"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_TRANSLATE3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2900"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_ROCKET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "450"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FISH_SKIFF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "450"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_UNIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1750"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSEFUEL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2300"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSESPEED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2300"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPDRIFT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2300"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHCHARGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2300"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WATER_LANDER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1200"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HDRIVEBOOST1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "400"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HDRIVEBOOST2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HDRIVEBOOST3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "HDRIVEBOOST4"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1000"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_QUICKWARP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1200"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "CARGOSHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1200"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPSHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "425"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_ROCKETS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "250"} 
                            }
						},		
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "375"} 
                            }
						},								
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSCAN_ECON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSCAN_COMBAT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "750"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPLAS1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPSHOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1800"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPMINIGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPMINI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPPLASMA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPBLOB"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "20"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "40"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HDRIVEBOOST3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "60"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "20"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "40"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "60"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_HACCESS4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "60"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "25"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_SCANNER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "20"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_MEGAWARP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "20"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "F_LIFESUPP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "20"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SURVEY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1600"} 
                            }
						},	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TERRAINEDITOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "250"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "GROUND_SHIELD"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "400"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "STEALTH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "400"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCOPE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "400"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "STRONGLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "375"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_MINER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2300"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BOLT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "450"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BOLTBOUNCE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "450"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT_SM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LASER_XO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TERRAIN_GREN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "STUN_GREN"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "750"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1250"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAIL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_RAIL_STUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1250"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_SMGBOUNCE"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "900"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SMG_DOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "4400"} 
                            }
                        },			
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1250"}
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_CANNON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_STUNDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUN_LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "800"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GRIP1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "50"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GRIP2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "50"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GRIP3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "50"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EXO_PROT_HOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EXO_PROT_COLD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "EXO_PROT_TOX"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EXO_PROT_RAD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "EXO_RECHARGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "EXO_REFINER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2400"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_SCAN1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1050"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_SCAN2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_BOOST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LASER1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "900"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LASER1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1050"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_GUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1050"} 
                            }
                        },	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_FLAME"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2400"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1250"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SUB_LASER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2250"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_MINER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1950"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_BINOCS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "50"} 
                            }
                        },	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SUB_RECHARGE"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1750"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_FUEL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SCAN"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "900"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_LASER1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1050"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_GUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1050"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_MINER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1050"} 
                            }
                        },		
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_PILOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2400"} 
                            }
                        },	
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_L_ARM"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2500"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_R_ARM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2500"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_LEGS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2500"} 
                            }
                        },	
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_L_ARM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2500"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_R_ARM"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "2500"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_LEGS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2500"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_HEAD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2400"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPJUMP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_LAUNCHER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_HDRIVE"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1500"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPSHLD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "850"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPSHOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPMINI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPBLOB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SCAN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_LASER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "600"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_BOLT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_GRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_T_GREN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"ID", "T_RAIL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "800"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_SHOTGUN"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "800"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_CANNON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_ENERGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_JET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_HAZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_UNW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_RAD"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1000"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_TOX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_COLDPROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_HOTPROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_EXGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_EXLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_BOOST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_EXENG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_SUB"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1000"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SUBGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "A_SHIPJUMP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "A_LAUNCH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "500"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "A_HDRIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1500"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "A_SHIPSHLD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "600"} 
                            }
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"ID", "A_SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "A_SHIPLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "850"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_MCGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_MFIRE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_MCLAS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},		
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_MCENG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},								
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_HYP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_SPEED"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "1000"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_FUEL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_TRADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_COM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_FR_MINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "1000"} 
                            }
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SENTSUIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "750"} 
                            }
                        },	
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "T_SENTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FragmentCost", "2000"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "T_ROBOSUIT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FragmentCost", "750"} 
                            }							
                        },	
                    }						
                },
            }
        }
    }
}