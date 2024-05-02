----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "METADATA_TRAILS"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for enabling custom starship trails and bobbleheads. Modifies files in METADATA\\GAMESTATE\\PLAYERDATA."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_GAMESTATE_THRUSTERDATA =           "METADATA\\GAMESTATE\\PLAYERDATA\\THRUSTERCUSTOMISATIONDATA.MBIN"
FILE_GAMESTATE_BOBBLEDATA =             "METADATA\\GAMESTATE\\PLAYERDATA\\BOBBLEHEADCUSTOMISATIONDATA.MBIN"

--------------------------------------------------
-- lists of stuff to be added
--------------------------------------------------

-- list of custom ship trails, priority: lowest to highest
LIST_SHIPTRAILS = {"WHITE","CYAN","ORANGE","PINK","ELECTRIC","GLITCH","PSYCHIC",}

-- list of custom bobbleheads
LIST_BOBBLEHEADS =
{
  "BLOB","SOLAR","FRIGATE",
  "LAYLAPS","CRYSDRONE","WALKER",
  "JELLYFISH","WORM","EGG",
  "STONE","GRAVE","AQUATIC",
  "SHROOM","STAR","SHARD",
  "GLOBE","SHIELDGEN","NEXUSORB",
}



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

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
                    --------------------------------------------------
                    -- trails customisation MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_THRUSTERDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- get template of trail structure // rest of table populated by functions below
                        {  ["PKW"] = "GcCustomisationShipTrails.xml",     ["SEC_SAVE_TO"] = "SEC_SHIPTRAIL",   },
                    },
                },

                {
                    --------------------------------------------------
                    -- bobblehead customisation MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_BOBBLEDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- get template of bobblehead structure // rest of table populated by functions below
                        {  ["PKW"] = "GcCustomisationBobbleHead.xml",     ["SEC_SAVE_TO"] = "SEC_BOBBLEHEAD",   },
                    },
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- functions for EXML tables
----------------------------------------------------------------------------------------------------

function EditSection(section,folder,name) return
{   ["SEC_EDIT"] = section,   ["VCT"] = {{"LinkedTechId","TECH_"..name,},{"Filename","MODELS/"..folder.."/"..name..".SCENE.MBIN",},},   }
end

function AddSection(section,pkw) return
{   ["PKW"] = pkw,    ["SEC_ADD_NAMED"] = section,    }
end

function Shiptrails_BuildChangeTable(list,exml)
  for i=1,#list do
    exml[#exml+1] = EditSection("SEC_SHIPTRAIL","TRAILS",list[i])
    exml[#exml+1] = AddSection("SEC_SHIPTRAIL","ShipEffects")
  end
end

function Bobbleheads_BuildChangeTable(list,exml)
  for i=1,#list do
    exml[#exml+1] = EditSection("SEC_BOBBLEHEAD","BOBBLEHEADS",list[i])
    exml[#exml+1] = AddSection("SEC_BOBBLEHEAD","BobbleHeads")
  end
end

--------------------------------------------------
-- populating change tables
--------------------------------------------------

local EXML_SHIPTRAILS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
Shiptrails_BuildChangeTable(LIST_SHIPTRAILS,EXML_SHIPTRAILS)

local EXML_BOBBLEHEADS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
Bobbleheads_BuildChangeTable(LIST_BOBBLEHEADS,EXML_BOBBLEHEADS)

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------