--[[
Mod id				3553
Mod category		Building
Mod name			Pindou Palette (Light box removes the wick)
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3553
]]

local PaletteData = 
{
    {id="PD_1", r="0.89", g="0.70", b="0.35"},
    {id="PD_2", r="0.29", g="0.60", b="0.34"},
    {id="PD_3", r="0.15", g="0.33", b="0.73"},
    {id="PD_4", r="0.26", g="0.25", b="0.75"},
    {id="PD_5", r="0.58", g="0.37", b="0.27"},
    {id="PD_6", r="0.92", g="0.47", b="0.55"},
    {id="PD_7", r="0.28", g="0.27", b="0.30"},
    {id="PD_8", r="0.44", g="0.88", b="0.40"},
    {id="PD_9", r="0.85", g="0.42", b="0.61"},
}

local function BuildPaletteChanges()
    local t = {}

    for _, p in ipairs(PaletteData) do
        t[#t+1] = {
            SKW  = {"Id", "LEGACY1"},
            SEC_SAVE_TO = "ADD_PALETTE_" .. p.id,
        }
        t[#t+1] = {
            SEC_EDIT    = "ADD_PALETTE_" .. p.id,
            REPLACE_TYPE = "ALL",
            VCT = {
                {"Name", p.id},
                {"Id",   p.id},
                {"R",    p.r},
                {"G",    p.g},
                {"B",    p.b},
            },
        }
        t[#t+1] = {
            PKW        = {"Palettes"},
            ADD_OPTION = "ADDafterLINE",
            SEC_ADD_NAMED = "ADD_PALETTE_" .. p.id,
        }
    end

    local idListXml = ""
    for _, p in ipairs(PaletteData) do
        idListXml = idListXml
            .. string.format('\n\t\t\t<Property name="IdList" value="%s" />', p.id)
    end

    t[#t+1] = {
        SKW        = {"IdList", "LEGACY16"},
        ADD_OPTION = "ADDafterLINE",
        ADD        = idListXml,
    }

    return t
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= "___230_PindouPalette",
	MOD_AUTHOR		= "DY230",
	NMS_VERSION		= "6.45.1",
	MOD_DESCRIPTION	= "Pindou Palette (Light box removes the wick), Adds 9 custom base-building palettes (PD_1 ~ PD_9).",
	MODIFICATIONS	= {
		{
			MBIN_CT = 
			{
				{--LIGHTBOXOFF_MATT.MATERIAL
					MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTBOX\LIGHTBOXOFF_MATT.MATERIAL.MBIN]],
					MXML_CT = 
					{
						{
							SKW = { { "Name" , "gDiffuseMap" } },
							VCT = {
								{ "Map" , [[TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/SHUTTER.BASE.METALLIC.DDS]] },--TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/DECORATION/WALLLIGHTS.WHITE.DDS
							}
						},
					}
				},
				{--BASEBUILDINGOBJECTSTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
					MXML_CT = BuildPaletteChanges(),
				},
			}
		}
	},
}