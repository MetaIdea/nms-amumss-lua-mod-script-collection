ModName         =   "BAAA_InterstellarHole"
ModAuthor       =   "WinderTP"
LuaAuthor       =   "Hypn0tick"
BaseDescription =   "Replaces the current blackhole model with a somewhat more scientifically accurate one."
GameVersion     =   "3.99+"
ModVersion      =   "2.0"

TextureBaseDir  =   "../ModExtraFilesToInclude"

BHEventTriggerDistance      =   "2500"
BHAmbientTriggerDistance    =   "35000"

ParticleColourMiddleR   =   "1.654"
ParticleColourMiddleG   =   "1.56"
ParticleColourMiddleB   =   "0.964"

ParticleColourEndR      =   "0.752"
ParticleColourEndG      =   "0.615"
ParticleColourEndB      =   "0.247"

RingSparksColourEndR    =   "3.76"
RingSparksColourEndG    =   "3.075"
RingSparksColourEndB    =   "1.235"

gMaterialColourR        =   "0.827"
gMaterialColourG        =   "0.78"
gMaterialColourB        =   "0.482"

SceneNodeScale  =   "8.64117"
SceneNodeData   =   [[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFHole" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="14.7284" />
        <Property name="RotY" value="-100.836" />
        <Property name="RotZ" value="-136.685" />
        <Property name="ScaleX" value="3512.63" />
        <Property name="ScaleY" value="3512.63" />
        <Property name="ScaleZ" value="3512.63" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="CUSTOMMODELS\WINDER\WINDER_BLACKHOLE_NEW\WINDER_BLACKHOLE_NEW.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]      = "_"..ModAuthor.."_"..ModName.."-"..ModVersion..".pak",
    ["MOD_DESCRIPTION"]   = BaseDescription,
    ["MOD_AUTHOR"]        = ModAuthor,
    ["LUA_AUTHOR"]        = LuaAuthor,
    ["NMS_VERSION"]       = GameVersion,
    ["MODIFICATIONS"]     = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RingSparks"},
                            ["VALUE_CHANGE_TABLE"] = {{"IGNORE", "IGNORE"}},
                            ["REMOVE"] = "SECTION",
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/BLACKHOLE.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] = {{"Map", TextureBaseDir.."/CUSTOMMODELS/TEXTURES/BLACKHOLE/BLACKHOLEEDGE.DDS"}}
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/BLACKHOLE.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourMiddle", "Colour.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"R",   ParticleColourMiddleR},
                                {"G",   ParticleColourMiddleG},
                                {"B",   ParticleColourMiddleB}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourEnd", "Colour.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"R",   ParticleColourEndR},
                                {"G",   ParticleColourEndG},
                                {"B",   ParticleColourEndB}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/RINGSPARKS.PARTICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ColourEnd", "Colour.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"R",   RingSparksColourEndR},
                                {"G",   RingSparksColourEndG},
                                {"B",   RingSparksColourEndB},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            --["REPLACE_TYPE"] = "",
                            ["ADD"] = SceneNodeData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Blackhole"},
                            ["REPLACE_TYPE"] = "",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ScaleX",   SceneNodeScale},
                                {"ScaleY",   SceneNodeScale},
                                {"ScaleZ",   SceneNodeScale},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/BHFLARE.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x",   gMaterialColourR},
                                {"y",   gMaterialColourG},
                                {"z",   gMaterialColourB}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/BHGLOW.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Values", "Vector4f.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x",   gMaterialColourR},
                                {"y",   gMaterialColourG},
                                {"z",   gMaterialColourB}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/ENTITIES/BLACKHOLE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ambient", "AMB_Blackhole"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MaxDistance",   BHAmbientTriggerDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RequirePlayerAction", "InShip"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Distance",   BHEventTriggerDistance},
                            }
                        },
                    }
                },
            }
        }
    }
}