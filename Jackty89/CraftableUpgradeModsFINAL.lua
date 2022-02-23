GameVersion = "3_80"
NexusModName = "CraftableUpgradeMods"
Author = "jackty89"

UnlockableItemTreesPath = "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN"
GCProductTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"
GCProcTechnologyPath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

CostTypeFactory = "FACTORY"
CostTypeNanite = "NANITES"

ShipTree = "UI_SHIP_TECH_TREE"
SuitTree = "UI_SUIT_TECH_TREE"
WeaponTree = "UI_WEAP_TECH_TREE"
ExoCraftTree = "UI_EXOCRAFT_TECH_TREE"
FreighterTree = "UI_FREIGHTER_TREE"
FactoryTree = "UI_PRODUCT_TREE"

TechTreeSub = "UI_TECH_TREE_SUB"
TechTreeSubFactory = "UI_PRODUCT_TREE_FARM"

ShipRootTech = "SHIPJUMP1"
SuitRootTech = "ENERGY"
WeaponRootTech = "LASER"
ExoRootTech = "VEHICLE_ENGINE"
FreighterRootTech = "FRIGATE_FUEL_1"
FactoryTreeTech = "PRODFUEL2"

CraftedFreighterModDescrId = "UP_FR_CRAFTED_DESC"

IsCraftableToTrue = "True"

IdArray = {}
SubList = {}

Languages =
{
	"English",
	"French",
	"Italian",
	"German",
	"Spanish",
	"Russian",
	"Polish",
	"Dutch",
	"Portuguese",
	"LatinAmericanSpanish",
	"BrazilianPortuguese",
	"SimplifiedChinese",
	"TraditionalChinese",
	"TencentChinese",
	"Korean",
	"Japanese",
	"USEnglish"
}

AddNewLanguatext =
{
    {Languages[1], "A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve its &lt;TECHNOLOGY&gt;Technology&lt;&gt;."},
    {Languages[2], "Une amélioration de cargo fabriqué.&#xA;&#xA;Peut être redéployée dans votre propre vaisseau amiral pour améliorer sa &lt;TECHNOLOGY&gt;Technologie&lt;&gt;."},
    {Languages[3], "Un miglioramento per il mercantile.&#xA;&#xA;Può essere utilizzato sulla propria ammiraglia per migliorarne l'&lt;TECHNOLOGY&gt;Tecnologia&lt;&gt;."},
    {Languages[4], "Ein einsetzbares Frachter-Upgrade.&#xA;&#xA;Kann in dein eigenes Hauptschiff wiedereingebaut werden, um dessen &lt;TECHNOLOGY&gt;Technologie&lt;&gt; zu verbessern."},
    {Languages[5], "Una mejora del carguero hecha a mano.&#xA;&#xA;Se puede volver a desplegar en tu propia nave principal para mejorar su &lt;TECHNOLOGY&gt;Tecnología&lt;&gt;."},
    {Languages[6], "Модернизация грузового корабля.&#xA;&#xA;Может быть переоборудована в ваш собственный капитальный корабль для улучшения его &lt;TECHNOLOGY&gt;Technology&lt;&gt;."},
    {Languages[7], "Rozmieszczalne ulepszenie frachtowca. MoÅ¼na ponownie zainstalowaÄ na wÅasnym statku gÅównym, aby ulepszyÄ jego &lt;TECHNOLOGY&gt;technologie&lt;&gt;."},
    {Languages[8], "Een upgrade gemaakt voor een vlaggenschip.&#xA;&#xA;Kan worden geïnstalleerd in je eigen vlaggenschip om de &lt;TECHNOLOGY&gt;Technologie&lt;&gt; te verbeteren."},
    {Languages[9], "Uma atualização do cargueiro implementável.&#xA;&#xA;Pode ser reimplementada na sua própria nave capital para melhorar o &lt;TECHNOLOGY&gt;Tecnologia&lt;&gt;."},
    {Languages[10], "Una mejora del carguero hecha a mano.&#xA;&#xA;Se puede volver a desplegar en tu propia nave principal para mejorar su &lt;TECHNOLOGY&gt;Tecnología&lt;&gt;."},
    {Languages[11], "Uma atualização implantável de nave cargueira.&#xA;&#xA;Pode ser reimplantada na sua nave capital para melhorar o &lt;TECHNOLOGY&gt;Tecnologia&lt;&gt; dela."},
    {Languages[12], "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。"},
    {Languages[13], "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。"},
    {Languages[14], "可合成的貨船升級。&#xA;&#xA;可以被移除及重新安裝於星際貨船上，以提升&lt;TECHNOLOGY&gt;科技元件&lt;&gt;效能。"},
    {Languages[15], ""},
    {Languages[16], ""},
    {Languages[17], "A crafted freighter upgrade.&#xA;&#xA;Can be re-deployed into your own capital ship to improve its &lt;TECHNOLOGY&gt;Technology&lt;&gt;."}
}

