NexusModName = "CraftableUpgradeModsAIO"
Author = "jackty89"

Unlockable_Item_Trees_Path = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"
Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
Procedural_Table_Technology_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

Cost_Type_Factory = "FACTORY"
Cost_Type_Nanite = "NANITES"
Ship_Tree = "UI_SHIP_TECH_TREE"
Item_Trees_Ship = "ShipTech"
Suit_Tree = "UI_SUIT_TECH_TREE"
Item_Trees_Suit = "SuitTech"
Weapon_Tree = "UI_WEAP_TECH_TREE"
Item_Trees_Weapon = "WeapTech"
Exocraft_Tree = "UI_EXOCRAFT_TECH_TREE"
Item_Trees_Exocraft = "ExocraftTech"
Freighter_Tree = "UI_FREIGHTER_TREE"
Item_Trees_Freighter = "FreighterTech"
Factory_Tree = "UI_PRODUCT_TREE"
Item_Trees_Factory = "CraftProducts"
Tech_Tree_Sub = "UI_TECH_TREE_SUB"
Tech_Tree_Sub_Factory = "UI_PRODUCT_TREE_FARM"
Ship_Root_Tech = "SHIPJUMP1"
Suit_Root_Tech = "ENERGY"
Weapon_Root_Tech = "LASER"
Exo_Root_Tech = "VEHICLE_ENGINE"
Freighter_Root_Tech = "FRIGATE_FUEL_1"
Factory_Tree_Tech = "PRODFUEL2"
Crafted_Freighter_Mod_Descr_Id = "UP_FR_CRAFTED_DESC"
Custom_Language_Tag = "CustomFrModsDesc"

Is_Craftable_To_True = "True"

Mods_Requirement_Data = {}

Languages =
{
    ["EN"] = "English",
    ["FR"] = "French",
    ["IT"] = "Italian",
    ["DE"] = "German",
    ["ES"] = "Spanish",
    ["RU"] = "Russian",
    ["PL"] = "Polish",
    ["NL"] = "Dutch",
    ["PT"] = "Portuguese",
    ["LA"] = "LatinAmericanSpanish",
    ["BR"] = "BrazilianPortuguese",
    ["Z1"] = "SimplifiedChinese",
    ["ZH"] = "TraditionalChinese",
    ["Z2"] = "TencentChinese",
    ["KO"] = "Korean",
    ["JA"] = "Japanese",
    ["US"] = "USEnglish"
}

