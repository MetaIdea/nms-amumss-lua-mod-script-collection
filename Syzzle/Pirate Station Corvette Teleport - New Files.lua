Author = "Syzzle"
ModName = "Pirate Station Corvette Teleport - New Files"
GameVersion = "6.16"
Description = "Description"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      MBIN_CHANGE_TABLE 	= 
      { -- TELEPORT A STUFF
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER1/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER2/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER2/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER3/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER3/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER4/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER4/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            "S/BIGGSTELEPORTER1/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER2/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER3/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER4/TKDEREF2_PHONG168.MATERIAL.MBIN",
          },
          MXML_CHANGE_TABLE 	= 
          {
            {
              VALUE_CHANGE_TABLE  =
              {
                {"Map","S/TEXTURES/HOLOGRAMPATTERNRED.DDS"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER2/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER3/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER4/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            "S/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER2/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER3/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER4/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
          },
          MXML_CHANGE_TABLE 	= 
          {
            {
              VALUE_CHANGE_TABLE  =
              {
                {"Map","TEXTURES/EFFECTS/BEAM/BEAMCORERED.DDS"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER1.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER2.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER2.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER3.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER3.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER4.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER4.SCENE.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER1.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER1/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER1/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER2.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER2/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER2/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER3.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER3/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER3/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER4.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER4/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER4/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        -- TELEPORT B STUFF
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER1B/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER2B/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER2B/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER3B/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER3B/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER4B/TKDEREF2_PHONG168.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER4B/TKDEREF2_PHONG168.MATERIAL.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            "S/BIGGSTELEPORTER1B/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER2B/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER3B/TKDEREF2_PHONG168.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER4B/TKDEREF2_PHONG168.MATERIAL.MBIN",
          },
          MXML_CHANGE_TABLE 	= 
          {
            {
              VALUE_CHANGE_TABLE  =
              {
                {"Map","S/TEXTURES/HOLOGRAMPATTERNRED.DDS"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER2B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER3B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]],[[S/BIGGSTELEPORTER4B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            "S/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER2B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER3B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
            "S/BIGGSTELEPORTER4B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN",
          },
          MXML_CHANGE_TABLE 	= 
          {
            {
              VALUE_CHANGE_TABLE  =
              {
                {"Map","TEXTURES/EFFECTS/BEAM/BEAMCORERED.DDS"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER1B.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER1B.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER2B.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER2B.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER3B.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER3B.SCENE.MBIN]]},
            {[[MODELS/SPACE/NEXUS/PARTS/LANDINGBAYS/BIGGSTELEPORTER4B.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTER4B.SCENE.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER1B.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER1B/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER1B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER2B.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER2B/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER2B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER3B.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER3B/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER3B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTER4B.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER4B/TKDEREF2_PHONG168.MATERIAL.MBIN"},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1Tele","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTER4B/TKDEREF2_HOLOGRID_MAT3.MATERIAL.MBIN"},
              }
            },
          }
        },
        -- GLOW COLOR STUFF
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/BIGGSTELEPORTERABASE/GLOWPRIMARY_MAT.MATERIAL.MBIN]],[[S/BIGGSTELEPORTERABASE/GLOWPRIMARY_MAT.MATERIAL.MBIN]]},
            {[[MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/BIGGSTELEPORTERBBASE/GLOWPRIMARY_MAT.MATERIAL.MBIN]],[[S/BIGGSTELEPORTERBBASE/GLOWPRIMARY_MAT.MATERIAL.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            "S/BIGGSTELEPORTERABASE/GLOWPRIMARY_MAT.MATERIAL.MBIN",
            "S/BIGGSTELEPORTERBBASE/GLOWPRIMARY_MAT.MATERIAL.MBIN",
          },
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","gDiffuseMap"},
              VALUE_CHANGE_TABLE  =
              {
                {"Map","S/TEXTURES/PROCGLOWRED.DDS"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= 
          {
            {[[MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/BIGGSTELEPORTERABASE.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTERABASE.SCENE.MBIN]]},
            {[[MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/BIGGSTELEPORTERBBASE.SCENE.MBIN]],[[S/SCENE/BIGGSTELEPORTERBBASE.SCENE.MBIN]]},
          },
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTERABASE.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1BaseStruc1","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTERABASE/GLOWPRIMARY_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
        {
          MBIN_FILE_SOURCE 	= "S/SCENE/BIGGSTELEPORTERBBASE.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Name","SUB1BaseStruc","Attributes","TkSceneNodeAttributeData"},
              SECTION_ACTIVE  = 19,
              VALUE_CHANGE_TABLE  =
              {
                {"Value","S/BIGGSTELEPORTERBBASE/GLOWPRIMARY_MAT.MATERIAL.MBIN"},
              }
            },
          }
        },
      }
    }
  }
}