GeneralUpgradeMods =
{
    --ShipMods
    {
        {
            ShipTree,
            ShipRootTech,
            CostTypeNanite
        },
        {
            {"U_LAUNCH", "4", "1"},
            {"U_HYPER", "4", "1"},
            {"U_SHIPSHIELD", "4", "1"},
            {"U_PULSE", "4", "1"},
            {"U_SHIPSHOT", "4", "1"},
            {"U_SHIPMINI", "4", "1"},
            {"U_SHIPBLOB", "4", "1"},
            {"U_SHIPGUN", "4", "1"},
            {"U_SHIPLAS", "4", "1"}
        }
    },
    --SuitMods
    {
        {
            SuitTree,
            SuitRootTech,
            CostTypeNanite
        },
        {
            {"U_UNW", "3", "1"},
            {"U_TOX", "3", "1"},
            {"U_COLDPROT", "3", "1"},
            {"U_HOTPROT", "3", "1"},
            {"U_RAD", "3", "1"},
            {"U_ENERGY", "3", "1"},
            {"U_SHIELDBOOST", "4", "1"},
            {"U_JETBOOST", "4", "1"}
        }
    },
    --WeaponMods
    {
        {
            WeaponTree,
            WeaponRootTech,
            CostTypeNanite
        },
        {
            {"U_RAIL", "4", "1"},
            {"U_BOLT", "4", "1"},
            {"U_TGRENADE", "4", "1"},
            {"U_LASER", "4", "1"},
            {"U_SCANNER", "4", "1"},
            {"U_GRENADE", "4", "1"},
            {"U_SHOTGUN", "4", "1"},
            {"U_SMG", "4", "1"}
        }
    },
    --ExoCraftMods
    {
        {
            ExoCraftTree,
            ExoRootTech,
            CostTypeNanite
        },
        {
            {"U_EXOBOOST", "4", "1"},
            {"U_EXOGUN", "4", "1"},
            {"U_EXO_ENG", "4", "1"},
            {"U_EXOLAS", "4", "1"},
            {"U_EXO_SUB", "4", "1"},
            {"U_EXO_SUBGUN", "4", "1"},
            {"U_MECHGUN", "4", "2"},
            {"U_MECH_ENG", "4", "2"},
            {"U_MECHLAS", "4", "2"}
        }
    }

}

BioShipMods =
{
    --BioShipMods
    {
        {
            ShipTree,
            ShipRootTech,
            CostTypeNanite
        },
        {
            {"AP_SHIPLAS", "4", "1"},
            {"AP_LAUNCH", "4", "1"},
            {"AP_PULSE", "4", "1"},
            {"AP_SHIPSHIELD", "4", "1"},
            {"AP_HYPER", "4", "1"},
            {"AP_SHIPGUN", "4", "1"}
        }
    }
}

XClassMods =
{
    {
        {
            FactoryTree,
            FactoryTreeTech,
            CostTypeFactory
        },
        {
            {"U_HAZARDX", "", "", "1"},
            {"U_JETBOOSTX", "", "", "1"},
            {"U_SHIELDBOOSTX", "", "", "1"},
            {"U_ENERGYX", "", "", "1"},

            {"U_HYPERX", "", "", "2"},
            {"U_SHIPSHIELDX", "", "", "2"},
            {"U_PULSEX", "", "", "2"},

            {"U_SHIPGUNX", "", "", "3"},
            {"U_SHIPMINIX", "", "", "3"},
            {"U_SHIPSHOTX", "", "", "3"},
            {"U_SHIPLASX", "", "", "3"},
            {"U_SHIPBLOBX", "", "", "3"},

            {"U_LASERX", "", "", "4"},
            {"U_SCANNERX", "", "", "4"},
            {"U_SHOTGUNX", "", "", "4"},
            {"U_SMGX", "", "", "4"},

            {"U_RAILX", "", "", "5"},
            {"U_BOLTX", "", "", "5"},
            {"U_TGRENADEX", "", "", "5"}
        }
    }
}