Add_New_Language_Text =
{
    {
        ["LANGUAGE_ID"] = "UP_FR_CRAFTED_DESC",
        ["LANGUAGE_ENTRIES"] =
        {
            [Languages["EN"]] = "A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve it's &lt;TECHNOLOGY&gt;Technology&lt;&gt;.",
            [Languages["FR"]] = "Une amélioration de cargo fabriqué.&#xA;&#xA;Peut être redéployée dans votre propre vaisseau amiral pour améliorer sa &lt;TECHNOLOGY&gt;Technologie&lt;&gt;.",
            [Languages["IT"]] = "Un miglioramento per il mercantile.&#xA;&#xA;Può essere utilizzato sulla propria ammiraglia per migliorarne l'&lt;TECHNOLOGY&gt;Tecnologia&lt;&gt;.",
            [Languages["DE"]] = "Ein einsetzbares Frachter-Upgrade.&#xA;&#xA;Kann in dein eigenes Hauptschiff wiedereingebaut werden, um dessen &lt;TECHNOLOGY&gt;Technologie&lt;&gt; zu verbessern.",
            [Languages["ES"]] = "Una mejora del carguero hecha a mano.&#xA;&#xA;Se puede volver a desplegar en tu propia nave principal para mejorar su &lt;TECHNOLOGY&gt;Tecnología&lt;&gt;.",
            [Languages["RU"]] = "Модернизация грузового корабля.&#xA;&#xA;Может быть переоборудована в ваш собственный капитальный корабль для улучшения его &lt;TECHNOLOGY&gt;Technology&lt;&gt;.",
            [Languages["PL"]] = "Rozmieszczalne ulepszenie frachtowca. MoÅ¼na ponownie zainstalowaÄ na wÅasnym statku gÅównym, aby ulepszyÄ jego &lt;TECHNOLOGY&gt;technologie&lt;&gt;.",
            [Languages["NL"]] = "Een upgrade gemaakt voor een vlaggenschip.&#xA;&#xA;Kan worden geïnstalleerd in je eigen vlaggenschip om de &lt;TECHNOLOGY&gt;Technologie&lt;&gt; te verbeteren.",
            [Languages["PT"]] = "Uma atualização do cargueiro implementável.&#xA;&#xA;Pode ser reimplementada na sua própria nave capital para melhorar o &lt;TECHNOLOGY&gt;Tecnologia&lt;&gt;.",
            [Languages["LA"]] = "Una mejora del carguero hecha a mano.&#xA;&#xA;Se puede volver a desplegar en tu propia nave principal para mejorar su &lt;TECHNOLOGY&gt;Tecnología&lt;&gt;.",
            [Languages["BR"]] = "Uma atualização implantável de nave cargueira.&#xA;&#xA;Pode ser reimplantada na sua nave capital para melhorar o &lt;TECHNOLOGY&gt;Tecnologia&lt;&gt; dela.",
            [Languages["Z1"]] = "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。",
            [Languages["ZH"]] = "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。",
            [Languages["Z2"]] = "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。",
            [Languages["KO"]] = "Please provide translation in the comments. A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve it's &lt;TECHNOLOGY&gt;Technology&lt;&gt;.",
            [Languages["JA"]] = "Please provide translation in the comments. A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve it's &lt;TECHNOLOGY&gt;Technology&lt;&gt;.",
            [Languages["US"]] = "A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve its &lt;TECHNOLOGY&gt;Technology&lt;&gt;."
        }
    }
}

General_Upgrade_Mods =
{
    --ShipMods
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Ship_Tree,
            ["TREE_ROOT"] = Ship_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Ship,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_LAUNCH", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_HYPER", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPSHIELD", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_PULSE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPSHOT", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPMINI", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPBLOB", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIPLAS", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"}
        }
    },
    --SuitMods
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Suit_Tree,
            ["TREE_ROOT"] = Suit_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Suit,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_UNW", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_TOX", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_COLDPROT", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_HOTPROT", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_RAD", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_ENERGY", ["NO_OF_UPGRADES"] = "3", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHIELDBOOST", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_JETBOOST", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"}
        }
    },
    --WeaponMods
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Weapon_Tree,
            ["TREE_ROOT"] = Weapon_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Weapon,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_RAIL", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_BOLT", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_TGRENADE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_LASER", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SCANNER", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_GRENADE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SHOTGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_SMG", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_CANNON", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"}
        }
    },
    --ExoCraftMods
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Exocraft_Tree,
            ["TREE_ROOT"] = Exo_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Exocraft,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_EXOBOOST", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_EXOGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_EXO_ENG", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_EXOLAS", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_EXO_SUB", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_EXO_SUBGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "U_MECHGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "2"},
            {["ID_BASE"] = "U_MECH_ENG", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "2"},
            {["ID_BASE"] = "U_MECHLAS", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "2"}
        }
    }

}

Bio_Ship_Mods =
{
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Ship_Tree,
            ["TREE_ROOT"] = Ship_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Ship,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "AP_SHIPLAS", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "AP_LAUNCH", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "AP_PULSE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "AP_SHIPSHIELD", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "AP_HYPER", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"},
            {["ID_BASE"] = "AP_SHIPGUN", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1"}
        }
    }
}

Special_Mods =
{
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Factory_Tree,
            ["TREE_ROOT"] = Factory_Tree_Tech,
            ["COST_TYPE"] = Cost_Type_Factory,
            ["ITEM_TREE"] = Item_Trees_Factory,
            ["TECH_SUB"] = Tech_Tree_Sub_Factory
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_HAZARDX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_JETBOOSTX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIELDBOOSTX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_ENERGYX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_HYPERX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPSHIELDX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_PULSEX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_LAUNCHX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPGUNX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPMINIX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPSHOTX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPLASX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHIPBLOBX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_LASERX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SCANNERX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SHOTGUNX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SMGX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_RAILX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_BOLTX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_TGRENADEX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_GRENADEX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_CANNONX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SENTGUN", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "U_SENTSUIT", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_SGUNBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_SMARTBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_GUNBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_TECHBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_CLASSBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_CARBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_HAZBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""},
            {["ID_BASE"] = "ROGUE_STARTBOX", ["NO_OF_UPGRADES"] = "", ["START_NO"] = ""}
        }
    }
}

