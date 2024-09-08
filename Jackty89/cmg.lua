local Mode_Name = 'CustomModsGalore'
local Author = 'Jackty89'
local Custom_Language_Tag = 'CMG'

-- PATHS
local Product_Table_Path = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'
local Technology_Table_Path = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'
local Procedural_Technology_Table_Path = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN'
local Default_Reality_Path = 'METADATA/REALITY/DEFAULTREALITY.MBIN'
local Unlockable_Item_Trees_Path = 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN'
local English_Path = 'LANGUAGE/NMS_LOC8_ENGLISH.MBIN'
local Classes = { 'C', 'B', 'A', 'S'}

local Trade_Settings =
{
    SpaceStation = 'SpaceStation',
    Shop = 'Shop',
    TechShop = 'TechShop',
    ShipTechSpecialist = 'ShipTechSpecialist',
    SuitTechSpecialist = 'SuitTechSpecialist',
    WeapTechSpecialist = 'WeapTechSpecialist',
    VehicleTechSpecialist = 'VehicleTechSpecialist',
    NexusTechSpecialist = 'NexusTechSpecialist'
}
local Created_Trade_Settings_Masters = {}

-- using a list since we need it to run in a specific order
local Manual_Item_Tree_Additions =
{
    {
        Technology_Id = 'UT_ROCKETS_MISS',
        Unlockable_root = 'SHIPROCKETS'
    },
    {
        Technology_Id = 'UT_ROCKETS_COOL',
        Unlockable_root = 'UT_ROCKETS_MISS'
    },
    {
        Technology_Id = 'UT_ROCKETS_BLAS',
        Unlockable_root = 'UT_ROCKETS_COOL'
    },
    {
        Technology_Id = 'UT_FATSGUN',
        Unlockable_root = 'UT_SHIPGUN'
    },
    {
        Technology_Id = 'UT_HEAT_SGUN',
        Unlockable_root = 'UT_FATSGUN'
    },
    {
        Technology_Id = 'UT_HEAT_SLASER',
        Unlockable_root = 'UT_SHIPLAS'
    },
    {
        Technology_Id = 'UT_HEAT_SHOT',
        Unlockable_root = 'UT_SHIPSHOT'
    },
    {
        Technology_Id = 'UT_SUPER_SHOT',
        Unlockable_root = 'UT_HEAT_SHOT'
    },
    {
        Technology_Id = 'UT_INFRA_BLAS',
        Unlockable_root = 'UT_SHIPMINI'
    },
    {
        Technology_Id = 'UT_HYPER_BEYOND',
        Unlockable_root = 'UT_QUICKWARP'
    },
    {
        Technology_Id = 'FLAME',
        Unlockable_root = 'LASER'
    },
    {
        Technology_Id = 'UT_COLD2',
        Unlockable_root = 'UT_COLD'
    },
    {
        Technology_Id = 'UT_COLD3',
        Unlockable_root = 'UT_COLD2'
    },
    {
        Technology_Id = 'UT_COLD4',
        Unlockable_root = 'UT_COLD3'
    },
    {
        Technology_Id = 'UT_HEAT2',
        Unlockable_root = 'UT_HOT'
    },
    {
        Technology_Id = 'UT_HEAT3',
        Unlockable_root = 'UT_HEAT2'
    },
    {
        Technology_Id = 'UT_HEAT4',
        Unlockable_root = 'UT_HEAT3'
    },
    {
        Technology_Id = 'UT_TOXIC2',
        Unlockable_root = 'UT_TOX'
    },
    {
        Technology_Id = 'UT_TOXIC3',
        Unlockable_root = 'UT_TOXIC2'
    },
    {
        Technology_Id = 'UT_TOXIC4',
        Unlockable_root = 'UT_TOXIC3'
    },
    {
        Technology_Id = 'UT_RAD2',
        Unlockable_root = 'UT_RAD'
    },
    {
        Technology_Id = 'UT_RAD3',
        Unlockable_root = 'UT_RAD2'
    },
    {
        Technology_Id = 'UT_RAD4',
        Unlockable_root = 'UT_RAD3'
    },
    {
        Technology_Id = 'UT_WATER3',
        Unlockable_root = 'UT_WATER'
    },
    {
        Technology_Id = 'UT_WATER4',
        Unlockable_root = 'UT_WATER3'
    },
    {
        Technology_Id = 'UT_EXOFLAME',
        Unlockable_root = 'VEHICLE_LASER1'
    },
    {
        Technology_Id = 'UT_EXOSTUN',
        Unlockable_root = 'VEHICLE_GUN'
    }
}

local Techology_Edits =
{
    SHIPROCKETS =
    {
        Stat_Bonus_Edits =
        {
            Ship_Weapons_Guns_Dispersion = 1,
            Ship_Weapons_Guns_CoolTime = 1,
            Ship_Weapons_Guns_HeatTime = 1,
        },
        New_Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_BulletsPerShot', Bonus = 1, Level = 1},
        }
    },
    FLAME =
    {
        Stat_Bonus_Edits =
        {
            Weapon_Projectile_Dispersion = 15,
            Weapon_Projectile_Range = 250,
            Weapon_Projectile_BulletsPerShot = 15,
            Weapon_Projectile_Damage = 100,
            Weapon_Projectile_Rate = 12,
        },
        New_Stat_Bonuses =
        {
            {Stats_Type = 'Weapon_Projectile_Bounce', Bonus = 2, Level = 3},
            {Stats_Type = 'Weapon_FireDOT', Bonus = 50, Level = 1},
            {Stats_Type = 'Weapon_FireDOT_Duration', Bonus = 10, Level = 1},
            {Stats_Type = 'Weapon_FireDOT_DPS', Bonus = 50, Level = 3}
        }
    }
}
----------------------------------------------------------------------------------------------
-------------------------------     LANGUAGE DATA     ----------------------------------------
----------------------------------------------------------------------------------------------
local Languages =
{
    EN = 'English',
    FR = 'French',
    IT = 'Italian',
    DE = 'German',
    ES = 'Spanish',
    RU = 'Russian',
    PL = 'Polish',
    NL = 'Dutch',
    PT = 'Portuguese',
    LA = 'LatinAmericanSpanish',
    BR = 'BrazilianPortuguese',
    Z1 = 'SimplifiedChinese',
    ZH = 'TraditionalChinese',
    Z2 = 'TencentChinese',
    KO = 'Korean',
    JA = 'Japanese',
    US = 'USEnglish'
}