CustomFreighterModData =
{
    {
        {
            FreighterTree,
            FreighterRootTech,
            CostTypeNanite
        },
        {
            --id, noUpgrades, startNo, TemplateBase/NameBase, DeployBase
            {"U_FREIG_SPE", "4", "1", "SPEED", "SpeedDeploy" },
            {"U_FREIG_COM", "4", "1", "COM", "ComDeploy"},
            {"U_FREIG_EXP", "4", "1", "EXP", "ExpDeploy"},
            {"U_FREIG_FUEL", "4", "1", "FUEL", "FuelDeploy"},
            {"U_FREIG_MINE", "4", "1", "MINE", "MineDeploy"},
            {"U_FREIG_TRA", "4", "1", "TRADE", "TradeDeploy"},
            {"U_FREIG_HYP", "4", "1", "HYP", "HyperDeploy"}
        }
    }
}

SubOrProd = {"Substance", "Product"}

Requirements =
{
    {
        {
            --C Requirement
            {"EX_YELLOW", "100", SubOrProd[1]},
            {"TECH_COMP", "1", SubOrProd[2]},
            {"STELLAR2", "500", SubOrProd[1]},
        },
        {
            "1000"
        }
    },
    {
        {
            --B Requirement
            {"EX_RED", "200", SubOrProd[1]},
            {"TECH_COMP", "2", SubOrProd[2]},
            {"STELLAR2", "500", SubOrProd[1]},
        },
        {
            "2500"
        }
    },
    {
        {
            --A Requirement
            {"EX_GREEN", "300", SubOrProd[1]},
            {"TECH_COMP", "3", SubOrProd[2]},
            {"STELLAR2", "500", SubOrProd[1]},
        },
        {
            "5000"
        }
    },
    {
        {
            --S Requirement
            {"EX_BLUE", "500", SubOrProd[1]},
            {"TECH_COMP", "5", SubOrProd[2]},
            {"STELLAR2", "500", SubOrProd[1]},
        },
        {
            "10000"
        }
    },
    {
        {
            --X Requirement
            {"EX_RED", "300", SubOrProd[1]},
            {"EX_BLUE", "300", SubOrProd[1]},
            {"TECH_COMP", "5", SubOrProd[2]},
        },
        {
            --Factory/Synthesis station uses a multiplier of X250 so 20*250=5000
            "20"
        }
    }
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= NexusModName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
                {
                    ["MBIN_FILE_SOURCE"] 	= GCProductTablePath,
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
				{
                    ["MBIN_FILE_SOURCE"] 	= GCProcTechnologyPath,
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {
                    -- Add recipes to the Tree
					["MBIN_FILE_SOURCE"] 	= UnlockableItemTreesPath,
					["EXML_CHANGE_TABLE"] 	=
					{
                    }
				}
            }
        }
    }
}

function NewDescriptionText(newDescId)
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