Custom_Freighter_Mod_Data =
{
    {
        ["ITEMTREE_DATA"] =
        {
            ["MAINTREE"] = Freighter_Tree,
            ["TREE_ROOT"] = Freighter_Root_Tech,
            ["COST_TYPE"] = Cost_Type_Nanite,
            ["ITEM_TREE"] = Item_Trees_Freighter,
            ["TECH_SUB"] = Tech_Tree_Sub
        },
        ["UPGRADE_DATA"] =
        {
            {["ID_BASE"] = "U_FREIG_SPE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "SPEED", ["PRODUCT_COPY"] = "U_FR_SPE", ["PROCTECH_COPY"] = "UP_FRSPE"},
            {["ID_BASE"] = "U_FREIG_COM", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "COM", ["PRODUCT_COPY"] = "U_FR_COM", ["PROCTECH_COPY"] = "UP_FRCOM"},
            {["ID_BASE"] = "U_FREIG_EXP", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "EXP", ["PRODUCT_COPY"] = "U_FR_EXP", ["PROCTECH_COPY"] = "UP_FREXP"},
            {["ID_BASE"] = "U_FREIG_FUEL", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "FUEL", ["PRODUCT_COPY"] = "U_FR_FUEL", ["PROCTECH_COPY"] = "UP_FRFUE"},
            {["ID_BASE"] = "U_FREIG_MINE", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "MINE", ["PRODUCT_COPY"] = "U_FR_MINE", ["PROCTECH_COPY"] = "UP_FRMIN"},
            {["ID_BASE"] = "U_FREIG_TRA", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "TRADE", ["PRODUCT_COPY"] = "U_FR_TRA", ["PROCTECH_COPY"] = "UP_FRTRA"},
            {["ID_BASE"] = "U_FREIG_HYP", ["NO_OF_UPGRADES"] = "4", ["START_NO"] = "1", ["NAME_BASE"] = "HYP", ["PRODUCT_COPY"] = "U_FR_HYP", ["PROCTECH_COPY"] = "UP_FRHYP"}
        }
    }
}

Invetory_Type = {["Substance"] = "Substance", ["Product"] = "Product"}

Requirements =
{
    {
        ["SECTION_NAME"] = "REQUIREMENT_C",
        ["REQUIREMENT_ELEMENTS"] =
        {
            {"EX_YELLOW", "100", Invetory_Type["Substance"]},
            {"TECH_COMP", "1", Invetory_Type["Product"]},
            {"STELLAR2", "500", Invetory_Type["Substance"]},
        },
        ["REQUIREMENT_COST"] = "1000"
    },
    {
        ["SECTION_NAME"] = "REQUIREMENT_B",
        ["REQUIREMENT_ELEMENTS"] =
        {
            {"EX_RED", "200", Invetory_Type["Substance"]},
            {"TECH_COMP", "2", Invetory_Type["Product"]},
            {"STELLAR2", "500", Invetory_Type["Substance"]},
        },
        ["REQUIREMENT_COST"] = "2500"
    },
    {
        ["SECTION_NAME"] = "REQUIREMENT_A",
        ["REQUIREMENT_ELEMENTS"] = {
            --A Requirement
            {"EX_GREEN", "300", Invetory_Type["Substance"]},
            {"TECH_COMP", "3", Invetory_Type["Product"]},
            {"STELLAR2", "500", Invetory_Type["Substance"]},
        },
        ["REQUIREMENT_COST"] = "5000"
    },
    {
        ["SECTION_NAME"] = "REQUIREMENT_S",
        ["REQUIREMENT_ELEMENTS"] =
        {
            --S Requirement
            {"EX_BLUE", "500", Invetory_Type["Substance"]},
            {"TECH_COMP", "5", Invetory_Type["Product"]},
            {"STELLAR2", "500", Invetory_Type["Substance"]},
        },
        ["REQUIREMENT_COST"] = "10000"
    },
    {
        ["SECTION_NAME"] = "REQUIREMENT_X",
        ["REQUIREMENT_ELEMENTS"] =
        {
            --X Requirement
            {"EX_RED", "300", Invetory_Type["Substance"]},
            {"EX_BLUE", "300", Invetory_Type["Substance"]},
            {"TECH_COMP", "5", Invetory_Type["Product"]},
        },
        --Factory/Synthesis station uses a multiplier of X250 so 20*250=5000
        ["REQUIREMENT_COST"] = "20"
    }
}

Class_Choice = 4
Input_Class_Choice =
{
    Class_Choice,
    [[
        What class range do you wish?
        * 1 = C -> S
        * 2 = B -> S
        * 3 = A -> S
        * 4 = S
        Default = 4 | Current = >> ]] .. Class_Choice .. [[ <<
    ]]
}
Class_Choice = GUIF(Input_Class_Choice, 10)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = NexusModName..".pak",
    ["MOD_DESCRIPTION"] = "",
    ["MOD_AUTHOR"] = Author,
    ["ADD_FILES"] =
    {
    },
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = Product_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = Procedural_Table_Technology_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    -- Add recipes to the Tree
                    ["MBIN_FILE_SOURCE"] = Unlockable_Item_Trees_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] =
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..Custom_Language_Tag..[[" />
                                </Property>
                            ]]
                        }
                    }
                }
            }
        }
    }
}