local Language_Data =
{
    [Languages.EN] =
    {
        FATSGUN =
        {
            NAME = 'Ship Laser Amplifier',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will amplify your ship laser.',
            SUBTITLE = 'Thick laser'
        },
        ROCK_TECH1 =
        {
            NAME = 'Extended Rocket Tubes',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase the capacity on your rocket tubes.',
            SUBTITLE = 'Extended Rocket Tubes'
        },
        ROCK_TECH2 =
        {
            NAME = 'Rocket Cooling vents',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your rocket tubes.',
            SUBTITLE = 'Rocket Cooling vents'
        },
        ROCK_TECH3 =
        {
            NAME = 'High Yield Rockets',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. will amplify your the yield on your rockets.&#xA;
                &lt;SPECIAL&gt;As a wise woman once said&lt;&gt; &lt;TECHNOLOGY&gt;EXPLOSION&lt;&gt;.&#xA;
                &lt;SPECIAL&gt;Be warned that the explosion radius will affect everyone inside of it. You have been warned.&lt;&gt;]],
            SUBTITLE = 'High Yield Rockets'
        },
        MINI_TECH1 =
        {
            NAME = 'HE Rounds',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. adds explosive filler to your Infraknife rounds.',
            SUBTITLE = 'HE Rounds'
        },
        HYPER_BEYOND =
        {
            NAME = 'Overchared HyperDrive',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. has pushed the hyperdrive to the extreme.&#xA;
                This hyperdrive will let you shoot for the stars,...Just make sure you do not crash into them.]],
            SUBTITLE = 'To Infinity And Beyond'
        },
        SUPERSHOT =
        {
            NAME = 'Positron Ejector OverCharger',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. has improved various elements on your Positron Ejector.&#xA;
                Queue: Rip and Tear, Warning might be addictive.]],
            SUBTITLE = 'Positron Ejector OverCharger'
        },
        HEATSHOT =
        {
            NAME = 'Positron Ejector Cooling Solution',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Positron Ejector.',
            SUBTITLE = 'Positron Ejector Cooling Solution'
        },
        HEATSLASER =
        {
            NAME = 'Phase Beam Coollant',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Phase Beam .',
            SUBTITLE = 'Phase Beam Coollant'
        },
        HEATSGUN =
        {
            NAME = 'Photon Cannon space vents',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Photon Cannon.',
            SUBTITLE = 'Photon Cannon space vents'
        },
        ROCKPROC =
        {
            NAME = 'H.G. Corp. Procedural Rocket Launcher Module',
            DESCRIPTION = [[H.G. Corp. Procedural Rocket Launcher Module.&#xA;
                These modules have the possibiliy of certain metrics on your Rocket Launcher.&#xA;
                It can potentially increase Damage, Radius, Number of Rockets, Decrease Cooldown and Increase Dispersion.]],
            SUBTITLE = 'H.G. Corp. Procedural Rocket Launcher Module'
        },
        FLAME =
        {
            NAME = 'H.G. Corp. Procedural Incinerator Module',
            DESCRIPTION = [[H.G. Corp. Procedural Flamer Module.&#xA;
                These modules come with improvements to your Incinerator.&#xA;
                It can potentially increase the Amount of fire, firerate add a damage over time effect and increase damage over time duration.]],
            SUBTITLE = 'H.G. Corp. Procedural Incinerator Module'
        },
        ENERGY =
        {
            NAME = 'H.G. Corp. Procedural Hazard Module',
            DESCRIPTION = [[H.G. Corp. Procedural hazard Module.&#xA;
                These modules will drastically increase your Suit Energy and Suit Energy Regeneration.]],
            SUBTITLE = 'H.G. Corp. Procedural Hazard Module'
        },
        PRCOLD =
        {
            NAME = 'H.G. Corp. Procedural Cold Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Cold Protection.&#xA;
                These modules will drastically improve your survibility in cold Biomes.&#xA;
                The modules are enhanced with Reduced Cold Drain, Reduced Cold Damage and Cold Resistance.&#xA;
                Toghether with Protection against freezing colds it will assist in reducing the wailing of your suit protection assistant.&#xA;
                The cold never bothered me anyway.]],
            SUBTITLE = 'H.G. Corp. Procedural Cold Protection Module'
        },
        PRHEAT =
        {
            NAME = 'H.G. Corp. Procedural Heat Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Heat Protection.&#xA;
                These modules will drastically improve your survibility in hot Biomes.&#xA;
                The modules are enhanced with Reduced Heat Drain, Reduced Heat Damage and Heat Resistance.'&#xA;
                Toghether with Protection against scortching heat it will assist in reducing the wailing of your suit protection assistant.&#xA;
                I guess drilling to the core of the planet is now possible.]],
            SUBTITLE = 'H.G. Corp. Procedural Heat Protection Module'
        },
        PRTOXIC =
        {
            NAME = 'H.G. Corp. Procedural Toxic Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Toxic Protection.&#xA;
                These modules will drastically improve your survibility in Toxic Biomes.&#xA;
                The modules are enhanced with Reduced Toxic Drain, Reduced Toxic Damage and Toxic Resistance.&#xA;
                Toghether with Protection against toxic toxins it will assist in reducing the wailing of your suit protection assistant.]],
            SUBTITLE = 'H.G. Corp. Procedural Toxic Protection Module'
        },
        PRRAD =
        {
            NAME = 'H.G. Corp. Procedural Radiation Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Radiation Protection.&#xA;
                These modules will drastically improve your survibility in Radioactive Biomes.&#xA;
                The modules are enhanced with Reduced Radiation Drain, Reduced Radiation Damage and Radiation Resistance.&#xA;
                Toghether with Protection against radioactive radiation it will assist in reducing the wailing of your suit protection assistant.&#xA;
                Wandering the wastelands will be a breeze for you now.]],
            SUBTITLE = 'H.G. Corp. Procedural Radiation Protection Module'
        },
        SUITSHIELD =
        {
            NAME = 'H.G. Corp. Procedural Suit Shield Module',
            DESCRIPTION = [[H.G. Corp. Procedural shield Module.&#xA;
                Suit shield module that increases armour and suit structural integrity.&#xA;
                This technological masterpiece will add armour and structural integrity to your suit to what was before thought impossible]],
            SUBTITLE = 'H.G. Corp. Procedural Suit Shield Module'
        },
        SHOT =
        {
            NAME = 'H.G. Corp. Procedural Scatter-blaster Module',
            DESCRIPTION = [[H.G. Corp. Procedural Scatter Blaster Module.&#xA;
                This Module improves the Scatter-blaster damage and also adds  redirection to the shots.&#xA;
                As never seen before these new modules bring some boune to the party and some demon slaying capabilties.]],
            SUBTITLE = 'H.G. Corp. Procedural Scatter-blaster Module'
        },
        AIRJET =
        {
            NAME = 'H.G. Corp. Procedural Jetpack Module',
            DESCRIPTION = [[H.G. Corp. Procedural Jetpack Module.&#xA;
                These modules enhances your Ignition, Refill rate as well as total capacity of the fuel tanks.&#xA;
                Your ability to soar the skies will be drastically enhanced, just do not fly to close to the sun.]],
            SUBTITLE = 'H.G. Corp. Procedural Jetpack Module'
        },
        WATJET =
        {
            NAME = 'H.G. Corp. Procedural Dive Jetpack Module',
            DESCRIPTION = [[H.G. Corp. Procedural Jetpack Module.&#xA;
                These modules enhances your Ignition, Refill rate as well as total capacity of the fuel tanks.&#xA;
                Now you can dive at impecable speeds.]],
            SUBTITLE = 'H.G. Corp. Procedural Dive Jetpack Module'
        },
        DRIFT =
        {
            NAME = 'H.G. Corp. Procedural Drift Wheels',
            DESCRIPTION = [[H.G. Corp. Procedural Drift wheels.&#xA;
                These upgrade modules descrease the grip your tires have.&#xA;
                Especially usefull when the eurobeat kicks in. Just be aware of windy planets, your exocraft may or may not... drift away]],
            SUBTITLE = 'H.G. Corp. Procedural Drift Wheels'
        },
        MECHBOOST =
        {
            NAME = 'H.G. Corp. Procedural Mech Boost Module',
            DESCRIPTION = [[H.G. Corp. Procedural Mech Boost Module.&#xA;
                These upgrade modules will drastically improve your Minotaur boost capacity.&#xA;
                These will make you wonder, were the clouds always that close?&#xA;
                The modules improve Boost tanks and Boost Speed]],
            SUBTITLE = 'Procedural Mech Boost Module'
        },
        COLDR =
        {
            NAME = 'H.G. Corp. Suit Cold Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Cold Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Cold Resistance Shield'
        },
        RADR =
        {
            NAME = 'H.G. Corp. Suit Radiation Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Radiation Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Radiation Resistance Shield'
        },
        HEATR =
        {
            NAME = 'H.G. Corp. Suit Heat Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Heat Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Heat Resistance Shield'
        },
        TOXICR =
        {
            NAME = 'H.G. Corp. Suit Cold Toxic Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Toxic Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Toxic Resistance Shield'
        },
        WATERR =
        {
            NAME = 'H.G. Corp. Suit Oxygen Rebreather',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase the ability to swim underwater for extended periods.',
            SUBTITLE = 'H.G. Corp. Suit Oxygen Rebreather'
        },
        WATERG =
        {
            NAME = 'H.G. Corp. Suit Gills',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will add the ability to swim underwater for intraveller periods of time.',
            SUBTITLE = 'H.G. Corp. Suit Gills'
        },
        PRROCK1 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        PRROCK2 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = 'Rocket Launcher Module'
        },
        PRROCK3 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        PRROCK4 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;COMMODITY&gt;supremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        EXOFLAME =
        {
            NAME = 'H.G. Corp. Exocraft Flamer',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. now extend your exocraft arsenal with the Liquidator Flamer.',
            SUBTITLE = 'H.G. Corp. Exocraft Flamer'
        },
        EXOSTUN =
        {
            NAME = 'H.G. Corp. Exocraft Stun Cannon',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. now extend your exocraft arsenal with the Liquidator Stun Cannon.',
            SUBTITLE = 'H.G. Corp. Exocraft Stun Cannon'
        }
    },
    [Languages.US] =
    {
        FATSGUN =
        {
            NAME = 'Ship Laser Amplifier',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will amplify your ship laser.',
            SUBTITLE = 'Thick laser'
        },
        ROCK_TECH1 =
        {
            NAME = 'Large Rocket Tubes',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase the capacity on your rocket tubes.',
            SUBTITLE = 'Large Missle Tubes'
        },
        ROCK_TECH2 =
        {
            NAME = 'Rocket Cooling vents',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your rocket tubes.',
            SUBTITLE = 'Rocket Cooling vents'
        },
        ROCK_TECH3 =
        {
            NAME = 'High Yield Rockets',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. will amplify your the yield on your rockets.&#xA;
                &lt;SPECIAL&gt;As a wise woman once said&lt;&gt; &lt;TECHNOLOGY&gt;EXPLOSION&lt;&gt;.&#xA;
                &lt;SPECIAL&gt;Be warned that the explosion radius will affect everyone inside of it. You have been warned.&lt;&gt;]],
            SUBTITLE = 'High Yield Rockets'
        },
        MINI_TECH1 =
        {
            NAME = 'HE Rounds',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. adds explosive filler to your Infraknife rounds.',
            SUBTITLE = 'HE Rounds'
        },
        HYPER_BEYOND =
        {
            NAME = 'Overchared HyperDrive',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. has pushed the hyperdrive to the extreme.&#xA;
                This hyperdrive will let you shoot for the stars,...Just make sure you do not crash into them.]],
            SUBTITLE = 'To Infinity And Beyond'
        },
        SUPERSHOT =
        {
            NAME = 'Positron Ejector OverCharger',
            DESCRIPTION = [[This new technology upgrade engineered by the engineers at H.G. Corp. has improved various elements on your Positron Ejector.&#xA;
                Queue: Rip and Tear, Warning might be addictive.]],
            SUBTITLE = 'Positron Ejector OverCharger'
        },
        HEATSHOT =
        {
            NAME = 'Positron Ejector Cooling Solution',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Positron Ejector.',
            SUBTITLE = 'Positron Ejector Cooling Solution'
        },
        HEATSLASER =
        {
            NAME = 'Phase Beam Coollant',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Phase Beam .',
            SUBTITLE = 'Phase Beam Coollant'
        },
        HEATSGUN =
        {
            NAME = 'Photon Cannon space vents',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will assist in venting the heat from your Photon Cannon.',
            SUBTITLE = 'Photon Cannon space vents'
        },
        ROCKPROC =
        {
            NAME = 'H.G. Corp. Procedural Rocket Launcher Module',
            DESCRIPTION = [[H.G. Corp. Procedural Rocket Launcher Module.&#xA;
                These modules have the possibiliy of certain metrics on your Rocket Launcher.&#xA;
                It can potentially increase Damage, Radius, Number of Rockets, Decrease Cooldown and Increase Dispersion.]],
            SUBTITLE = 'H.G. Corp. Procedural Rocket Launcher Module'
        },
        FLAME =
        {
            NAME = 'H.G. Corp. Procedural Incinerator Module',
            DESCRIPTION = [[H.G. Corp. Procedural Flamer Module.&#xA;
                These modules come with improvements to your Incinerator.&#xA;
                It can potentially increase the Amount of fire, firerate add a damage over time effect and increase damage over time duration.]],
            SUBTITLE = 'H.G. Corp. Procedural Incinerator Module'
        },
        ENERGY =
        {
            NAME = 'H.G. Corp. Procedural Hazard Module',
            DESCRIPTION = [[H.G. Corp. Procedural hazard Module.&#xA;
                These modules will drastically increase your Suit Energy and Suit Energy Regeneration.]],
            SUBTITLE = 'H.G. Corp. Procedural Hazard Module'
        },
        PRCOLD =
        {
            NAME = 'H.G. Corp. Procedural Cold Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Cold Protection.&#xA;
                These modules will drastically improve your survibility in cold Biomes.&#xA;
                The modules are enhanced with Reduced Cold Drain, Reduced Cold Damage and Cold Resistance.&#xA;
                Toghether with Protection against freezing colds it will assist in reducing the wailing of your suit protection assistant.&#xA;
                The cold never bothered me anyway.]],
            SUBTITLE = 'H.G. Corp. Procedural Cold Protection Module'
        },
        PRHEAT =
        {
            NAME = 'H.G. Corp. Procedural Heat Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Heat Protection.&#xA;
                These modules will drastically improve your survibility in hot Biomes.&#xA;
                The modules are enhanced with Reduced Heat Drain, Reduced Heat Damage and Heat Resistance.'&#xA;
                Toghether with Protection against scortching heat it will assist in reducing the wailing of your suit protection assistant.&#xA;
                I guess drilling to the core of the planet is now possible.]],
            SUBTITLE = 'H.G. Corp. Procedural Heat Protection Module'
        },
        PRTOXIC =
        {
            NAME = 'H.G. Corp. Procedural Toxic Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Toxic Protection.&#xA;
                These modules will drastically improve your survibility in Toxic Biomes.&#xA;
                The modules are enhanced with Reduced Toxic Drain, Reduced Toxic Damage and Toxic Resistance.&#xA;
                Toghether with Protection against toxic toxins it will assist in reducing the wailing of your suit protection assistant.]],
            SUBTITLE = 'H.G. Corp. Procedural Toxic Protection Module'
        },
        PRRAD =
        {
            NAME = 'H.G. Corp. Procedural Radiation Protection Module',
            DESCRIPTION = [[H.G. Corp. Procedural Radiation Protection.&#xA;
                These modules will drastically improve your survibility in Radioactive Biomes.&#xA;
                The modules are enhanced with Reduced Radiation Drain, Reduced Radiation Damage and Radiation Resistance.&#xA;
                Toghether with Protection against radioactive radiation it will assist in reducing the wailing of your suit protection assistant.&#xA;
                Wandering the wastelands will be a breeze for you now.]],
            SUBTITLE = 'H.G. Corp. Procedural Radiation Protection Module'
        },
        SUITSHIELD =
        {
            NAME = 'H.G. Corp. Procedural Suit Shield Module',
            DESCRIPTION = [[H.G. Corp. Procedural shield Module.&#xA;
                Suit shield module that increases armour and suit structural integrity.&#xA;
                This technological masterpiece will add armour and structural integrity to your suit to what was before thought impossible]],
            SUBTITLE = 'H.G. Corp. Procedural Suit Shield Module'
        },
        SHOT =
        {
            NAME = 'H.G. Corp. Procedural Scatter-blaster Module',
            DESCRIPTION = [[H.G. Corp. Procedural Scatter Blaster Module.&#xA;
                This Module improves the Scatter-blaster damage and also adds  redirection to the shots.&#xA;
                As never seen before these new modules bring some boune to the party and some demon slaying capabilties.]],
            SUBTITLE = 'H.G. Corp. Procedural Scatter-blaster Module'
        },
        AIRJET =
        {
            NAME = 'H.G. Corp. Procedural Jetpack Module',
            DESCRIPTION = [[H.G. Corp. Procedural Jetpack Module.&#xA;
                These modules enhances your Ignition, Refill rate as well as total capacity of the fuel tanks.&#xA;
                Your ability to soar the skies will be drastically enhanced, just do not fly to close to the sun.]],
            SUBTITLE = 'H.G. Corp. Procedural Jetpack Module'
        },
        WATJET =
        {
            NAME = 'H.G. Corp. Procedural Dive Jetpack Module',
            DESCRIPTION = [[H.G. Corp. Procedural Jetpack Module.&#xA;
                These modules enhances your Ignition, Refill rate as well as total capacity of the fuel tanks.&#xA;
                Now you can dive at impecable speeds.]],
            SUBTITLE = 'H.G. Corp. Procedural Dive Jetpack Module'
        },
        DRIFT =
        {
            NAME = 'H.G. Corp. Procedural Drift Wheels',
            DESCRIPTION = [[H.G. Corp. Procedural Drift wheels.&#xA;
                These upgrade modules descrease the grip your tires have.&#xA;
                Especially usefull when the eurobeat kicks in. Just be aware of windy planets, your exocraft may or may not... drift away]],
            SUBTITLE = 'H.G. Corp. Procedural Drift Wheels'
        },
        MECHBOOST =
        {
            NAME = 'H.G. Corp. Procedural Mech Boost Module',
            DESCRIPTION = [[H.G. Corp. Procedural Mech Boost Module.&#xA;
                These upgrade modules will drastically improve your Minotaur boost capacity.&#xA;
                These will make you wonder, were the clouds always that close?&#xA;
                The modules improve Boost tanks and Boost Speed]],
            SUBTITLE = 'Procedural Mech Boost Module'
        },
        COLDR =
        {
            NAME = 'H.G. Corp. Suit Cold Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Cold Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Cold Resistance Shield'
        },
        RADR =
        {
            NAME = 'H.G. Corp. Suit Radiation Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Radiation Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Radiation Resistance Shield'
        },
        HEATR =
        {
            NAME = 'H.G. Corp. Suit Heat Resistance Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Heat Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Heat Resistance Shield'
        },
        TOXICR =
        {
            NAME = 'H.G. Corp. Suit Cold Toxic Shield',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase your suit Toxic Resistance.',
            SUBTITLE = 'H.G. Corp. Suit Toxic Resistance Shield'
        },
        WATERR =
        {
            NAME = 'H.G. Corp. Suit Oxygen Rebreather',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will increase the ability to swim underwater for extended periods.',
            SUBTITLE = 'H.G. Corp. Suit Oxygen Rebreather'
        },
        WATERG =
        {
            NAME = 'H.G. Corp. Suit Gills',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. will add the ability to swim underwater for intraveller periods of time.',
            SUBTITLE = 'H.G. Corp. Suit Gills'
        },
        PRROCK1 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;TRADEABLE&gt;moderate&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        PRROCK2 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;TECHNOLOGY&gt;significant&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = 'Rocket Launcher Module'
        },
        PRROCK3 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[An &lt;SPECIAL&gt;extremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        PRROCK4 =
        {
            NAME = 'Rocket Launcher Module',
            DESCRIPTION = [[A &lt;COMMODITY&gt;supremely powerful&lt;&gt; upgrade for the &lt;TECHNOLOGY&gt;Starship Rocket Launcher&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;The module is flexible, and exact upgrade statistics are &lt;SPECIAL&gt;unknown&lt;&gt; until installation is complete.&#xA;&#xA;Potential improvements include: &lt;STELLAR&gt;damage&lt;&gt;, &lt;STELLAR&gt;fire rate&lt;&gt; and &lt;STELLAR&gt;overheat times&lt;&gt;.]],
            SUBTITLE = ''
        },
        EXOFLAME =
        {
            NAME = 'H.G. Corp. Exocraft Flamer',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. now extend your exocraft arsenal with the Liquidator Flamer.',
            SUBTITLE = 'H.G. Corp. Exocraft Flamer'
        },
        EXOSTUN =
        {
            NAME = 'H.G. Corp. Exocraft Stun Cannon',
            DESCRIPTION = 'This new technology upgrade engineered by the engineers at H.G. Corp. now extend your exocraft arsenal with the Liquidator Stun Cannon.',
            SUBTITLE = 'H.G. Corp. Exocraft Stun Cannon'
        }
    }
}

----------------------------------------------------------------------------------------------
-------------------------------     CUSTOM TEMPLATES     -------------------------------------
----------------------------------------------------------------------------------------------
local Custom_Templates =
{
    TC_SHIPROCKETS =
    {
        Template_Copy_ID = 'T_SHIPGUN',
        Required_Tech = 'SHIPROCKETS',
        Icon_File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.ROCKETMOD.DDS',
        Group = 'SHIP_ROCKETS_NAME_L',
        Stats_Type = 'Ship_Weapons_Rockets'
    },
    TC_FLAME =
    {
        Template_Copy_ID = 'T_BOLT',
        Required_Tech = 'FLAME',
        Icon_File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.FLAMETHROWER.DDS',
        Group = 'FLAMETHROW_NAME_L',
        Stats_Type = 'Weapon_Flame'
    },
    TC_HAZ =
    {
        Template_Copy_ID = 'T_HAZ',
        Required_Tech = '',
        Icon_File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTGENERICMOD.DDS',
        Group = 'UI_HAZARD_NAME_CORE_L',
        Stats_Type = 'Suit_Protection'
    }
}

----------------------------------------------------------------------------------------------
-------------------------------     CUSTOM UPGRADE TECHNOLOGY     ----------------------------
----------------------------------------------------------------------------------------------
local Custom_Upgrade_Technology =
{
    UT_ROCKETS_MISS =
    {
        Technology_Copy_ID = 'UT_ROCKETS',
        Required_Tech = 'SHIPROCKETS',
        Langauge_Base = 'ROCK_TECH1',
        Fragment_Cost = 400,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.ROCKET.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_BulletsPerShot', Bonus = 3, Level = 2},
            {Stats_Type = 'Ship_Weapons_Guns_Dispersion', Bonus = 7, Level = 1}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            RED2 = {Type = 'Substance', Amount = 100},
            GRENFUEL1 = {Type = 'Product', Amount = 10}
        }
    },
    UT_ROCKETS_COOL =
    {
        Technology_Copy_ID = 'UT_ROCKETS',
        Required_Tech = 'SHIPROCKETS',
        Langauge_Base = 'ROCK_TECH2',
        Fragment_Cost = 600,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.ROCKET.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_HeatTime', Bonus = 1.5, Level = 3},
            {Stats_Type = 'Ship_Weapons_Guns_CoolTime', Bonus = 1.3, Level = 3},
            {Stats_Type = 'Ship_Weapons_Guns_Rate', Bonus = 1.25, Level = 3}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            GREEN2 = {Type = 'Substance', Amount = 100},
            GRENFUEL1 = {Type = 'Product', Amount = 10}
        }
    },
    UT_ROCKETS_BLAS =
    {
        Technology_Copy_ID = 'UT_ROCKETS',
        Required_Tech = 'SHIPROCKETS',
        Langauge_Base = 'ROCK_TECH3',
        Fragment_Cost = 800,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.ROCKET.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_Damage_Radius', Bonus = 5, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            BLUE2 = {Type = 'Substance ', Amount = 100},
            GRENFUEL1 = {Type = 'Product', Amount = 10}
        }
    },
    UT_INFRA_BLAS =
    {
        Technology_Copy_ID = 'UT_SHIPMINI',
        Required_Tech = 'SHIPMINIGUN',
        Langauge_Base = 'MINI_TECH1',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PHOTONACCELMOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_Damage_Radius', Bonus = 10, Level = 3}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            BLUE2 = {Type = 'Substance ', Amount = 100},
            GRENFUEL1 = {Type = 'Product', Amount = 10}
        }
    },
    UT_HYPER_BEYOND =
    {
        Technology_Copy_ID = 'UT_QUICKWARP',
        Required_Tech = 'HYPERDRIVE',
        Langauge_Base = 'HYPER_BEYOND',
        Fragment_Cost = 25000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.HYPERDRIVEMOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Hyperdrive_JumpDistance', Bonus = 100000, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            BLUE2 = {Type = 'Substance ', Amount = 100},
            HYPERFUEL2 = {Type = 'Product', Amount = 100}
        }
    },
    UT_FATSGUN =
    {
        Technology_Copy_ID = 'UT_SHIPGUN',
        Required_Tech = 'SHIPGUN1',
        Langauge_Base = 'FATSGUN',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.SHIPPROJECTILE1MOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_Scale', Bonus = 2.5, Level = 4},
            {Stats_Type = 'Ship_Weapons_Guns_Damage_Radius', Bonus = 2.5, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            BLUE2 = {Type = 'Substance ', Amount = 100},
            JELLY = {Type = 'Product', Amount = 100}
        }
    },
    UT_HEAT_SGUN =
    {
        Technology_Copy_ID = 'UT_SHIPGUN',
        Required_Tech = 'SHIPGUN1',
        Langauge_Base = 'HEATSGUN',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.SHIPBLOB.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_HeatTime', Bonus = 0.8, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            COMPOUND3 = {Type = 'Product', Amount = 10},
            COMPOUND6 = {Type = 'Product', Amount = 10}
        }
    },
    UT_HEAT_SLASER =
    {
        Technology_Copy_ID = 'UT_SHIPLAS',
        Required_Tech = 'SHIPLASER',
        Langauge_Base = 'HEATSLASER',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.SOULLASER.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Lasers_HeatTime', Bonus = 0.8, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            COMPOUND3 = {Type = 'Product', Amount = 10},
            COMPOUND6 = {Type = 'Product', Amount = 10}
        }
    },
    UT_HEAT_SHOT =
    {
        Technology_Copy_ID = 'UT_SHIPSHOT',
        Required_Tech = 'SHIPSHOTGUN',
        Langauge_Base = 'HEATSHOT',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PHOTONBLASTMOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_HeatTime', Bonus = 0.8, Level = 3},
            {Stats_Type = 'Ship_Weapons_Guns_CoolTime', Bonus = 0.8, Level = 3}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            COMPOUND3 = {Type = 'Product', Amount = 10},
            COMPOUND6 = {Type = 'Product', Amount = 10}
        }
    },
    UT_SUPER_SHOT =
    {
        Technology_Copy_ID = 'UT_SHIPSHOT',
        Required_Tech = 'SHIPSHOTGUN',
        Langauge_Base = 'SUPERSHOT',
        Fragment_Cost = 25000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'AllShipsExceptAlien',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PHOTONBLASTMOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Ship_Weapons_Guns_BulletsPerShot', Bonus = 50, Level = 4},
            {Stats_Type = 'Ship_Weapons_Guns_Range', Bonus = 0, Level = 4},
            {Stats_Type = 'Ship_Weapons_Guns_Dispersion', Bonus = 1.5, Level = 4}
        },
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            BLUE2 = {Type = 'Substance ', Amount = 500},
            COMPOUND4 = {Type = 'Product', Amount = 10}
        }
    },
    UT_COLD2 =
    {
        Technology_Copy_ID = 'UT_COLD',
        Required_Tech = '',
        Langauge_Base = 'COLDR',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTCOLD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ColdDrain', Bonus = 1.5, Level = 2},
        },
        Requirements =
        {
            COLD1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            YELLOW2 = {Type = 'Substance', Amount = 150}
        }
    },
    UT_COLD3 =
    {
        Technology_Copy_ID = 'UT_COLD',
        Required_Tech = '',
        Langauge_Base = 'COLDR',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTCOLD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ColdDrain', Bonus = 2, Level = 3},
        },
        Requirements =
        {
            COLD1 = {Type = 'Substance', Amount = 1000},
            ASTEROID1 = {Type = 'Substance ', Amount = 500},
            YELLOW2 = {Type = 'Substance', Amount = 500}
        }
    },
    UT_COLD4 =
    {
        Technology_Copy_ID = 'UT_COLD',
        Required_Tech = '',
        Langauge_Base = 'COLDR',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTCOLD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ColdDrain', Bonus = 2.5, Level = 4},
        },
        Requirements =
        {
            COLD1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            FARMPROD4 = {Type = 'Product', Amount = 1}
        }
    },
    UT_HEAT2 =
    {
        Technology_Copy_ID = 'UT_HOT',
        Required_Tech = '',
        Langauge_Base = 'HEATR',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTHEAT.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_HeatDrain', Bonus = 1.5, Level = 2},
        },
        Requirements =
        {
            HOT1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            YELLOW2 = {Type = 'Substance', Amount = 150}
        }
    },
    UT_HEAT3 =
    {
        Technology_Copy_ID = 'UT_HOT',
        Required_Tech = '',
        Langauge_Base = 'HEATR',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTHEAT.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_HeatDrain', Bonus = 2, Level = 3},
        },
        Requirements =
        {
            HOT1 = {Type = 'Substance', Amount = 1000},
            ASTEROID1 = {Type = 'Substance ', Amount = 500},
            YELLOW2 = {Type = 'Substance', Amount = 500}
        }
    },
    UT_HEAT4 =
    {
        Technology_Copy_ID = 'UT_HOT',
        Required_Tech = '',
        Langauge_Base = 'HEATR',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTHEAT.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_HeatDrain', Bonus = 2.5, Level = 4},
        },
        Requirements =
        {
            HOT1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            SALVAGE_TECH5 = {Type = 'Product', Amount = 1}
        }
    },
    UT_TOXIC2 =
    {
        Technology_Copy_ID = 'UT_TOX',
        Required_Tech = '',
        Langauge_Base = 'TOXICR',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTTOXIC.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ToxDrain', Bonus = 1.5, Level = 2},
        },
        Requirements =
        {
            TOXIC1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            YELLOW2 = {Type = 'Substance', Amount = 150}
        }
    },
    UT_TOXIC3 =
    {
        Technology_Copy_ID = 'UT_TOX',
        Required_Tech = '',
        Langauge_Base = 'TOXICR',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTTOXIC.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ToxDrain', Bonus = 2, Level = 3},
        },
        Requirements =
        {
            TOXIC1 = {Type = 'Substance', Amount = 1000},
            ASTEROID1 = {Type = 'Substance ', Amount = 500},
            YELLOW2 = {Type = 'Substance', Amount = 500}
        }
    },
    UT_TOXIC4 =
    {
        Technology_Copy_ID = 'UT_TOX',
        Required_Tech = '',
        Langauge_Base = 'TOXICR',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTTOXIC.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ToxDrain', Bonus = 2.5, Level = 4},
        },
        Requirements =
        {
            TOXIC1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            OXY_CRAFT = {Type = 'Product', Amount = 1}
        }
    },
    UT_RAD2 =
    {
        Technology_Copy_ID = 'UT_RAD',
        Required_Tech = '',
        Langauge_Base = 'RADR',
        Fragment_Cost = 500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTRADS.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_ToxDrain', Bonus = 1.5, Level = 2},
        },
        Requirements =
        {
            RADIO1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            YELLOW2 = {Type = 'Substance', Amount = 150}
        }
    },
    UT_RAD3 =
    {
        Technology_Copy_ID = 'UT_RAD',
        Required_Tech = '',
        Langauge_Base = 'RADR',
        Fragment_Cost = 1000,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTRADS.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_RadDrain', Bonus = 2, Level = 3},
        },
        Requirements =
        {
            RADIO1 = {Type = 'Substance', Amount = 1000},
            ASTEROID1 = {Type = 'Substance ', Amount = 500},
            YELLOW2 = {Type = 'Substance', Amount = 500}
        }
    },
    UT_RAD4 =
    {
        Technology_Copy_ID = 'UT_RAD',
        Required_Tech = '',
        Langauge_Base = 'RADR',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.PROTECTRADS.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_RadDrain', Bonus = 2.5, Level = 4},
        },
        Requirements =
        {
            RADIO1 = {Type = 'Substance', Amount = 300},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            WATER_CRAFT = {Type = 'Product', Amount = 50}
        }
    },
    UT_WATER3 =
    {
        Technology_Copy_ID = 'UT_WATER',
        Required_Tech = '',
        Langauge_Base = 'WATERR',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.HELMET.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_WaterDrain', Bonus = 2, Level = 3},
        },
        Requirements =
        {
            YELLOW2 = {Type = 'Substance', Amount = 150},
            ASTEROID1 = {Type = 'Substance ', Amount = 120},
            JELLY = {Type = 'Product', Amount = 50}
        }
    },
    UT_WATER4 =
    {
        Technology_Copy_ID = 'UT_WATER',
        Required_Tech = '',
        Langauge_Base = 'WATERG',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Suit',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.HELMET.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Suit_Protection_WaterDrain', Bonus = 5, Level = 4},
        },
        Requirements =
        {
            ASTEROID1 = {Type = 'Substance', Amount = 500},
            VENTGEM = {Type = 'Product ', Amount = 100},
            PRODFUEL2 = {Type = 'Product', Amount = 100}
        }
    },
    UT_EXOFLAME =
    {
        Technology_Copy_ID = 'MECH_ARMY_R_ARM',
        Required_Tech = '',
        Langauge_Base = 'EXOFLAME',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Exocraft',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.MECH.ARMY.RARM.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Vehicle_GunDamage', Bonus = 3, Level = 3},
            {Stats_Type = 'Vehicle_GunHeatTime', Bonus = 0.75, Level = 1},
            {Stats_Type = 'Vehicle_GunRate', Bonus = 0.08, Level = 1},
            {Stats_Type = 'Weapon_FireDOT', Bonus = 1, Level = 4},
            {Stats_Type = 'Weapon_FireDOT_Duration', Bonus = 3, Level = 4},
            {Stats_Type = 'Weapon_FireDOT_DPS', Bonus = 25, Level = 1}
        },
        Requirements =
        {
            GRENFUEL1 = {Type = 'Product', Amount = 3},
            FUEL2 = {Type = 'Product', Amount = 60},
            TECH_COMP = {Type = 'Product', Amount = 2}
        }
    },
    UT_EXOSTUN =
    {
        Technology_Copy_ID = 'MECH_ARMY_L_ARM',
        Required_Tech = '',
        Langauge_Base = 'EXOSTUN',
        Fragment_Cost = 2500,
        Technology_Rarity = 'VeryRare',
        Technology_Category = 'Exocraft',
        File_Name = 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.STUNDAMAGEMOD.DDS',
        Focus_Locator = '',
        Stat_Bonuses =
        {
            {Stats_Type = 'Vehicle_GunDamage', Bonus = 20, Level = 2},
            {Stats_Type = 'Vehicle_GunHeatTime', Bonus = 0.5, Level = 1},
            {Stats_Type = 'Vehicle_GunRate', Bonus = 0.5, Level = 1}
        },
        Requirements =
        {
            POWERCELL = {Type = 'Product', Amount = 2},
            CASING = {Type = 'Product', Amount = 5}
        }
    }

}