function CreateModTabpageTree(RootTech, Children, CostTypeID)
    return
    [[
        <Property value="GcUnlockableItemTree.xml">
            <Property name="Title" value="]]..TechTreeSub..[[" />
            <Property name="CostTypeID" value="]]..CostTypeID..[[" />
            <Property name="Root" value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..RootTech..[[" />
                <Property name="Children">
                ]]..Children..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function CreateTabPageChildren(ModName, PrevChildMod)
    local result = ""
    if PrevChildMod=="" then
        result =
        [[
            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..ModName..[[" />
                <Property name="Children" />
            </Property>
        ]]
    else
        result =
        [[
            <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="]]..ModName..[[" />
                <Property name="Children">
                ]]..PrevChildMod..[[
                </Property>
            </Property>
        ]]
    end

    return result
end

function CreateNewCustomModDeploys(ModDeployID, Template, ModDeployName, ModDeployNameL, Quality, NoStatsMin, NoStatsMax, WeightingCurve, StatLevels)
    local result =
    [[
        <Property value="GcProceduralTechnologyData.xml">
            <Property name="ID" value="]]..ModDeployID..[[" />
            <Property name="Template" value="]]..Template..[[" />
            <Property name="Group" value="]]..ModDeployName..[[" />
            <Property name="Name" value="]]..ModDeployName..[[" />
            <Property name="NameLower" value="]]..ModDeployNameL..[[" />
            <Property name="Subtitle" value="UP_FREI_SUB" />
            <Property name="Description" value="]]..CraftedFreighterModDescrId..[[" />
            <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.129411772" />
                <Property name="G" value="0.466666669" />
                <Property name="B" value="0.784313738" />
                <Property name="A" value="1" />
            </Property>
            <Property name="Quality" value="]]..Quality..[[" />
            <Property name="Category" value="GcProceduralTechnologyCategory.xml">
                <Property name="ProceduralTechnologyCategory" value="Scanning" />
            </Property>
            <Property name="NumStatsMin" value="]]..NoStatsMin..[[" />
            <Property name="NumStatsMax" value="]]..NoStatsMax..[[" />
            <Property name="WeightingCurve" value="GcWeightingCurve.xml">
                <Property name="WeightingCurve" value="]]..WeightingCurve..[[" />
            </Property>
            <Property name="UpgradeColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
            </Property>
            <Property name="StatLevels">
            ]]..StatLevels..[[
            </Property>
        </Property>
    ]]

    return result
end

function CreateNewCustomMod(ModID, ModName, ModNameL, BaseValue, Icon, NormalisedValueOnAndOffWorld, ModDeploysInto, ClassNumber)
    local result =
    [[
        <Property value="GcProductData.xml">
            <Property name="Id" value="]]..ModID..[[" />
            <Property name="Name" value="]]..ModName..[[" />
            <Property name="NameLower" value="]]..ModNameL..[[" />
            <Property name="Subtitle" value="VariableSizeString.xml">
                <Property name="Value" value="UP_FR]]..ClassNumber..[[_SUB" />
            </Property>
            <Property name="Description" value="VariableSizeString.xml">
                <Property name="Value" value="]]..CraftedFreighterModDescrId..[[" />
            </Property>
            <Property name="Hint" value="" />
            <Property name="GroupID" value="" />
            <Property name="DebrisFile" value="TkModelResource.xml">
                <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
            </Property>
            <Property name="BaseValue" value="]]..BaseValue..[[" />
            <Property name="Level" value="0" />
            <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="]]..Icon..[[" />
            </Property>
            <Property name="HeroIcon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
            </Property>
            <Property name="Colour" value="Colour.xml">
                <Property name="R" value="0.101960786" />
                <Property name="G" value="0.152941182" />
                <Property name="B" value="0.2" />
                <Property name="A" value="1" />
            </Property>
            <Property name="Category" value="GcRealitySubstanceCategory.xml">
                <Property name="SubstanceCategory" value="Fuel" />
            </Property>
            <Property name="Type" value="GcProductCategory.xml">
                <Property name="ProductCategory" value="Consumable" />
            </Property>
            <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="Rare" />
            </Property>
            <Property name="Legality" value="GcLegality.xml">
                <Property name="Legality" value="Legal" />
            </Property>
            <Property name="Consumable" value="True" />
            <Property name="ChargeValue" value="0" />
            <Property name="StackMultiplier" value="0" />
            <Property name="DefaultCraftAmount" value="1" />
            <Property name="CraftAmountStepSize" value="1" />
            <Property name="CraftAmountMultiplier" value="1" />
            <Property name="AltRequirements" />
            <Property name="Cost" value="GcItemPriceModifiers.xml">
                <Property name="SpaceStationMarkup" value="0" />
                <Property name="LowPriceMod" value="0" />
                <Property name="HighPriceMod" value="0" />
                <Property name="BuyBaseMarkup" value="0" />
                <Property name="BuyMarkupMod" value="0" />
            </Property>
            <Property name="RecipeCost" value="1" />
            <Property name="SpecificChargeOnly" value="False" />
            <Property name="NormalisedValueOnWorld" value="]]..NormalisedValueOnAndOffWorld..[[" />
            <Property name="NormalisedValueOffWorld" value="]]..NormalisedValueOnAndOffWorld..[[" />
            <Property name="TradeCategory" value="GcTradeCategory.xml">
                <Property name="TradeCategory" value="None" />
            </Property>
            <Property name="WikiCategory" value="Crafting" />
            <Property name="IsCraftable" value="False" />
            <Property name="DeploysInto" value="]]..ModDeploysInto..[[" />
            <Property name="EconomyInfluenceMultiplier" value="0.25" />
            <Property name="PinObjective" value="UI_CRAFT_OBJ" />
            <Property name="PinObjectiveTip" value="" />
            <Property name="CookingIngredient" value="False" />
            <Property name="CookingValue" value="0" />
            <Property name="GoodForSelling" value="False" />
            <Property name="GiveRewardOnSpecialPurchase" value="" />
            <Property name="EggModifierIngredient" value="False" />
        </Property>
    ]]

    return result
end

function CreateStatLevel(StatType, ValueMin, ValueMax, WeightingCurve)
    return
    [[
        <Property value="GcProceduralTechnologyStatLevel.xml">
            <Property name="Stat" value="GcStatsTypes.xml">
                <Property name="StatsType" value="]]..StatType..[[" />
            </Property>
            <Property name="ValueMin" value="]]..ValueMin..[[" />
            <Property name="ValueMax" value="]]..ValueMax..[[" />
            <Property name="WeightingCurve" value="GcWeightingCurve.xml">
                <Property name="WeightingCurve" value="]]..WeightingCurve..[[" />
            </Property>
            <Property name="AlwaysChoose" value="False" />
        </Property>
    ]]
end

function ClassStringsAndData(UpgradeNumber)
    --Deployfront, deployend, basevalue, normalisOnOff, iconBase, quality, weightingcurve
    if UpgradeNumber == 4 then
        --S-Class
        return {"UP_S","_S", "480","3.070513E-05","TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/PROCTECH.S.", "Legendary", "NoWeighting"}
    elseif UpgradeNumber == 3 then
        --A-Class
        return {"UP_A","_A", "300","1.91666677E-05","TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/PROCTECH.A.", "Epic", "NoWeighting"}
    elseif UpgradeNumber == 2 then
        --B-Class
        return {"UP_B","_B", "140","8.910257E-06","TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/PROCTECH.B.", "Rare", "MaxIsUncommon"}
    elseif UpgradeNumber == 1 then
        --C-Class
        return {"UP_C","_C", "60","3.78205164E-06","TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PROCTECH/PROCTECH.C.", "Normal", "MaxIsRare"}
    end
end

function GetStatLevelData(DeployBase, UpgradeNumber)
    local StatLevelData = ""

    local StatTypes = ""
    local NoStatsMin = ""
    local NoStatsMax = ""

    if DeployBase=="HYP" then
        if UpgradeNumber == 4 then
            NoStatsMin = 2
            NoStatsMax = 2
            StatTypes =
            {
                {"Freighter_Hyperdrive_JumpDistance","200","250", "MaxIsUncommon"},
                {"Freighter_Hyperdrive_JumpsPerCell","1","1", "NoWeighting"}
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 2
            NoStatsMax = 2
            StatTypes =
            {
                {"Freighter_Hyperdrive_JumpDistance","150","200", "MaxIsUncommon"},
                {"Freighter_Hyperdrive_JumpsPerCell","50","100", "NoWeighting"}
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 2
            StatTypes =
            {
                {"Freighter_Hyperdrive_JumpDistance","100","150", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Hyperdrive_JumpDistance","50","100", "MaxIsUncommon"}
            }

        end
    elseif DeployBase=="SPEED" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Speed","1.15","1.15", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Speed","1.1","1.14", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Speed","1.05","1.1", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Speed","1.01","1.05", "MaxIsUncommon"}
            }
        end
    elseif DeployBase=="FUEL" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Fuel","0.85","0.8", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Fuel","0.9","0.85", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Fuel","0.95","0.9", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Fuel","0.99","0.95", "MaxIsUncommon"}
            }
        end
    elseif DeployBase=="COM" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Combat","1.15","1.15", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Combat","1.1","1.14", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Combat","1.05","1.1", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Combat","1.01","1.05", "MaxIsUncommon"}
            }
        end
    elseif DeployBase=="TRADE" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Trade","1.15","1.15", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Trade","1.1","1.14", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Trade","1.05","1.1", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Trade","1.01","1.05", "MaxIsUncommon"}
            }
        end
    elseif DeployBase=="EXP" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Explore","1.15","1.15", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Explore","1.1","1.14", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Explore","1.05","1.1", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Explore","1.01","1.05", "MaxIsUncommon"}
            }
        end
    elseif DeployBase=="MINE" then
        if UpgradeNumber == 4 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Mine","1.15","1.15", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 3 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Mine","1.1","1.14", "MaxIsUncommon"},
            }
        elseif UpgradeNumber == 2 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Mine","1.05","1.1", "MaxIsUncommon"}
            }
        elseif UpgradeNumber == 1 then
            NoStatsMin = 1
            NoStatsMax = 1
            StatTypes =
            {
                {"Freighter_Fleet_Mine","1.01","1.05", "MaxIsUncommon"}
            }
        end
    end

    StatLevelData = {NoStatsMin,NoStatsMax, StatTypes}

    return StatLevelData