local Add_Custom_Language_Files = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Procedural_Technology_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_To_Unlockable_Item_Trees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

function New_Language_File_Entry(newDescId)
    local result =
    [[
    <Property value="TkLocalisationEntry.xml">
        <Property name="Id" value="]]..newDescId..[[" />
        <Property name="English" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="French" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Italian" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="German" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Spanish" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Russian" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Polish" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Dutch" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Portuguese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="BrazilianPortuguese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="SimplifiedChinese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="TraditionalChinese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="TencentChinese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Korean" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="Japanese" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
        <Property name="USEnglish" value="VariableSizeString.xml">
            <Property name="Value" value="" />
        </Property>
    </Property>
    ]]

    return result
end

function Get_All_Mod_Ids_And_Add_Requiement_Cost_And_Section_Name(Mod_Data)
    for i = 1, #Mod_Data do
        local Mod_Upgrade_Data = Mod_Data[i]["UPGRADE_DATA"]
        for j = 1, #Mod_Upgrade_Data do
            local Upgrade_Mod = Mod_Upgrade_Data[j]["ID_BASE"]
            local Number_Of_Upgrades = Mod_Upgrade_Data[j]["NO_OF_UPGRADES"]
            local Starting_Number_Upgrade = Mod_Upgrade_Data[j]["START_NO"]
            if Number_Of_Upgrades == "" or Starting_Number_Upgrade == "" then
                Mods_Requirement_Data[#Mods_Requirement_Data +1] =
                {
                    ["MOD_ID"] = Upgrade_Mod ,
                    ["REQUIREMENT_SEC_ID"] = Requirements[#Requirements]["SECTION_NAME"],
                    ["REQUIREMENT_COST"] = Requirements[#Requirements]["REQUIREMENT_COST"],
                }
            else
                if tonumber(Starting_Number_Upgrade) < Class_Choice then
                    Starting_Number_Upgrade = ""..Class_Choice
                end
                if tonumber(Number_Of_Upgrades) < Class_Choice then
                    Starting_Number_Upgrade = ""..Number_Of_Upgrades
                end

                for l = Starting_Number_Upgrade, Number_Of_Upgrades do
                    if Number_Of_Upgrades ~= "4" then
                        Mods_Requirement_Data[#Mods_Requirement_Data +1] =
                        {
                            ["MOD_ID"] = Upgrade_Mod..math.floor(l) ,
                            ["REQUIREMENT_SEC_ID"] = Requirements[l +1]["SECTION_NAME"],
                            ["REQUIREMENT_COST"] = Requirements[l +1]["REQUIREMENT_COST"],
                        }
                    else
                        Mods_Requirement_Data[#Mods_Requirement_Data +1] =
                        {
                            ["MOD_ID"] = Upgrade_Mod..math.floor(l) ,
                            ["REQUIREMENT_SEC_ID"] = Requirements[l]["SECTION_NAME"],
                            ["REQUIREMENT_COST"] = Requirements[l]["REQUIREMENT_COST"],
                        }
                    end
                end
            end
        end
    end
end

function Create_Requirement(Requirement)
    local RequirementID = Requirement[1]
    local RequirementAmount = Requirement[2]
    local RequirementInventoryType = Requirement[3]

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},
        ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
        ["SEC_SAVE_TO"] = "SINGLE_REQ",
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
end

function Create_Requirement_Sections()
    for i = 1, #Requirements do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
            ["SEC_SAVE_TO"] = Requirements[i]["SECTION_NAME"],
        }

        RequirementsArray = Requirements[i]["REQUIREMENT_ELEMENTS"]
        for j = 1, #RequirementsArray do
            Create_Requirement(RequirementsArray[j])
            Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
            {
                ["SEC_EDIT"] = Requirements[i]["SECTION_NAME"],
                ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
                ["ADD_OPTION"] = "ADDafterSECTION",
                ["SEC_ADD_NAMED"] = "SINGLE_REQ"
            }
        end
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SEC_EDIT"] = Requirements[i]["SECTION_NAME"],
            ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
            ["REMOVE"] = "SECTION",
        }
    end
end

function New_Languague_File(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function New_Language_Entry(Language, Language_Text)
    return
    [[
        <Property name="]]..Language..[[" value="VariableSizeString.xml">
            <Property name="Value" value="]]..Language_Text..[[" />
        </Property>
    ]]
end

function New_Language_File_Entry(Language_ID, Language_Entries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..Language_ID..[[" />
            ]]..Language_Entries..[[
        </Property>
    ]]
end

function Fill_Custom_Language_File(Language)
    local Language_Entries = {}
    local Language_File_Entries = {}
    local Language_ID = ""
    for i = 1, #Add_New_Language_Text do
        Language_ID = Add_New_Language_Text[i]["LANGUAGE_ID"]
        local Language_Text_Entries = Add_New_Language_Text[i]["LANGUAGE_ENTRIES"]
        local Language_Text = Language_Text_Entries[Language]
        table.insert(Language_Entries, New_Language_Entry(Language, Language_Text))
    end
    table.insert(Language_File_Entries, New_Language_File_Entry(Language_ID, table.concat(Language_Entries)))

    return New_Languague_File(table.concat(Language_File_Entries))
end

function Language_File_Creation()
    for _Key , Language in pairs(Languages) do
        Add_Custom_Language_Files[#Add_Custom_Language_Files +1] =
        {
            ["FILE_DESTINATION"] = "LANGUAGE/NMS_"..Custom_Language_Tag.."_"..Language..".EXML",
            ["FILE_CONTENT"] = Fill_Custom_Language_File(Language)
        }
    end
end

function Class_Strings(UpgradeNumber)
    --Deployfront, deployend, basevalue, normalisOnOff, iconBase, quality, weightingcurve
    if UpgradeNumber == 4 then
        --S-Class
        return {"UP_S","_S"}
    elseif UpgradeNumber == 3 then
        --A-Class
        return {"UP_A","_A"}
    elseif UpgradeNumber == 2 then
        --B-Class
        return {"UP_B","_B"}
    elseif UpgradeNumber == 1 then
        --C-Class
        return {"UP_C","_C"}
    end
end

function Create_New_Custom_Mod_Deploys(Copy_Deploy_ID, ModDeployID)
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", Copy_Deploy_ID},
        ["SEC_SAVE_TO"] = ModDeployID.."PROCSEC",
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = ModDeployID.."PROCSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", ModDeployID},
            {"Description", Crafted_Freighter_Mod_Descr_Id}
        }
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = "PROC_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER1"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = ModDeployID.."PROCSEC",
    }
end

function Create_New_Custom_Mod(Copy_Mod_ID, ModID, ModName, ModNameL,ModDeploysInto)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", Copy_Mod_ID},
        ["SEC_SAVE_TO"] = ModID.."PRODSEC",
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = ModID.."PRODSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", ModID},
            {"Name", ModName},
            {"NameLower", ModNameL},
            {"DeploysInto", ModDeploysInto},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Description", "VariableSizeString.xml"},
        ["SEC_EDIT"] = ModID.."PRODSEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", Crafted_Freighter_Mod_Descr_Id},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = ModID.."PRODSEC",
    }