----------------------------------------------------------------------------------------------
-------------------------------     CUSTOM PROCEDURAL TECHNOLOGY     -------------------------
----------------------------------------------------------------------------------------------
local Custom_Procedural_Mods =
{
    ROCKET =
    {
        Product_Copy_ID = 'U_SHIPGUN',
        Proc_Tech_Copy_ID = 'UP_SGUN',
        Template_Name = 'TC_SHIPROCKETS',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 4,
        Multiplier_Per_Rank = 0.2,
        File_Name = 'GRENADE.DDS',
        Proc_Tech_Name = 'UP_SHIPGUN',
        Langauge_Base = 'ROCKPROC',
        Langauge_Base_Proc_Override = 'PRROCK',
        Trade_Setting = Trade_Settings.ShipTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Ship_Weapons_Guns_Damage', Value_Min = 1000, Value_Max = 2500, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Ship_Weapons_Guns_Damage_Radius', Value_Min = 0.9, Value_Max = 1.1, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Ship_Weapons_Guns_BulletsPerShot', Value_Min = 4, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Ship_Weapons_Guns_CoolTime', Value_Min = 0.5, Value_Max = 0.8, Weighting_Curve = 'MaxIsRare', Always_Choose = true},
            {Stats_Type = 'Ship_Weapons_Guns_Dispersion', Value_Min = 1.15, Value_Max = 1.4, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    FLAME =
    {
        Product_Copy_ID = 'U_BOLT',
        Proc_Tech_Copy_ID = 'UP_BOLT',
        Template_Name = 'TC_FLAME',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 4,
        Multiplier_Per_Rank = 0.2,
        File_Name = 'HEAT.DDS',
        Proc_Tech_Name = 'UP_SHOT',
        Langauge_Base = 'FLAME',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.WeapTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Weapon_Projectile_Damage', Value_Min = 1.1, Value_Max = 2.5, Weighting_Curve = 'MaxIsRare', Always_Choose = true},
            {Stats_Type = 'Weapon_Projectile_Rate', Value_Min = 1.25, Value_Max = 1.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Weapon_FireDOT_DPS', Value_Min = 10, Value_Max = 15, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Weapon_FireDOT_Duration', Value_Min = 5, Value_Max = 10, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    ENGY =
    {
        Product_Copy_ID = 'U_ENERGY',
        Proc_Tech_Copy_ID = 'UP_ENGY',
        Template_Name = 'T_ENERGY',
        Highest_Class_No = 3,
        Lowest_Class_No = 1,
        Min_Stats = 2,
        Max_Stats = 2,
        Multiplier_Per_Rank = 0.3,
        File_Name = 'LIFESUPPORT.DDS',
        Proc_Tech_Name = 'UP_LIFEBOOST',
        Langauge_Base = 'ENERGY',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Energy', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Energy_Regen', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
        }
    },
    COLD =
    {
        Product_Copy_ID = 'U_COLDPROT',
        Proc_Tech_Copy_ID = 'UP_COLD',
        Template_Name = 'T_COLDPROT',
        Highest_Class_No = 3,
        Lowest_Class_No = 1,
        Min_Stats = 3,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.3,
        File_Name = 'COLD.DDS',
        Proc_Tech_Name = 'UP_COLDPROT',
        Langauge_Base = 'PRCOLD',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Protection_Cold', Value_Min = 400, Value_Max = 500, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_DamageReduce_Cold', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Protection_ColdDrain', Value_Min = 2, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    HEAT =
    {
        Product_Copy_ID = 'U_HOTPROT',
        Proc_Tech_Copy_ID = 'UP_HOT',
        Template_Name = 'T_HOTPROT',
        Highest_Class_No = 3,
        Lowest_Class_No = 1,
        Min_Stats = 3,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.3,
        File_Name = 'HEAT.DDS',
        Proc_Tech_Name = 'UP_HOTPROT',
        Langauge_Base = 'PRHEAT',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Protection_Heat', Value_Min = 400, Value_Max = 500, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_DamageReduce_Heat', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Protection_HeatDrain', Value_Min = 2, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    TOXIC =
    {
        Product_Copy_ID = 'U_TOX',
        Proc_Tech_Copy_ID = 'UP_TOX',
        Template_Name = 'T_TOX',
        Highest_Class_No = 3,
        Lowest_Class_No = 1,
        Min_Stats = 3,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.3,
        File_Name = 'TOXIC.DDS',
        Proc_Tech_Name = 'UP_TOX',
        Langauge_Base = 'PRTOXIC',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Protection_Radiation', Value_Min = 400, Value_Max = 500, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_DamageReduce_Radiation', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Protection_RadDrain', Value_Min = 2, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    RAD =
    {
        Product_Copy_ID = 'U_RAD',
        Proc_Tech_Copy_ID = 'UP_RAD',
        Template_Name = 'T_RAD',
        Highest_Class_No = 3,
        Lowest_Class_No = 1,
        Min_Stats = 3,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.3,
        File_Name = 'RADIOACTIVE.DDS',
        Proc_Tech_Name = 'UP_RAD',
        Langauge_Base = 'PRRAD',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Protection_Toxic', Value_Min = 400, Value_Max = 500, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_DamageReduce_Toxic', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Protection_ToxDrain', Value_Min = 2, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    SHLD =
    {
        Product_Copy_ID = 'U_SHIELDBOOST',
        Proc_Tech_Copy_ID = 'UP_SHLD',
        Template_Name = 'T_SHIELD',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 2,
        Max_Stats = 2,
        Multiplier_Per_Rank = 0.25,
        File_Name = 'HEALTH.DDS',
        Proc_Tech_Name = 'UP_SHIELDBOOST',
        Langauge_Base = 'SUITSHIELD',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Armour_Shield_Strength', Value_Min = 0.5, Value_Max = 1, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Armour_Health', Value_Min = 50, Value_Max = 50, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
        }
    },
    SHOT =
    {
        Product_Copy_ID = 'U_SHOTGUN',
        Proc_Tech_Copy_ID = 'UP_SHOT',
        Template_Name = 'T_SHOTGUN',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.2,
        File_Name = 'SHOTGUN.DDS',
        Proc_Tech_Name = 'UP_SHOT',
        Langauge_Base = 'SHOT',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.WeapTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Weapon_Projectile_BulletsPerShot', Value_Min = 0.5, Value_Max = 0.75, Weighting_Curve = 'MaxIsRare', Always_Choose = true},
            {Stats_Type = 'Weapon_Projectile_Damage', Value_Min = 8, Value_Max = 10, Weighting_Curve = 'MaxIsRare', Always_Choose = true},
            {Stats_Type = 'Weapon_Projectile_Bounce', Value_Min = 5, Value_Max = 10, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    JET =
    {
        Product_Copy_ID = 'U_JETBOOST',
        Proc_Tech_Copy_ID = 'UP_JET',
        Template_Name = 'T_JET',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 2,
        Max_Stats = 4,
        Multiplier_Per_Rank = 0.25,
        File_Name = 'JETPACK.DDS',
        Proc_Tech_Name = 'UP_JETBOOST',
        Langauge_Base = 'AIRJET',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Jetpack_Refill', Value_Min = 1.75, Value_Max = 3, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Jetpack_Tank', Value_Min = 5, Value_Max = 10, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Jetpack_Ignition', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    },
    WJET =
    {
        Product_Copy_ID = 'U_JETBOOST',
        Proc_Tech_Copy_ID = 'UP_JET',
        Template_Name = 'T_JET',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 2,
        Multiplier_Per_Rank = 0.25,
        File_Name = 'JETPACK.DDS',
        Proc_Tech_Name = 'UP_JETBOOST',
        Langauge_Base = 'WATJET',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.SuitTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Suit_Jetpack_WaterEfficiency', Value_Min = 5, Value_Max = 25, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Suit_Protection_WaterDrain', Value_Min = 1.5, Value_Max = 2.5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
        }
    },
    DRIFT =
    {
        Product_Copy_ID = 'U_EXOBOOST',
        Proc_Tech_Copy_ID = 'UP_BOOST',
        Template_Name = 'T_BOOST',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.25,
        File_Name = 'VEHICLEBOOST.DDS',
        Proc_Tech_Name = 'UP_JETBOOST',
        Langauge_Base = 'DRIFT',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.VehicleTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Vehicle_SkidGrip', Value_Min = -0.05, Value_Max = -0.1, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Vehicle_BoostTanks', Value_Min = 0.6, Value_Max = 0.7, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Vehicle_BoostSpeed', Value_Min = 0.75, Value_Max = 0.95, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
        }
    },
    EXOB =
    {
        Product_Copy_ID = 'U_EXOBOOST',
        Proc_Tech_Copy_ID = 'UP_BOOST',
        Template_Name = 'T_BOOST',
        Highest_Class_No = 4,
        Lowest_Class_No = 1,
        Min_Stats = 1,
        Max_Stats = 3,
        Multiplier_Per_Rank = 0.25,
        File_Name = 'VEHICLEBOOST.DDS',
        Proc_Tech_Name = 'UP_BOOST',
        Langauge_Base = 'MECHBOOST',
        Langauge_Base_Proc_Override = '',
        Trade_Setting = Trade_Settings.VehicleTechSpecialist,
        Stat_Levels =
        {
            {Stats_Type = 'Vehicle_BoostTanks', Value_Min = 2.5, Value_Max = 5, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true},
            {Stats_Type = 'Vehicle_BoostSpeed', Value_Min = 1, Value_Max = 2, Weighting_Curve = 'MaxIsUncommon', Always_Choose = true}
        }
    }
}
----------------------------------------------------------------------------------------------
-------------------------------     Requirements DATA     ------------------------------------
----------------------------------------------------------------------------------------------
local Craftable_Requirements_By_Class =
{
    REQUIREMENT_C =
    {
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 1},
            EX_YELLOW = {Type = 'Substance', Amount = 100},
            STELLAR2 = {Type = 'Substance', Amount = 500}
        },
        Requirement_Cost = 1000
    },
    REQUIREMENT_B =
    {
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 2},
            EX_RED = {Type = 'Substance', Amount = 200},
            STELLAR2 = {Type = 'Substance', Amount = 500}
        },
        Requirement_Cost = 2500
    },
    REQUIREMENT_A =
    {
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 3},
            EX_GREEN = {Type = 'Substance', Amount = 300},
            STELLAR2 = {Type = 'Substance', Amount = 500}
        },
        Requirement_Cost = 5000
    },
    REQUIREMENT_S =
    {
        Requirements =
        {
            TECH_COMP = {Type = 'Product', Amount = 5},
            EX_BLUE = {Type = 'Substance', Amount = 500},
            STELLAR2 = {Type = 'Substance', Amount = 500}
        },
        Requirement_Cost = 10000
    }
}
----------------------------------------------------------------------------------------------
-------------------------------     ITEM TREEES DATA     -------------------------------------
----------------------------------------------------------------------------------------------
local Cost_Types =
{
    FACTORY = 'FACTORY',
    NANITES = 'NANITES'
}

