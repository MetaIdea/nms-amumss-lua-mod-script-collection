----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AquaticBlaster"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "600"
METADATA_MOD_DESC       = "This mod adds a new Multitool weapon system that shoots fish projectiles. Because reasons. Modifies various files in METADATA directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_METADATA_TECHNOLOGY_TABLE =        "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
FILE_METADATA_RESEARCH_TREES =          "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN"
FILE_METADATA_WEAPON_PROPERTIES =       "METADATA\REALITY\TABLES\PLAYERWEAPONPROPERTIESTABLE.MBIN"

FILE_METADATA_DEFAULT_REALITY =         "METADATA\REALITY\DEFAULTREALITY.MBIN"
FILE_METADATA_CATALOGUE_TECH =          "METADATA\REALITY\CATALOGUECRAFTING.MBIN"

FILE_METADATA_PROJECTILE_TABLE =        "METADATA\PROJECTILES\PROJECTILETABLE.MBIN"
FILE_METADATA_PLAYER_EFFECTS =          "METADATA\EFFECTS\PLAYEREFFECTS.MBIN"

--------------------------------------------------
-- files used for new projectile (not modified)
--------------------------------------------------

FILE_MODELS_HOLOFISH_SCENE =            "MODELS\PLANETS\CREATURES\FISH\MYSTERYFISH.SCENE.MBIN"
FILE_MODELS_PROJECTILE_SCENE =          "MODELS\COMMON\FISHGUN\FISHPROJECTILE.SCENE.MBIN"

FILE_MODELS_HOLOFISH_ENTITY =           "MODELS\PLANETS\CREATURES\FISH\MYSTERYFISH\ENTITIES\DATA.ENTITY.MBIN"
FILE_MODELS_PROJECTILE_ENTITY =         "MODELS\COMMON\FISHGUN\FISHPROJECTILE.ENTITY.MBIN"

FILE_MODELS_JETEFFECT_SCENE =           "MODELS\EFFECTS\PLAYER\JETPACKEFFECTS\SPECTRALJETPACK.SCENE.MBIN"
FILE_MODELS_FISHEFFECT_SCENE =          "MODELS\COMMON\FISHGUN\FISHEFFECT.SCENE.MBIN"

--------------------------------------------------
-- functions
--------------------------------------------------

function SetWeaponStat(section, stat,value) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"StatsType",stat,},      ["SECTION_UP_SPECIAL"] = 1,     ["VCT"] = {{"Bonus",value,},},  }
end

function SetColour(section,colour,r,g,b) return
{   ["SEC_EDIT"] = section,     ["PKW"] = colour,   ["VCT"] = {{"R",r,},{"G",g,},{"B",b,},},  }
end
 