end

function Create_Custom_Freighter_Mods()
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["SEC_SAVE_TO"] = "PRODUCT_SEC_MASTER",
    }

    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER1"},
        ["SEC_SAVE_TO"] = "PROC_SEC_MASTER",
    }

    -- Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    -- {
    --     ["SEC_EMPTY"] = "PRODUCT_SEC_MASTER",
    -- }

    -- Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    -- {
    --     ["SEC_EMPTY"] = "PROC_SEC_MASTER",
    -- }
    for i = 1, #Custom_Freighter_Mod_Data do
        local Custom_Freighter_Upgrade_Data = Custom_Freighter_Mod_Data[i]["UPGRADE_DATA"]
        for l = 1, #Custom_Freighter_Upgrade_Data do
            local Upgrade_Data = Custom_Freighter_Upgrade_Data[l]

            local Number_Of_Upgrades = Upgrade_Data["NO_OF_UPGRADES"]
            local Starting_Number_Upgrade = Upgrade_Data["START_NO"]
            if tonumber(Starting_Number_Upgrade) < Class_Choice then
                Starting_Number_Upgrade = ""..Class_Choice
            end
            if tonumber(Number_Of_Upgrades) < Class_Choice then
                Starting_Number_Upgrade = ""..Number_Of_Upgrades
            end
            local Name_Base = Upgrade_Data["NAME_BASE"]
            local Deploy_Base = string.lower(string.gsub(Upgrade_Data["ID_BASE"], "U_FREIG_",""))
            local Mod_Name_ID = "UP_FR_"..Name_Base.."_NAME"
            local Mod_Name_LID = "UP_FR_"..Name_Base.."_NAME_L"
            for j = Number_Of_Upgrades,  Starting_Number_Upgrade, -1 do
                local Class_Number = math.floor(j)
                local Upgrade_Mod_ID = Upgrade_Data["ID_BASE"]..Class_Number
                local Copy_Mod_ID = Upgrade_Data["PRODUCT_COPY"]..Class_Number
                local Copy_Deploy_ID = Upgrade_Data["PROCTECH_COPY"]..Class_Number

                local Mod_Class_Data_And_Strings = Class_Strings(Class_Number)
                local Deploys_Into = Mod_Class_Data_And_Strings[1]..string.upper(Deploy_Base).."DEPLOY"..Mod_Class_Data_And_Strings[2]

                Create_New_Custom_Mod(Copy_Mod_ID, Upgrade_Mod_ID, Mod_Name_ID, Mod_Name_LID, Deploys_Into)
                Create_New_Custom_Mod_Deploys(Copy_Deploy_ID, Deploys_Into)
            end
        end
    end

    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "POWERCELL2"},
        ["REMOVE"] = "SECTION",
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["SEC_EDIT"] = "PROC_SEC_MASTER",
        ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER1"},
        ["REMOVE"] = "SECTION",
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "PRODUCT_SEC_MASTER",
    }
    Changes_To_Procedural_Technology_Table[#Changes_To_Procedural_Technology_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "PROC_SEC_MASTER",
    }
