-------------------------------------------------------------------
local desc = [[
  Generate TkProceduralTextureList files for the procedural decals
  diff/normal/masks = true >> include dds in the layer

  * source is used for importing the dds files (needs path to the files' folder)
  * The script STILL WORKS if the source path is incorrect or no dds
   files are found - except no textures will be packed with the mbin files.  
]]-----------------------------------------------------------------

local proc_texture_files = {
    {
    --- space station front lettering
        label   = 'LETTERING',
        group   = 'DECALLETTER',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/lMonk - Alt Space Staion Decals v1.5/TEXTURES/SPACE/SPACESTATION/DECALS',
        nmspath = 'TEXTURES/SPACE/SPACESTATION/DECALS/',
        {
            ly_name = 'OVERLAY',
            color   = 'Primary',
            masks   = true
        },{
            ly_name = 'BASE',
            tx_name = {'Letter1', 'Letter2', 'Letter3', 'Letter4', 'ST1', 'ST2', 'ST3', 'ST4', 'ST5', 'ST6', 'ST7'},
            diff    = true
        }
    },
    {
    --- space station front number
        label   = 'NUMBER',
        group   = 'DECALNUMBER',
        source  = 'C:/Games/NMS Modding/NMS Mod Builder/00 - Extra Files/00 - Custom Mods/lMonk - Alt Space Staion Decals v1.5/TEXTURES/SPACE/SPACESTATION/DECALS',
        nmspath = 'TEXTURES/SPACE/SPACESTATION/DECALS/',
        {
            ly_name = 'OVERLAY',
            color   = 'Primary',
            masks   = true
        },{
            ly_name = 'BASE',
            tx_name = {'C1', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'M1', 'M2', 'M3', 'M4', 'M5', 'M6', 'M7', 'M8', 'M9'},
            diff    = true
        }
    }
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
            layer.palette or 'Rock',
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
                <Property name="Textures">]]..
                GetProcTextures(tex_layer.nmspath..tex_layer.label, ly)..
            [[</Property></Property>]]
        )
    end
    -- silly fixed length array
    for _=1, (8 - #tex_layer) do
        table.insert(T, '<Property value="TkProceduralTextureLayer.xml"/>')
    end
    return [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkProceduralTextureList">
        <Property name="Layers">]]..table.concat(T)..[[</Property></Data>]]
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
    MOD_FILENAME        = '_MOD.lMonk.Alt Space Staion Decals.1.5.pak',
    MOD_AUTHOR          = 'lMonk',
    NMS_VERSION         = 3.0,
    MOD_DESCRIPTION     = desc,
    MODIFICATIONS       = {},
    ADD_FILES           = AddProcTexFiles()
}
