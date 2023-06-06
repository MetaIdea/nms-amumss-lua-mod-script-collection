----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "StatePhasureEngine"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "426"
METADATA_MOD_DESC       = "Use Singularity Engine freighter tech on non-expedition game saves with State Phasure as the payment item."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- modified game files
PATH_PUZZLETABLE = "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
PATH_COSTTABLE = "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"

-- function to build the cost object
function PROPERTY_MEGAWARP_ITEM(ITEM)
    return
    [[
    <Property value="GcCostTableEntry.xml">
        <Property name="Id" value="C_MEGAWARP_ITEM" />
        <Property name="DisplayCost" value="True" />
        <Property name="DontCharge" value="False" />
        <Property name="HideOptionAndDisplayCostOnly" value="False" />
        <Property name="DisplayOnlyCostIfCantAfford" value="False" />
        <Property name="HideCostStringIfCanAfford" value="False" />
        <Property name="RemoveOptionIfCantAfford" value="False" />
        <Property name="MustAffordInCreative" value="True" />
        <Property name="CannotAffordOSDMsg" value="" />
        <Property name="MissionMessageWhenCharged" value="" />
        <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
            <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="]]..ITEM..[[" />
        <Property name="Amount" value="1" />
        </Property>
    </Property>
    ]]
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = PATH_COSTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add the new cost object to the cost table
                            -- default payment item: State Phasure (Atlas Seed 7)
                            ["PKW"] = {"InteractionTable"},
                            ["ADD"] = PROPERTY_MEGAWARP_ITEM("ATLAS_SEED_7"),
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- replace the cost of SE with the new cost object
                            -- needs to be done for all 6 entries
                            ["SKW"] = {"Cost","C_MEGAWARP"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Cost","C_MEGAWARP_ITEM",},},
                        },
                    }
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------