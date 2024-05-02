----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_TECHNOLOGY"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for technology modules changes. Modifies METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_TECHNOLOGYTABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

FUNCTION_SECTION = ""

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   	= METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_TECHNOLOGYTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --------------------------------------------------
                        -- modifications to vanilla tech modules
                        --------------------------------------------------

                        -- basic ship tech - reset Core tech flag to allow dismantling
                        {   ["SKW"] = {{"ID","SHIPJUMP1",},{"ID","HYPERDRIVE",},{"ID","LAUNCHER",},{"ID","SHIPSHIELD",},},    ["VCT"] = {{"Core","False",},},   },
                            
                        -- Pulse Engine - add crystal recharge option // Photonix Core - set research cost
                        {   ["SKW"] = {"ID","SHIPJUMP1",},        ["PKW"] = "ChargeBy",     ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x10.xml"><Property name="Value" value="ITEM_CRYSTAL" /></Property>]],                        },
                        {   ["SKW"] = {"ID","PHOTONIX_CORE",},    ["VCT"] = {{"FragmentCost",1,},},                                                             },
                           
                        -- Waveform Engine - set research cost, reset Core tech flag, enable wiki entry, change description, add crystal recharge option
                        {   ["SKW"] = {"ID","SHIPJUMP_SPEC",},    ["VCT"] = {{"Core","False",},{"FragmentCost",3,},{"WikiEnabled","True"},},                    },
                        {   ["SKW"] = {"ID","SHIPJUMP_SPEC","Description","VariableSizeString.xml",},     ["VCT"] = {{"Value","TEXT_NEWDESC_SHIPJUMP",},},      },
                        {   ["SKW"] = {"ID","SHIPJUMP_SPEC",},    ["PKW"] = "ChargeBy",     ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x10.xml"><Property name="Value" value="ITEM_CRYSTAL" /></Property>]],                        },
                            
                        -- Frameshift Catapult - set research cost, reset Core tech flag, enable wiki entry, change description
                        {   ["SKW"] = {"ID","HYPERDRIVE_SPEC",},  ["VCT"] = {{"Core","False",},{"FragmentCost",2,},{"WikiEnabled","True"},},                    },
                        {   ["SKW"] = {"ID","HYPERDRIVE_SPEC","Description","VariableSizeString.xml",},   ["VCT"] = {{"Value","TEXT_NEWDESC_HYPERDRIVE",},}     },

                        -- Advanced Launch System - set research cost, reset Core tech flag, enable wiki entry, change description
                        {   ["SKW"] = {"ID","LAUNCHER_SPEC",},    ["VCT"] = {{"Core","False",},{"FragmentCost",2,},{"WikiEnabled","True"},},                    },
                        {   ["SKW"] = {"ID","LAUNCHER_SPEC","Description","VariableSizeString.xml",},   ["VCT"] = {{"Value","TEXT_NEWDESC_LAUNCHER",},},        },
                            
                        -- Singularity Engine - set research cost, change the desctiption
                        {   ["SKW"] = {"ID","F_MEGAWARP",},       ["VCT"] = {{"FragmentCost",3,},},                                                             },
                        {   ["SKW"] = {"ID","F_MEGAWARP","Description","VariableSizeString.xml",},    ["VCT"] = {{"Value","TEXT_NEWDESC_MEGAWARP",},},          },
                            
                        -- two expedition trails - set research cost
                        {   ["SKW"] = {{"ID","T_SHIP_PIRATE",},{"ID","T_SHIP_ROGUE",},},    ["VCT"] = {{"FragmentCost",2,},},                                   },
                          
                        --------------------------------------------------
                        -- new tech modules - added using functions below
                        --------------------------------------------------
                    },
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- functions for EXML table
----------------------------------------------------------------------------------------------------

function GetTemplate(id) return
{   ["SKW"] = {"ID",id,},   ["SEC_SAVE_TO"] = FUNCTION_SECTION,   }
end

function ApplyVCT(vct) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = vct,    }
end

function ChangeText(text,value) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {text,"VariableSizeString.xml",},   ["VCT"] = {{"Value",value,},},    }
end

function ChangeCrafting(slot,id,type,amount) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "GcTechnologyRequirement.xml",      ["SECTION_ACTIVE"] = slot,    ["VCT"] = {{"ID",id,},{"InventoryType",type,},{"Amount",amount,},},   }
end

