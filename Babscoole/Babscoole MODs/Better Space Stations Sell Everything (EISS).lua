--Quantity of products & substances.

MinProductQuantity=99999
MaxProductQuantity=99999
MinSubstanceQuantity=99999
MaxSubstanceQuantity=99999

--YOU CAN EDIT THIS SECTION, IF YOU WANT TO MODIFY PRODUCT & SUBSTANCE LISTS
Products = {"TRA_COMMODITY1","TRA_COMMODITY2","TRA_COMMODITY3","TRA_COMMODITY4","TRA_COMMODITY5","TRA_EXOTICS1","TRA_EXOTICS2","TRA_EXOTICS3","TRA_EXOTICS4","TRA_EXOTICS5","TRA_ALLOY1","TRA_ALLOY2","TRA_ALLOY3","TRA_ALLOY4","TRA_ALLOY5","TRA_ENERGY1","TRA_ENERGY2","TRA_ENERGY3","TRA_ENERGY4","TRA_ENERGY5","TRA_MINERALS1","TRA_MINERALS2","TRA_MINERALS3","TRA_MINERALS4","TRA_MINERALS5","TRA_COMPONENT1","TRA_COMPONENT2","TRA_COMPONENT3","TRA_COMPONENT4","TRA_COMPONENT5","TRA_TECH1","TRA_TECH2","TRA_TECH3","TRA_TECH4","TRA_TECH5","PRODFUEL1","PRODFUEL2","POWERCELL","SHIPCHARGE","SIGNALCHARGE","HYDRALIC","MAGNET","MECH_PROD","COMPUTER","MIRROR","TECH_COMP","CASING","NANOTUBES","CARBON_SEAL","MICROCHIP","JELLY","LAUNCHFUEL","SUBFUEL","GRENFUEL1","AMMO","AM_HOUSING","ANTIMATTER","HYPERFUEL1","HYPERFUEL2","QUAD_PROD","WALKER_PROD","WALKER_PROD_2","WALKER_PROD_3","WALKER_PROD_4","BIO","GEODE_LAND","GEODE_CAVE","GEODE_CRYSTAL","GEODE_SPACE","GEODE_ASTEROID","GEODE_RARE","SACVENOM","GRAVBALL","ALBUMENPEARL","FIENDCORE","STORM_CRYSTAL","CLAMPEARL","VENTGEM","FISHCORE","EYEBALL","CAVECUBE","ALLOY1","ALLOY2","ALLOY3","ALLOY4","ALLOY5","ALLOY6","ALLOY7","ALLOY8","WAR_CURIO3","EXP_CURIO3","NAV_DATA","NAV_DATA_DROP","MIND_ARC","MP_REP_PART1","MP_REP_PART1B","MP_REP_PART1C","MP_REP_PART2","MP_REP_PART2B","MP_REP_PART2C","MP_REP_PART3","MP_REP_PART3B","MP_REP_PART3C","SOUL_ENGINE","FRIGATE_FUEL_1","FRIGATE_FUEL_2","FRIGATE_FUEL_3","FRIG_BOOST_TRA","FRIG_BOOST_EXP","FRIG_BOOST_MIN","FRIG_BOOST_COM","FRIG_BOOST_SPD","NIPNIPBUDS","TRA_CURIO1","TRA_CURIO2","WAR_CURIO1","WAR_CURIO2","EXP_CURIO1","EXP_CURIO2","FARMPROD1","FARMPROD2","FARMPROD3","FARMPROD4","FARMPROD5","FARMPROD6","FARMPROD7","FARMPROD8","FARMPROD9","ILLEGAL_PROD1","ILLEGAL_PROD2","ILLEGAL_PROD3","ILLEGAL_PROD4","ILLEGAL_PROD5","ILLEGAL_PROD6","ILLEGAL_PROD7","ILLEGAL_PROD8","REACTION1","REACTION2","REACTION3","COMPOUND1","COMPOUND2","COMPOUND3","COMPOUND4","COMPOUND5","COMPOUND6","MEGAPROD1","MEGAPROD2","MEGAPROD3","ULTRAPROD1","ULTRAPROD2","ATLAS_STONE","ATLAS_SEED_1","ATLAS_SEED_2","ATLAS_SEED_3","ATLAS_SEED_4","ATLAS_SEED_5","ATLAS_SEED_6","ATLAS_SEED_7","ATLAS_SEED_8","ATLAS_SEED_9","ATLAS_SEED_10","S10_ATLAS_SEED1","S10_ATLAS_SEED2","S10_ATLAS_SEED3","S10_ATLAS_SEED4","S10_ATLAS_SEED5","S10_FRAGMENT","HEXCORE","BIOSHIP_COMP1","BIOSHIP_COMP2","BIOSHIP_COMP3","BIOSHIP_COMP4","BIOSHIP_COMP5","BP_SALVAGE","FRIG_TOKEN","FACT_TOKEN","SUIT_INV_TOKEN","WEAP_INV_TOKEN","SHIP_INV_TOKEN","ALIEN_INV_TOKEN","FREI_INV_TOKEN","ALIEN_TECHBOX","POLICE_TOKEN","ANY_FISH","ANY_FISH_COOKED","ANY_FISH_RAW","FOOD_P_LUSHWILD","FOOD_P_LUSHFARM","FOOD_P_HOTWILD","FOOD_P_HOTFARM","FOOD_P_COLDWILD","FOOD_P_COLDFARM","FOOD_P_TOXWILD","FOOD_P_TOXFARM","FOOD_P_RADWILD","FOOD_P_RADFARM","FOOD_P_DUSTWILD","FOOD_P_DUSTFARM","FOOD_P_GLITCH","FOOD_P_ALL1","FOOD_P_ALL2","FOOD_P_ALL3","FOOD_P_CAVE","FOOD_P_WATER","FOOD_P_POOP","FOOD_P_DEATH","FOOD_P_STELLAR","FOOD_M_BALL","FOOD_M_BEETLE","FOOD_M_BLOB","FOOD_M_BONE","FOOD_M_CAT","FOOD_M_COW","FOOD_M_CRAB","FOOD_M_DIGGER","FOOD_M_DIPLO","FOOD_M_DRILL","FOOD_M_FIEND","FOOD_M_FISH","FOOD_M_FLYER","FOOD_M_GEK","FOOD_M_MEAT","FOOD_M_MOLE","FOOD_M_REX","FOOD_V_BLOB","FOOD_V_BONE","FOOD_V_CAT","FOOD_V_COW","FOOD_V_CRAB","FOOD_V_DIPLO","FOOD_V_EGG","FOOD_V_FLYER","FOOD_V_GEK","FOOD_V_MILK","FOOD_V_MOLE","FOOD_V_REX","FOOD_V_ROBOT","FOOD_V_STRIDER","FISHBAIT_1","FISHBAIT_2","FISHBAIT_3","FISHBAIT_DAY","FISHBAIT_NIGHT","FISHBAIT_STORM","ARTIFACT_KEY","TRIDENT_KEY","LOG_KEY","STATION_KEY","REP_TOKEN","ACCESS1","ACCESS2","ACCESS3","REPAIRKIT","SCRAP_GOODS","SCRAP_TECH","SCRAP_WEAP","SENTINEL_LOOT","ROGUE_TECHBOX","ROGUE_INVBOX","ROGUE_CLASSBOX","ROGUE_GUNBOX","ROGUE_SGUNBOX","ROGUE_SMARTBOX","ROGUE_HAZBOX","ROGUE_STARTBOX","ROGUE_CARBOX","ROGUE_KEY","ROGUE_CRAFTBOX","ROGUE_G_STONE1","ROGUE_G_STONE2","ROGUE_G_STONE3","ROGUE_G_STONE4","ROGUE_G_STONE5","POI_LOCATOR","ABAND_LOCATOR","S8_BEACON","ROGUE_BEACON","ROGUE_FINDER","PIRATE_MAPWHOLE","PIRATE_BEACON","PIRATE_INVITE","WHALE_BEACON","EXOTIC_BIOPROD","BASE_BEAMSTONE","BASE_BONEGARDEN","BASE_BUBBLECLUS","BASE_CONTOURPOD","BASE_ENGINEORB","BASE_HYDROPOD","BASE_MEDGEOMETR","BASE_SHARD","BASE_SHELLWHITE","BASE_STARJOINT","BASE_WEIRDCUBE","STARCHART_A","STARCHART_B","STARCHART_C","STARCHART_D","CHART_TREASURE","CHART_SETTLE","CHART_HIVE","S9_MAP1","S9_MAP2","S9_MAP3","S9_MAP4","S9_MYSTERY_ITEM","S9_PACK1","S9_PACK2","S9_PACK3","S9_PACK4","SPIDER_PROD","DRONE_SHARD","DRONE_SALVAGE","CHART_ROBOT","S10_ROBO_HEAD","S10_ROBO_BODY","S10_ROBO_ARMS","S10_ROBO_CORE","S10_ROBO_LEGS","S10_SOUL","S12_POI_SEED1","S12_POI_SEED2","S12_POI_SEED3","S12_POI_SEED4","S15_MESSAGE0","S15_MESSAGE1","S15_MESSAGE2","S15_MESSAGE3","S15_MESSAGE4","F_BOTTLE","SHIPBRAIN_CLEAN","MYSTERY_BEACON","SENTFREI_PROD","GAS_BRAIN_LOC","STAFF_CORE1","STAFF_CORE2","STAFF_CORE3","STAFF_CORE4","STAFF_CORE5","STAFF_CORE6","STAFF_HEAD1","STAFF_HEAD2","STAFF_HEAD3","STAFF_HEAD4A","STAFF_HEAD4B","STAFF_HEAD5","STAFF_HEAD6","STAFF_PART_A","STAFF_PART_B","STAFF_PART_C","STAFF_POLE1","STAFF_POLE2","STAFF_POLE3","STAFF_POLE4","STAFF_POLE5","STAFF_POLE6","WORMBOOK","WORMCORE","WORMPROD","WORMSCROLL1","WORMSCROLL2","WORMSCROLL3","WORMSCROLL4","WORMSCROLL5","FIGHT_COCKAA","FIGHT_COCKAB","FIGHT_COCKAC","FIGHT_COCKAD","FIGHT_COCKAE","FIGHT_COCKB","FIGHT_COCKD","FIGHT_COCKE","FIGHT_COCKF","FIGHT_WINGA","FIGHT_WINGA_FI","FIGHT_WINGB","FIGHT_WINGB_FI","FIGHT_WINGBA","FIGHT_WINGBA_FI","FIGHT_WINGBB","FIGHT_WINGBB_FI","FIGHT_WINGBC","FIGHT_WINGBC_FI","FIGHT_WINGBD","FIGHT_WINGBD_FI","FIGHT_WINGD","FIGHT_WINGEA","FIGHT_WINGEA_FI","FIGHT_WINGEB","FIGHT_WINGEB_FI","FIGHT_WINGEC","FIGHT_WINGEC_FI","FIGHT_WINGED","FIGHT_WINGED_FI","FIGHT_WINGEE","FIGHT_WINGEE_FI","FIGHT_WINGEF","FIGHT_WINGEF_FI","FIGHT_WINGFC","FIGHT_WINGFC_FI","FIGHT_WINGFD","FIGHT_WINGFD_FI","FIGHT_WINGFE","FIGHT_WINGFE_FI","FIGHT_WINGG","FIGHT_WINGG_FI","FIGHT_WINGH","FIGHT_WINGH_FI","FIGHT_WINGHA","FIGHT_WINGHA_FI","FIGHT_WINGHB","FIGHT_WINGHB_FI","FIGHT_WINGHC","FIGHT_WINGHC_FI","FIGHT_WINGHD","FIGHT_WINGHD_FI","FIGHT_WINGI","FIGHT_WINGI_FI","FIGHT_WINGJLOW","FIGHT_WINGJMID","FIGHT_WINGJFULL","FIGHT_WINGKA","FIGHT_WINGKAA","FIGHT_WINGKBA","FIGHT_WINGKBB","FIGHT_WINGKBC","FIGHT_ENGIB","FIGHT_ENGIC","FIGHT_ENGID","DROPS_COCKA","DROPS_COCKB","DROPS_COCKC","DROPS_COCKE","DROPS_COCKF","DROPS_COCKG","DROPS_COCKH","DROPS_COCKS13","DROPS_ENGIA","DROPS_ENGIAA","DROPS_ENGIAB","DROPS_ENGIB","DROPS_ENGIBA","DROPS_ENGIBB","DROPS_ENGIC","DROPS_ENGIS13","DROPS_WINGEMP","DROPS_WINGAA","DROPS_WINGAAA","DROPS_WINGAAB","DROPS_WINGAAC","DROPS_WINGAAD","DROPS_WINGAAE","DROPS_WINGAAF","DROPS_WINGAAG","DROPS_WINGAAH","DROPS_WINGAAI","DROPS_WINGAB","DROPS_WINGABA","DROPS_WINGABB","DROPS_WINGABC","DROPS_WINGABD","DROPS_WINGABE","DROPS_WINGABF","DROPS_WINGABG","DROPS_WINGABH","DROPS_WINGABI","DROPS_WINGAC","DROPS_WINGACA","DROPS_WINGACB","DROPS_WINGACC","DROPS_WINGACD","DROPS_WINGACE","DROPS_WINGACF","DROPS_WINGACG","DROPS_WINGACH","DROPS_WINGACI","DROPS_WINGBA","DROPS_WINGBAA","DROPS_WINGBAA","DROPS_WINGBAB","DROPS_WINGBAA","DROPS_WINGBAC","DROPS_WINGBAD","DROPS_WINGBAE","DROPS_WINGBAF","DROPS_WINGBAG","DROPS_WINGBAH","DROPS_WINGBAI","DROPS_WINGBB","DROPS_WINGBBA","DROPS_WINGBBB","DROPS_WINGBBC","DROPS_WINGBBD","DROPS_WINGBBE","DROPS_WINGBBF","DROPS_WINGBBG","DROPS_WINGBBH","DROPS_WINGBBI","DROPS_WINGBC","DROPS_WINGBCA","DROPS_WINGBCB","DROPS_WINGBCC","DROPS_WINGBCD","DROPS_WINGBCE","DROPS_WINGBCF","DROPS_WINGBCG","DROPS_WINGBCH","DROPS_WINGBCI","DROPS_WINGCA","DROPS_WINGCAA","DROPS_WINGCAB","DROPS_WINGCAC","DROPS_WINGCAD","DROPS_WINGCAE","DROPS_WINGCAF","DROPS_WINGCAG","DROPS_WINGCAH","DROPS_WINGCAI","DROPS_WINGCB","DROPS_WINGCBA","DROPS_WINGCBB","DROPS_WINGCBC","DROPS_WINGCBD","DROPS_WINGCBE","DROPS_WINGCBF","DROPS_WINGCBG","DROPS_WINGCBH","DROPS_WINGCBI","DROPS_WINGCC","DROPS_WINGCCA","DROPS_WINGCCB","DROPS_WINGCCC","DROPS_WINGCCD","DROPS_WINGCCE","DROPS_WINGCCF","DROPS_WINGCCG","DROPS_WINGCCH","DROPS_WINGCCI","DROPS_WINGCD","DROPS_WINGCDA","DROPS_WINGCDB","DROPS_WINGCDC","DROPS_WINGCDE","DROPS_WINGCDF","DROPS_WINGCDG","DROPS_WINGCDH","DROPS_WINGCDI","DROPS_WINGDA","DROPS_WINGDAX","DROPS_WINGDAA","DROPS_WINGDAB","DROPS_WINGDAH","DROPS_WINGDAI","DROPS_WINGDB","DROPS_WINGDBA","DROPS_WINGDBB","DROPS_WINGDBH","DROPS_WINGDBI","DROPS_WINGDBX","DROPS_WINGDBAX","DROPS_WINGDBBX","DROPS_WINGDBHX","DROPS_WINGDBIX","DROPS_WING1","DROPS_WING2","DROPS_WINGS13","SCIEN_COCKAA","SCIEN_COCKAAA","SCIEN_COCKABA","SCIEN_COCKACA","SCIEN_COCKAB","SCIEN_COCKAAB","SCIEN_COCKABB","SCIEN_COCKACB","SCIEN_COCKDA","SCIEN_COCKDB","SCIEN_WINGEMP","SCIEN_WINGA","SCIEN_WINGBA","SCIEN_WINGBB","SCIEN_WINGBC","SCIEN_WINGBD","SCIEN_WINGC","SCIEN_WINGDA","SCIEN_WINGDB","SCIEN_WINGDC","SCIEN_WINGDD","SCIEN_WINGE","SCIEN_WINGF","SCIEN_WINGFA","SCIEN_WINGG","SCIEN_WINGGA","SCIEN_WINGHA","SCIEN_WINGHB","SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA","SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL","SCIEN_WINGT_A","SCIEN_WINGT_C","SCIEN_WINGT_F","SCIEN_WINGT_G","SCIEN_WINGT_I","SAIL_BODYA","SAIL_BODYB","SAIL_BODYC","SAIL_BODYD","SAIL_BODYE","SAIL_BODYF","SAIL_SAILA","SAIL_SAILB","SAIL_SAILC","SAIL_WINGAA","SAIL_WINGAB","SAIL_WINGAC","SAIL_WINGAD","SAIL_WINGAE","SAIL_WINGBA","SAIL_WINGBB","SAIL_WINGBC","SAIL_WINGBD","SAIL_WINGBE","SAIL_WINGCA","SAIL_WINGCB","SAIL_WINGCC","SAIL_WINGCD","SAIL_WINGCE","SAIL_WINGDA","SAIL_WINGDB","SAIL_WINGDC","SAIL_WINGDD","SAIL_WINGDE","SAIL_WINGEA","SAIL_WINGEB","SAIL_WINGEC","SAIL_WINGED","SAIL_WINGEE","SAIL_WINGFA","SAIL_WINGFB","SAIL_WINGFC","SAIL_WINGFD","SAIL_WINGFE","SPOOK_JUICE","PORTAL_JUICE","MESSAGE_JUICE","BOSS_JUICE"}
Substances = {"FUEL1","FUEL2","OXYGEN","LAUNCHSUB","LAUNCHSUB2","ROCKETSUB","LAND1","LAND2","LAND3","SAND1","CATALYST1","CATALYST2","CAVE1","CAVE2","WATER1","WATER2","WATERPLANT","YELLOW2","RED2","GREEN2","BLUE2","STELLAR2","LUSH1","DUSTY1","TOXIC1","RADIO1","COLD1","HOT1","LAVA1","CREATURE1","ROBOT1","ROBOT2","ASTEROID1","ASTEROID2","ASTEROID3","GAS1","GAS2","GAS3","EX_YELLOW","EX_RED","EX_GREEN","EX_BLUE","PLANT_TOXIC","PLANT_SNOW","PLANT_RADIO","PLANT_DUST","PLANT_HOT","PLANT_LUSH","PLANT_CAVE","PLANT_WATER","PLANT_POOP","SPACEGUNK1","SPACEGUNK2","SPACEGUNK3","SPACEGUNK4","SPACEGUNK5","SPECIAL_POOP","SUNGOLD","SOULFRAG","AF_METAL","BUI_SCRAP","WORMDUST","TIMEDUST","TIMEMILK","TECHFRAG","SQUIDFRAG"}
WeapTechSpecialist = {"U_SCANNER1","U_SCANNER2","U_SCANNER3","U_SCANNER4","U_SCANNERX","U_LASER1","U_LASER2","U_LASER3","U_LASER4","U_LASERX","U_BOLT1","U_BOLT2","U_BOLT3","U_BOLT4","U_BOLTX","U_GRENADE1","U_GRENADE2","U_GRENADE3","U_GRENADE4","U_GRENADEX","U_TGRENADE1","U_TGRENADE2","U_TGRENADE3","U_TGRENADE4","U_TGRENADEX","U_RAIL1","U_RAIL2","U_RAIL3","U_RAIL4","U_RAILX","U_SHOTGUN1","U_SHOTGUN2","U_SHOTGUN3","U_SHOTGUN4","U_SHOTGUNX","U_SMG1","U_SMG2","U_SMG3","U_SMG4","U_SMGX","U_CANNON1","U_CANNON2","U_CANNON3","U_CANNON4","U_CANNONX","U_SENTGUN"}
SuitTechSpecialist = {"U_ENERGY1","U_ENERGY2","U_ENERGY3","U_ENERGYX","U_SHIELDBOOST1","U_SHIELDBOOST2","U_SHIELDBOOST3","U_SHIELDBOOST4","U_SHIELDBOOSTX","U_JETBOOST1","U_JETBOOST2","U_JETBOOST3","U_JETBOOST4","U_JETBOOSTX","U_COLDPROT1","U_COLDPROT2","U_COLDPROT3","U_HOTPROT1","U_HOTPROT2","U_HOTPROT3","U_TOX1","U_TOX2","U_TOX3","U_RAD1","U_RAD2","U_RAD3","U_UNW1","U_UNW2","U_UNW3","U_HAZARDX","U_ROBOSUIT","U_SENTSUIT"}
ShipTechSpecialist = {"U_LAUNCH1","U_LAUNCH2","U_LAUNCH3","U_LAUNCH4","U_LAUNCHX","U_PULSE1","U_PULSE2","U_PULSE3","U_PULSE4","U_PULSEX","U_HYPER1","U_HYPER2","U_HYPER3","U_HYPER4","U_HYPERX","U_SHIPSHIELD1","U_SHIPSHIELD2","U_SHIPSHIELD3","U_SHIPSHIELD4","U_SHIPSHIELDX","U_SHIPGUN1","U_SHIPGUN2","U_SHIPGUN3","U_SHIPGUN4","U_SHIPGUNX","U_SHIPLAS1","U_SHIPLAS2","U_SHIPLAS3","U_SHIPLAS4","U_SHIPLASX","U_SHIPSHOT1","U_SHIPSHOT2","U_SHIPSHOT3","U_SHIPSHOT4","U_SHIPSHOTX","U_SHIPMINI1","U_SHIPMINI2","U_SHIPMINI3","U_SHIPMINI4","U_SHIPMINIX","U_SHIPBLOB1","U_SHIPBLOB2","U_SHIPBLOB3","U_SHIPBLOB4","U_SHIPBLOBX","AP_PULSE1","AP_PULSE2","AP_PULSE3","AP_PULSE4","AP_LAUNCH1","AP_LAUNCH2","AP_LAUNCH3","AP_LAUNCH4","AP_HYPER1","AP_HYPER2","AP_HYPER3","AP_HYPER4","AP_SHIPSHIELD1","AP_SHIPSHIELD2","AP_SHIPSHIELD3","AP_SHIPSHIELD4","AP_SHIPGUN1","AP_SHIPGUN2","AP_SHIPGUN3","AP_SHIPGUN4","AP_SHIPLAS1","AP_SHIPLAS2","AP_SHIPLAS3","AP_SHIPLAS4","U_FR_HYP1","U_FR_HYP2","U_FR_HYP3","U_FR_HYP4","U_FR_SPE1","U_FR_SPE2","U_FR_SPE3","U_FR_SPE4","U_FR_FUEL1","U_FR_FUEL2","U_FR_FUEL3","U_FR_FUEL4","U_FR_COM1","U_FR_COM2","U_FR_COM3","U_FR_COM4","U_FR_TRA1","U_FR_TRA2","U_FR_TRA3","U_FR_TRA4","U_FR_EXP1","U_FR_EXP2","U_FR_EXP3","U_FR_EXP4","U_FR_MINE1","U_FR_MINE2","U_FR_MINE3","U_FR_MINE4","SHIP_CORE_C","SHIP_CORE_B","SHIP_CORE_A","SHIP_CORE_S"}
VehicleTechSpecialist = {"U_EXOBOOST1","U_EXOBOOST2","U_EXOBOOST3","U_EXOBOOST4","U_EXOGUN1","U_EXOGUN2","U_EXOGUN3","U_EXOGUN4","U_EXOLAS1","U_EXOLAS2","U_EXOLAS3","U_EXOLAS4","U_EXO_ENG1","U_EXO_ENG2","U_EXO_ENG3","U_EXO_ENG4","U_EXO_SUB1","U_EXO_SUB2","U_EXO_SUB3","U_EXO_SUB4","U_EXO_SUBGUN1","U_EXO_SUBGUN2","U_EXO_SUBGUN3","U_EXO_SUBGUN4","U_MECHFLAME2","U_MECHFLAME3","U_MECHFLAME4","U_MECHGUN2","U_MECHGUN3","U_MECHGUN4","U_MECHLAS2","U_MECHLAS3","U_MECHLAS4","U_MECH_ENG2","U_MECH_ENG3","U_MECH_ENG4"}

