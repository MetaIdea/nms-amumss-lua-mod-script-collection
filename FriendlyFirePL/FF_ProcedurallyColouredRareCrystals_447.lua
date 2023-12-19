----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProcedurallyColouredRareCrystals"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "447"
METADATA_MOD_DESC       = "This mod enables procedurally generated colours on textures used for Floating Crystals and Buried Mineral Formations found on planets."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- function to build the texture MBIN
--------------------------------------------------

function BuildProcTextureFile(Palette,ColourAlt,Diffuse,Normal,Mask)
return
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkProceduralTextureList">
    <Property name="Layers">
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures">
                <Property value="TkProceduralTexture.xml">
                    <Property name="Name" value="VARIANTA" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                        <Property name="Palette" value="]]..Palette..[[" />
                        <Property name="ColourAlt" value="]]..ColourAlt..[[" />
                    </Property>
                    <Property name="Probability" value="1" />
                    <Property name="TextureGameplayUse" value="IgnoreName" />
                    <Property name="OverrideAverageColour" value="False" />
                    <Property name="AverageColour" value="Colour.xml"> 
                        <Property name="R" value="0" />
                        <Property name="G" value="0" />
                        <Property name="B" value="0" />
                        <Property name="A" value="0" />
                    </Property>
                    <Property name="Diffuse" value="]]..Diffuse..[[" />
                    <Property name="Normal" value="]]..Normal..[[" />
                    <Property name="Mask" value="]]..Mask..[[" />
                </Property>
            </Property>
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
        <Property value="TkProceduralTextureLayer.xml">
            <Property name="Name" value="" />
            <Property name="Probability" value="1" />
            <Property name="Group" value="" />
            <Property name="SelectToMatchBase" value="False" />
            <Property name="Textures" />
        </Property>
    </Property>
</Data>
]]
end

--------------------------------------------------
-- data for Floating Crystals
--------------------------------------------------

FILE_PATH_FLOATING_CRYSTAL = "TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.TEXTURE.EXML"
FILE_DATA_FLOATING_CRYSTAL = BuildProcTextureFile(
    "Grass","Alternative1",
    "TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.DDS",
    "TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.NORMAL.DDS",
    "TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.MASKS.DDS")

--------------------------------------------------
-- data for Buried Mineral Formations
--------------------------------------------------

FILE_PATH_BURIED_CRYSTAL = "TEXTURES/BURIEDCRYSTAL/CRYSTAL.TEXTURE.EXML"
FILE_DATA_BURIED_CRYSTAL = BuildProcTextureFile(
    "Crystal","Alternative1",
    "TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.DDS",
    "TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.NORMAL.DDS",
    "TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.MASKS.DDS")



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_MATERIAL_BURIEDCRYSTAL ="MODELS\\PLANETS\\BIOMES\\COMMON\\RARERESOURCE\\CRYSTALS\\UNDERGROUNDCRYSTALS\\UNDERGROUNDCRYATAL.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_BURIEDCRYSTAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","gMasksMap",},
                            ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.MASKS.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","gNormalMap",},
                            ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.NORMAL.DDS",},},
                        },

                    },
                },
            }
        }
    },

    ["ADD_FILES"] = 
    {
        {
            ["FILE_DESTINATION"] = FILE_PATH_FLOATING_CRYSTAL,
            ["FILE_CONTENT"] = FILE_DATA_FLOATING_CRYSTAL,
        },

        {
            ["FILE_DESTINATION"] = FILE_PATH_BURIED_CRYSTAL,
            ["FILE_CONTENT"] = FILE_DATA_BURIED_CRYSTAL,
        },
    },
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------