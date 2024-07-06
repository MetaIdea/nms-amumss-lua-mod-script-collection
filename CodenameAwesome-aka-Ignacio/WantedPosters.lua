HOLOS = {
	"CUSTOMTEXTURES/WANTEDPOSTERS/HOLOGRAM/HOLOGRAMSWANTED.BASE.GEK.01.DDS",
	"CUSTOMTEXTURES/WANTEDPOSTERS/HOLOGRAM/HOLOGRAMSWANTED.BASE.NADA.DDS",
	"CUSTOMTEXTURES/WANTEDPOSTERS/HOLOGRAM/HOLOGRAMSWANTED.BASE.POLO.DDS",
}

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= "WantedPosters.pak",
  ["MOD_DESCRIPTION"]	= "",
  ["MOD_AUTHOR"]		= "CodenameAwesome",
  ["MODIFICATIONS"] 	=
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "TEXTURES/SPACE/SPACESTATION/TYPEB/HOLOGRAMSWANTED.TEXTURE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
			            {
			            	["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
			            	["SEC_COPY"] = "texture"
			            },
                    },
                },
            },
        },
    },
}

local MBIN_CHANGE_TABLE  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i=1,#HOLOS do
    local diffuse = HOLOS[i]
    MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE +1] =
			{
				["SEC_EDIT"] = "texture",
				["VALUE_CHANGE_TABLE"] = {
					{"Diffuse", diffuse}
				}
			}
    MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE +1] =
			{
				["PRECEDING_KEY_WORDS"] = {"TkProceduralTextureLayer.xml","Textures"},
				["SEC_ADD_NAMED"] = "texture",
			}
end