-- You need to add the upgrade mods to the data otherwise you can buy the recipe in the nexus
local Unlockable_Item_Trees =
{
    Ship_Mods_Page1 =
    {
        Item_Trees_Property_Name = 'ShipTech',
        Item_Tree_Main_Tree = 'UI_SHIP_TECH_TREE',
        Item_Tree_Page = 'UI_TECH_TREE_SUB',
        Root_Tech = 'SHIPJUMP1',
        Cost_Type = Cost_Types.NANITES,
        Upgrade_Data =
        {
            {Upgrade_Base = 'UC_ROCKET', Highest_Class_No = 4, Lowest_Class_No = 1}
        }
    },
    Suit_Mods_Page1 =
    {
        Item_Trees_Property_Name = 'SuitTech',
        Item_Tree_Main_Tree = 'UI_SUIT_TECH_TREE',
        Item_Tree_Page = 'UI_TECH_TREE_SUB',
        Root_Tech = 'ENERGY',
        Cost_Type = Cost_Types.NANITES,
        Upgrade_Data =
        {
            { Upgrade_Base = 'UC_ENGY', Highest_Class_No = 3, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_COLD', Highest_Class_No = 3, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_HEAT', Highest_Class_No = 3, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_TOXIC', Highest_Class_No = 3, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_RAD', Highest_Class_No = 3, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_SHLD', Highest_Class_No = 4, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_JET', Highest_Class_No = 4, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_WJET', Highest_Class_No = 4, Lowest_Class_No = 1 }
        }
    },
    Weapon_Mods_Page1 =
    {
        Item_Trees_Property_Name = 'WeapTech',
        Item_Tree_Main_Tree = 'UI_WEAP_TECH_TREE',
        Item_Tree_Page = 'UI_TECH_TREE_SUB',
        Root_Tech = 'LASER',
        Cost_Type = Cost_Types.NANITES,
        Upgrade_Data =
        {
            { Upgrade_Base = 'UC_FLAME', Highest_Class_No = 4, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_SHOT', Highest_Class_No = 4, Lowest_Class_No = 1 }
        }
    },
    Exocraft_Page1 =
    {
        Item_Trees_Property_Name = 'ExocraftTech',
        Item_Tree_Main_Tree = 'UI_EXOCRAFT_TECH_TREE',
        Item_Tree_Page = 'UI_TECH_TREE_SUB',
        Root_Tech = 'VEHICLE_ENGINE',
        Cost_Type = Cost_Types.NANITES,
        Upgrade_Data =
        {
            { Upgrade_Base = 'UC_DRIFT', Highest_Class_No = 4, Lowest_Class_No = 1 },
            { Upgrade_Base = 'UC_EXOB', Highest_Class_No = 4, Lowest_Class_No = 1 }
        }
    },
    Freighter_Page1 =
    {
        Item_Trees_Property_Name = 'FreighterTech',
        Item_Tree_Main_Tree = 'UI_FREIGHTER_TREE',
        Item_Tree_Page = 'UI_TECH_TREE_SUB',
        Root_Tech = 'FRIGATE_FUEL_1',
        Cost_Type = Cost_Types.NANITES,
        Upgrade_Data = {}
    },
    Factory_Page1 =
    {
        Item_Trees_Property_Name = 'CraftProducts',
        Item_Tree_Main_Tree = 'UI_PRODUCT_TREE',
        Item_Tree_Page = 'UI_PRODUCT_TREE_FARM',
        Root_Tech = 'PRODFUEL2',
        Cost_Type = Cost_Types.FACTORY,
        Upgrade_Data = {}
    }
}
----------------------------------------------------------------------------------------------
-------------------------------     USER INPUT     -------------------------------------------
----------------------------------------------------------------------------------------------
local Class_Choice = 1
local Input_Class_Choice =
{
    Class_Choice,
    [[
        What class range do you wish?
        * 1 = C -> S
        * 2 = B -> S
        * 3 = A -> S
        * 4 = S
        Default = 1 | Current = >> ]] .. Class_Choice .. [[ <<
    ]]
}
Class_Choice = GUIF(Input_Class_Choice, 10)
----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = Mode_Name..'.pak',
    MOD_DESCRIPTION = 'Custom mods',
    MOD_AUTHOR = Author,
    ADD_FILES = {},
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = Product_Table_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Technology_Table_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Procedural_Technology_Table_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Default_Reality_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Unlockable_Item_Trees_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = English_Path,
                    EXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = 'GCDEBUGOPTIONS.GLOBAL.MBIN',
                    EXML_CHANGE_TABLE =
                    {
                        {
                            PRECEDING_KEY_WORDS = {'LocTableList'},
                            ADD =
                            [[
                                <Property value='NMSString0x20.xml'>
                                    <Property name='Value' value='NMS_]]..Custom_Language_Tag..[[' />
                                </Property>
                            ]]
                        }
                    }
                }
            }
        }
    }
}

