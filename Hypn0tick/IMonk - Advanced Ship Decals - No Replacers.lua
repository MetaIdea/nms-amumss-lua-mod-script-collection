ModName         =   "Advanced_Ship_Decals"
ModAuthor       =   "lMonk"
LuaAuthor       =   "lMonk,Hypn0tick"
GameVersion     =   "3.99"
ModVersion      =   "1.2"

-------------------------------------------------------------------
local BaseDescription = [[
    Adds several new ship decals to the game's procedural generation.

  Generate TkProceduralTextureList files for the procedural decals
  diff/normal/masks = true >> include dds in the layer

  * source is used for importing the dds files (needs path to the files' folder)
  * The script STILL WORKS if the source path is incorrect or no dds
   files are found - except no textures will be packed with the mbin files.  
]]-----------------------------------------------------------------

local proc_texture_files = {
    {
    --- space ship decal lettering
        label   = 'LETTERING',
        group   = 'DECALLET',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/Advanced_Ship_Decals_v1.2/TEXTURES/COMMON/DECALS/LETTERING/',
        nmspath = 'TEXTURES/COMMON/DECALS/LETTERING/',
        {
            ly_name = 'BASE',
            tx_name = {'A1', 'A2', 'A3', 'A4', 'A5', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'},
            match_base = 'False',
            color   = 'Alternative2',
            diff    = true
        }
    },
    {
    --- space ship decal logos
        label   = 'LOGO',
        group   = 'DECALLOGO',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/Advanced_Ship_Decals_v1.2/TEXTURES/COMMON/DECALS/LOGO/',
        nmspath = 'TEXTURES/COMMON/DECALS/LOGO/',
        {
            ly_name = 'OVERLAY',
            palette =   'Rock',
            color   = 'Primary',
            normal = true,
            masks   = true
        },
        {
            ly_name = 'BASE',
            tx_name = {'A', 'AA', 'AB', 'AC', 'AD', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'},
            palette =   'Paint',
            color   = 'Alternative2',
            diff    = true
        }
    },
    {
    --- space ship decal rectangles
        label   = 'RECTANGLE',
        group   = 'DECALRECTANGLE',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/Advanced_Ship_Decals_v1.2/TEXTURES/COMMON/DECALS/RECTANGLE/',
        nmspath = 'TEXTURES/COMMON/DECALS/RECTANGLE/',
        {
            ly_name = 'OVERLAY',
            palette =   'Rock',
            color   = 'Primary',
            normal = true,
            masks   = true
        },
        {
            ly_name = 'BASE',
            tx_name = {'A', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M','MA', 'MB', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MI', 'MJ', 'MK', 'ML', 'MM', 'MJ', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV'},
            palette =   'Paint',
            color   = 'Alternative2',
            diff    = true
        }
    },
    {
    --- space ship decal small signs
        label   = 'SMALLSIGN',
        group   = 'DECALSMALLSIGN',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/Advanced_Ship_Decals_v1.2/TEXTURES/COMMON/DECALS/SMALLSIGN/',
        nmspath = 'TEXTURES/COMMON/DECALS/SMALLSIGN/',
        {
            ly_name = 'OVERLAY',
            palette =   'Rock',
            color   = 'Primary',
            normal = true,
            masks   = true
        },
        {
            ly_name = 'BASE',
            tx_name = {'A', 'B', 'C', 'D', 'E', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50'},
            palette =   'Paint',
            color   = 'Alternative3',
            diff    = true
        }
    },
    {
    --- space ship decal squares
        label   = 'SQAURE',
        group   = 'DECALSQAURE',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/Advanced_Ship_Decals_v1.2/TEXTURES/COMMON/DECALS/SQAURE/',
        nmspath = 'TEXTURES/COMMON/DECALS/SQAURE/',
        {
            ly_name = '',
            tx_name = {'A1', 'A2', 'A3', 'A4', 'A5', 'M1', 'M2', 'M3', 'M4', 'M5'},
            palette =   'Paint',
            color   = 'Alternative2',
            diff    = true
        }
    },
}

local function GetProcTextures(path, layer)
    -- concat table with [.] separator
    local function TexPath(arg)
        if not arg.b then
            return ''
        end
        local con = ''
        for _,ar in ipairs(arg) do
            if ar and ar:len() > 0 then
                con = con..ar..'.'
            end
        end
        return con..'DDS'
    end
    local tk_proc_tex = [[

        <Property value="TkProceduralTexture.xml">
            <Property name="Name" value="%s"/>
            <Property name="Palette" value="TkPaletteTexture.xml">
                <Property name="Palette" value="%s"/>
                <Property name="ColourAlt" value="%s"/>
            </Property>
            <Property name="Probability" value="%s"/>
            <Property name="TextureGameplayUse" value="IgnoreName"/>
            <Property name="OverrideAverageColour" value="False"/>
            <Property name="AverageColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
            </Property>
            <Property name="Diffuse" value="%s"/>
            <Property name="Normal" value="%s"/>
            <Property name="Mask" value="%s"/>
        </Property>]]
    local exml = ''
    -- handles 3 options: names list, {name, probability} list, or nothing
    -- if no list found, name='' & probability=1
    for _,name_prob in ipairs(layer.tx_name and layer.tx_name or {{'', 1}}) do
        if type(name_prob) == 'string' then
            name_prob = {name_prob, 1}
        end
        exml = exml..string.format(
            tk_proc_tex,
            name_prob[1],
            layer.palette or 'Paint',
            layer.color or 'None',
            name_prob[2],
            TexPath({b=layer.diff, path, layer.ly_name, name_prob[1]}),
            TexPath({b=layer.normal, path, layer.ly_name, 'NORMAL'}),
            TexPath({b=layer.masks, path, layer.ly_name, 'MASKS'})
        )
    end
    return exml
end

local function BuildProcTexListMbin(tex_layer)
    local T = {}
    -- build proc-tex layers
    for _,ly in ipairs(tex_layer) do
        table.insert( T, [[
            <Property value="TkProceduralTextureLayer.xml">
                <Property name="Name" value="]]..(ly.ly_name or '')..[["/>
                <Property name="Probability" value="]]..(tex_layer.ly_prob or 1)..[["/>
                <Property name="Group" value="]]..(tex_layer.group or '')..[["/>
                <Property name="SelectToMatchBase" value="]]..(tex_layer.match_base or 'False')..[["/>
                <Property name="Textures">
                ]]..
                GetProcTextures(tex_layer.nmspath..tex_layer.label, ly)..[[
                </Property>
            </Property>]]
        )
    end
    -- silly fixed length array
    for _=1, (8 - #tex_layer) do
        table.insert(T, '<Property value="TkProceduralTextureLayer.xml"/>')
    end
    return [[<?xml version="1.0" encoding="utf-8"?>

        <Data template="TkProceduralTextureList">
        <Property name="Layers">
]]..table.concat(T)..[[
        </Property></Data>]]
end

local function AddProcTexFiles()
    local T = {}
    for _,ptf in ipairs(proc_texture_files) do
        table.insert(T, {
            FILE_CONTENT        = BuildProcTexListMbin(ptf),
            FILE_DESTINATION    = ptf.nmspath..ptf.label..'.TEXTURE.EXML'
        })
        table.insert(T, {
            EXTERNAL_FILE_SOURCE= ptf.source..ptf.label..'*.DDS',
            FILE_DESTINATION    = ptf.nmspath..'*.DDS'
        })
    end
    return T
end

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME        = ModName.."-v"..ModVersion..".pak",
    MOD_AUTHOR          =   ModAuthor,
    LUA_AUTHOR          =   LuaAuthor,
    NMS_VERSION         = GameVersion,
    MOD_DESCRIPTION     = BaseDescription,
    MODIFICATIONS       = {},
    ADD_FILES           = AddProcTexFiles()
}