function AddCrafting(id,type,amount) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Requirements",   ["ADD"] = [[<Property value="GcTechnologyRequirement.xml"><Property name="ID" value="]]..id..[[" />
    <Property name="Type" value="GcInventoryType.xml"><Property name="InventoryType" value="]]..type..[[" /></Property><Property name="Amount" value="]]..amount..[[" /></Property>]]
}
end

function RemoveCrafting(slot) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "GcTechnologyRequirement.xml",    ["SECTION_ACTIVE"] = slot,    ["REMOVE"] = "SECTION",   }
end

function ChangeBaseStat(stat) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"BaseStat","GcStatsTypes.xml",},   ["VCT"] = {{"StatsType",stat,},},    }
end

function ChangeStatBonus(slot,stat,bonus,level) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "GcStatsBonus.xml",   ["SECTION_ACTIVE"] = slot,    ["VCT"] = {{"StatsType",stat},{"Bonus",bonus},{"Level",level},},    }
end

function AddStatBonus(stat,bonus,level) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "StatBonuses",    ["ADD"] = [[<Property value="GcStatsBonus.xml"><Property name="Stat" value="GcStatsTypes.xml">
    <Property name="StatsType" value="]]..stat..[[" /></Property><Property name="Bonus" value="]]..bonus..[[" /><Property name="Level" value="]]..level..[[" /></Property>]]
}
end

function RemoveStatBonuses() return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "StatBonuses",    ["CREATE_HOES"] = "TRUE",     }
end

function ChangeSingleCharging(id) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "ChargeBy",       ["VCT"] = {{"Value",id,},},   }
end

function AddModule() return
{   ["PKW"] = "Table",    ["SEC_ADD_NAMED"] = FUNCTION_SECTION,   }
end



--------------------------------------------------
-- main function to populate EXML table
--------------------------------------------------