local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][1]['EXML_CHANGE_TABLE']
local Changes_To_Technology_Table = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][2]['EXML_CHANGE_TABLE']
local Changes_To_Procedural_Technology_Table = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][3]['EXML_CHANGE_TABLE']
local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][4]['EXML_CHANGE_TABLE']
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][5]['EXML_CHANGE_TABLE']
local Changes_To_Language = NMS_MOD_DEFINITION_CONTAINER['MODIFICATIONS'][1]['MBIN_CHANGE_TABLE'][6]['EXML_CHANGE_TABLE']
----------------------------------------------------------------------------------------------
-------------------------------     Creating Masters     -------------------------------------
----------------------------------------------------------------------------------------------
function Create_Masters_Sec()
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EMPTY = 'PRODUCT_SEC_MASTER'
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        SEC_EMPTY = 'TECHNOLOGY_SEC_MASTER'
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EMPTY = 'PROCEDURAL_SEC_MASTER'
    }
end

function Create_Shop_Trade_setting_Master(trade_setting)
    if Created_Trade_Settings_Masters[trade_setting] == nil then
        Created_Trade_Settings_Masters[trade_setting] = trade_setting
        Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
        {
            SEC_EMPTY = 'SHOP_'..string.upper(trade_setting)..'_MASTER_SEC'
        }
    end