end

function Create_Master_table_Upgrades()
    local Upgrade_master_table = {}
    for i = 1, #General_Upgrade_Mods do
        table.insert(Upgrade_master_table, General_Upgrade_Mods[i])
    end
    for i = 1, #Bio_Ship_Mods do
        table.insert(Upgrade_master_table, Bio_Ship_Mods[i])
    end
    for i = 1, #Custom_Freighter_Mod_Data do
        table.insert(Upgrade_master_table, Custom_Freighter_Mod_Data[i])
    end
    return Upgrade_master_table
end

function Create_New_Tree_Root(Main_Tree, Item_Tree, Tree_Root, Cost_Type)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {Item_Tree, "GcUnlockableItemTrees.xml"},
        ["PRECEDING_KEY_WORDS"] = {"Trees", "GcUnlockableItemTree.xml"},
        ["SEC_SAVE_TO"] = Main_Tree.."_ROOT_SEC"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = Main_Tree.."_ROOT_SEC",
        ["PRECEDING_KEY_WORDS"] = { "GcUnlockableItemTreeNode.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = Main_Tree.."_ROOT_SEC",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"CostTypeID", Cost_Type},
        }
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = Main_Tree.."_ROOT_SEC",
        ["PRECEDING_KEY_WORDS"] = {"Root"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", Tree_Root},
        }
    }