end

function GetModType(DeployBase)
    if DeployBase=="HYP" then
        return "HYPERDRIVE"
    elseif DeployBase=="SPEED" then
        return "VEHICLEBOOST"
    elseif DeployBase=="FUEL" then
        return "JETPACK"
    elseif DeployBase=="COM" then
        return "SHIPGUN"
    elseif DeployBase=="TRADE" then
        return "RAILGUN"
    elseif DeployBase=="EXP" then
        return "BINOCS"
    elseif DeployBase=="MINE" then
        return "LASER"
    end
end

function GetAllIDs(ModArray)
    for i = 1, #ModArray do
        local ModIdList = ModArray[i][2]
        for j = 1, #ModIdList do
            local UpgradeMod = ModIdList[j][1]
            local NoOfUpgrades = ModIdList[j][2]
            local UpgradeStart = ModIdList[j][3]
            if NoOfUpgrades == "" or UpgradeStart == "" then
                IdArray[#IdArray +1] = {UpgradeMod , Requirements[5]}
            else
                for l = UpgradeStart, NoOfUpgrades do
                    if NoOfUpgrades ~= "4" then
                        IdArray[#IdArray +1] = {UpgradeMod..math.floor(l) , Requirements[l + 1]}
                    else
                        IdArray[#IdArray +1] = {UpgradeMod..math.floor(l) , Requirements[l]}
                    end
                end
            end
        end
    end
end

function CreateSubList(ModlistNumberOld,ModlistNumber, ModId)
    if ModlistNumberOld == ModlistNumber then
        SubList[#SubList+1] = ModId
    else
        SubList = {}
        SubList[#SubList+1] = ModId
    end
end

function CreateRequirement(Requirement)

    local RequirementID = Requirement[1]
    local RequirementAmount = Requirement[2]
    local RequirementInventoryType = Requirement[3]

    return
    [[
        <Property value="GcTechnologyRequirement.xml">
            <Property name="ID" value="]]..RequirementID..[[" />
            <Property name="InventoryType" value="GcInventoryType.xml">
                <Property name="InventoryType" value="]]..RequirementInventoryType..[[" />
            </Property>
            <Property name="Amount" value="]]..RequirementAmount..[[" />
        </Property>
    ]]
end

function CreateRequirementsString(RequirementsArray)
    local RequirementsString =""

    for i = 1, #RequirementsArray do
        RequirementsString = RequirementsString..CreateRequirement(RequirementsArray[i])
    end

    return
    [[
        <Property name="Requirements">
        ]]..RequirementsString..[[
        </Property>
    ]]
end

local ChangesToLangaugeTables = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

local ChangesToProceduralTechnology = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local ChangesToUnlockableItemTrees = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #CustomFreighterModData do
    local FrTree = CustomFreighterModData[i][1][1]
    local FrRootTech = CustomFreighterModData[i][1][2]
    local FrCostType= CustomFreighterModData[i][1][3]

    local CustomFreighterMods = CustomFreighterModData[i][2]

    local Tree = ""
    local Children = ""

    local UpgradeMods = ""
    local DeployMods = ""

    for l = 1, #CustomFreighterMods do
        local UpgradeMod = CustomFreighterMods[l]

        local NumberOfUpgrades = UpgradeMod[2]
        local StartingNumberUpgrade = UpgradeMod[3]

        local StringBase = UpgradeMod[4]
        local DeployBase = UpgradeMod[5]
        local ModType = GetModType(StringBase)

        local ModNameID = "UP_FR_"..StringBase.."_NAME"
        local ModNameLID = "UP_FR_"..StringBase.."_NAME_L"

        local DeployTemplate = "T_FR_"..StringBase
        local ModDeployNameID = "U"..DeployTemplate.."_NAME"
        local ModDeployNameLID = "U"..DeployTemplate.."_NAME_L"

        local ModTree = ""

        for j = NumberOfUpgrades,  StartingNumberUpgrade, -1 do
            local ClassNumber = math.floor(j)
            local UpgradeModID= UpgradeMod[1]..ClassNumber
            local ModClassDataAndStrings = ClassStringsAndData(ClassNumber)
            local DeploysInto = ModClassDataAndStrings[1]..DeployBase..ModClassDataAndStrings[2]
            local BaseValue = ModClassDataAndStrings[3]
            local NormalisedVal = ModClassDataAndStrings[4]
            local IconPath = ModClassDataAndStrings[5]..ModType..".DDS"
            local Quality = ModClassDataAndStrings[6]
            local WeightingCurve = ModClassDataAndStrings[7]

            local StatTypesData = GetStatLevelData(StringBase, ClassNumber)
            local MinNoStats = StatTypesData[1]
            local MaxNoStats = StatTypesData[2]
            local StatTypes = StatTypesData[3]

            local StatTypesString =""

            for noStatType = 1, #StatTypes do

                local StatType = StatTypes[noStatType][1]
                local MinVal = StatTypes[noStatType][2]
                local MaxVal = StatTypes[noStatType][3]

                local StatWeightingCurve = StatTypes[noStatType][4]

                StatTypesString = StatTypesString..CreateStatLevel(StatType, MinVal, MaxVal, StatWeightingCurve)
            end
            ModTree = CreateTabPageChildren(UpgradeModID, ModTree)
            UpgradeMods = UpgradeMods..CreateNewCustomMod(UpgradeModID, ModNameID, ModNameLID, BaseValue, IconPath, NormalisedVal, DeploysInto, ClassNumber)
            DeployMods = DeployMods..CreateNewCustomModDeploys(DeploysInto, DeployTemplate, ModDeployNameID, ModDeployNameLID, Quality, MinNoStats, MaxNoStats, WeightingCurve, StatTypesString)
        end
        Children = Children..ModTree
    end
    Tree = CreateModTabpageTree(FrRootTech, Children, FrCostType)

    local ChangesToUnlockableItemTrees_temp =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", FrTree, "Title", TechTreeSub},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"]	= Tree
    }
    ChangesToUnlockableItemTrees[#ChangesToUnlockableItemTrees + 1] = ChangesToUnlockableItemTrees_temp

    local ChangesToProceduralTechnology_temp =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = DeployMods
    }
    ChangesToProceduralTechnology[#ChangesToProceduralTechnology + 1] = ChangesToProceduralTechnology_temp

    local ChangesToProductTable_temp =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD"] = UpgradeMods
    }
    ChangesToProductTable[#ChangesToProductTable + 1] = ChangesToProductTable_temp
end

for i = 1, #GeneralUpgradeMods do
    local TechTree = GeneralUpgradeMods[i][1][1]
    local RootTech = GeneralUpgradeMods[i][1][2]
    local CostType = GeneralUpgradeMods[i][1][3]
    local UpgradeMods = GeneralUpgradeMods[i][2]

    local Tree = ""
    local Children = ""

    for j = 1, #UpgradeMods do
        local ModTree = ""
        local UpgradeMod = UpgradeMods[j]
        local NoOfUpgrades = UpgradeMod[2]
        local UpgradeStart = UpgradeMod[3]

        for l = NoOfUpgrades, UpgradeStart, -1 do
            local ModID = UpgradeMod[1] .. math.floor(l)
            ModTree = CreateTabPageChildren(ModID, ModTree)
        end
        Children = Children..ModTree
    end

    Tree = CreateModTabpageTree(RootTech, Children, CostType)

    local UnlockableItemTree =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", TechTree, "Title", TechTreeSub},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"]	= Tree
    }
    ChangesToUnlockableItemTrees[#ChangesToUnlockableItemTrees +1] = UnlockableItemTree

end

for i = 1, #BioShipMods do
    local TechTree = BioShipMods[i][1][1]
    local RootTech = BioShipMods[i][1][2]
    local CostType = BioShipMods[i][1][3]
    local UpgradeMods = BioShipMods[i][2]
    local Tree = ""
    local Children = ""

    for j = 1, #UpgradeMods do
        local ModTree = ""
        local UpgradeMod = UpgradeMods[j]
        local NoOfUpgrades = UpgradeMod[2]
        local UpgradeStart = UpgradeMod[3]

        for l = NoOfUpgrades, UpgradeStart, -1 do
            local ModID = UpgradeMod[1] .. math.floor(l)
            ModTree = CreateTabPageChildren(ModID, ModTree)
        end
        Children = Children.."\n"..ModTree
    end
    Children = Children.."\n"

    Tree = CreateModTabpageTree(RootTech, Children, CostType)

    local UnlockableItemTree =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", TechTree, "Title", TechTreeSub},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"]	= Tree
    }
    ChangesToUnlockableItemTrees[#ChangesToUnlockableItemTrees +1] = UnlockableItemTree

end

for i = 1, #XClassMods do
    local TechTree = XClassMods[i][1][1]
    local RootTech = XClassMods[i][1][2]
    local CostType = XClassMods[i][1][3]

    local UpgradeMods = XClassMods[i][2]
    local ModSubsLists = {}

    local Tree = ""
    local Children = ""

    local OldModListNumber = ""

    -- local List = {}

    for j = 1, #UpgradeMods do
        local UpgradeMod = UpgradeMods[j]
        local ModID = UpgradeMod[1]
        local ModlistNumber = UpgradeMod[4]

        CreateSubList(OldModListNumber,ModlistNumber, ModID)

        if OldModListNumber~=ModlistNumber then
            ModSubsLists[#ModSubsLists+1] = SubList
        else
            ModSubsLists[#ModSubsLists] = SubList
        end
        OldModListNumber = ModlistNumber
    end

    for k = 1, #ModSubsLists do
        local ModSubList = ModSubsLists[k]
        local ModTree = ""
        for l = #ModSubList, 1, -1  do
            ModTree = CreateTabPageChildren(ModSubList[l], ModTree)
        end
        Children = Children..ModTree
    end

    Tree = CreateModTabpageTree(RootTech,Children, CostType)

    local UnlockableItemTree =
    {
        ["SPECIAL_KEY_WORDS"] = {"Title", TechTree, "Title", TechTreeSubFactory},
        ["REPLACE_TYPE"] = "ADDAFTERSECTION",
        ["ADD"]	= Tree
    }
    ChangesToUnlockableItemTrees[#ChangesToUnlockableItemTrees +1] = UnlockableItemTree
end

for i = 1, #AddNewLanguatext do
    local Language = AddNewLanguatext[i][1]
    local LanguageUC = string.upper(Language)

    if Language == "LatinAmericanSpanish" then
        LanguageUC = "LATINAMERAICANSPANISH"
    end

    local Text = AddNewLanguatext[i][2]

    if Text~="" then
        local temp_table =
        {
            ["MBIN_FILE_SOURCE"] 	= "LANGUAGE\\NMS_LOC6_"..LanguageUC..".MBIN",
            ["EXML_CHANGE_TABLE"] 	=
            {
                {
                    ["PRECEDING_KEY_WORDS"] = {"Table"},
                    ["ADD"] = ""..NewDescriptionText(CraftedFreighterModDescrId),
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id", CraftedFreighterModDescrId , Language, "VariableSizeString.xml"},
                    ["PRECEDING_KEY_WORDS"] = {Language},
                    ["VALUE_CHANGE_TABLE"] =
                    {
                        {"Value", Text}
                    }
                }
            }
        }

        ChangesToLangaugeTables[#ChangesToLangaugeTables + 1] = temp_table
    end
end

GetAllIDs(XClassMods)
GetAllIDs(CustomFreighterModData)
GetAllIDs(GeneralUpgradeMods)
GetAllIDs(BioShipMods)

local MassChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]
-- local ChangesToProductTable_temp = {}

for i = 1, #IdArray do

    local ProdModID = IdArray[i][1]

    local RequirementsArray = IdArray[i][2][1]
    local RecipeCost = IdArray[i][2][2][1]

    local RequirementsString = CreateRequirementsString(RequirementsArray)
    -- local massadd = ""
    local ChangesToProductTable_temp

    ChangesToProductTable_temp =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID,"CraftAmountMultiplier","1"},
        ["LINE_OFFSET"] 	= "+1",
        ["REMOVE"]	= "LINE"
    }
    ChangesToProductTable[#ChangesToProductTable + 1] = ChangesToProductTable_temp

    ChangesToProductTable_temp =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID,"CraftAmountMultiplier","1"},
        ["ADD"] = RequirementsString
    }
    ChangesToProductTable[#ChangesToProductTable + 1] = ChangesToProductTable_temp

    ChangesToProductTable_temp =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID},
        ["VALUE_CHANGE_TABLE"] 	=
        {
            {"IsCraftable", IsCraftableToTrue},
            {"RecipeCost", RecipeCost}
        }
    }
    ChangesToProductTable[#ChangesToProductTable +1] = ChangesToProductTable_temp


    -- massadd =
    -- {
    --     {
    --         ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID,"CraftAmountMultiplier","1"},
    --         ["LINE_OFFSET"] 	= "+1",
    --         ["REMOVE"]	= "LINE"
    --     },
    --     {
    --         ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID,"CraftAmountMultiplier","1"},
    --         ["ADD"] = RequirementsString
    --     },
    --     {
    --         ["SPECIAL_KEY_WORDS"] = {"Id", ProdModID},
    --         ["VALUE_CHANGE_TABLE"] 	=
    --         {
    --             {"IsCraftable", IsCraftableToTrue},
    --             {"RecipeCost", RecipeCost}
    --         }
    --     }
    -- }

    -- if i == #IdArray then
    --     MassChangesToProductTable[#MassChangesToProductTable + 1] = massadd
    -- end
end