end

function Add_Masters_Sec()
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {'Table'},
        SEC_ADD_NAMED = 'PRODUCT_SEC_MASTER'
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {'Table'},
        SEC_ADD_NAMED = 'TECHNOLOGY_SEC_MASTER'
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {'Table'},
        SEC_ADD_NAMED = 'PROCEDURAL_SEC_MASTER'
    }
    for _, trade_setting in pairs(Created_Trade_Settings_Masters) do
        Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
        {
            PRECEDING_KEY_WORDS = {'TradeSettings', trade_setting, 'OptionalProducts'},
            SEC_ADD_NAMED = 'SHOP_'..string.upper(trade_setting)..'_MASTER_SEC'
        }
    end
end

----------------------------------------------------------------------------------------------
-------------------------------     Creating Requirements     --------------------------------
----------------------------------------------------------------------------------------------
function Create_Requirement(master_name, Requirement_ID, Requirement_Inventory_Type, Requirement_Amount)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {'ID', 'CASING'},
        PRECEDING_KEY_WORDS = {'GcTechnologyRequirement.xml'},
        SEC_SAVE_TO = 'SINGLE_REQ'
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = 'SINGLE_REQ',
        VALUE_CHANGE_TABLE =
        {
            {'ID', Requirement_ID},
            {'InventoryType', Requirement_Inventory_Type},
            {'Amount', Requirement_Amount}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = master_name,
        ADD_OPTION = 'ADDafterSECTION',
        SEC_ADD_NAMED = 'SINGLE_REQ'
    }
end

function Create_Requirement_Sections(requirement_master_name, Requirements)
    local master_name = 'REQUIREMENTS_MASTER'
    if requirement_master_name ~='' then
        master_name = requirement_master_name
    end
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EMPTY = master_name
    }

    for requirement_id, requirement_values in pairs(Requirements) do
        Create_Requirement(master_name, requirement_id, requirement_values.Type, requirement_values.Amount)
    end
end

----------------------------------------------------------------------------------------------
-------------------------------     Creating Class Requirements     --------------------------
----------------------------------------------------------------------------------------------
function Create_Class_Requirements()
    for requirement_master_name, requirements_data in pairs(Craftable_Requirements_By_Class) do
        Create_Requirement_Sections(requirement_master_name, requirements_data.Requirements)
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating Stat Bonuses     --------------------------------
----------------------------------------------------------------------------------------------
function Create_Stat_Bonus(stat_bonus)
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {'ID', 'UT_SHIPLAS'},
        PRECEDING_KEY_WORDS = {'GcStatsBonus.xml'},
        SEC_SAVE_TO = 'SINGLE_STATBONUS'
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        SEC_EDIT = 'SINGLE_STATBONUS',
        VALUE_CHANGE_TABLE =
        {
            {'StatsType', stat_bonus.Stats_Type},
            {'Bonus', stat_bonus.Bonus},
            {'Level', stat_bonus.Level}
        }
    }
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        SEC_EDIT = 'STAT_BONUSES_MASTER',
        ADD_OPTION = 'ADDafterSECTION',
        SEC_ADD_NAMED = 'SINGLE_STATBONUS'
    }
end

function Create_Stat_Bonus_Sections(Stat_Bonuses)
    Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
    {
        SEC_EMPTY = 'STAT_BONUSES_MASTER'
    }

    for i = 1, #Stat_Bonuses do
        Create_Stat_Bonus(Stat_Bonuses[i])
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating Stat Levels     ---------------------------------
----------------------------------------------------------------------------------------------
function Create_Stat_Level(stat_level, multiplier_per_rank, base_for_multiplier)
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {'ID', 'UP_LASER1'},
        PRECEDING_KEY_WORDS = {'GcProceduralTechnologyStatLevel.xml'},
        SEC_SAVE_TO = 'SINGLE_STATLEVEL'
    }

    local valueMin = stat_level.Value_Max * (1 + (base_for_multiplier * multiplier_per_rank))
    local valueMax = stat_level.Value_Min * (1 + (base_for_multiplier * multiplier_per_rank))
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = 'SINGLE_STATLEVEL',
        VALUE_CHANGE_TABLE =
        {
            {'StatsType', stat_level.Stats_Type},
            {'ValueMax', valueMin},
            {'ValueMin', valueMax},
            {'AlwaysChoose', stat_level.Always_Choose}
        }
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = 'SINGLE_STATLEVEL',
        SPECIAL_KEY_WORDS = {'WeightingCurve', 'GcWeightingCurve.xml'},
        VALUE_CHANGE_TABLE =
        {
            {'WeightingCurve', stat_level.Weighting_Curve}
        }
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = 'STAT_LEVELS_MASTER',
        ADD_OPTION = 'ADDafterSECTION',
        SEC_ADD_NAMED = 'SINGLE_STATLEVEL'
    }
