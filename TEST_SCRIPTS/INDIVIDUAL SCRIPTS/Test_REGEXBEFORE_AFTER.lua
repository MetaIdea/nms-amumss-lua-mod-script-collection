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
          ["MBIN_FILE_SOURCE"]     = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["REGEXBEFORE"] =
              {
                  {[[(.*)(".*_CRA_OPT_A_.*")]],[[\1"SECTION_TO_CHANGE" oldvalue=\2]]},
                  {[[(.*)(".*_ABAN_OPT_A_.*")]],[[\1"SECTION_TO_CHANGE" oldvalue=\2]]},
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
                  {[[(.*)("SECTION_TO_CHANGE").*(".*")]],[[\1\3]]},
              },
      },
      { -- using capture/replacement
          ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL.DESCRIPTOR.MBIN",
          ["REGEXBEFORE"] =
          {
              {[[(<Property name="Name") value="(.*)xRARE" \/>]], [[\1 value="\2" \/>]]}, --REGEX, provided by Lyravega, searches for Name properties ending in xRARE and removes those characters
          },
      },
			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
						[[MODELS\RGO\ENTITIES\WINGS_A2.ENTITY.MBIN]],

					}
				}
			},
			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
						[[MODELS\RGO\ENTITIES\WINGS_A3.ENTITY.MBIN]],

					}
				}
			},
			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN]],
						[[MODELS\RGO\ENTITIES\WINGS_A4.ENTITY.MBIN]],

					}
				}
			},
			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
						[[MODELS\RGO\WINGS_A2.SCENE.MBIN]],

					}
				}
			},
			{ -- works: \\ in long string
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{[["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
					 [["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A2.ENTITY.MBIN"]]},
				}
			},
      
      { -- works: \ in long string
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{[["Value" value="MODELS\RGO\ENTITIES\WINGS_A2.ENTITY.MBIN"]],
					 [["Value" value="MODELS\RGO\ENTITIES\WINGS_A2A.ENTITY.MBIN"]]},
				}
			},
      
			{ -- works: \\ in short string
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{"MODELS\\RGO\\ENTITIES\\WINGS_A2A.ENTITY.MBIN",
					 "MODELS\\RGO\\ENTITIES\\WINGS_A2B.ENTITY.MBIN"},
				}
			},

			{ -- works: \ in short string
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{"MODELS\RGO\ENTITIES\WINGS_A2B.ENTITY.MBIN",
					 "MODELS\RGO\ENTITIES\WINGS_A2C.ENTITY.MBIN"},
				}
			},

			{ -- will not find A2X: no replacement
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A2.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{[[MODELS\RGO\ENTITIES\WINGS_A2X.ENTITY.MBIN]],
					 [[MODELS\RGO\ENTITIES\WINGS_A2D.ENTITY.MBIN]]},
				}
			},



			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
						[[MODELS\RGO\WINGS_A3.SCENE.MBIN]],

					}
				}
			},
			{
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A3.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{[["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
					[["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A3.ENTITY.MBIN"]]},
				}
			},
			{
				["MBIN_FILE_SOURCE"] 	=
				{
					{
						[[MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A.SCENE.MBIN]],
						[[MODELS\RGO\WINGS_A4.SCENE.MBIN]],

					}
				}
			},
			{
				["MBIN_FILE_SOURCE"]  = [[MODELS\RGO\WINGS_A4.SCENE.MBIN]],
				["REGEXBEFORE"] =
				{
					{[["Value" value="MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"]],
					[["Value" value="MODELS\\RGO\\ENTITIES\\WINGS_A4.ENTITY.MBIN"]]},
				}
			},



			},
		},
	}, --124 global replacements
}