function Technology_BuildChangeTable(exml)

  --------------------------------------------------
  -- multitool scanner
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_SCANNER"

  local VCT = 
  {
    {"ID","TECH_SCANNER",},
    {"Name","TEXT_TECH_SCANNER_N",},
    {"NameLower","TEXT_TECH_SCANNER_L",},
    {"Filename","TEXTURES/TECH/TOOL_SCANNER.DDS",},
    {"Name","TEXT_TECH_SCANNER_N",},
    {"R","0.101960786",},
    {"G","0.15294118",},
    {"B","0.2",},
    {"ChargeAmount","1",},
    {"ChargeMultiplier","1",},
    {"BuildFullyCharged","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_BUI_SCAN2"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_SCANNER_S"),
    ChangeText("Description","TEXT_TECH_SCANNER_D"),
    ChangeSingleCharging("STORM_CRYSTAL"),
    ChangeCrafting(1,"ITEM_PLATING","Product",4),
    ChangeCrafting(2,"ITEM_FRAGMENT","Product",1),
    ChangeCrafting(3,"ITEM_CIRCUIT","Product",1),
    RemoveStatBonuses(),
    AddModule(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- shield and weapons technologies
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- starship shield replacement
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_SHIELD"

  local VCT = 
  {
    {"ID","TECH_SHIELD",},
    {"Name","TEXT_TECH_SHIELD_N",},
    {"NameLower","TEXT_TECH_SHIELD_L",},
    {"Filename","TEXTURES/TECH/SHIELD.DDS",},
    {"R","0.12941177",},
    {"G","0.46666667",},
    {"B","0.78431374",},
    {"Core","False",},
    {"TechnologyCategory","AllShipsExceptAlien",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",1,},
  }
  
  local INSTRUCTIONS = 
  {
    GetTemplate("SHIPSHIELD"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_SHIELD_S"),
    ChangeText("Description","TEXT_TECH_SHIELD_D"),
    ChangeCrafting(1,"ASTEROID3","Substance",100),
    ChangeCrafting(2,"MIRROR","Product",3),
    ChangeStatBonus(2,"Ship_Armour_Shield_Strength",0.75,1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- photon cannon blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_PHOTON"

  local VCT = 
  {
    {"ID","TECH_PHOTON",},
    {"Name","TEXT_TECH_PHOTON_N",},
    {"NameLower","TEXT_TECH_PHOTON_L",},
    {"Filename","TEXTURES/TECH/PHOTON.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_SHIPGUN"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_PHOTON_S"),
    ChangeText("Description","TEXT_TECH_PHOTON_D"),
    ChangeCrafting(1,"STELLAR2","Substance",200),
    ChangeCrafting(2,"MAGNET","Product",4),
    ChangeCrafting(3,"TECH_COMP","Product",2),
    ChangeStatBonus(1,"Ship_Weapons_Guns_HeatTime",0.8,1),
    AddStatBonus("Ship_Weapons_Guns_Damage",64,3),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- cyclotron ballista blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_PLASMA"

  local VCT = 
  {
    {"ID","TECH_CYCLO",},
    {"Name","TEXT_TECH_CYCLO_N",},
    {"NameLower","TEXT_TECH_CYCLO_L",},
    {"Filename","TEXTURES/TECH/CYCLO.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_SHIPBLOB"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_CYCLO_S"),
    ChangeText("Description","TEXT_TECH_CYCLO_D"),
    ChangeCrafting(1,"BIO","Product",4),
    ChangeCrafting(2,"TECH_COMP","Product",2),
    AddCrafting("CAVE2","Substance",200),
    ChangeStatBonus(1,"Ship_Weapons_Guns_BulletsPerShot",4,3),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- phase beam blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_PHASE"

  local VCT = 
  {
    {"ID","TECH_PHASE",},
    {"Name","TEXT_TECH_PHASE_N",},
    {"NameLower","TEXT_TECH_PHASE_L",},
    {"Filename","TEXTURES/TECH/PHASE.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_SHIPLAS"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_PHASE_S"),
    ChangeText("Description","TEXT_TECH_PHASE_D"),
    ChangeCrafting(1,"COMPUTER","Product",2),
    ChangeCrafting(2,"TECH_COMP","Product",2),
    AddCrafting("SUNGOLD","Substance",200),
    ChangeStatBonus(1,"Ship_Weapons_Lasers_Damage",600,3),
    ChangeStatBonus(2,"Ship_Weapons_Lasers_HeatTime",0.01,1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- positron ejector blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_SHOTGUN"

  local VCT = 
  {
    {"ID","TECH_SHOTGUN",},
    {"Name","TEXT_TECH_SHOTGUN_N",},
    {"NameLower","TEXT_TECH_SHOTGUN_L",},
    {"Filename","TEXTURES/TECH/SHOTGUN.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_SHIPSHOT"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_SHOTGUN_S"),
    ChangeText("Description","TEXT_TECH_SHOTGUN_D"),
    ChangeCrafting(1,"HYDRALIC","Product",4),
    ChangeCrafting(2,"TECH_COMP","Product",2),
    AddCrafting("ASTEROID3","Substance",200),
    ChangeStatBonus(1,"Ship_Weapons_Guns_Dispersion",0.8,3),
    ChangeStatBonus(2,"Ship_Weapons_Guns_Rate",1.1,1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- rocket launcher blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_ROCKET"

  local VCT = 
  {
    {"ID","TECH_ROCKET",},
    {"Name","TEXT_TECH_ROCKET_N",},
    {"NameLower","TEXT_TECH_ROCKET_L",},
    {"Filename","TEXTURES/TECH/ROCKET.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_ROCKETS"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_ROCKET_S"),
    ChangeText("Description","TEXT_TECH_ROCKET_D"),
    ChangeCrafting(1,"CASING","Product",6),
    ChangeCrafting(2,"TECH_COMP","Product",2),
    AddCrafting("LAVA1","Substance",200),
    ChangeStatBonus(1,"Ship_Weapons_Guns_Scale",0.5,1),
    AddStatBonus("Ship_Weapons_Guns_Damage",650,3),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- sentinel cannon blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_SENTINEL"

  local VCT = 
  {
    {"ID","TECH_SENTINEL",},
    {"Name","TEXT_TECH_SENTINEL_N",},
    {"NameLower","TEXT_TECH_SENTINEL_L",},
    {"Filename","TEXTURES/TECH/SENTINEL.DDS",},
    {"R","0.101960786",},
    {"G","0.15294118",},
    {"B","0.2",},
    {"TechnologyCategory","RobotShip",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("UT_SHIPGUN"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_SENTINEL_S"),
    ChangeText("Description","TEXT_TECH_SENTINEL_D"),
    RemoveCrafting(3),
    ChangeCrafting(1,"COMPOUND5","Product",1),
    ChangeCrafting(2,"SPIDER_PROD","Product",3),
    ChangeStatBonus(1,"Ship_Weapons_Guns_Damage_Radius",1.01,1),
    AddStatBonus("Ship_Weapons_ShieldLeech",0.05,3),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- functional modules
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- item transfer
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_TRANSFER"

  local VCT = 
  {
    {"ID","TECH_TRANSFER",},
    {"Name","TEXT_TECH_TRANSFER_N",},
    {"NameLower","TEXT_TECH_TRANSFER_L",},
    {"Filename","TEXTURES/TECH/TRANSFER.DDS",},
    {"TechnologyRarity","Impossible",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("SHIP_TELEPORT"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_TRANSFER_S"),
    ChangeText("Description","TEXT_TECH_TRANSFER_D"),
    ChangeCrafting(1,"ROBOT1","Substance",200),
    ChangeCrafting(2,"ILLEGAL_PROD6","Product",5),
    ChangeStatBonus(1,"Ship_Teleport",950,1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- hyperdrive blueprint
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_HYPERDRIVE"

  local VCT = 
  {
    {"ID","TECH_HYPERDRIVE",},
    {"Name","TEXT_TECH_HYPERDRIVE_N",},
    {"NameLower","TEXT_TECH_HYPERDRIVE_L",},
    {"Filename","TEXTURES/TECH/HYPERDRIVE.DDS",},
    {"Level",1,},
    {"FragmentCost",3,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("HDRIVEBOOST3"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_HYPERDRIVE_S"),
    ChangeText("Description","TEXT_TECH_HYPERDRIVE_D"),
    ChangeCrafting(1,"POI_LOCATOR","Product",1),
    ChangeCrafting(2,"COMPUTER","Product",3),
    ChangeStatBonus(1,"Ship_Hyperdrive_JumpDistance",400,4),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- conflict + economy scanner combo
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_COMPUTER"

  local VCT = 
  {
    {"ID","TECH_COMPUTER",},
    {"Name","TEXT_TECH_COMPUTER_N",},
    {"NameLower","TEXT_TECH_COMPUTER_L",},
    {"Filename","TEXTURES/TECH/COMPUTER.DDS",},
    {"R","0.03529412",},
    {"G","0.36078432",},
    {"B","0.46666667",},
    {"Level",1,},
    {"TechnologyCategory","AllShipsExceptAlien",},
    {"TechnologyRarity","Impossible",},
    {"FocusLocator","",},
    {"FragmentCost",1,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("SHIPSCAN_ALIEN"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_COMPUTER_S"),
    ChangeText("Description","TEXT_TECH_COMPUTER_D"),
    ChangeCrafting(1,"FRIG_BOOST_TRA","Product",1),
    ChangeCrafting(2,"TECH_COMP","Product",3),
    AddCrafting("FRIG_BOOST_EXP","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- portal + archive locator
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_LOCATOR"

  local VCT = 
  {
    {"ID","TECH_LOCATOR",},
    {"Name","TEXT_TECH_LOCATOR_N",},
    {"NameLower","TEXT_TECH_LOCATOR_L",},
    {"Filename","TEXTURES/TECH/LOCATOR.DDS",},
    {"R","0.12941177",},
    {"G","0.46666667",},
    {"B","0.78431374",},
    {"Level",1,},
    {"TechnologyRarity","Impossible",},
    {"FocusLocator","",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("CARGOSHIELD"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_LOCATOR_S"),
    ChangeText("Description","TEXT_TECH_LOCATOR_D"),
    ChangeCrafting(1,"CAVE1","Substance",100),
    ChangeCrafting(2,"FARMPROD5","Product",1),
    ChangeCrafting(3,"TECH_COMP","Product",2),
    ChangeBaseStat("Ship_Scan"),
    ChangeStatBonus(1,"Ship_Scan",1,2),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- dissonant navigation unit
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_DISSONANT"

  local VCT = 
  {
    {"ID","TECH_DISSONANT",},
    {"Name","TEXT_TECH_DISSONANT_N",},
    {"NameLower","TEXT_TECH_DISSONANT_L",},
    {"Filename","TEXTURES/TECH/DISSONANT.DDS",},
    {"R","0.12941177",},
    {"G","0.46666667",},
    {"B","0.78431374",},
    {"Level",1,},
    {"TechnologyRarity","Impossible",},
    {"FocusLocator","",},
    {"FragmentCost",2,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("CARGOSHIELD"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_DISSONANT_S"),
    ChangeText("Description","TEXT_TECH_DISSONANT_D"),
    ChangeCrafting(1,"AF_METAL","Substance",50),
    ChangeCrafting(2,"DRONE_SHARD","Product",5),
    ChangeCrafting(3,"TECH_COMP","Product",2),
    ChangeBaseStat("Ship_Scan"),
    ChangeStatBonus(1,"Ship_Scan",1,3),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- police antenna
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_POLICE"

  local VCT = 
  {
    {"ID","TECH_POLICE",},
    {"Name","TEXT_TECH_POLICE_N",},
    {"NameLower","TEXT_TECH_POLICE_L",},
    {"Filename","TEXTURES/TECH/POLICE.DDS",},
    {"R","0.12941177",},
    {"G","0.46666667",},
    {"B","0.78431374",},
    {"Level",1,},
    {"TechnologyCategory","AllShipsExceptAlien",},
    {"TechnologyRarity","Impossible",},
    {"FocusLocator","",},
    {"FragmentCost",1,},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("SHIPSCAN_ALIEN"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_POLICE_S"),
    ChangeText("Description","TEXT_TECH_POLICE_D"),
    ChangeCrafting(1,"POLICE_TOKEN","Product",1),
    ChangeCrafting(2,"TECH_COMP","Product",1),
    AddCrafting("LAND2","Substance",100),
    ChangeBaseStat("Ship_Scan"),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- starship trails
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- white
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_WHITE"

  local VCT = 
  {
    {"ID","TECH_WHITE",},
    {"Name","TEXT_TRAIL_WHITE_N",},
    {"NameLower","TEXT_TRAIL_WHITE_L",},
    {"Filename","TEXTURES/TRAIL/WHITE.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_SHIP_RED"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_WHITE_S"),
    ChangeText("Description","TEXT_TRAIL_WHITE_D"),
    ChangeCrafting(1,"PLANT_WATER","Substance",50),
    AddCrafting("LAND2","Substance",50),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- cyan
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_CYAN"

  local VCT = 
  {
    {"ID","TECH_CYAN",},
    {"Name","TEXT_TRAIL_CYAN_N",},
    {"NameLower","TEXT_TRAIL_CYAN_L",},
    {"Filename","TEXTURES/TRAIL/CYAN.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_WHITE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_CYAN_S"),
    ChangeText("Description","TEXT_TRAIL_CYAN_D"),
    ChangeCrafting(2,"LAUNCHSUB2","Substance",50),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- orange
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_ORANGE"

  local VCT = 
  {
    {"ID","TECH_ORANGE",},
    {"Name","TEXT_TRAIL_ORANGE_N",},
    {"NameLower","TEXT_TRAIL_ORANGE_L",},
    {"Filename","TEXTURES/TRAIL/ORANGE.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_WHITE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_ORANGE_S"),
    ChangeText("Description","TEXT_TRAIL_ORANGE_D"),
    ChangeCrafting(2,"SUNGOLD","Substance",50),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- pink
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_PINK"

  local VCT = 
  {
    {"ID","TECH_PINK",},
    {"Name","TEXT_TRAIL_PINK_N",},
    {"NameLower","TEXT_TRAIL_PINK_L",},
    {"Filename","TEXTURES/TRAIL/PINK.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_WHITE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_PINK_S"),
    ChangeText("Description","TEXT_TRAIL_PINK_D"),
    ChangeCrafting(2,"BUI_SCRAP","Substance",50),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- orange + effects
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_GLITCH"

  local VCT = 
  {
    {"ID","TECH_GLITCH",},
    {"Name","TEXT_TRAIL_GLITCH_N",},
    {"NameLower","TEXT_TRAIL_GLITCH_L",},
    {"Filename","TEXTURES/TRAIL/GLITCH.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_WHITE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_GLITCH_S"),
    ChangeText("Description","TEXT_TRAIL_GLITCH_D"),
    ChangeCrafting(1,"STELLAR2","Substance",50),
    ChangeCrafting(2,"HEXCORE","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- cyan + effects
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_ELECTRIC"

  local VCT = 
  {
    {"ID","TECH_ELECTRIC",},
    {"Name","TEXT_TRAIL_ELECTRIC_N",},
    {"NameLower","TEXT_TRAIL_ELECTRIC_L",},
    {"Filename","TEXTURES/TRAIL/ELECTRIC.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_GLITCH"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_ELECTRIC_S"),
    ChangeText("Description","TEXT_TRAIL_ELECTRIC_D"),
    ChangeCrafting(2,"STORM_CRYSTAL","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- purple + effects
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_TECH_PSYCHIC"

  local VCT = 
  {
    {"ID","TECH_PSYCHIC",},
    {"Name","TEXT_TRAIL_PSYCHIC_N",},
    {"NameLower","TEXT_TRAIL_PSYCHIC_L",},
    {"Filename","TEXTURES/TRAIL/PSYCHIC.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_GLITCH"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TRAIL_PSYCHIC_S"),
    ChangeText("Description","TEXT_TRAIL_PSYCHIC_D"),
    ChangeCrafting(2,"DRONE_SALVAGE","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- bobblehead bonuses
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- launch cost
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_LAUNCH"

  local VCT = 
  {
    {"ID","TECH_BOOSTL",},
    {"Name","TEXT_TECH_BOOSTL_N",},
    {"NameLower","TEXT_TECH_BOOSTL_L",},
    {"Filename","TEXTURES/TECH/BOOSTL.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_NADA"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTL_S"),
    ChangeText("Description","TEXT_TECH_BOOSTL_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_COMPONENT5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- damage
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_DAMAGE"

  local VCT = 
  {
    {"ID","TECH_BOOSTD",},
    {"Name","TEXT_TECH_BOOSTD_N",},
    {"NameLower","TEXT_TECH_BOOSTD_L",},
    {"Filename","TEXTURES/TECH/BOOSTD.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTD_S"),
    ChangeText("Description","TEXT_TECH_BOOSTD_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_ENERGY5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- boost
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_PULSE"

  local VCT = 
  {
    {"ID","TECH_BOOSTP",},
    {"Name","TEXT_TECH_BOOSTP_N",},
    {"NameLower","TEXT_TECH_BOOSTP_L",},
    {"Filename","TEXTURES/TECH/BOOSTP.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_ART"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTP_S"),
    ChangeText("Description","TEXT_TECH_BOOSTP_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_ALLOY5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- warp range
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_WARP"

  local VCT = 
  {
    {"ID","TECH_BOOSTW",},
    {"Name","TEXT_TECH_BOOSTW_N",},
    {"NameLower","TEXT_TECH_BOOSTW_L",},
    {"Filename","TEXTURES/TECH/BOOSTW.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_ATLAS"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTW_S"),
    ChangeText("Description","TEXT_TECH_BOOSTW_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_TECH5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- shield
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_SHIELD"

  local VCT = 
  {
    {"ID","TECH_BOOSTS",},
    {"Name","TEXT_TECH_BOOSTS_N",},
    {"NameLower","TEXT_TECH_BOOSTS_L",},
    {"Filename","TEXTURES/TECH/BOOSTS.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_NULL"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTS_S"),
    ChangeText("Description","TEXT_TECH_BOOSTS_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_MINERALS5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- manueverability
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_MANUEV"

  local VCT = 
  {
    {"ID","TECH_BOOSTM",},
    {"Name","TEXT_TECH_BOOSTM_N",},
    {"NameLower","TEXT_TECH_BOOSTM_L",},
    {"Filename","TEXTURES/TECH/BOOSTM.DDS",},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_POLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_TECH_BOOSTM_S"),
    ChangeText("Description","TEXT_TECH_BOOSTM_D"),
    ChangeCrafting(1,"TECH_COMP","Product",1),
    AddCrafting("TRA_EXOTICS5","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- bobblehead models
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- holo collection - blob
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_BLOB"

  local VCT = 
  {
    {"ID","TECH_BLOB",},
    {"Name","TEXT_BOBBLE_BLOB_N",},
    {"NameLower","TEXT_BOBBLE_BLOB_L",},
    {"Filename","TEXTURES/BOBBLE/BLOB.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_BLOB_S"),
    ChangeText("Description","TEXT_BOBBLE_BLOB_D"),
    ChangeCrafting(1,"JELLY","Product",1),
    AddCrafting("NAV_DATA","Product",1),
    AddCrafting("ASTEROID3","Substance",20),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- holo collection - solar
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_SOLAR"

  local VCT = 
  {
    {"ID","TECH_SOLAR",},
    {"Name","TEXT_BOBBLE_SOLAR_N",},
    {"NameLower","TEXT_BOBBLE_SOLAR_L",},
    {"Filename","TEXTURES/BOBBLE/SOLAR.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_BLOB"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_SOLAR_S"),
    ChangeText("Description","TEXT_BOBBLE_SOLAR_D"),
    ChangeCrafting(3,"ANTIMATTER","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- holo collection - frigate
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_FRIGATE"

  local VCT = 
  {
    {"ID","TECH_FRIGATE",},
    {"Name","TEXT_BOBBLE_FRIGATE_N",},
    {"NameLower","TEXT_BOBBLE_FRIGATE_L",},
    {"Filename","TEXTURES/BOBBLE/FRIGATE.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_BLOB"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_FRIGATE_S"),
    ChangeText("Description","TEXT_BOBBLE_FRIGATE_D"),
    ChangeCrafting(3,"POWERCELL","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- sentinel collection - laylaps
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_LAYLAPS"

  local VCT = 
  {
    {"ID","TECH_LAYLAPS",},
    {"Name","TEXT_BOBBLE_LAYLAPS_N",},
    {"NameLower","TEXT_BOBBLE_LAYLAPS_L",},
    {"Filename","TEXTURES/BOBBLE/LAYLAPS.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_LAYLAPS_S"),
    ChangeText("Description","TEXT_BOBBLE_LAYLAPS_D"),
    ChangeCrafting(1,"BP_SALVAGE","Product",1),
    AddCrafting("ALLOY2","Product",1),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- sentinel collection - crystal drone
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_CRYSDRONE"

  local VCT = 
  {
    {"ID","TECH_CRYSDRONE",},
    {"Name","TEXT_BOBBLE_CRYSDRONE_N",},
    {"NameLower","TEXT_BOBBLE_CRYSDRONE_L",},
    {"Filename","TEXTURES/BOBBLE/CRYSDRONE.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_LAYLAPS"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_CRYSDRONE_S"),
    ChangeText("Description","TEXT_BOBBLE_CRYSDRONE_D"),
    ChangeCrafting(1,"ALLOY5","Product",1),
    ChangeCrafting(2,"DRONE_SHARD","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- sentinel collection - walker
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_WALKER"

  local VCT = 
  {
    {"ID","TECH_WALKER",},
    {"Name","TEXT_BOBBLE_WALKER_N",},
    {"NameLower","TEXT_BOBBLE_WALKER_L",},
    {"Filename","TEXTURES/BOBBLE/WALKER.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_LAYLAPS"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_WALKER_S"),
    ChangeText("Description","TEXT_BOBBLE_WALKER_D"),
    ChangeCrafting(1,"ALLOY5","Product",1),
    ChangeCrafting(2,"MICROCHIP","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- monster collection - jellyfish
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_JELLYFISH"

  local VCT = 
  {
    {"ID","TECH_JELLYFISH",},
    {"Name","TEXT_BOBBLE_JELLYFISH_N",},
    {"NameLower","TEXT_BOBBLE_JELLYFISH_L",},
    {"Filename","TEXTURES/BOBBLE/JELLYFISH.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_JELLYFISH_S"),
    ChangeText("Description","TEXT_BOBBLE_JELLYFISH_D"),
    ChangeCrafting(1,"GRENFUEL1","Product",1),
    AddCrafting("SPACEGUNK1","Substance",20),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- monster collection - worm
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_WORM"

  local VCT = 
  {
    {"ID","TECH_WORM",},
    {"Name","TEXT_BOBBLE_WORM_N",},
    {"NameLower","TEXT_BOBBLE_WORM_L",},
    {"Filename","TEXTURES/BOBBLE/WORM.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_JELLYFISH"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_WORM_S"),
    ChangeText("Description","TEXT_BOBBLE_WORM_D"),
    ChangeCrafting(1,"SPACEGUNK5","Substance",20),
    ChangeCrafting(2,"WORMCORE","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- monster collection - egg
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_EGG"

  local VCT = 
  {
    {"ID","TECH_EGG",},
    {"Name","TEXT_BOBBLE_EGG_N",},
    {"NameLower","TEXT_BOBBLE_EGG_L",},
    {"Filename","TEXTURES/BOBBLE/EGG.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_JELLYFISH"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_EGG_S"),
    ChangeText("Description","TEXT_BOBBLE_EGG_D"),
    ChangeCrafting(1,"SPACEGUNK4","Substance",20),
    ChangeCrafting(2,"CLAMPEARL","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- planet collection - knowledge stone
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_STONE"

  local VCT = 
  {
    {"ID","TECH_STONE",},
    {"Name","TEXT_BOBBLE_STONE_N",},
    {"NameLower","TEXT_BOBBLE_STONE_L",},
    {"Filename","TEXTURES/BOBBLE/STONE.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_STONE_S"),
    ChangeText("Description","TEXT_BOBBLE_STONE_D"),
    ChangeCrafting(1,"GRAVBALL","Product",1),
    AddCrafting("LAVA1","Substance",20),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- planet collection - underwater crystal
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_CRYSTAL"

  local VCT = 
  {
    {"ID","TECH_AQUATIC",},
    {"Name","TEXT_BOBBLE_AQUATIC_N",},
    {"NameLower","TEXT_BOBBLE_AQUATIC_L",},
    {"Filename","TEXTURES/BOBBLE/AQUATIC.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_STONE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_AQUATIC_S"),
    ChangeText("Description","TEXT_BOBBLE_AQUATIC_D"),
    ChangeCrafting(1,"LAND2","Substance",20),
    ChangeCrafting(2,"VENTGEM","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- planet collection - grave
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_GRAVE"

  local VCT = 
  {
    {"ID","TECH_GRAVE",},
    {"Name","TEXT_BOBBLE_GRAVE_N",},
    {"NameLower","TEXT_BOBBLE_GRAVE_L",},
    {"Filename","TEXTURES/BOBBLE/GRAVE.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_STONE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_GRAVE_S"),
    ChangeText("Description","TEXT_BOBBLE_GRAVE_D"),
    ChangeCrafting(1,"ASTEROID1","Substance",20),
    ChangeCrafting(2,"GEODE_ASTEROID","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- glitch collection - calcishroom
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_SHROOM"

  local VCT = 
  {
    {"ID","TECH_SHROOM",},
    {"Name","TEXT_BOBBLE_SHROOM_N",},
    {"NameLower","TEXT_BOBBLE_SHROOM_L",},
    {"Filename","TEXTURES/BOBBLE/SHROOM.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_SHROOM_S"),
    ChangeText("Description","TEXT_BOBBLE_SHROOM_D"),
    ChangeCrafting(1,"LUSH1","Substance",20),
    AddCrafting("AF_METAL","Substance",20),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- glitch collection - ossified star
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_STAR"

  local VCT = 
  {
    {"ID","TECH_STAR",},
    {"Name","TEXT_BOBBLE_STAR_N",},
    {"NameLower","TEXT_BOBBLE_STAR_L",},
    {"Filename","TEXTURES/BOBBLE/STAR.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_SHROOM"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_STAR_S"),
    ChangeText("Description","TEXT_BOBBLE_STAR_D"),
    ChangeCrafting(2,"RADIO1","Substance",20),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- glitch collection - separator
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_SHARD"

  local VCT = 
  {
    {"ID","TECH_SHARD",},
    {"Name","TEXT_BOBBLE_SHARD_N",},
    {"NameLower","TEXT_BOBBLE_SHARD_L",},
    {"Filename","TEXTURES/BOBBLE/SHARD.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_SHROOM"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_SHARD_S"),
    ChangeText("Description","TEXT_BOBBLE_SHARD_D"),
    ChangeCrafting(2,"COLD1","Substance",20),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- misc collection - globe statue
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_GLOBE"

  local VCT = 
  {
    {"ID","TECH_GLOBE",},
    {"Name","TEXT_BOBBLE_GLOBE_N",},
    {"NameLower","TEXT_BOBBLE_GLOBE_L",},
    {"Filename","TEXTURES/BOBBLE/GLOBE.DDS",},
    {"FragmentCost",0,},
    {"WikiEnabled","True",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("T_BOBBLE_APOLLO"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_GLOBE_S"),
    ChangeText("Description","TEXT_BOBBLE_GLOBE_D"),
    ChangeCrafting(1,"NAV_DATA","Product",1),
    AddCrafting("ASTEROID2","Substance",20),
    RemoveStatBonuses(),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- misc collection - shield generator 
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_SHIELDGEN"

  local VCT = 
  {
    {"ID","TECH_SHIELDGEN",},
    {"Name","TEXT_BOBBLE_SHIELDGEN_N",},
    {"NameLower","TEXT_BOBBLE_SHIELDGEN_L",},
    {"Filename","TEXTURES/BOBBLE/SHIELDGEN.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_GLOBE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_SHIELDGEN_S"),
    ChangeText("Description","TEXT_BOBBLE_SHIELDGEN_D"),
    ChangeCrafting(1,"ALLOY1","Product",1),
    ChangeCrafting(2,"POWERCELL","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- misc collection - Nexus synthesis core
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_BOBBLE_NEXUS"

  local VCT = 
  {
    {"ID","TECH_NEXUSORB",},
    {"Name","TEXT_BOBBLE_NEXUSORB_N",},
    {"NameLower","TEXT_BOBBLE_NEXUSORB_L",},
    {"Filename","TEXTURES/BOBBLE/NEXUSORB.DDS",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("TECH_GLOBE"),
    ApplyVCT(VCT),
    ChangeText("Subtitle","TEXT_BOBBLE_NEXUSORB_S"),
    ChangeText("Description","TEXT_BOBBLE_NEXUSORB_D"),
    ChangeCrafting(1,"LAVA1","Substance",20),
    ChangeCrafting(2,"ANTIMATTER","Product",1),
    AddModule(),
  }

  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- end of table
  --------------------------------------------------

end

--------------------------------------------------
-- populating change tables
--------------------------------------------------

local EXML_TECHNOLOGY = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
Technology_BuildChangeTable(EXML_TECHNOLOGY)

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------