end

function Create_Stat_Level_Sections(Stat_Levels, multiplier_per_rank, base_for_multiplier)
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EMPTY = 'STAT_LEVELS_MASTER'
    }

    for i = 1, #Stat_Levels do
        Create_Stat_Level(Stat_Levels[i], multiplier_per_rank, base_for_multiplier)
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating new Technology Templates     --------------------
----------------------------------------------------------------------------------------------
function Create_New_Technology_Templates()
    for template_id, template_values in pairs(Custom_Templates) do
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {'ID', template_values.Template_Copy_ID},
            SEC_SAVE_TO = template_id..'_TEMPLATE'
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = template_id..'_TEMPLATE',
            VALUE_CHANGE_TABLE =
            {
                {'ID', template_id},
                {'Group', template_values.Group},
                {'Filename', template_values.Icon_File_Name},
                {'RequiredTech', template_values.Required_Tech},
                {'StatsType', template_values.Stats_Type}
            }
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = 'TECHNOLOGY_SEC_MASTER',
            SEC_ADD_NAMED = template_id..'_TEMPLATE'
        }
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating new Technologies     ----------------------------
----------------------------------------------------------------------------------------------
function Create_New_Technology()
    for new_technology_id, technology_data in pairs(Custom_Upgrade_Technology) do
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {'ID', technology_data.Technology_Copy_ID},
            SEC_SAVE_TO = new_technology_id..'_TECHSEC'
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            VALUE_CHANGE_TABLE =
            {
                {'ID', new_technology_id},
                {'Name', technology_data.Langauge_Base..'_NAME'},
                {'NameLower', technology_data.Langauge_Base..'_NAME_LC'},
                {'Description', technology_data.Langauge_Base..'_DESC'},
                {'Subtitle', technology_data.Langauge_Base..'_SUB'},
                {'Filename', technology_data.File_Name},
                {'RequiredTech', technology_data.Required_Tech},
                {'FocusLocator', technology_data.Focus_Locator},
                {'TechnologyCategory', technology_data.Technology_Category}
            }
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            PRECEDING_KEY_WORDS = {'Rarity'},
            VALUE_CHANGE_TABLE =
            {
                {'TechnologyRarity', technology_data.Technology_Rarity}
            }
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            PRECEDING_KEY_WORDS = {'GcTechnologyRequirement.xml'},
            REPLACE_TYPE = 'ALL',
            REMOVE = 'SECTION'
        }
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            PRECEDING_KEY_WORDS = {'GcStatsBonus.xml'},
            REPLACE_TYPE = 'ALL',
            REMOVE = 'SECTION'
        }

        Create_Requirement_Sections(new_technology_id..'_REQUIREMENTS_MASTER', technology_data.Requirements)
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            PRECEDING_KEY_WORDS = {'Requirements'},
            CREATE_HOS = 'TRUE',
            SEC_ADD_NAMED = new_technology_id..'_REQUIREMENTS_MASTER'
        }

        Create_Stat_Bonus_Sections(technology_data.Stat_Bonuses)
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = new_technology_id..'_TECHSEC',
            PRECEDING_KEY_WORDS = {'StatBonuses'},
            CREATE_HOS = 'TRUE',
            SEC_ADD_NAMED = 'STAT_BONUSES_MASTER'
        }

        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SEC_EDIT = 'TECHNOLOGY_SEC_MASTER',
            SEC_ADD_NAMED = new_technology_id..'_TECHSEC'
        }
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating Shopentries     --------------------------------
----------------------------------------------------------------------------------------------
function Create_Shop_Entry(entry_ID, trade_setting)
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        PRECEDING_KEY_WORDS = {'TradeSettings', 'SpaceStation', 'AlwaysPresentProducts', 'NMSString0x10.xml'},
        SEC_SAVE_TO = 'SHOP_ENTRY'
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        SEC_EDIT = 'SHOP_ENTRY',
        VALUE_CHANGE_TABLE =
        {
            {'Value', entry_ID}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        SEC_EDIT = 'SHOP_'..string.upper(trade_setting)..'_MASTER_SEC',
        SEC_ADD_NAMED = 'SHOP_ENTRY'
    }
end
----------------------------------------------------------------------------------------------
-------------------------------     Creating Custom Procedural Mods     ----------------------
----------------------------------------------------------------------------------------------
function Deployable_Technology_Product(product_Id, procedural_Technology_Id, product_copy_ID, class, product_data)
    local Requirement_key = 'REQUIREMENT_'..class
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {'ID', product_copy_ID},
        SEC_SAVE_TO = product_Id..'_PRODSEC'
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = product_Id..'_PRODSEC',
        VALUE_CHANGE_TABLE =
        {
            {'ID', product_Id},
            {'Name', product_data.Langauge_Base..'_NAME'},
            {'NameLower', product_data.Langauge_Base..'_NAME_LC'},
            {'Description', product_data.Langauge_Base..'_DESC'},
            {'Subtitle', product_data.Langauge_Base..'_SUB'},
            {'IsCraftable', true},
            {'DeploysInto', procedural_Technology_Id},
            {'RecipeCost', Craftable_Requirements_By_Class[Requirement_key].Requirement_Cost}
        }
    }

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = product_Id..'_PRODSEC',
        PRECEDING_KEY_WORDS = {'Icon'},
        VALUE_CHANGE_TABLE =
        {
            {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/PROCTECH.'..class..'.'..product_data.File_Name},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = product_Id..'_PRODSEC',
        SPECIAL_KEY_WORDS = {'CraftAmountMultiplier', '1'},
        PRECEDING_KEY_WORDS = {'Requirements'},
        CREATE_HOS = 'TRUE',
        SEC_ADD_NAMED = Requirement_key
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = 'PRODUCT_SEC_MASTER',
        SEC_ADD_NAMED = product_Id..'_PRODSEC'
    }
end

function Pocedural_Technology(procedural_technology_Id, proc_tech_copy_ID, Base_For_Multiplier, class_no, proc_tech_data)
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {'ID', proc_tech_copy_ID},
        SEC_SAVE_TO = procedural_technology_Id..'_PROCSEC'
    }

    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = procedural_technology_Id..'_PROCSEC',
        VALUE_CHANGE_TABLE =
        {
            {'ID', procedural_technology_Id},
            {'Name', proc_tech_data.Proc_Tech_Name},
            {'NumStatsMin', proc_tech_data.Min_Stats},
            {'NumStatsMax', proc_tech_data.Max_Stats},
            {'Template', proc_tech_data.Template_Name},
        }
    }

    if procedural_technology_Id.Langauge_Base_Proc_Override ~= '' then
        Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
        {
            SEC_EDIT = procedural_technology_Id..'_PROCSEC',
            VALUE_CHANGE_TABLE =
            {
                {'Description', proc_tech_data.Langauge_Base_Proc_Override..class_no..'_DESC'},
                {'NameLower', proc_tech_data.Langauge_Base_Proc_Override..class_no..'_NAME_LC'}
            }
        }
    end
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = procedural_technology_Id..'_PROCSEC',
        PRECEDING_KEY_WORDS = {'GcProceduralTechnologyStatLevel.xml'},
        REPLACE_TYPE = 'ALL',
        REMOVE = 'SECTION'
    }

    Create_Stat_Level_Sections(proc_tech_data.Stat_Levels, proc_tech_data.Multiplier_Per_Rank, Base_For_Multiplier)
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = procedural_technology_Id..'_PROCSEC',
        PRECEDING_KEY_WORDS = {'StatLevels'},
        CREATE_HOS = 'TRUE',
        SEC_ADD_NAMED = 'STAT_LEVELS_MASTER'
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        SEC_EDIT = 'PROCEDURAL_SEC_MASTER',
        SEC_ADD_NAMED = procedural_technology_Id..'_PROCSEC'
    }
end

function Create_New_Pocedural_Technology_Products()
    for ID_Base, data in pairs(Custom_Procedural_Mods) do

        local Lowest_Class_No = data.Lowest_Class_No
        local Highest_Class_No = data.Highest_Class_No
        if tonumber(Lowest_Class_No) < Class_Choice then
            Lowest_Class_No = Class_Choice
        end
        if tonumber(Highest_Class_No) < Class_Choice then
            Lowest_Class_No = Highest_Class_No
        end

        for i = Lowest_Class_No, Highest_Class_No do
            local Product_Id = 'UC_'..ID_Base..i
            local Class = Classes[i]
            local Base_For_Multiplier = i
            local Product_Copy_ID = data.Product_Copy_ID..i
            local Proc_Tech_Copy_ID = data.Proc_Tech_Copy_ID..i
            if data.Highest_Class_No < 4 then
                Base_For_Multiplier = i + 1
                Class = Classes[i + 1]
            end
            Procedural_Technology_Id = 'UPC_'..Class..ID_Base..'_'..Class

            Deployable_Technology_Product(Product_Id, Procedural_Technology_Id, Product_Copy_ID, Class, data)
            Pocedural_Technology(Procedural_Technology_Id, Proc_Tech_Copy_ID, Base_For_Multiplier, i, data)
            Create_Shop_Trade_setting_Master(data.Trade_Setting)
            Create_Shop_Entry(Product_Id, data.Trade_Setting)
        end
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     CREATING ITEMTREES    ------------------------------------
----------------------------------------------------------------------------------------------
function Create_New_Tree_Root(item_tree_page_name, item_Trees_Property_Name, tree_Root, cost_Type)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SPECIAL_KEY_WORDS = {item_Trees_Property_Name, 'GcUnlockableItemTrees.xml'},
        PRECEDING_KEY_WORDS = {'Trees', 'GcUnlockableItemTree.xml'},
        SEC_SAVE_TO = item_tree_page_name..'_ROOT_SEC'
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SEC_EDIT = item_tree_page_name..'_ROOT_SEC',
        PRECEDING_KEY_WORDS = { 'GcUnlockableItemTreeNode.xml'},
        REPLACE_TYPE = 'ALL',
        REMOVE = 'SECTION'
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SEC_EDIT = item_tree_page_name..'_ROOT_SEC',
        VALUE_CHANGE_TABLE =
        {
            {'CostTypeID', cost_Type}
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SEC_EDIT = item_tree_page_name..'_ROOT_SEC',
        PRECEDING_KEY_WORDS = {'Root'},
        VALUE_CHANGE_TABLE =
        {
            {'Unlockable', tree_Root}
        }
    }