----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    -- create new files for the fishgun visual effects
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {   FILE_MODELS_HOLOFISH_SCENE,         FILE_MODELS_PROJECTILE_SCENE,       "REMOVE"},
                        {   FILE_MODELS_HOLOFISH_ENTITY,        FILE_MODELS_PROJECTILE_ENTITY,      "REMOVE"},
                        {   FILE_MODELS_JETEFFECT_SCENE,        FILE_MODELS_FISHEFFECT_SCENE,       "REMOVE"},
                    }
                },
                
                {
                    --------------------------------------------------
                    -- fish projectile MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PROJECTILE_SCENE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- scale the model down, rotate it
                            ["SKW"] = {{"Name","Salmon",},{"Name","SalmonFins",},},
                            ["VCT"] = {{"RotX",180,},{"ScaleX",0.15,},{"ScaleY",0.15,},{"ScaleZ",0.15,},},
                        },

                        {
                            -- remove collision box from locator node
                            ["SKW"] = {"Type","LOCATOR",},
                            ["PKW"] = "Children",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- link new entity MBIN
                            ["SKW"] = {"Name","ATTACHMENT",},
                            ["VCT"] = {{"Value",FILE_MODELS_PROJECTILE_ENTITY,},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- fish entity MBIN - remove collision with player
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PROJECTILE_ENTITY,
                    ["MXML_CHANGE_TABLE"] = {{["VCT"] = {{"NoPlayerCollide","true",},},},}
                },

                {
                    --------------------------------------------------
                    -- muzzle effect MBIN - rotate the scene
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_FISHEFFECT_SCENE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = 
                            {
                                {"Name","BaseGoo",},{"Name","Mist",},{"Name","Distortion",},
                                {"Name","Glow",},{"Name","LargeGlow",},{"Name","Flare",},
                            },
                            ["VCT"] = {{"RotZ",90,},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- technology table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_TECHNOLOGY_TABLE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get the template for core Pulse Spitter module
                            ["SKW"] = {"ID","SMG",},
                            ["SEC_SAVE_TO"] = "SEC_TECH_MAIN",
                        },

                        {
                            -- edit the template - change text elements and icon
                            ["SEC_EDIT"] = "SEC_TECH_MAIN",
                            ["VCT"] =
                            {
                                {"ID","FISHGUN",},
                                {"Name","FFPL_FISHGUN_N",},
                                {"NameLower","FFPL_FISHGUN_L",},
                                {"Subtitle","FFPL_FISHGUN_S",},
                                {"Description","FFPL_FISHGUN_D",},
                                {"Filename","TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.FISHGUN.DDS",},
                            },
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_MAIN",
                            ["SKW"] = {"Rarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_MAIN",
                            ["SKW"] = {"TechShopRarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        -- set dark background colour and white adjacency outline
                        SetColour("SEC_TECH_MAIN","Colour",0.101960786,0.15294118,0.2),
                        SetColour("SEC_TECH_MAIN","LinkColour",0,0.702,0.8),

                        {
                            -- replace crafting recipe element
                            ["SEC_EDIT"] = "SEC_TECH_MAIN",
                            ["SKW"] = {"ID","LAUNCHSUB2",},
                            ["VCT"] = {{"ID","WATERPLANT",},},
                        },

                        {
                            -- set new base stat
                            ["SEC_EDIT"] = "SEC_TECH_MAIN",
                            ["SKW"] = {"BaseStat","GcStatsTypes",},
                            ["VCT"] = {{"StatsType","Weapon_Spawner",},},
                        },

                        -- change numerical stats
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_ClipSize",40),
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_Damage",200),
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_Rate",4),
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_Dispersion",4),
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_Range",150),
                        SetWeaponStat("SEC_TECH_MAIN","Weapon_Projectile_BulletsPerShot",1),

                        {
                            -- add new technology module
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_TECH_MAIN",
                        },

                        --------------------------------------------------

                        {
                            -- get the template for the stat upgrade blueprint
                            ["SKW"] = {"ID","UT_SMG_DOT",},
                            ["SEC_SAVE_TO"] = "SEC_TECH_UPGRADE",
                        },

                        {
                            -- edit the template - change text elements and icon
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["VCT"] =
                            {
                                {"ID","FISHGUNUPGR",},
                                {"Name","FFPL_FISHGUNUPGR_N",},
                                {"NameLower","FFPL_FISHGUNUPGR_L",},
                                {"Subtitle","FFPL_FISHGUNUPGR_S",},
                                {"Description","FFPL_FISHGUNUPGR_D",},
                                {"Filename","TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.FISHGUNMOD.DDS",},
                                {"RequiredTech","FISHGUN",},
                            },
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"Rarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"TechShopRarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        -- set dark background colour and white adjacency outline
                        SetColour("SEC_TECH_UPGRADE","Colour",0.101960786,0.15294118,0.2),
                        SetColour("SEC_TECH_UPGRADE","LinkColour",0,0.702,0.8),

                        {
                            -- replace crafting recipe element
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"ID","HOT1",},
                            ["VCT"] = {{"ID","ASTEROID1",},},
                        },

                        {
                            -- set new base stat
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"BaseStat","GcStatsTypes",},
                            ["VCT"] = {{"StatsType","Weapon_Spawner",},},
                        },

                        {
                            -- change 1st stat bonus to clip size, make it A class module
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"StatBonuses","GcStatsBonus",},
                            ["SECTION_ACTIVE"] = 0,
                            ["VCT"] =
                            {
                                {"StatsType","Weapon_Projectile_ClipSize",},
                                {"Bonus",10,},
                                {"Level",3,},
                            },
                        },

                        {
                            -- change 2nd stat bonus to reload speed
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"StatBonuses","GcStatsBonus",},
                            ["SECTION_ACTIVE"] = 1,
                            ["VCT"] =
                            {
                                {"StatsType","Weapon_Projectile_ReloadTime",},
                                {"Bonus",0.8,},
                            },
                        },

                        {
                            -- change 3rd stat bonus to fire rate
                            ["SEC_EDIT"] = "SEC_TECH_UPGRADE",
                            ["SKW"] = {"StatBonuses","GcStatsBonus",},
                            ["SECTION_ACTIVE"] = 2,
                            ["VCT"] =
                            {
                                {"StatsType","Weapon_Projectile_Rate",},
                                {"Bonus",1.2,},
                            },
                        },

                        {
                            -- add new technology module
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_TECH_UPGRADE",
                        },

                        --------------------------------------------------

                        {
                            -- get the template for the stun blueprint
                            ["SKW"] = {"ID","UT_SMG",},
                            ["SEC_SAVE_TO"] = "SEC_TECH_STUN",
                        },

                        {
                            -- edit the template - change text elements and icon
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["VCT"] =
                            {
                                {"ID","FISHGUNSTUN",},
                                {"Name","FFPL_FISHGUNSTUN_N",},
                                {"NameLower","FFPL_FISHGUNSTUN_L",},
                                {"Subtitle","FFPL_FISHGUNSTUN_S",},
                                {"Description","FFPL_FISHGUNSTUN_D",},
                                {"Filename","TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.FISHGUNMOD.DDS",},
                                {"RequiredTech","FISHGUN",},
                            },
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"Rarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        {
                            -- edit the template - disable natural spawning on MTs or vendors
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"TechShopRarity","GcTechnologyRarity",},
                            ["VCT"] = {{"TechnologyRarity","Impossible",},},
                        },

                        -- set dark background colour and white adjacency outline
                        SetColour("SEC_TECH_STUN","Colour",0.101960786,0.15294118,0.2),
                        SetColour("SEC_TECH_STUN","LinkColour",0,0.702,0.8),

                        {
                            -- replace crafting recipe element
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"ID","MIRROR",},
                            ["VCT"] = {{"ID","FISHCORE",},},
                        },

                        {
                            -- add crafting recipe element
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["PKW"] = "Requirements",
                            ["ADD"] = 
                            [[
                            <Property name="Requirements" value="GcTechnologyRequirement">
                                <Property name="ID" value="BIO" />
                                <Property name="Type" value="GcInventoryType">
                                    <Property name="InventoryType" value="Product" />
                                </Property>
                                <Property name="Amount" value="1" />
                            </Property>
                            ]]
                        },

                        {
                            -- set new base stat
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"BaseStat","GcStatsTypes",},
                            ["VCT"] = {{"StatsType","Weapon_Spawner",},},
                        },

                        {
                            -- change stat bonus to stun, make it S class module
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"StatBonuses","GcStatsBonus",},
                            ["VCT"] =
                            {
                                {"StatsType","Weapon_Stun",},
                                {"Bonus",1,},
                                {"Level",4,},
                            },
                        },

                        {
                            -- add stats for stun duration and damage to proc adjacency outline
                            ["SEC_EDIT"] = "SEC_TECH_STUN",
                            ["SKW"] = {"StatBonuses","GcStatsBonus",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
                            [[
                            <Property name="StatBonuses" value="GcStatsBonus">
                                <Property name="Stat" value="GcStatsTypes">
                                    <Property name="StatsType" value="Weapon_Stun_Duration" />
                                </Property>
                                <Property name="Bonus" value="1.000000" />
                                <Property name="Level" value="1" />
                            </Property>
                            <Property name="StatBonuses" value="GcStatsBonus">
                                <Property name="Stat" value="GcStatsTypes">
                                    <Property name="StatsType" value="Weapon_Projectile_Damage" />
                                </Property>
                                <Property name="Bonus" value="0.100000" />
                                <Property name="Level" value="1" />
                            </Property>
                            ]],
                        },

                        {
                            -- add new technology module
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_TECH_STUN",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- research trees MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_RESEARCH_TREES,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add new tech to multitool research tree
                            ["SKW"] = {"Unlockable","BOLT",},
                            ["PKW"] = "Children",
                            ["ADD"] =
                            [[
                            <Property name="Children" value="GcUnlockableItemTreeNode">
                                <Property name="Unlockable" value="FISHGUN" />
                                <Property name="Children">
                                    <Property name="Children" value="GcUnlockableItemTreeNode">
                                        <Property name="Unlockable" value="FISHGUNUPGR" />
                                        <Property name="Children">
                                            <Property name="Children" value="GcUnlockableItemTreeNode">
                                                <Property name="Unlockable" value="FISHGUNSTUN" />
                                                <Property name="Children" />
                                            </Property>
                                        </Property>
                                    </Property>
                                </Property>
                            </Property>
                            ]]

                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- player weapon properties MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_WEAPON_PROPERTIES,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- assign projectile class to base stat
                            ["SKW"] = {"Spawner","GcPlayerWeaponPropertiesData","WeaponClass","GcPlayerWeaponClass",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"WeaponClass","Projectile",},},
                        },

                        {
                            -- assign projectile ID and firing effects
                            ["SKW"] = {"Spawner","GcPlayerWeaponPropertiesData",},
                            ["VCT"] =
                            {
                                {"MuzzleGunResource","",},
                                {"DefaultProjectile","FISHGUNBULLET",},
                                {"DefaultWeaponFireAnimId","FIRESMG",},
                                {"DefaultWeaponFireParticlesId","FISHGUNEFFECT",},
                            },
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- player effects MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_PLAYER_EFFECTS,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for spectral jetpack effects
                            ["SKW"] = {"Id","SPECTRALJETPACK",},
                            ["SEC_SAVE_TO"] = "SEC_EFFECT",
                        },

                        {
                            -- edit the template - change ID and scale
                            -- assign a new scene, change light colour to white
                            ["SEC_EDIT"] = "SEC_EFFECT",
                            ["VCT"] =
                            {
                                {"Id","FISHGUNEFFECT",},
                                {"Filename",FILE_MODELS_FISHEFFECT_SCENE,},
                                {"Scale",0.300000,},
                                {"AddedLightIntensity",2.000000,},
                                {"R",1.000000,},
                                {"G",1.000000,},
                                {"B",1.000000,},
                            },
                        },

                        {
                            -- add new effect to the list
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_EFFECT",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- projectile table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_PROJECTILE_TABLE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for Pulse Spitter projectile
                            ["SKW"] = {"Id","SMG",},
                            ["SEC_SAVE_TO"] = "SEC_PROJECTILE",
                        },

                        {
                            -- edit the template: assign new model and firing sound
                            -- reduce projectile speed, change impact effect
                            ["SEC_EDIT"] = "SEC_PROJECTILE",
                            ["VCT"] =
                            {
                                {"Id","FISHGUNBULLET",},
                                {"Filename",FILE_MODELS_PROJECTILE_SCENE,},
                                {"AkEvent","INVALID_EVENT",},
                                {"DefaultSpeed",30.000000,},
                                {"DefaultImpact","FLOATSPLASH",},
                            },
                        },

                        {
                            -- add new projectile
                            ["PKW"] = "Table",
                            ["SEC_ADD_NAMED"] = "SEC_PROJECTILE",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- default reality MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULT_REALITY,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- set icon for multi-toll HUD
                            ["PKW"] = "StatCategoryIcons",
                            ["PKW_1"] = "TRUE",
                            ["SKW"] = {"Weapon_Spawner","TkTextureResource",},
                            ["VCT"] = {{"Filename","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FISHROUND.OFF.DDS",},},
                        },

                        {
                            -- set icon for packed tech item
                            ["PKW"] = "StatTechPackageIcons",
                            ["PKW_1"] = "TRUE",
                            ["SKW"] = {"Weapon_Spawner","TkTextureResource",},
                            ["VCT"] = {{"Filename","TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/TECHBOX.FISHING.DDS",},},
                        },

                        {
                            -- change reticle
                            ["SKW"] = {"Spawner","GcPlayerWeaponData",},
                            ["VCT"] = {{"Reticle","MINIGUN",},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- catalogue and guide technology MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CATALOGUE_TECH,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add entries for new tech modules
                            ["SKW"] = {"Items","UT_STUNDMG",},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
                            [[
                            <Property name="Items" value="FISHGUN" />
                            <Property name="Items" value="FISHGUNUPGR" />
                            <Property name="Items" value="FISHGUNSTUN" />
                            ]]
                        },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------