--EDITABLE SECTION ENDS HERE

function GetDefaultReality(ID_NAME)
return
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="]] .. ID_NAME .. [[" />
        </Property>
]]
end

DEFAULTREALITY_ADDING_Products = {}
DEFAULTREALITY_ADDING_Substances = {}
DEFAULTREALITY_ADDING_WeapTechSpecialist = {}
DEFAULTREALITY_ADDING_SuitTechSpecialist = {}
DEFAULTREALITY_ADDING_ShipTechSpecialist = {}
DEFAULTREALITY_ADDING_VehicleTechSpecialist = {}


for i=1,#Products,1 do
    table.insert(DEFAULTREALITY_ADDING_Products,GetDefaultReality(Products[i]))
end
for i=1,#Substances,1 do
    table.insert(DEFAULTREALITY_ADDING_Substances,GetDefaultReality(Substances[i]))
end
for i=1,#WeapTechSpecialist,1 do
    table.insert(DEFAULTREALITY_ADDING_WeapTechSpecialist,GetDefaultReality(WeapTechSpecialist[i]))
end
for i=1,#SuitTechSpecialist,1 do
    table.insert(DEFAULTREALITY_ADDING_SuitTechSpecialist,GetDefaultReality(SuitTechSpecialist [i]))
end
for i=1,#ShipTechSpecialist,1 do
    table.insert(DEFAULTREALITY_ADDING_ShipTechSpecialist,GetDefaultReality(ShipTechSpecialist[i]))