end

function Create_Item_Tree_Node(upgrade_Mod_ID)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SPECIAL_KEY_WORDS = {'BaseParts', 'GcUnlockableItemTrees.xml', 'Unlockable', 'MAINROOMFRAME'},
        SEC_SAVE_TO = upgrade_Mod_ID..'_ITEM_TREE_NODE'
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        SEC_EDIT = upgrade_Mod_ID..'_ITEM_TREE_NODE',
        VALUE_CHANGE_TABLE =
        {
            {'Unlockable', upgrade_Mod_ID}
        }
    }
end

function Item_Trees_Standard_Upgrades(item_tree_page_name, upgrade_Base, highest_Class_No, lowest_Class_No)
    local Elements_in_branch = 0
    if tonumber(lowest_Class_No) < Class_Choice then
        lowest_Class_No = Class_Choice
    end
    if tonumber(highest_Class_No) < Class_Choice then
        lowest_Class_No = highest_Class_No
    end

    for i = lowest_Class_No, highest_Class_No do
        local Upgrade_Mod_ID = upgrade_Base .. math.floor(i)
        local Previous_Upgrade_Mod_ID = ''
        Elements_in_branch = Elements_in_branch + 1
        Create_Item_Tree_Node(Upgrade_Mod_ID)
        if Elements_in_branch == 1 then
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                SEC_EDIT = item_tree_page_name..'_ROOT_SEC',
                PRECEDING_KEY_WORDS = {'Children'},
                CREATE_HOS = 'TRUE',
                SEC_ADD_NAMED = Upgrade_Mod_ID..'_ITEM_TREE_NODE'
            }
        elseif Elements_in_branch > 1 then
            Previous_Upgrade_Mod_ID = upgrade_Base .. math.floor(i - 1)
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                SEC_EDIT = item_tree_page_name..'_ROOT_SEC',
                SPECIAL_KEY_WORDS = {'Unlockable', Previous_Upgrade_Mod_ID},
                PRECEDING_KEY_WORDS = {'Children'},
                CREATE_HOS = 'TRUE',
                SEC_ADD_NAMED = Upgrade_Mod_ID..'_ITEM_TREE_NODE'
            }
        end
        if Elements_in_branch == item_tree_page_name then
            Elements_in_branch = 0
        end
    end
end

-- <Property name='ShipTech' value='GcUnlockableItemTrees.xml'> --Item_Trees_Property_Name
--   <Property name='Title' value='UI_SHIP_TECH_TREE' /> --Item_Tree_Main_Tree
--   <Property name='Trees'>
--     <Property value='GcUnlockableItemTree.xml'>
--       <Property name='Title' value='UI_TECH_TREE_SUB' /> --Item_Tree_Page
--       <Property name='CostTypeID' value='NANITES' /> --Cost_Type
--       <Property name='Root' value='GcUnlockableItemTreeNode.xml'>
--         <Property name='Unlockable' value='SHIPJUMP1' /> --Root_Tech
function Create_New_Item_Trees()
    for item_tree_page_name, item_tree_page_data in pairs(Unlockable_Item_Trees) do
        local Item_Trees_Property_Name = item_tree_page_data.Item_Trees_Property_Name
        local Item_Tree_Main_Tree = item_tree_page_data.Item_Tree_Main_Tree
        local Item_Tree_Page = item_tree_page_data.Item_Tree_Page
        local Root_Tech = item_tree_page_data.Root_Tech
        local Cost_Type = item_tree_page_data.Cost_Type

        local Upgrade_Data = item_tree_page_data.Upgrade_Data
        Create_New_Tree_Root(item_tree_page_name, Item_Trees_Property_Name, Root_Tech, Cost_Type)
        for i = 1, #Upgrade_Data do
            local Upgrade_Base = Upgrade_Data[i]['Upgrade_Base']
            local Highest_Class_No = Upgrade_Data[i]['Highest_Class_No']
            local Lowest_Class_No = Upgrade_Data[i]['Lowest_Class_No']
            Item_Trees_Standard_Upgrades(item_tree_page_name, Upgrade_Base, Highest_Class_No, Lowest_Class_No)
        end

        Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
        {
            SPECIAL_KEY_WORDS = {'Title', Item_Tree_Main_Tree, 'Title', Item_Tree_Page},
            REPLACE_TYPE = 'ADDAFTERSECTION',
            SEC_ADD_NAMED = item_tree_page_name..'_ROOT_SEC'
        }
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     STATIC ITEM TREE ADDITIONS     ---------------------------
----------------------------------------------------------------------------------------------
function Add_Technologies_To_Item_Trees()
    for i = 1, #Manual_Item_Tree_Additions do
        local Technology_Id = Manual_Item_Tree_Additions[i].Technology_Id
        Create_Item_Tree_Node(Technology_Id)
        Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
        {
            SPECIAL_KEY_WORDS = {'Unlockable', Manual_Item_Tree_Additions[i].Unlockable_root},
            PRECEDING_KEY_WORDS = {'Children'},
            CREATE_HOS = 'TRUE',
            SEC_ADD_NAMED = Technology_Id..'_ITEM_TREE_NODE'
        }
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     EDITING EXISTING TECHNOLGY STATS     ---------------------
----------------------------------------------------------------------------------------------
function Edit_Existing_Technology_Stats()
    for technology_Id, technology_edits_data in pairs(Techology_Edits) do
        local Stat_Bonus_Edits = technology_edits_data.Stat_Bonus_Edits
        local New_Stat_Bonuses = technology_edits_data.New_Stat_Bonuses

        for stat_bonus, state_bonus_new_value in pairs(Stat_Bonus_Edits) do
            Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
            {
                SPECIAL_KEY_WORDS = {'ID', technology_Id},
                PRECEDING_KEY_WORDS = {stat_bonus},
                SECTION_UP = 1,
                VALUE_CHANGE_TABLE =
                {
                    {'Bonus', state_bonus_new_value}
                }
            }
        end

        Create_Stat_Bonus_Sections(New_Stat_Bonuses)
        Changes_To_Technology_Table[#Changes_To_Technology_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {'ID', technology_Id},
            PRECEDING_KEY_WORDS = {'StatBonuses'},
            SEC_ADD_NAMED = 'STAT_BONUSES_MASTER'
        }
    end

end
----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
local Changes_To_Mbin_Change_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
function Create_Langauge_Masters()
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        PRECEDING_KEY_WORDS = {'TkLocalisationEntry.xml'},
        SEC_SAVE_TO = 'EMPTY_LOCAL_ENTRY_MASTER'
    }
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
        VALUE_CHANGE_TABLE =
        {
            {'English', ''}
        }
    }
end

function New_Empty_Language_File(New_Language_File_Name)
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE =
        {
            {'LANGUAGE/NMS_LOC8_ENGLISH.MBIN', New_Language_File_Name}
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE= New_Language_File_Name,
        EXML_CHANGE_TABLE =
        {
            {
                PRECEDING_KEY_WORDS = {'Table'},
                REMOVE = 'SECTION'
            }
        }
    }
    Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
    {
        MBIN_FILE_SOURCE = New_Language_File_Name,
        EXML_CHANGE_TABLE =
        {
            {
                LINE_OFFSET = {3},
                ADD = [[<Property name="Table"></Property>]]
            }
        }
    }
end

function New_Empty_Langauge_Entries(Language)
    Changes_To_Language[#Changes_To_Language + 1] =
    {
        SEC_EMPTY = Language..'_ENTRIES'
    }
end

function Fill_Custom_Language_File(Language, Language_Values)
    for Language_Base, Language_Texts in pairs(Language_Values) do
        Language_Name_Lc_Id = Language_Base..'_NAME_LC'
        Language_Name_Id = Language_Base..'_NAME'
        Language_Desc_Id = Language_Base..'_DESC'
        Language_Sub_Id = Language_Base..'_SUB'

        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Name_Lc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Name_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Desc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = 'EMPTY_LOCAL_ENTRY_MASTER',
            SEC_SAVE_TO = Language_Sub_Id..'_ENTRY'
        }
        --change data inside empty tkloc
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Name_Lc_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Name_Lc_Id},
                {Language, Language_Texts.NAME}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Name_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Name_Id},
                {Language, string.upper(Language_Texts.NAME)}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Desc_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Desc_Id},
                {Language, Language_Texts.DESCRIPTION}
            }
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language_Sub_Id..'_ENTRY',
            VALUE_CHANGE_TABLE =
            {
                {'Id', Language_Sub_Id},
                {Language, Language_Texts.SUBTITLE}
            }
        }
        -- Add singular entry to entries
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Name_Lc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Name_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Desc_Id..'_ENTRY'
        }
        Changes_To_Language[#Changes_To_Language + 1] =
        {
            SEC_EDIT = Language..'_ENTRIES',
            SEC_ADD_NAMED = Language_Sub_Id..'_ENTRY'
        }
    end
end

function Add_Custom_Language_String()
    Create_Langauge_Masters()
    for Language , Language_Values in pairs(Language_Data) do
        New_Language_File_Name = 'LANGUAGE/NMS_'..string.upper(Custom_Language_Tag)..'_'..string.upper(Language)..'.MBIN'
        New_Empty_Language_File(New_Language_File_Name)
        New_Empty_Langauge_Entries(Language)
        Fill_Custom_Language_File(Language, Language_Values)

        Changes_To_Mbin_Change_Table[#Changes_To_Mbin_Change_Table + 1] =
        {
            MBIN_FILE_SOURCE = New_Language_File_Name,
            EXML_CHANGE_TABLE =
            {
                {
                    PRECEDING_KEY_WORDS = {'Table'},
                    SEC_ADD_NAMED = Language..'_ENTRIES'
                }
            }
        }
    end
end
----------------------------------------------------------------------------------------------
-------------------------------     EXECUTING THE FUNCTIONS     ------------------------------
----------------------------------------------------------------------------------------------
Create_Masters_Sec()
Create_Class_Requirements()

Create_New_Technology_Templates()
Create_New_Technology()
Create_New_Pocedural_Technology_Products()
Create_New_Item_Trees()
Add_Technologies_To_Item_Trees()
Edit_Existing_Technology_Stats()
Add_Masters_Sec()

Add_Custom_Language_String()