end

function Create_Item_Tree_Node(Item_Id)
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"BaseParts", "GcUnlockableItemTrees.xml", "Unlockable", "MAINROOMFRAME"},
        ["SEC_SAVE_TO"] = "ITEM_TREE_NODE"
    }
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
    {
        ["SEC_EDIT"] = "ITEM_TREE_NODE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Unlockable", Item_Id},
        }
    }
end

function Item_Trees_Standard_Upgrades(Main_Tree, Mod_Id_Base,Mod_No_Upgrades, Mod_Start_No)
    local Elements_in_branch = 0
    if tonumber(Mod_Start_No) < Class_Choice then
        Mod_Start_No = ""..Class_Choice
    end
    if tonumber(Mod_No_Upgrades) < Class_Choice then
        Mod_Start_No = ""..Mod_No_Upgrades
    end

    for i = Mod_Start_No, Mod_No_Upgrades do
        local Mod_ID = Mod_Id_Base .. math.floor(i)
        local Old_Mod_ID = ""
        Elements_in_branch = Elements_in_branch +1
        Create_Item_Tree_Node(Mod_ID)
        if Elements_in_branch == 1 then
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                ["SEC_EDIT"] = Main_Tree.."_ROOT_SEC",
                ["PRECEDING_KEY_WORDS"] = {"Children"},
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
            }
        elseif Elements_in_branch > 1 then
            Old_Mod_ID = Mod_Id_Base .. math.floor(i -1)
            Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
            {
                ["SEC_EDIT"] = Main_Tree.."_ROOT_SEC",
                ["SPECIAL_KEY_WORDS"] = {"Unlockable", Old_Mod_ID},
                ["PRECEDING_KEY_WORDS"] = {"Children"},
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
            }
        end
        if Elements_in_branch == Mod_No_Upgrades then
            Elements_in_branch = 0
        end
    end
end

function Item_Trees_Special_Upgrades()
    local Main_Tree = ""
    local Tech_Sub = ""
    local Root_Sec_Sub = "SPECIAL_CLASS"

    for j = 1, #Special_Mods do
        local Elements_in_branch = 0
        Main_Tree = Special_Mods[j]["ITEMTREE_DATA"]["MAINTREE"]
        local Tree_Root = Special_Mods[j]["ITEMTREE_DATA"]["TREE_ROOT"]
        local Item_Tree = Special_Mods[j]["ITEMTREE_DATA"]["ITEM_TREE"]
        local Cost_Type = Special_Mods[j]["ITEMTREE_DATA"]["COST_TYPE"]
        Tech_Sub = Special_Mods[j]["ITEMTREE_DATA"]["TECH_SUB"]

        local Upgrades = Special_Mods[j]["UPGRADE_DATA"]
        Create_New_Tree_Root(Root_Sec_Sub, Item_Tree, Tree_Root, Cost_Type)
        for i = 1, #Upgrades do
            Mod_Id_Base = Upgrades[i]["ID_BASE"]
            Old_Mod_Id_Base = ""
            Elements_in_branch = Elements_in_branch +1
            Create_Item_Tree_Node(Mod_Id_Base)
            if Elements_in_branch == 1 then
                Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
                {
                    ["SEC_EDIT"] = Root_Sec_Sub.."_ROOT_SEC",
                    ["PRECEDING_KEY_WORDS"] = {"Children"},
                    ["CREATE_HOS"] = "TRUE",
                    ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
                }
            elseif Elements_in_branch > 1 then
                Old_Mod_Id_Base = Upgrades[i -1]["ID_BASE"]
                Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees + 1] =
                {
                    ["SEC_EDIT"] = Root_Sec_Sub.."_ROOT_SEC",
                    ["SPECIAL_KEY_WORDS"] = {"Unlockable", Old_Mod_Id_Base},
                    ["PRECEDING_KEY_WORDS"] = {"Children"},
                    ["CREATE_HOS"] = "TRUE",
                    ["SEC_ADD_NAMED"] = "ITEM_TREE_NODE"
                }
            end
            if Elements_in_branch == 4 then
                Elements_in_branch = 0
            end
        end
    end
    Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", Main_Tree, "Title", Tech_Sub},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["SEC_ADD_NAMED"] = Root_Sec_Sub.."_ROOT_SEC"
    }
