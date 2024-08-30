----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_COSTS"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for interaction costs functionality. Modifies METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- cost: system authority assistance
--------------------------------------------------

PROPERTY_COST_POLICE = 
[[
<Property name="Cost" value="GcCostGroup.xml">
  <Property name="Text" value="TEXT_COST_POLICE" />
  <Property name="TakeTextFromIndex" value="-1" />
  <Property name="HideOptionIfCantAffordIndex" value="-1" />
  <Property name="Test" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyTrue" />
  </Property>
  <Property name="Costs">
    <Property value="GcCostProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="POLICE_TOKEN" />
      <Property name="Amount" value="1" />
      <Property name="UseDefaultAmount" value="False" />
    </Property>
    <Property value="GcCostInstalledTech.xml">
      <Property name="Id" value="TECH_POLICE" />
      <Property name="InventoryToCheck" value="Ship" />
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- cost: ship class upgrade
--------------------------------------------------

PROPERTY_COST_UPGRADE =
[[
<Property name="Cost" value="GcCostGroup.xml">
  <Property name="Text" value="TEXT_COST_UPGRADE" />
  <Property name="TakeTextFromIndex" value="-1" />
  <Property name="HideOptionIfCantAffordIndex" value="-1" />
  <Property name="Test" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyTrue" />
  </Property>
  <Property name="Costs">
    <Property value="GcCostMoneyList.xml">
      <Property name="Costs">
        <Property value="10000" />
        <Property value="25000" />
        <Property value="50000" />
      </Property>
      <Property name="CostCurrency" value="GcCurrency.xml">
        <Property name="Currency" value="Nanites" />
      </Property>
      <Property name="AssertIfOutOfBounds" value="False" />
      <Property name="OutOfBoundsBehaviour" value="UseLast" />
      <Property name="IndexProvider" value="ShipClass" />
    </Property>
    <Property value="GcCostProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="ITEM_BYPASS" />
      <Property name="Amount" value="1" />
      <Property name="UseDefaultAmount" value="False" />
    </Property>
  </Property>
</Property>
]]

--------------------------------------------------
-- cost: exchanging memories with Hesperus
--------------------------------------------------

PROPERTY_COST_MEMORY =
[[
<Property value="GcCostTableEntry.xml">
  <Property name="Id" value="C_MEMORY" />
  <Property name="DisplayCost" value="False" />
  <Property name="DontCharge" value="False" />
  <Property name="HideOptionAndDisplayCostOnly" value="False" />
  <Property name="DisplayOnlyCostIfCantAfford" value="False" />
  <Property name="HideCostStringIfCanAfford" value="False" />
  <Property name="RemoveOptionIfCantAfford" value="True" />
  <Property name="InvertCanAffordOutcome" value="False" />
  <Property name="MustAffordInCreative" value="True" />
  <Property name="CommunityContributionValue" value="0" />
  <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
  <Property name="CannotAffordOSDMsg" value="" />
  <Property name="MissionMessageWhenCharged" value="" />
  <Property name="Cost" value="GcCostGroup.xml">
    <Property name="Text" value="" />
    <Property name="TakeTextFromIndex" value="-1" />
    <Property name="HideOptionIfCantAffordIndex" value="-1" />
    <Property name="Test" value="GcMissionConditionTest.xml">
      <Property name="ConditionTest" value="AnyTrue" />
    </Property>
    <Property name="Costs">
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXA" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXB" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
      <Property value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="ITEM_BOXC" />
        <Property name="Amount" value="1" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
    </Property>
  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_COSTTABLE = "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_COSTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- cost object: dictionary
                        {   ["SKW"] = {"Id","C_REP_TOKEN",},    ["SEC_SAVE_TO"] = "SEC_COST_ITEM",                                                    },
                        {   ["SEC_EDIT"] = "SEC_COST_ITEM",     ["VCT"] = {{"Id","C_DICT",},},                                                        },
                        {   ["SEC_EDIT"] = "SEC_COST_ITEM",     ["SKW"] = {"Cost","GcCostProduct.xml",},    ["VCT"] = {{"Id","ITEM_DICTIONARY",},},   },
                        {   ["PKW"] = "ItemCostsTable",         ["SEC_ADD_NAMED"] = "SEC_COST_ITEM",                                                  },

                        -- cost object: ship class upgrade - remove only nanites, add combination nanites OR bypass item
                        {   ["SKW"] = {"Id","C_CLASS_UPGRADE","Cost","GcCostMoneyList.xml",},   ["REMOVE"] = "SECTION",   },
                        {   ["SKW"] = {"Id","C_CLASS_UPGRADE",},    ["ADD"] = PROPERTY_COST_UPGRADE,                      },
                            
                        -- cost object: sentinel support - remove only token, add combination token OR antenna tech installed
                        {   ["SKW"] = {"Id","POLICE_SUMMON","Cost","GcCostProduct.xml",},   ["REMOVE"] = "SECTION",     },
                        {   ["SKW"] = {"Id","POLICE_SUMMON",},      ["ADD"] = PROPERTY_COST_POLICE,                     },

                        -- cost object: exchanging memories with Hesperus
                        {   ["PKW"] = "InteractionTable",           ["ADD"] = PROPERTY_COST_MEMORY,   },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------