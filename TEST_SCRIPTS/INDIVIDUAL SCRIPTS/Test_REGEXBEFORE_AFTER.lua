Author = "Wbertro"
LUAAuthor = "Wbertro"
ModName = "Test_REGEXBEFORE"
BaseDescription = ""
GameVersion = ""

QUICKSILV_S =
[[
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="RS_QUICKSILV_S" />
            </Property>
]]

---------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = ModName..".pak",
  ["MOD_DESCRIPTION"]    = BaseDescription,
  ["MOD_AUTHOR"]        = Author,
  ["LUA_AUTHOR"] 	= LUAAuthor,
  ["NMS_VERSION"]        = GameVersion,
  ["MODIFICATIONS"]    = 
	{
    {
      ["MBIN_CHANGE_TABLE"] = 
			{
        { -- using capture/replacement
            COMMENT = [[#1 two regex BEFORE to run one after the other]],
            ["MBIN_FILE_SOURCE"]     = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
            ["REGEXBEFORE"] =
                {
                    { [[(.*)(".*_CRA_OPT_A_.*")]],
                      [[\1"SECTION_TO_CHANGE" oldvalue=\2]]
                    },
                    { [[(.*)(".*_ABAN_OPT_A_.*")]],
                      [[\1"SECTION_TO_CHANGE" oldvalue=\2]]
                    },
                },
            ["EXML_CHANGE_TABLE"]     =
            {
                {
                    ["SPECIAL_KEY_WORDS"] = {"Name", "SECTION_TO_CHANGE"},
                    ["PRECEDING_KEY_WORDS"] = "Rewards",
                    ["REPLACE_TYPE"] = "ALL",
                    ["ADD"] = QUICKSILV_S
                },
            }, -- could also be before EXML_CT, it does not matter.  AMUMSS code dictates when it is executed
            ["REGEXAFTER"] =
                {
                    { [[(.*)("SECTION_TO_CHANGE").*(".*")]],
                      [[\1\3]]
                    },
                },
        },
        
        { -- using capture/replacement
            COMMENT = [[#2 getting rid of xRARE]],
            ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL.DESCRIPTOR.MBIN",
            ["REGEXBEFORE"] =
            { --REGEX, provided by Lyravega, searches for Name properties ending in xRARE and removes those characters
                { [[(<Property name="Name") value="(.*)xRARE" />]],
                  [[\1 value="\2" />]]
                },
            },
        },
        
        {
          COMMENT = [[#3: Create file MODELS\RGO\ENTITIES\WINGS_A2.ENTITY.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
              [[MODELS\RGO\ENTITIES\WINGS_A2.ENTITY.MBIN]],
            },
          },
        },
        
        {
          COMMENT = [[#4 Create file MODELS\RGO\ENTITIES\WINGS_A3.ENTITY.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
              [[MODELS\RGO\ENTITIES\WINGS_A3.ENTITY.MBIN]],
            },
          },
        },
        
        {
            COMMENT = [[#5 Create file MODELS\RGO\ENTITIES\WINGS_A4.ENTITY.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
              [[MODELS\RGO\ENTITIES\WINGS_A4.ENTITY.MBIN]],

            },
          },
        },
        
        {
            COMMENT = [[#6 Create file MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
              [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],

            },
          },
        },
        
        {
            COMMENT = [[#7 works: \\ with long string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
              [["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A2.ENTITY.MBIN"]]
            },
          },
        },
        
        {
            COMMENT = [[#8 works: single-backslash with long string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [["Value" value="MODELS\RGO\ENTITIES\WINGS_A2.ENTITY.MBIN"]],
              [["Value" value="MODELS\RGO\ENTITIES\WINGS_A2A.ENTITY.MBIN"]]
            },
          },
        },
        
        {
            COMMENT = [[#9 works: \\ with short string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { "MODELS\\RGO\\ENTITIES\\WINGS_A2A.ENTITY.MBIN",
              "MODELS\\RGO\\ENTITIES\\WINGS_A2B.ENTITY.MBIN"
            },
          },
        },

        {
            COMMENT = [[#10 works: single-backslash with short string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { "MODELS\RGO\ENTITIES\WINGS_A2B.ENTITY.MBIN",
              "MODELS\RGO\ENTITIES\WINGS_A2C.ENTITY.MBIN"
            },
          },
        },

        {
            COMMENT = [[#10a DOES NOT work: / with short string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { "MODELS/RGO/ENTITIES/WINGS_A2C.ENTITY.MBIN",
              "MODELS/RGO/ENTITIES/WINGS_A2D.ENTITY.MBIN"
            },
          },
        },

        {
            COMMENT = [[#10b DOES NOT work: / with long string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [[MODELS/RGO/ENTITIES/WINGS_A2D.ENTITY.MBIN]],
              [[MODELS/RGO/ENTITIES/WINGS_A2E.ENTITY.MBIN]]
            },
          },
        },

        {
            COMMENT = [[#10c DOES NOT work: // with short string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { "MODELS//RGO//ENTITIES//WINGS_A2E.ENTITY.MBIN",
              "MODELS//RGO//ENTITIES//WINGS_A2F.ENTITY.MBIN"
            },
          },
        },

        {
            COMMENT = [[#10d DOES NOT work: // with long string]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [[MODELS//RGO//ENTITIES//WINGS_A2F.ENTITY.MBIN]],
              [[MODELS//RGO//ENTITIES//WINGS_A2G.ENTITY.MBIN]]
            },
          },
        },

        {
            COMMENT = [[#11: will not find A2X, no replacement, one WARNING]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [[MODELS\RGO\ENTITIES\WINGS_A2X.ENTITY.MBIN]],
              [[MODELS\RGO\ENTITIES\WINGS_A2D.ENTITY.MBIN]]
            },
          },
        },
        
        {
            COMMENT = [[#12 Create file MODELS\RGO\WINGS_A3.SCENE.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
              [[MODELS\RGO\WINGS_A3.SCENE.MBIN]],
            },
          },
        },
        
        {
            COMMENT = [[#13]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A3.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
              [["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A3.ENTITY.MBIN"]]
            },
          },
        },
        
        {
            COMMENT = [[#14 Create file MODELS\RGO\WINGS_A4.SCENE.MBIN]],
          ["MBIN_FILE_SOURCE"] 	=
          {
            {
              [[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
              [[MODELS\RGO\WINGS_A4.SCENE.MBIN]],
            },
          },
        },
        
        {
            COMMENT = [[#15]],
          ["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A4.SCENE.MBIN]],
          ["REGEXBEFORE"] =
          {
            { [["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
              [["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A4.ENTITY.MBIN"]]
            },
          },
        },
        
			},
		},
	}, --139 global replacements
}