end

function Create_New_Item_Trees()
    local Upgrade_master_table = Create_Master_table_Upgrades()
    for j = 1, #Upgrade_master_table do
        local Main_Tree = Upgrade_master_table[j]["ITEMTREE_DATA"]["MAINTREE"]
        local Tree_Root = Upgrade_master_table[j]["ITEMTREE_DATA"]["TREE_ROOT"]
        local Item_Tree = Upgrade_master_table[j]["ITEMTREE_DATA"]["ITEM_TREE"]
        local Cost_Type = Upgrade_master_table[j]["ITEMTREE_DATA"]["COST_TYPE"]
        local Tech_Sub = Upgrade_master_table[j]["ITEMTREE_DATA"]["TECH_SUB"]

        Upgrades = Upgrade_master_table[j]["UPGRADE_DATA"]
        Create_New_Tree_Root(Main_Tree, Item_Tree, Tree_Root, Cost_Type)
        for k = 1, #Upgrades do
            local Mod_Id_Base = Upgrades[k]["ID_BASE"]
            local Mod_No_Upgrades = Upgrades[k]["NO_OF_UPGRADES"]
            local Mod_Start_No = Upgrades[k]["START_NO"]
            Item_Trees_Standard_Upgrades(Main_Tree, Mod_Id_Base,Mod_No_Upgrades, Mod_Start_No)
        end

        Changes_To_Unlockable_Item_Trees[#Changes_To_Unlockable_Item_Trees +1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"Title", Main_Tree, "Title", Tech_Sub},
            ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            ["SEC_ADD_NAMED"] = Main_Tree.."_ROOT_SEC"
        }
    end
    Item_Trees_Special_Upgrades()
end

function Add_Requirements_And_Enable_Craftable_To_All_Mods()
    for i = 1, #Mods_Requirement_Data do
        local ProdModID = Mods_Requirement_Data[i]["MOD_ID"]
        local RequirementSectionName = Mods_Requirement_Data[i]["REQUIREMENT_SEC_ID"]
        local RecipeCost = Mods_Requirement_Data[i]["REQUIREMENT_COST"]

        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", ProdModID, "CraftAmountMultiplier", "1"},
            ["PRECEDING_KEY_WORDS"] = {"Requirements"},
            ["CREATE_HOS"] = "TRUE",
            ["SEC_ADD_NAMED"] = RequirementSectionName
        }

        Changes_To_Product_Table[#Changes_To_Product_Table +1] =
        {
            ["SPECIAL_KEY_WORDS"] = {"ID", ProdModID},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"IsCraftable", Is_Craftable_To_True},
                {"RecipeCost", RecipeCost}
            }
        }
    end
end

Language_File_Creation()
Create_Custom_Freighter_Mods()
Create_Requirement_Sections()

Create_New_Item_Trees()
Get_All_Mod_Ids_And_Add_Requiement_Cost_And_Section_Name(Special_Mods)
Get_All_Mod_Ids_And_Add_Requiement_Cost_And_Section_Name(Custom_Freighter_Mod_Data)
Get_All_Mod_Ids_And_Add_Requiement_Cost_And_Section_Name(General_Upgrade_Mods)
Get_All_Mod_Ids_And_Add_Requiement_Cost_And_Section_Name(Bio_Ship_Mods)

Add_Requirements_And_Enable_Craftable_To_All_Mods()