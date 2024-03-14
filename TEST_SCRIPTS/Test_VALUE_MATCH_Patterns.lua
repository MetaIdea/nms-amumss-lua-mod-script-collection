ModName = "Test_VALUE_MATCH Patterns"

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = ModName..".pak",
  ["MOD_DESCRIPTION"] = ModName,
  ["MOD_AUTHOR"]      = "Wbertro",
  ["LUA_AUTHOR"] 	    = "Wbertro",
  ["NMS_VERSION"]     = "All",
  ["MODIFICATIONS"]    = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              COMMENT = [[1- Curly brackets { } are used to mark the VALUE_MATCH as a LUA regular expression
              This will match any value starting with DE_GEM_R_x for at least one where x is anything
              Notice the ^ to anchor to the beginning and the .+]],
              ["VALUE_MATCH"] = "{^DE_GEM_R_.+}",
              ["VALUE_CHANGE_TABLE"] = {
                  {"Id","MyNewId"},
              },
            },
            {
              COMMENT = [[2- Curly brackets { } are used to mark the VALUE_MATCH as a LUA regular expression
              This will match any value starting with SEC_STARMAPx for at least one where x is a number
              Notice the ^ to anchor to the beginning and the %d+]],
              ["VALUE_MATCH"] = "{^SEC_STARMAP%d+}",
              ["VCT"] = {
                  {"Id","AnotherNewId"},
              },
            },
            {
              COMMENT = [[3- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              This will match any value ending in ICON.DDS (None will be found here, it does not exist in the EXML)
              Notice the %. to escape the dot and $ to anchor to the end]],
              -- like "TEXTURES/UI/HUD/PIRATEMESSAGEICON.DDS",
              ["VALUE_MATCH"] = "{ICON%.DDS$}",
              ["VCT"] = {
                  {"IGNORE","TEXTURES/UI\LOADING/NEWICON.DDS"},
              },
            },
            {
              COMMENT = [[4- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              This will match any value ending in POI.DDS
              Notice the %. to escape the dot and $ to anchor to the end]],
              -- ["VALUE_MATCH"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POI.DDS",
              ["VALUE_MATCH"] = "{POI%.DDS$}",
              ["VCT"] = {
                  {"Filename","TEXTURES//UI/HUD\\\ICONS/BUILDINGS/MyBUILDING.POI.DDS"},
              },
            },
            {
              COMMENT = [[5- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              How to target empty values like value=""
              THIS WILL NOT COMPILE OBVIOUSLY]],
              -- ["VALUE_MATCH"] = "",
              ["VALUE_MATCH"] = "{^$}",
              ["VCT"] = {
                  {"LabelID","MyTest"},
              },
            },
            {
              COMMENT = [[6- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              Multiple VALUE_MATCH strings can be specified, normal and regular expressions
              Use of regular expression { } triggers the use of REPLACE_TYPE = "ALL"
              All matching strings in VALUE_MATCH are replaced]],
              ["VALUE_MATCH"] = {"FOOTLOCKER","{ABAND_CRATE}","MEDTUBE",},
              ["VCT"] = {
                  {"Value","MyTest_1"},
                  {"ID","OtherTest_1"},
              },
            },
            {
              COMMENT = [[7- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              Multiple VALUE_MATCH strings can be specified, normal and regular expressions
              Use of regular expression { } triggers the use of REPLACE_TYPE = "ALL"
              All not matching strings in VALUE_MATCH are replaced
              Better to use DEV mode with this :)]],
              ["VALUE_MATCH"] = {"FOOTLOCKER","{ABAND_CRATE}","MEDTUBE",},
              ["VALUE_MATCH_OPTIONS"]     = "~=",
              ["VCT"] = {
                  {"Value","MyTest_2"},
                  {"ID","OtherTest_2"},
              },
            },
            {
              COMMENT = [[8- Curly brackets { } are used to mark VALUE_MATCH as a LUA regular expression
              Multiple VALUE_MATCH strings can be specified, normal and regular expressions
              NO regular expression use the default REPLACE_TYPE = "ONCE", so we must specify we want "ALL", if required
              All not matching strings in VALUE_MATCH are replaced
              Better to use DEV mode with this :)]],
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_MATCH"] = {30,0.33,11,},
              ["VCT"] = {
                  {"SeasonNumber","9"},
                  {"AmountMax","999"},
              },
            },
          },
        },
      },
    },
  }, --12355 global replacements
}