end
for i=1,#VehicleTechSpecialist,1 do
    table.insert(DEFAULTREALITY_ADDING_VehicleTechSpecialist,GetDefaultReality(VehicleTechSpecialist[i]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Space Stations Sell Everything (EISS).pak",
["MOD_AUTHOR"]      = "MasterNetra & musty123 & Babscoole",
["LUA_AUTHOR"]      = "Babscoole & MasterNetra",
["NMS_VERSION"]     = "5.22",
["MOD_DESCRIPTION"] = "This mod adds the most of the items in game to the space station vendors.(Less Food Version)",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "CASING"},
                            ["SEC_SAVE_TO"] = "GetProd",
                        },
                        {--Remove all optional products & substances found in shops.
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"TradeSettings", "SpaceStation",          "OptionalProducts"},
                                {"TradeSettings", "SpaceStation",          "OptionalSubstances"},
                                {"TradeSettings", "Shop",                  "OptionalProducts"},
                                {"TradeSettings", "Shop",                  "OptionalSubstances"},
                                {"TradeSettings", "TechShop",              "OptionalProducts"},
                                {"TradeSettings", "ShipTechSpecialist",    "OptionalProducts"},
                                {"TradeSettings", "SuitTechSpecialist",    "OptionalProducts"},
                                {"TradeSettings", "WeapTechSpecialist",    "OptionalProducts"},
                                {"TradeSettings", "VehicleTechSpecialist", "OptionalProducts"},
                                {"TradeSettings", "SpaceStation",          "AlwaysPresentProducts"},
                                {"TradeSettings", "SpaceStation",          "AlwaysPresentSubstances"},
                                {"TradeSettings", "Shop",                  "AlwaysPresentProducts"},
                                {"TradeSettings", "TechShop",              "AlwaysPresentProducts"},
                                {"TradeSettings", "ShipTechSpecialist",    "AlwaysPresentProducts"},
                                {"TradeSettings", "SuitTechSpecialist",    "AlwaysPresentProducts"},
                                {"TradeSettings", "WeapTechSpecialist",    "AlwaysPresentProducts"},
                            },
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {--Clear never sellable\offered item table(s).
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"NeverSellableItems"},
                                {"NeverOfferedForSale"},
                            },
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {--Add items & substances to shops.
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
                                {"TradeSettings", "Shop",         "AlwaysPresentProducts"},
                                {"TradeSettings", "TechShop",     "AlwaysPresentProducts"},
                            },
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_Products)
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"TradeSettings", "SpaceStation", "AlwaysPresentSubstances"},
                                {"TradeSettings", "Shop",         "AlwaysPresentSubstances"},
                                {"TradeSettings", "TechShop",     "AlwaysPresentSubstances"},
                            },
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_Substances)
                        },
                        {-- Ship Tech Specialist --
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "ShipTechSpecialist", "AlwaysPresentProducts"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_ShipTechSpecialist)
                        },
                        {-- Suit Tech Specialist --
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "AlwaysPresentProducts"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_SuitTechSpecialist)
                        },
                        {-- Weapon Tech Specialist --
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "WeapTechSpecialist", "AlwaysPresentProducts"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_WeapTechSpecialist)
                        },
                        {-- Vehicle Tech Specialist --
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "VehicleTechSpecialist", "AlwaysPresentProducts"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = table.concat(DEFAULTREALITY_ADDING_VehicleTechSpecialist)
                        },
                        {--Amount of Products available
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    MinProductQuantity},
                                {"Average", MinProductQuantity},
                                {"Wealthy", MinProductQuantity},
                                {"Pirate",  MinProductQuantity},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    MaxProductQuantity},
                                {"Average", MaxProductQuantity},
                                {"Wealthy", MaxProductQuantity},
                                {"Pirate",  MaxProductQuantity},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfSubstanceAvailable"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    MinSubstanceQuantity},
                                {"Average", MinSubstanceQuantity},
                                {"Wealthy", MinSubstanceQuantity},
                                {"Pirate",  MinSubstanceQuantity},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfSubstanceAvailable"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    MaxSubstanceQuantity},
                                {"Average", MaxSubstanceQuantity},
                                {"Wealthy", MaxSubstanceQuantity},
                                {"Pirate",  MaxSubstanceQuantity},
                            }
                        },
                    },
                },
            },
        },
    },
}